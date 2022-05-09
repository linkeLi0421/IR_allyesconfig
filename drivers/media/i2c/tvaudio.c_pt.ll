; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tvaudio.c_pt.bc'
source_filename = "../drivers/media/i2c/tvaudio.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.CHIPDESC = type { ptr, i32, i32, i32, ptr, ptr, ptr, i32, %struct.AUDIOCMD, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }
%struct.AUDIOCMD = type { i32, [257 x i8] }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.CHIPSTATE = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, %struct.AUDIOCMD, i16, i32, i32, i32, ptr, %struct.timer_list, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
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
%struct.tda9874a_MODES = type { ptr, %struct.AUDIOCMD }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__param_str_debug = internal constant [14 x i8] c"tvaudio.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"tvaudio.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [84 x i8] c"tvaudio.description=device driver for various i2c TV sound decoder / audiomux chips\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [75 x i8] c"tvaudio.author=Eric Sandeen, Steve VanDeBogart, Greg Alexander, Gerd Knorr\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [39 x i8] c"tvaudio.file=drivers/media/i2c/tvaudio\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [20 x i8] c"tvaudio.license=GPL\00", section ".modinfo", align 1
@__param_str_tda9874a_SIF = internal constant [21 x i8] c"tvaudio.tda9874a_SIF\00", align 1
@tda9874a_SIF = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_tda9874a_SIF = internal constant %struct.kernel_param { ptr @__param_str_tda9874a_SIF, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda9874a_SIF } }, section "__param", align 4
@__UNIQUE_ID_tda9874a_SIFtype299 = internal constant [34 x i8] c"tvaudio.parmtype=tda9874a_SIF:int\00", section ".modinfo", align 1
@__param_str_tda9874a_AMSEL = internal constant [23 x i8] c"tvaudio.tda9874a_AMSEL\00", align 1
@tda9874a_AMSEL = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_tda9874a_AMSEL = internal constant %struct.kernel_param { ptr @__param_str_tda9874a_AMSEL, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda9874a_AMSEL } }, section "__param", align 4
@__UNIQUE_ID_tda9874a_AMSELtype300 = internal constant [36 x i8] c"tvaudio.parmtype=tda9874a_AMSEL:int\00", section ".modinfo", align 1
@__param_str_tda9874a_STD = internal constant [21 x i8] c"tvaudio.tda9874a_STD\00", align 1
@tda9874a_STD = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_tda9874a_STD = internal constant %struct.kernel_param { ptr @__param_str_tda9874a_STD, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda9874a_STD } }, section "__param", align 4
@__UNIQUE_ID_tda9874a_STDtype301 = internal constant [34 x i8] c"tvaudio.parmtype=tda9874a_STD:int\00", section ".modinfo", align 1
@__param_str_tda8425 = internal constant [16 x i8] c"tvaudio.tda8425\00", align 1
@tda8425 = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tda8425 = internal constant %struct.kernel_param { ptr @__param_str_tda8425, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda8425 } }, section "__param", align 4
@__UNIQUE_ID_tda8425type304 = internal constant [29 x i8] c"tvaudio.parmtype=tda8425:int\00", section ".modinfo", align 1
@__param_str_tda9840 = internal constant [16 x i8] c"tvaudio.tda9840\00", align 1
@tda9840 = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tda9840 = internal constant %struct.kernel_param { ptr @__param_str_tda9840, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda9840 } }, section "__param", align 4
@__UNIQUE_ID_tda9840type305 = internal constant [29 x i8] c"tvaudio.parmtype=tda9840:int\00", section ".modinfo", align 1
@__param_str_tda9850 = internal constant [16 x i8] c"tvaudio.tda9850\00", align 1
@tda9850 = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tda9850 = internal constant %struct.kernel_param { ptr @__param_str_tda9850, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda9850 } }, section "__param", align 4
@__UNIQUE_ID_tda9850type306 = internal constant [29 x i8] c"tvaudio.parmtype=tda9850:int\00", section ".modinfo", align 1
@__param_str_tda9855 = internal constant [16 x i8] c"tvaudio.tda9855\00", align 1
@tda9855 = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tda9855 = internal constant %struct.kernel_param { ptr @__param_str_tda9855, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda9855 } }, section "__param", align 4
@__UNIQUE_ID_tda9855type307 = internal constant [29 x i8] c"tvaudio.parmtype=tda9855:int\00", section ".modinfo", align 1
@__param_str_tda9873 = internal constant [16 x i8] c"tvaudio.tda9873\00", align 1
@tda9873 = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tda9873 = internal constant %struct.kernel_param { ptr @__param_str_tda9873, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda9873 } }, section "__param", align 4
@__UNIQUE_ID_tda9873type308 = internal constant [29 x i8] c"tvaudio.parmtype=tda9873:int\00", section ".modinfo", align 1
@__param_str_tda9874a = internal constant [17 x i8] c"tvaudio.tda9874a\00", align 1
@tda9874a = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tda9874a = internal constant %struct.kernel_param { ptr @__param_str_tda9874a, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda9874a } }, section "__param", align 4
@__UNIQUE_ID_tda9874atype309 = internal constant [30 x i8] c"tvaudio.parmtype=tda9874a:int\00", section ".modinfo", align 1
@__param_str_tda9875 = internal constant [16 x i8] c"tvaudio.tda9875\00", align 1
@tda9875 = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tda9875 = internal constant %struct.kernel_param { ptr @__param_str_tda9875, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tda9875 } }, section "__param", align 4
@__UNIQUE_ID_tda9875type310 = internal constant [29 x i8] c"tvaudio.parmtype=tda9875:int\00", section ".modinfo", align 1
@__param_str_tea6300 = internal constant [16 x i8] c"tvaudio.tea6300\00", align 1
@tea6300 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tea6300 = internal constant %struct.kernel_param { ptr @__param_str_tea6300, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tea6300 } }, section "__param", align 4
@__UNIQUE_ID_tea6300type311 = internal constant [29 x i8] c"tvaudio.parmtype=tea6300:int\00", section ".modinfo", align 1
@__param_str_tea6320 = internal constant [16 x i8] c"tvaudio.tea6320\00", align 1
@tea6320 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tea6320 = internal constant %struct.kernel_param { ptr @__param_str_tea6320, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tea6320 } }, section "__param", align 4
@__UNIQUE_ID_tea6320type312 = internal constant [29 x i8] c"tvaudio.parmtype=tea6320:int\00", section ".modinfo", align 1
@__param_str_tea6420 = internal constant [16 x i8] c"tvaudio.tea6420\00", align 1
@tea6420 = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_tea6420 = internal constant %struct.kernel_param { ptr @__param_str_tea6420, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tea6420 } }, section "__param", align 4
@__UNIQUE_ID_tea6420type313 = internal constant [29 x i8] c"tvaudio.parmtype=tea6420:int\00", section ".modinfo", align 1
@__param_str_pic16c54 = internal constant [17 x i8] c"tvaudio.pic16c54\00", align 1
@pic16c54 = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_pic16c54 = internal constant %struct.kernel_param { ptr @__param_str_pic16c54, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @pic16c54 } }, section "__param", align 4
@__UNIQUE_ID_pic16c54type314 = internal constant [30 x i8] c"tvaudio.parmtype=pic16c54:int\00", section ".modinfo", align 1
@__param_str_ta8874z = internal constant [16 x i8] c"tvaudio.ta8874z\00", align 1
@ta8874z = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ta8874z = internal constant %struct.kernel_param { ptr @__param_str_ta8874z, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @ta8874z } }, section "__param", align 4
@__UNIQUE_ID_ta8874ztype315 = internal constant [29 x i8] c"tvaudio.parmtype=ta8874z:int\00", section ".modinfo", align 1
@__initcall__kmod_tvaudio__320_2103_tvaudio_driver_init6 = internal global ptr @tvaudio_driver_init, section ".initcall6.init", align 4
@tvaudio_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tvaudio_probe, ptr @tvaudio_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tvaudio_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tvaudio_driver_exit = internal global ptr @tvaudio_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvaudio\00", [24 x i8] zeroinitializer }, align 32
@tvaudio_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tvaudio\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016tvaudio: TV audio decoder + audio/video mux driver\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tvaudio_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/tvaudio.c\00", [36 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr = internal global ptr @tvaudio_probe._entry, section ".printk_index", align 4
@tvaudio_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016tvaudio: known chips: \00", [39 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.6 = internal global ptr @tvaudio_probe._entry.4, section ".printk_index", align 4
@tvaudio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01c%s%s\00", [25 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.9 = internal global ptr @tvaudio_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c", \00", [29 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.14 = internal global ptr @tvaudio_probe._entry.12, section ".printk_index", align 4
@tvaudio_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tvaudio_core_ops, ptr @tvaudio_tuner_ops, ptr @tvaudio_audio_ops, ptr @tvaudio_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: chip found @ 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.17 = internal global ptr @tvaudio_probe._entry.15, section ".printk_index", align 4
@tvaudio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: no matching chip description found\0A\00", [54 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.20 = internal global ptr @tvaudio_probe._entry.18, section ".printk_index", align 4
@tvaudio_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: %s found @ 0x%x (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.23 = internal global ptr @tvaudio_probe._entry.21, section ".printk_index", align 4
@tvaudio_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: matches:%s%s%s.\0A\00", [41 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.26 = internal global ptr @tvaudio_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" volume\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" bass/treble\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" audiomux\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@tvaudio_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tvaudio:1996:(&chip->hdl)->_lock\00", [63 x i8] zeroinitializer }, align 32
@tvaudio_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tvaudio_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 2005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: volume callback undefined!\0A\00", [62 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.34 = internal global ptr @tvaudio_probe._entry.32, section ".printk_index", align 4
@tvaudio_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 2023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: bass/treble callbacks undefined!\0A\00", [56 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.37 = internal global ptr @tvaudio_probe._entry.35, section ".printk_index", align 4
@tvaudio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(&chip->wt)\00", [20 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 2054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: set/get mode callbacks undefined!\0A\00", [55 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.41 = internal global ptr @tvaudio_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 2061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: failed to create kthread\0A\00", [32 x i8] zeroinitializer }, align 32
@tvaudio_probe._entry_ptr.45 = internal global ptr @tvaudio_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9840\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda9873h\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tda9874h/a\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9875\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9850\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9855\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tea6300\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tea6320\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tea6420\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda8425\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pic16c54 (PV951)\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ta8874z\00", [24 x i8] zeroinitializer }, align 32
@chiplist = internal global { <{ { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ i8, i8, [255 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ i8, i8, i8, i8, [253 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, %struct.CHIPDESC, %struct.CHIPDESC, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ [8 x i8], [249 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ [12 x i8], [245 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, %struct.CHIPDESC, %struct.CHIPDESC, %struct.CHIPDESC, %struct.CHIPDESC, %struct.CHIPDESC, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ i8, i8, [255 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, %struct.CHIPDESC }>, [1212 x i8] } { <{ { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ i8, i8, [255 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ i8, i8, i8, i8, [253 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, %struct.CHIPDESC, %struct.CHIPDESC, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ [8 x i8], [249 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ [12 x i8], [245 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, %struct.CHIPDESC, %struct.CHIPDESC, %struct.CHIPDESC, %struct.CHIPDESC, %struct.CHIPDESC, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ i8, i8, [255 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 }, %struct.CHIPDESC }> <{ { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ i8, i8, [255 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 } { ptr @.str.46, i32 66, i32 66, i32 5, ptr @tda9840, ptr @tda9840_checkit, ptr null, i32 8, { i32, <{ i8, i8, [255 x i8] }> } { i32 2, <{ i8, i8, [255 x i8] }> <{ i8 4, i8 1, [255 x i8] zeroinitializer }> }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @tda9840_getrxsubchans, ptr @tda9840_setaudmode, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0 }, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ i8, i8, i8, i8, [253 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 } { ptr @.str.47, i32 90, i32 91, i32 3, ptr @tda9873, ptr @tda9873_checkit, ptr null, i32 12, { i32, <{ i8, i8, i8, i8, [253 x i8] }> } { i32 4, <{ i8, i8, i8, i8, [253 x i8] }> <{ i8 0, i8 -92, i8 6, i8 3, [253 x i8] zeroinitializer }> }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @tda9873_getrxsubchans, ptr @tda9873_setaudmode, i32 0, [4 x i32] [i32 160, i32 162, i32 160, i32 160], i32 192, i32 195 }, %struct.CHIPDESC { ptr @.str.48, i32 88, i32 88, i32 0, ptr @tda9874a, ptr @tda9874a_checkit, ptr @tda9874a_initialize, i32 8, %struct.AUDIOCMD zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @tda9874a_getrxsubchans, ptr @tda9874a_setaudmode, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0 }, %struct.CHIPDESC { ptr @.str.49, i32 88, i32 88, i32 0, ptr @tda9875, ptr @tda9875_checkit, ptr @tda9875_initialize, i32 3, %struct.AUDIOCMD zeroinitializer, i32 26, i32 27, i32 30, i32 29, i32 58880, i32 0, i32 0, ptr @tda9875_volume, ptr @tda9875_treble, ptr @tda9875_bass, ptr null, ptr null, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0 }, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ [8 x i8], [249 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 } { ptr @.str.50, i32 90, i32 91, i32 11, ptr @tda9850, ptr null, ptr null, i32 0, { i32, <{ [8 x i8], [249 x i8] }> } { i32 8, <{ [8 x i8], [249 x i8] }> <{ [8 x i8] c"\04\08\08@\07\10\10\03", [249 x i8] zeroinitializer }> }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @tda985x_getrxsubchans, ptr @tda985x_setaudmode, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0 }, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ [12 x i8], [245 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 } { ptr @.str.51, i32 90, i32 91, i32 11, ptr @tda9855, ptr null, ptr null, i32 3, { i32, <{ [12 x i8], [245 x i8] }> } { i32 12, <{ [12 x i8], [245 x i8] }> <{ [12 x i8] c"\00oo\0E\0E \E0p\07\10\10\03", [245 x i8] zeroinitializer }> }, i32 1, i32 0, i32 3, i32 2, i32 0, i32 0, i32 0, ptr @tda9855_volume, ptr @tda9855_treble, ptr @tda9855_bass, ptr @tda985x_getrxsubchans, ptr @tda985x_setaudmode, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0 }, %struct.CHIPDESC { ptr @.str.52, i32 64, i32 64, i32 6, ptr @tea6300, ptr null, ptr null, i32 7, %struct.AUDIOCMD zeroinitializer, i32 1, i32 0, i32 3, i32 2, i32 0, i32 0, i32 0, ptr @tea6300_shift10, ptr @tea6300_shift12, ptr @tea6300_shift12, ptr null, ptr null, i32 5, [4 x i32] [i32 1, i32 2, i32 4, i32 0], i32 128, i32 0 }, %struct.CHIPDESC { ptr @.str.53, i32 64, i32 64, i32 8, ptr @tea6320, ptr null, ptr @tea6320_initialize, i32 7, %struct.AUDIOCMD zeroinitializer, i32 0, i32 0, i32 6, i32 5, i32 0, i32 0, i32 0, ptr @tea6320_volume, ptr @tea6320_shift11, ptr @tea6320_shift11, ptr null, ptr null, i32 7, [4 x i32] [i32 7, i32 1, i32 4, i32 4], i32 128, i32 0 }, %struct.CHIPDESC { ptr @.str.54, i32 76, i32 76, i32 1, ptr @tea6420, ptr null, ptr null, i32 4, %struct.AUDIOCMD zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, [4 x i32] [i32 0, i32 1, i32 2, i32 0], i32 5, i32 7 }, %struct.CHIPDESC { ptr @.str.55, i32 65, i32 65, i32 9, ptr @tda8425, ptr null, ptr null, i32 7, %struct.AUDIOCMD zeroinitializer, i32 0, i32 1, i32 3, i32 2, i32 0, i32 0, i32 0, ptr @tda8425_shift10, ptr @tda8425_shift12, ptr @tda8425_shift12, ptr null, ptr @tda8425_setaudmode, i32 8, [4 x i32] [i32 206, i32 206, i32 206, i32 0], i32 238, i32 0 }, %struct.CHIPDESC { ptr @.str.56, i32 75, i32 75, i32 2, ptr @pic16c54, ptr null, ptr null, i32 4, %struct.AUDIOCMD zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, [4 x i32] [i32 96, i32 160, i32 160, i32 16], i32 16, i32 0 }, { ptr, i32, i32, i32, ptr, ptr, ptr, i32, { i32, <{ i8, i8, [255 x i8] }> }, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, [4 x i32], i32, i32 } { ptr @.str.57, i32 66, i32 66, i32 2, ptr @ta8874z, ptr @ta8874z_checkit, ptr null, i32 0, { i32, <{ i8, i8, [255 x i8] }> } { i32 2, <{ i8, i8, [255 x i8] }> <{ i8 16, i8 16, [255 x i8] zeroinitializer }> }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @ta8874z_getrxsubchans, ptr @ta8874z_setaudmode, i32 0, [4 x i32] zeroinitializer, i32 0, i32 0 }, %struct.CHIPDESC zeroinitializer }>, [1212 x i8] zeroinitializer }, align 32
@chip_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: I/O error (read)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"chip_read\00", [22 x i8] zeroinitializer }, align 32
@chip_read._entry_ptr = internal global ptr @chip_read._entry, section ".printk_index", align 4
@chip_read._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.3, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: chip_read: 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@chip_read._entry_ptr.63 = internal global ptr @chip_read._entry.61, section ".printk_index", align 4
@tda9840_getrxsubchans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: tda9840_getrxsubchans(): raw chip read: %d, return: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda9840_getrxsubchans\00", [42 x i8] zeroinitializer }, align 32
@tda9840_getrxsubchans._entry_ptr = internal global ptr @tda9840_getrxsubchans._entry, section ".printk_index", align 4
@chip_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: chip_write: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_write\00", [21 x i8] zeroinitializer }, align 32
@chip_write._entry_ptr = internal global ptr @chip_write._entry, section ".printk_index", align 4
@chip_write._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: I/O error (write 0x%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@chip_write._entry_ptr.70 = internal global ptr @chip_write._entry.68, section ".printk_index", align 4
@chip_write._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.3, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s: Tried to access a non-existent register: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@chip_write._entry_ptr.73 = internal global ptr @chip_write._entry.71, section ".printk_index", align 4
@chip_write._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.3, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: chip_write: reg%d=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@chip_write._entry_ptr.76 = internal global ptr @chip_write._entry.74, section ".printk_index", align 4
@chip_write._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.3, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: I/O error (write reg%d=0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@chip_write._entry_ptr.79 = internal global ptr @chip_write._entry.77, section ".printk_index", align 4
@chip_read2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: I/O error (read2)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"chip_read2\00", [21 x i8] zeroinitializer }, align 32
@chip_read2._entry_ptr = internal global ptr @chip_read2._entry, section ".printk_index", align 4
@chip_read2._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: chip_read2: reg%d=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@chip_read2._entry_ptr.84 = internal global ptr @chip_read2._entry.82, section ".printk_index", align 4
@tda9873_getrxsubchans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s: tda9873_getrxsubchans(): raw chip read: %d, return: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda9873_getrxsubchans\00", [42 x i8] zeroinitializer }, align 32
@tda9873_getrxsubchans._entry_ptr = internal global ptr @tda9873_getrxsubchans._entry, section ".printk_index", align 4
@tda9873_setaudmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 777, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: tda9873_setaudmode(): external input\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda9873_setaudmode\00", [45 x i8] zeroinitializer }, align 32
@tda9873_setaudmode._entry_ptr = internal global ptr @tda9873_setaudmode._entry, section ".printk_index", align 4
@tda9873_setaudmode._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s: tda9873_setaudmode(): chip->shadow.bytes[%d] = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tda9873_setaudmode._entry_ptr.91 = internal global ptr @tda9873_setaudmode._entry.89, section ".printk_index", align 4
@tda9873_setaudmode._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.3, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: tda9873_setaudmode(): sw_data  = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@tda9873_setaudmode._entry_ptr.94 = internal global ptr @tda9873_setaudmode._entry.92, section ".printk_index", align 4
@tda9873_setaudmode._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str.3, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017%s: tda9873_setaudmode(): req. mode %d; chip_write: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tda9873_setaudmode._entry_ptr.97 = internal global ptr @tda9873_setaudmode._entry.95, section ".printk_index", align 4
@tda9874a_checkit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: tda9874a_checkit(): DIC=0x%X, SIC=0x%X.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda9874a_checkit\00", [47 x i8] zeroinitializer }, align 32
@tda9874a_checkit._entry_ptr = internal global ptr @tda9874a_checkit._entry, section ".printk_index", align 4
@tda9874a_checkit._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.99, ptr @.str.3, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: found tda9874%s.\0A\00", [40 x i8] zeroinitializer }, align 32
@tda9874a_checkit._entry_ptr.102 = internal global ptr @tda9874a_checkit._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"a\00", [30 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"h\00", [30 x i8] zeroinitializer }, align 32
@tda9874a_dic = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@tda9874a_GCONR = internal global { i1, [31 x i8] } zeroinitializer, align 32
@tda9874a_ESP = internal global { i32, [28 x i8] } { i32 7, [28 x i8] zeroinitializer }, align 32
@tda9874a_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@tda9874a_NCONR = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda9874_modelist\00", [47 x i8] zeroinitializer }, align 32
@tda9874a_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: tda9874a_setup(): %s [0x%02X].\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda9874a_setup\00", [17 x i8] zeroinitializer }, align 32
@tda9874a_setup._entry_ptr = internal global ptr @tda9874a_setup._entry, section ".printk_index", align 4
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"A2, B/G\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"A2, M (Korea)\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"A2, D/K (1)\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"A2, D/K (2)\00", [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"A2, D/K (3)\00", [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NICAM, I\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NICAM, B/G\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NICAM, D/K\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NICAM, L\00", [23 x i8] zeroinitializer }, align 32
@tda9874a_modelist = internal global { <{ { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } }, { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } }, { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, i8, [250 x i8] }> } }, { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } } }>, [596 x i8] } { <{ { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } }, { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } }, { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, i8, [250 x i8] }> } }, { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } } }> <{ { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } } { ptr @.str.108, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } { i32 9, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> <{ i8 3, i8 114, i8 -107, i8 85, i8 119, i8 -96, [251 x i8] zeroinitializer }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } } { ptr @.str.109, { i32, <{ [9 x i8], [248 x i8] }> } { i32 9, <{ [9 x i8], [248 x i8] }> <{ [9 x i8] c"\03]\C0\00bj\AA \22", [248 x i8] zeroinitializer }> } }, { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } } { ptr @.str.110, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } { i32 9, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> <{ i8 3, i8 -121, i8 106, i8 -86, i8 -126, i8 96, [251 x i8] zeroinitializer }> } }, { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, i8, [250 x i8] }> } } { ptr @.str.111, { i32, <{ i8, i8, i8, i8, i8, i8, i8, [250 x i8] }> } { i32 9, <{ i8, i8, i8, i8, i8, i8, i8, [250 x i8] }> <{ i8 3, i8 -121, i8 106, i8 -86, i8 -116, i8 117, i8 85, [250 x i8] zeroinitializer }> } }, { ptr, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } } { ptr @.str.112, { i32, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> } { i32 9, <{ i8, i8, i8, i8, i8, i8, [251 x i8] }> <{ i8 3, i8 -121, i8 106, i8 -86, i8 119, i8 -96, [251 x i8] zeroinitializer }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } } { ptr @.str.113, { i32, <{ [9 x i8], [248 x i8] }> } { i32 9, <{ [9 x i8], [248 x i8] }> <{ [9 x i8] c"\03}\00\00\88\8A\AA\083", [248 x i8] zeroinitializer }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } } { ptr @.str.114, { i32, <{ [9 x i8], [248 x i8] }> } { i32 9, <{ [9 x i8], [248 x i8] }> <{ [9 x i8] c"\03r\95Uy\EA\AA\083", [248 x i8] zeroinitializer }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } } { ptr @.str.115, { i32, <{ [9 x i8], [248 x i8] }> } { i32 9, <{ [9 x i8], [248 x i8] }> <{ [9 x i8] c"\03\87j\AAy\EA\AA\083", [248 x i8] zeroinitializer }> } }, { ptr, { i32, <{ [9 x i8], [248 x i8] }> } } { ptr @.str.116, { i32, <{ [9 x i8], [248 x i8] }> } { i32 9, <{ [9 x i8], [248 x i8] }> <{ [9 x i8] c"\03\87j\AAy\EA\AA\093", [248 x i8] zeroinitializer }> } } }>, [596 x i8] zeroinitializer }, align 32
@tda9874a_getrxsubchans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017%s: tda9874a_getrxsubchans(): DSR=0x%X, NSR=0x%X, NECR=0x%X, return: %d.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda9874a_getrxsubchans\00", [41 x i8] zeroinitializer }, align 32
@tda9874a_getrxsubchans._entry_ptr = internal global ptr @tda9874a_getrxsubchans._entry, section ".printk_index", align 4
@tda9874a_setaudmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 1052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017%s: tda9874a_setaudmode(): req. mode %d; AOSR=0x%X, MDACOSR=0x%X.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda9874a_setaudmode\00", [44 x i8] zeroinitializer }, align 32
@tda9874a_setaudmode._entry_ptr = internal global ptr @tda9874a_setaudmode._entry, section ".printk_index", align 4
@tda9874a_setaudmode._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.3, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: tda9874a_setaudmode(): req. mode %d; FMMR=0x%X, AOSR=0x%X.\0A\00", [62 x i8] zeroinitializer }, align 32
@tda9874a_setaudmode._entry_ptr.124 = internal global ptr @tda9874a_setaudmode._entry.122, section ".printk_index", align 4
@tda9875_checkit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 1252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: found tda9875%s rev. %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda9875_checkit\00", [16 x i8] zeroinitializer }, align 32
@tda9875_checkit._entry_ptr = internal global ptr @tda9875_checkit._entry, section ".printk_index", align 4
@.str.127 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@ta8874z_setaudmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: ta8874z_setaudmode(): mode: 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ta8874z_setaudmode\00", [45 x i8] zeroinitializer }, align 32
@ta8874z_setaudmode._entry_ptr = internal global ptr @ta8874z_setaudmode._entry, section ".printk_index", align 4
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TA8874Z\00", [24 x i8] zeroinitializer }, align 32
@ta8874z_mono = internal global { { i32, <{ i8, i8, [255 x i8] }> }, [88 x i8] } { { i32, <{ i8, i8, [255 x i8] }> } { i32 2, <{ i8, i8, [255 x i8] }> <{ i8 16, i8 16, [255 x i8] zeroinitializer }> }, [88 x i8] zeroinitializer }, align 32
@ta8874z_stereo = internal global { { i32, <{ i8, i8, [255 x i8] }> }, [88 x i8] } { { i32, <{ i8, i8, [255 x i8] }> } { i32 2, <{ i8, i8, [255 x i8] }> <{ i8 0, i8 16, [255 x i8] zeroinitializer }> }, [88 x i8] zeroinitializer }, align 32
@ta8874z_main = internal global { { i32, <{ i8, i8, [255 x i8] }> }, [88 x i8] } { { i32, <{ i8, i8, [255 x i8] }> } { i32 2, <{ i8, i8, [255 x i8] }> <{ i8 0, i8 16, [255 x i8] zeroinitializer }> }, [88 x i8] zeroinitializer }, align 32
@ta8874z_sub = internal global { { i32, <{ i8, i8, [255 x i8] }> }, [88 x i8] } { { i32, <{ i8, i8, [255 x i8] }> } { i32 2, <{ i8, i8, [255 x i8] }> <{ i8 2, i8 16, [255 x i8] zeroinitializer }> }, [88 x i8] zeroinitializer }, align 32
@ta8874z_both = internal global { { i32, <{ i8, i8, [255 x i8] }> }, [88 x i8] } { { i32, <{ i8, i8, [255 x i8] }> } { i32 2, <{ i8, i8, [255 x i8] }> <{ i8 3, i8 16, [255 x i8] zeroinitializer }> }, [88 x i8] zeroinitializer }, align 32
@tvaudio_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @tvaudio_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tvaudio_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr @tvaudio_s_radio, ptr @tvaudio_s_frequency, ptr null, ptr null, ptr @tvaudio_g_tuner, ptr @tvaudio_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@tvaudio_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr null, ptr null, ptr @tvaudio_s_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@tvaudio_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr @tvaudio_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tvaudio_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.3, i32 1895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: Chip: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tvaudio_log_status\00", [45 x i8] zeroinitializer }, align 32
@tvaudio_log_status._entry_ptr = internal global ptr @tvaudio_log_status._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@chip_write_masked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.138, ptr @.str.3, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chip_write_masked\00", [46 x i8] zeroinitializer }, align 32
@chip_write_masked._entry_ptr = internal global ptr @chip_write_masked._entry, section ".printk_index", align 4
@chip_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s: Tried to access a non-existent register range: %d to %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chip_cmd\00", [23 x i8] zeroinitializer }, align 32
@chip_cmd._entry_ptr = internal global ptr @chip_cmd._entry, section ".printk_index", align 4
@chip_cmd._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.3, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: chip_cmd(%s): reg=%d, data:\00", [62 x i8] zeroinitializer }, align 32
@chip_cmd._entry_ptr.143 = internal global ptr @chip_cmd._entry.141, section ".printk_index", align 4
@chip_cmd._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.3, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c 0x%x\00", [24 x i8] zeroinitializer }, align 32
@chip_cmd._entry_ptr.146 = internal global ptr @chip_cmd._entry.144, section ".printk_index", align 4
@chip_cmd._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.140, ptr @.str.3, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@chip_cmd._entry_ptr.148 = internal global ptr @chip_cmd._entry.147, section ".printk_index", align 4
@chip_cmd._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.140, ptr @.str.3, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014%s: I/O error (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@chip_cmd._entry_ptr.151 = internal global ptr @chip_cmd._entry.149, section ".printk_index", align 4
@chip_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.3, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: thread started\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chip_thread\00", [20 x i8] zeroinitializer }, align 32
@chip_thread._entry_ptr = internal global ptr @chip_thread._entry, section ".printk_index", align 4
@chip_thread._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.153, ptr @.str.3, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: thread wakeup\0A\00", [43 x i8] zeroinitializer }, align 32
@chip_thread._entry_ptr.157 = internal global ptr @chip_thread._entry.155, section ".printk_index", align 4
@chip_thread._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.153, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: thread checkmode\0A\00", [40 x i8] zeroinitializer }, align 32
@chip_thread._entry_ptr.160 = internal global ptr @chip_thread._entry.158, section ".printk_index", align 4
@chip_thread._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.153, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: thread exiting\0A\00", [42 x i8] zeroinitializer }, align 32
@chip_thread._entry_ptr.163 = internal global ptr @chip_thread._entry.161, section ".printk_index", align 4
@.str.164 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@switch.table.tda9840_setaudmode = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 42, i32 30, i32 18, i32 26], [44 x i8] zeroinitializer }, align 32
@switch.table.tda8425_setaudmode = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 6, i32 30, i32 20, i32 18, i32 14], [44 x i8] zeroinitializer }, align 32
@switch.table.ta8874z_setaudmode = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ta8874z_mono, ptr @ta8874z_stereo, ptr @ta8874z_sub, ptr @ta8874z_main, ptr @ta8874z_both], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.165 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 17]
@__sancov_gen_cov_switch_values.167 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.170 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.171 = internal global [6 x i64] [i64 4, i64 32, i64 9963781, i64 9963783, i64 9963784, i64 9963785]
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 46, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant [13 x i8] c"tda9874a_SIF\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 878, i32 21 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"tda9874a_AMSEL\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 879, i32 21 }
@___asan_gen_.181 = private unnamed_addr constant [13 x i8] c"tda9874a_STD\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 880, i32 21 }
@___asan_gen_.184 = private unnamed_addr constant [8 x i8] c"tda8425\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1494, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [8 x i8] c"tda9840\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1495, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant [8 x i8] c"tda9850\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1496, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [8 x i8] c"tda9855\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1497, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant [8 x i8] c"tda9873\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1498, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant [9 x i8] c"tda9874a\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1499, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant [8 x i8] c"tda9875\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1500, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant [8 x i8] c"tea6300\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1501, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant [8 x i8] c"tea6320\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1502, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant [8 x i8] c"tea6420\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1503, i32 12 }
@___asan_gen_.214 = private unnamed_addr constant [9 x i8] c"pic16c54\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1504, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant [8 x i8] c"ta8874z\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1505, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant [15 x i8] c"tvaudio_driver\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 2094, i32 26 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 2096, i32 11 }
@___asan_gen_.226 = private unnamed_addr constant [11 x i8] c"tvaudio_id\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 2088, i32 35 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1944, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1945, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1947, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1949, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [12 x i8] c"tvaudio_ops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1925, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1959, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1971, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1974, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1976, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1994, i32 18 }
@___asan_gen_.304 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1996, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [17 x i8] c"tvaudio_ctrl_ops\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1902, i32 35 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 2005, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 2023, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 2048, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 2054, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 2058, i32 18 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 2061, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1522, i32 17 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1538, i32 17 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1558, i32 17 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1571, i32 17 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1590, i32 17 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1602, i32 17 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1627, i32 17 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1649, i32 17 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1672, i32 17 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1685, i32 17 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1709, i32 17 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1724, i32 17 }
@___asan_gen_.382 = private unnamed_addr constant [9 x i8] c"chiplist\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1520, i32 24 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 228, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 233, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 432, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 162, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 167, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 174, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 180, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 187, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 262, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 267, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 763, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 776, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 781, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 784, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 808, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1107, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1110, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant [13 x i8] c"tda9874a_dic\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 875, i32 12 }
@___asan_gen_.517 = private unnamed_addr constant [15 x i8] c"tda9874a_GCONR\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [13 x i8] c"tda9874a_ESP\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 874, i32 12 }
@___asan_gen_.521 = private unnamed_addr constant [14 x i8] c"tda9874a_mode\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 871, i32 12 }
@___asan_gen_.524 = private unnamed_addr constant [15 x i8] c"tda9874a_NCONR\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 873, i32 12 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 927, i32 17 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 951, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 897, i32 5 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 899, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 901, i32 5 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 903, i32 5 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 905, i32 5 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 907, i32 5 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 909, i32 5 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 911, i32 5 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 913, i32 5 }
@___asan_gen_.566 = private unnamed_addr constant [18 x i8] c"tda9874a_modelist\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 896, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 998, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1050, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1089, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1251, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1453, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1476, i32 18 }
@___asan_gen_.617 = private unnamed_addr constant [13 x i8] c"ta8874z_mono\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1442, i32 17 }
@___asan_gen_.620 = private unnamed_addr constant [15 x i8] c"ta8874z_stereo\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1441, i32 17 }
@___asan_gen_.623 = private unnamed_addr constant [13 x i8] c"ta8874z_main\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1443, i32 17 }
@___asan_gen_.626 = private unnamed_addr constant [12 x i8] c"ta8874z_sub\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1444, i32 17 }
@___asan_gen_.629 = private unnamed_addr constant [13 x i8] c"ta8874z_both\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1445, i32 17 }
@___asan_gen_.632 = private unnamed_addr constant [17 x i8] c"tvaudio_core_ops\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1906, i32 42 }
@___asan_gen_.635 = private unnamed_addr constant [18 x i8] c"tvaudio_tuner_ops\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1910, i32 43 }
@___asan_gen_.638 = private unnamed_addr constant [18 x i8] c"tvaudio_audio_ops\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1917, i32 43 }
@___asan_gen_.641 = private unnamed_addr constant [18 x i8] c"tvaudio_video_ops\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1921, i32 43 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 1895, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 207, i32 5 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 282, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 291, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 295, i32 4 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 299, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 304, i32 3 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 332, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 342, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 354, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.714 = private constant [31 x i8] c"../drivers/media/i2c/tvaudio.c\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.714, i32 389, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.717, i32 57, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant [32 x i8] c"switch.table.tda9840_setaudmode\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [32 x i8] c"switch.table.tda8425_setaudmode\00", align 1
@___asan_gen_.721 = private unnamed_addr constant [32 x i8] c"switch.table.ta8874z_setaudmode\00", align 1
@llvm.compiler.used = appending global [271 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_pic16c54type314, ptr @__UNIQUE_ID_ta8874ztype315, ptr @__UNIQUE_ID_tda8425type304, ptr @__UNIQUE_ID_tda9840type305, ptr @__UNIQUE_ID_tda9850type306, ptr @__UNIQUE_ID_tda9855type307, ptr @__UNIQUE_ID_tda9873type308, ptr @__UNIQUE_ID_tda9874a_AMSELtype300, ptr @__UNIQUE_ID_tda9874a_SIFtype299, ptr @__UNIQUE_ID_tda9874a_STDtype301, ptr @__UNIQUE_ID_tda9874atype309, ptr @__UNIQUE_ID_tda9875type310, ptr @__UNIQUE_ID_tea6300type311, ptr @__UNIQUE_ID_tea6320type312, ptr @__UNIQUE_ID_tea6420type313, ptr @__exitcall_tvaudio_driver_exit, ptr @__initcall__kmod_tvaudio__320_2103_tvaudio_driver_init6, ptr @__param_debug, ptr @__param_pic16c54, ptr @__param_ta8874z, ptr @__param_tda8425, ptr @__param_tda9840, ptr @__param_tda9850, ptr @__param_tda9855, ptr @__param_tda9873, ptr @__param_tda9874a, ptr @__param_tda9874a_AMSEL, ptr @__param_tda9874a_SIF, ptr @__param_tda9874a_STD, ptr @__param_tda9875, ptr @__param_tea6300, ptr @__param_tea6320, ptr @__param_tea6420, ptr @chip_cmd._entry, ptr @chip_cmd._entry.141, ptr @chip_cmd._entry.144, ptr @chip_cmd._entry.147, ptr @chip_cmd._entry.149, ptr @chip_cmd._entry_ptr, ptr @chip_cmd._entry_ptr.143, ptr @chip_cmd._entry_ptr.146, ptr @chip_cmd._entry_ptr.148, ptr @chip_cmd._entry_ptr.151, ptr @chip_read._entry, ptr @chip_read._entry.61, ptr @chip_read._entry_ptr, ptr @chip_read._entry_ptr.63, ptr @chip_read2._entry, ptr @chip_read2._entry.82, ptr @chip_read2._entry_ptr, ptr @chip_read2._entry_ptr.84, ptr @chip_thread._entry, ptr @chip_thread._entry.155, ptr @chip_thread._entry.158, ptr @chip_thread._entry.161, ptr @chip_thread._entry_ptr, ptr @chip_thread._entry_ptr.157, ptr @chip_thread._entry_ptr.160, ptr @chip_thread._entry_ptr.163, ptr @chip_write._entry, ptr @chip_write._entry.68, ptr @chip_write._entry.71, ptr @chip_write._entry.74, ptr @chip_write._entry.77, ptr @chip_write._entry_ptr, ptr @chip_write._entry_ptr.70, ptr @chip_write._entry_ptr.73, ptr @chip_write._entry_ptr.76, ptr @chip_write._entry_ptr.79, ptr @chip_write_masked._entry, ptr @chip_write_masked._entry_ptr, ptr @ta8874z_setaudmode._entry, ptr @ta8874z_setaudmode._entry_ptr, ptr @tda9840_getrxsubchans._entry, ptr @tda9840_getrxsubchans._entry_ptr, ptr @tda9873_getrxsubchans._entry, ptr @tda9873_getrxsubchans._entry_ptr, ptr @tda9873_setaudmode._entry, ptr @tda9873_setaudmode._entry.89, ptr @tda9873_setaudmode._entry.92, ptr @tda9873_setaudmode._entry.95, ptr @tda9873_setaudmode._entry_ptr, ptr @tda9873_setaudmode._entry_ptr.91, ptr @tda9873_setaudmode._entry_ptr.94, ptr @tda9873_setaudmode._entry_ptr.97, ptr @tda9874a_checkit._entry, ptr @tda9874a_checkit._entry.100, ptr @tda9874a_checkit._entry_ptr, ptr @tda9874a_checkit._entry_ptr.102, ptr @tda9874a_getrxsubchans._entry, ptr @tda9874a_getrxsubchans._entry_ptr, ptr @tda9874a_setaudmode._entry, ptr @tda9874a_setaudmode._entry.122, ptr @tda9874a_setaudmode._entry_ptr, ptr @tda9874a_setaudmode._entry_ptr.124, ptr @tda9874a_setup._entry, ptr @tda9874a_setup._entry_ptr, ptr @tda9875_checkit._entry, ptr @tda9875_checkit._entry_ptr, ptr @tvaudio_driver_exit, ptr @tvaudio_log_status._entry, ptr @tvaudio_log_status._entry_ptr, ptr @tvaudio_probe._entry, ptr @tvaudio_probe._entry.12, ptr @tvaudio_probe._entry.15, ptr @tvaudio_probe._entry.18, ptr @tvaudio_probe._entry.21, ptr @tvaudio_probe._entry.24, ptr @tvaudio_probe._entry.32, ptr @tvaudio_probe._entry.35, ptr @tvaudio_probe._entry.39, ptr @tvaudio_probe._entry.4, ptr @tvaudio_probe._entry.43, ptr @tvaudio_probe._entry.7, ptr @tvaudio_probe._entry_ptr, ptr @tvaudio_probe._entry_ptr.14, ptr @tvaudio_probe._entry_ptr.17, ptr @tvaudio_probe._entry_ptr.20, ptr @tvaudio_probe._entry_ptr.23, ptr @tvaudio_probe._entry_ptr.26, ptr @tvaudio_probe._entry_ptr.34, ptr @tvaudio_probe._entry_ptr.37, ptr @tvaudio_probe._entry_ptr.41, ptr @tvaudio_probe._entry_ptr.45, ptr @tvaudio_probe._entry_ptr.6, ptr @tvaudio_probe._entry_ptr.9, ptr @debug, ptr @tda9874a_SIF, ptr @tda9874a_AMSEL, ptr @tda9874a_STD, ptr @tda8425, ptr @tda9840, ptr @tda9850, ptr @tda9855, ptr @tda9873, ptr @tda9874a, ptr @tda9875, ptr @tea6300, ptr @tea6320, ptr @tea6420, ptr @pic16c54, ptr @ta8874z, ptr @tvaudio_driver, ptr @.str, ptr @tvaudio_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @tvaudio_ops, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @tvaudio_probe._key, ptr @.str.31, ptr @tvaudio_ctrl_ops, ptr @.str.33, ptr @.str.36, ptr @tvaudio_probe.__key, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @chiplist, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @tda9874a_dic, ptr @tda9874a_GCONR, ptr @tda9874a_ESP, ptr @tda9874a_mode, ptr @tda9874a_NCONR, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @tda9874a_modelist, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @ta8874z_mono, ptr @ta8874z_stereo, ptr @ta8874z_main, ptr @ta8874z_sub, ptr @ta8874z_both, ptr @tvaudio_core_ops, ptr @tvaudio_tuner_ops, ptr @tvaudio_audio_ops, ptr @tvaudio_video_ops, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.164, ptr @switch.table.tda9840_setaudmode, ptr @switch.table.tda8425_setaudmode, ptr @switch.table.ta8874z_setaudmode], section "llvm.metadata"
@0 = internal global [186 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_SIF to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_AMSEL to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_STD to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8425 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9850 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9855 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9873 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9875 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea6300 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea6320 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tea6420 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pic16c54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ta8874z to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chiplist to i32), i32 4836, i32 6048, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_read._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9840_getrxsubchans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_write._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_write._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_write._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_write._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_read2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_read2._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9873_getrxsubchans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9873_setaudmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9873_setaudmode._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9873_setaudmode._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9873_setaudmode._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_checkit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_checkit._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_dic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_GCONR to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_ESP to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_NCONR to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_modelist to i32), i32 2412, i32 3008, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_getrxsubchans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_setaudmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9874a_setaudmode._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9875_checkit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ta8874z_setaudmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ta8874z_mono to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ta8874z_stereo to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ta8874z_main to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ta8874z_sub to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ta8874z_both to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvaudio_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_write_masked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_cmd._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_cmd._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_cmd._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_cmd._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_thread._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_thread._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_thread._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda9840_setaudmode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda8425_setaudmode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ta8874z_setaudmode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tvaudio_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tvaudio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @tvaudio_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_probe(ptr noundef %client, ptr noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  %1 = load ptr, ptr @chiplist, align 4
  %cmp.not365 = icmp eq ptr %1, null
  br i1 %cmp.not365, label %do.end.do.end15_crit_edge, label %do.end.do.end8_crit_edge

do.end.do.end8_crit_edge:                         ; preds = %do.end
  br label %do.end8

do.end.do.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end8:                                          ; preds = %do.end8.do.end8_crit_edge, %do.end.do.end8_crit_edge
  %2 = phi ptr [ %4, %do.end8.do.end8_crit_edge ], [ %1, %do.end.do.end8_crit_edge ]
  %desc.0366 = phi ptr [ %incdec.ptr, %do.end8.do.end8_crit_edge ], [ @chiplist, %do.end.do.end8_crit_edge ]
  %cmp10 = icmp eq ptr %desc.0366, @chiplist
  %cond = select i1 %cmp10, ptr @.str.10, ptr @.str.11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %cond, ptr noundef nonnull %2) #12
  %incdec.ptr = getelementptr %struct.CHIPDESC, ptr %desc.0366, i32 1
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %do.end8.do.end15_crit_edge, label %do.end8.do.end8_crit_edge

do.end8.do.end8_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end8.do.end15_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end15:                                         ; preds = %do.end8.do.end15_crit_edge, %do.end.do.end15_crit_edge
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %if.end

if.end:                                           ; preds = %do.end15, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 728, i32 noundef 3520) #9
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.end.cleanup_crit_edge, label %if.end21

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @tvaudio_ops) #9
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp24 = icmp sgt i32 %5, 0
  br i1 %cmp24, label %do.end28, label %if.end21.do.end34_crit_edge

if.end21.do.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %name30 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %conv = zext i16 %7 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name30, i32 noundef %shl) #12
  br label %do.end34

do.end34:                                         ; preds = %do.end28, %if.end21.do.end34_crit_edge
  %8 = load ptr, ptr @chiplist, align 4
  %cmp37.not367 = icmp eq ptr %8, null
  br i1 %cmp37.not367, label %do.end34.do.body67_crit_edge, label %for.body39.lr.ph

do.end34.do.body67_crit_edge:                     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

for.body39.lr.ph:                                 ; preds = %do.end34
  %addr44 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  br label %for.body39

for.body39:                                       ; preds = %for.inc60.for.body39_crit_edge, %for.body39.lr.ph
  %desc.1368 = phi ptr [ @chiplist, %for.body39.lr.ph ], [ %incdec.ptr61, %for.inc60.for.body39_crit_edge ]
  %insmodopt = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 4
  %9 = ptrtoint ptr %insmodopt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %insmodopt, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp40 = icmp eq i32 %12, 0
  br i1 %cmp40, label %for.body39.for.inc60_crit_edge, label %if.end43

for.body39.for.inc60_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60

if.end43:                                         ; preds = %for.body39
  %13 = ptrtoint ptr %addr44 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr44, align 2
  %conv45 = zext i16 %14 to i32
  %addr_lo = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 1
  %15 = ptrtoint ptr %addr_lo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_lo, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv45)
  %cmp46 = icmp sgt i32 %16, %conv45
  br i1 %cmp46, label %if.end43.for.inc60_crit_edge, label %lor.lhs.false

if.end43.for.inc60_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60

lor.lhs.false:                                    ; preds = %if.end43
  %addr_hi = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 2
  %17 = ptrtoint ptr %addr_hi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr_hi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv45)
  %cmp50 = icmp slt i32 %18, %conv45
  br i1 %cmp50, label %lor.lhs.false.for.inc60_crit_edge, label %if.end53

lor.lhs.false.for.inc60_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60

if.end53:                                         ; preds = %lor.lhs.false
  %checkit = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 5
  %19 = ptrtoint ptr %checkit to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %checkit, align 4
  %tobool54.not = icmp eq ptr %20, null
  br i1 %tobool54.not, label %if.end53.for.end62_crit_edge, label %land.lhs.true

if.end53.for.end62_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end62

land.lhs.true:                                    ; preds = %if.end53
  %call56 = tail call i32 %20(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true.for.inc60_crit_edge, label %land.lhs.true.for.end62_crit_edge

land.lhs.true.for.end62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end62

land.lhs.true.for.inc60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60

for.inc60:                                        ; preds = %land.lhs.true.for.inc60_crit_edge, %lor.lhs.false.for.inc60_crit_edge, %if.end43.for.inc60_crit_edge, %for.body39.for.inc60_crit_edge
  %incdec.ptr61 = getelementptr %struct.CHIPDESC, ptr %desc.1368, i32 1
  %21 = ptrtoint ptr %incdec.ptr61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %incdec.ptr61, align 4
  %cmp37.not = icmp eq ptr %22, null
  br i1 %cmp37.not, label %for.inc60.do.body67_crit_edge, label %for.inc60.for.body39_crit_edge

for.inc60.for.body39_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39

for.inc60.do.body67_crit_edge:                    ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

for.end62:                                        ; preds = %land.lhs.true.for.end62_crit_edge, %if.end53.for.end62_crit_edge
  %23 = ptrtoint ptr %desc.1368 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %desc.1368, align 4
  %cmp64 = icmp eq ptr %.pr, null
  br i1 %cmp64, label %for.end62.do.body67_crit_edge, label %do.end84

for.end62.do.body67_crit_edge:                    ; preds = %for.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

do.body67:                                        ; preds = %for.end62.do.body67_crit_edge, %for.inc60.do.body67_crit_edge, %do.end34.do.body67_crit_edge
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp68 = icmp sgt i32 %24, 0
  br i1 %cmp68, label %do.end73, label %do.body67.cleanup_crit_edge

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %name75 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name75) #12
  br label %cleanup

do.end84:                                         ; preds = %for.end62
  %name86 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %addr44 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr44, align 2
  %conv90 = zext i16 %26 to i32
  %shl91 = shl nuw nsw i32 %conv90, 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %name92 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 12
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name86, ptr noundef nonnull %.pr, i32 noundef %shl91, ptr noundef %name92) #12
  %flags = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 7
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool95.not = icmp eq i32 %30, 0
  br i1 %tobool95.not, label %do.end84.if.end122_crit_edge, label %do.body97

do.end84.if.end122_crit_edge:                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

do.body97:                                        ; preds = %do.end84
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp98 = icmp sgt i32 %31, 0
  br i1 %cmp98, label %do.end103, label %do.body97.if.end122_crit_edge

do.body97.if.end122_crit_edge:                    ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end122

do.end103:                                        ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool108.not = icmp eq i32 %and, 0
  %cond109 = select i1 %tobool108.not, ptr @.str.10, ptr @.str.27
  %and111 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %cond113 = select i1 %tobool112.not, ptr @.str.10, ptr @.str.28
  %and115 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %cond117 = select i1 %tobool116.not, ptr @.str.10, ptr @.str.29
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name86, ptr noundef nonnull %cond109, ptr noundef nonnull %cond113, ptr noundef nonnull %cond117) #12
  br label %if.end122

if.end122:                                        ; preds = %do.end103, %do.body97.if.end122_crit_edge, %do.end84.if.end122_crit_edge
  %tobool123.not = icmp eq ptr %id, null
  br i1 %tobool123.not, label %if.then124, label %if.end122.if.end129_crit_edge

if.end122.if.end129_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then124:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  %name125 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %32 = ptrtoint ptr %desc.1368 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc.1368, align 4
  %call128 = tail call i32 @strscpy(ptr noundef %name125, ptr noundef %33, i32 noundef 20) #9
  br label %if.end129

if.end129:                                        ; preds = %if.then124, %if.end122.if.end129_crit_edge
  %desc130 = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 3
  %34 = ptrtoint ptr %desc130 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %desc.1368, ptr %desc130, align 4
  %registers = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 3
  %35 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %registers, align 4
  %add = add i32 %36, 1
  %shadow = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %shadow to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %shadow, align 4
  %prevmode = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 6
  %38 = ptrtoint ptr %prevmode to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %prevmode, align 4
  %audmode = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 11
  %39 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %audmode, align 4
  %initialize = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 6
  %40 = ptrtoint ptr %initialize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %initialize, align 4
  %cmp131.not = icmp eq ptr %41, null
  br i1 %cmp131.not, label %if.else, label %if.then133

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %call135 = tail call i32 %41(ptr noundef nonnull %call.i) #9
  br label %if.end137

if.else:                                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %init = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 8
  tail call fastcc void @chip_cmd(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.30, ptr noundef %init)
  br label %if.end137

if.end137:                                        ; preds = %if.else, %if.then133
  %hdl = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 1
  %call139 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 5, ptr noundef nonnull @tvaudio_probe._key, ptr noundef nonnull @.str.31) #9
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags, align 4
  %and141 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end137.if.end146_crit_edge, label %if.then143

if.end137.if.end146_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.then143:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  %call145 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvaudio_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  br label %if.end146

if.end146:                                        ; preds = %if.then143, %if.end137.if.end146_crit_edge
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and148 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end146.if.end173_crit_edge, label %if.then150

if.end146.if.end173_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end173

if.then150:                                       ; preds = %if.end146
  %volfunc = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 16
  %46 = ptrtoint ptr %volfunc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %volfunc, align 4
  %tobool151.not = icmp eq ptr %47, null
  br i1 %tobool151.not, label %do.end155, label %if.else162

do.end155:                                        ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name86) #12
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and161 = and i32 %49, -2
  store i32 %and161, ptr %flags, align 4
  br label %if.end173

if.else162:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  %volinit = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 13
  %50 = ptrtoint ptr %volinit to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %volinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool164.not = icmp eq i32 %51, 0
  %spec.select = select i1 %tobool164.not, i32 65535, i32 %51
  %conv167 = sext i32 %spec.select to i64
  %call168 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvaudio_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef %conv167) #9
  %52 = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call168, ptr %52, align 4
  %call170 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvaudio_ctrl_ops, i32 noundef 9963782, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 32768) #9
  %balance = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %balance to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call170, ptr %balance, align 4
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %52) #9
  br label %if.end173

if.end173:                                        ; preds = %if.else162, %do.end155, %if.end146.if.end173_crit_edge
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  %and175 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %if.end173.if.end211_crit_edge, label %if.then177

if.end173.if.end211_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

if.then177:                                       ; preds = %if.end173
  %bassfunc = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 18
  %57 = ptrtoint ptr %bassfunc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bassfunc, align 4
  %tobool178.not = icmp eq ptr %58, null
  br i1 %tobool178.not, label %if.then177.do.end184_crit_edge, label %lor.lhs.false179

if.then177.do.end184_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end184

lor.lhs.false179:                                 ; preds = %if.then177
  %treblefunc = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 17
  %59 = ptrtoint ptr %treblefunc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %treblefunc, align 4
  %tobool180.not = icmp eq ptr %60, null
  br i1 %tobool180.not, label %lor.lhs.false179.do.end184_crit_edge, label %if.else191

lor.lhs.false179.do.end184_crit_edge:             ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end184

do.end184:                                        ; preds = %lor.lhs.false179.do.end184_crit_edge, %if.then177.do.end184_crit_edge
  %call188 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name86) #12
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %and190 = and i32 %62, -3
  store i32 %and190, ptr %flags, align 4
  br label %if.end211

if.else191:                                       ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #11
  %bassinit = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 15
  %63 = ptrtoint ptr %bassinit to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bassinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool193.not = icmp eq i32 %64, 0
  %spec.select359 = select i1 %tobool193.not, i32 32768, i32 %64
  %conv199 = sext i32 %spec.select359 to i64
  %call200 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvaudio_ctrl_ops, i32 noundef 9963783, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef %conv199) #9
  %trebleinit = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 14
  %65 = ptrtoint ptr %trebleinit to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %trebleinit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool202.not = icmp eq i32 %66, 0
  %cond207 = select i1 %tobool202.not, i32 32768, i32 %66
  %conv208 = sext i32 %cond207 to i64
  %call209 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @tvaudio_ctrl_ops, i32 noundef 9963784, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef %conv208) #9
  br label %if.end211

if.end211:                                        ; preds = %if.else191, %do.end184, %if.end173.if.end211_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %67 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 1, i32 9
  %68 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool214.not = icmp eq i32 %69, 0
  br i1 %tobool214.not, label %if.end219, label %if.then215

if.then215:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  br label %cleanup

if.end219:                                        ; preds = %if.end211
  %call221 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #9
  %thread = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 9
  %70 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %thread, align 4
  %wt = getelementptr inbounds %struct.CHIPSTATE, ptr %call.i, i32 0, i32 10
  tail call void @init_timer_key(ptr noundef %wt, ptr noundef nonnull @chip_thread_wake, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @tvaudio_probe.__key) #9
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 4
  %and226 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %if.end219.cleanup_crit_edge, label %if.then228

if.end219.cleanup_crit_edge:                      ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then228:                                       ; preds = %if.end219
  %getrxsubchans = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 19
  %73 = ptrtoint ptr %getrxsubchans to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %getrxsubchans, align 4
  %tobool229.not = icmp eq ptr %74, null
  br i1 %tobool229.not, label %if.then228.do.end235_crit_edge, label %lor.lhs.false230

if.then228.do.end235_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end235

lor.lhs.false230:                                 ; preds = %if.then228
  %setaudmode = getelementptr inbounds %struct.CHIPDESC, ptr %desc.1368, i32 0, i32 20
  %75 = ptrtoint ptr %setaudmode to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %setaudmode, align 4
  %tobool231.not = icmp eq ptr %76, null
  br i1 %tobool231.not, label %lor.lhs.false230.do.end235_crit_edge, label %if.end240

lor.lhs.false230.do.end235_crit_edge:             ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end235

do.end235:                                        ; preds = %lor.lhs.false230.do.end235_crit_edge, %if.then228.do.end235_crit_edge
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name86) #12
  br label %cleanup

if.end240:                                        ; preds = %lor.lhs.false230
  %name241 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call243 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @chip_thread, ptr noundef nonnull %call.i, i32 noundef -1, ptr noundef nonnull @.str.42, ptr noundef %name241) #9
  %cmp.i = icmp ugt ptr %call243, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end255, label %if.end247

if.end247:                                        ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  %call246 = tail call i32 @wake_up_process(ptr noundef %call243) #9
  %77 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call243, ptr %thread, align 4
  br label %cleanup

do.end255:                                        ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call243, ptr %thread, align 4
  %call259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name86) #12
  %79 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %thread, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end255, %if.end247, %do.end235, %if.end219.cleanup_crit_edge, %if.then215, %do.end73, %do.body67.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %69, %if.then215 ], [ 0, %do.end235 ], [ -12, %if.end.cleanup_crit_edge ], [ -5, %do.end73 ], [ -5, %do.body67.cleanup_crit_edge ], [ 0, %if.end247 ], [ 0, %do.end255 ], [ 0, %if.end219.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %wt = getelementptr inbounds %struct.CHIPSTATE, ptr %1, i32 0, i32 10
  %call2 = tail call i32 @del_timer_sync(ptr noundef %wt) #9
  %thread = getelementptr inbounds %struct.CHIPSTATE, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thread, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @kthread_stop(ptr noundef nonnull %3) #9
  %4 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %thread, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #9
  %hdl = getelementptr inbounds %struct.CHIPSTATE, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chip_cmd(ptr noundef %chip, ptr noundef %name, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %bytes = getelementptr inbounds %struct.AUDIOCMD, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bytes, align 4
  %conv = zext i8 %5 to i32
  %add = add i32 %3, -1
  %sub = add i32 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub)
  %cmp3 = icmp ugt i32 %sub, 256
  br i1 %cmp3, label %do.end, label %do.body19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name6 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %add10 = add nuw nsw i32 %conv, 1
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %name6, i32 noundef %add10, i32 noundef %sub) #12
  br label %cleanup

do.body19:                                        ; preds = %if.end
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp20 = icmp sgt i32 %6, 0
  br i1 %cmp20, label %do.end25, label %do.body19.do.end35_crit_edge

do.body19.do.end35_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %name27 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %name27, ptr noundef %name, i32 noundef %conv) #12
  br label %do.end35

do.end35:                                         ; preds = %do.end25, %do.body19.do.end35_crit_edge
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp371 = icmp sgt i32 %8, 1
  br i1 %cmp371, label %do.end35.for.body_crit_edge, label %do.end35.for.end_crit_edge

do.end35.for.end_crit_edge:                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end35.for.body_crit_edge:                      ; preds = %do.end35
  br label %for.body

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %do.end35.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %if.end48.for.body_crit_edge ], [ 1, %do.end35.for.body_crit_edge ]
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.if.end48_crit_edge, label %do.end42

for.body.if.end48_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end42:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx45 = getelementptr %struct.AUDIOCMD, ptr %cmd, i32 0, i32 1, i32 %i.02
  %10 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %11 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %conv46) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %for.body.if.end48_crit_edge
  %arrayidx50 = getelementptr %struct.AUDIOCMD, ptr %cmd, i32 0, i32 1, i32 %i.02
  %12 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx50, align 1
  %14 = ptrtoint ptr %bytes to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bytes, align 4
  %conv54 = zext i8 %15 to i32
  %add55 = add nuw i32 %i.02, %conv54
  %arrayidx56 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 %add55
  %16 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %13, ptr %arrayidx56, align 1
  %inc = add nuw nsw i32 %i.02, 1
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd, align 4
  %cmp37 = icmp slt i32 %inc, %18
  br i1 %cmp37, label %if.end48.for.body_crit_edge, label %if.end48.for.end_crit_edge

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end48.for.end_crit_edge, %do.end35.for.end_crit_edge
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool57.not = icmp eq i32 %19, 0
  br i1 %tobool57.not, label %for.end.if.end64_crit_edge, label %do.end61

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.end61:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %for.end.if.end64_crit_edge
  %20 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %bytes, i32 noundef %21, i16 noundef zeroext 0) #9
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %23)
  %cmp70.not = icmp eq i32 %call.i, %23
  br i1 %cmp70.not, label %if.end64.cleanup_crit_edge, label %do.end75

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end75:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %name77 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef %name77, ptr noundef %name) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end75, %if.end64.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chip_thread_wake(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %thread = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chip_thread(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.CHIPSTATE, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %data, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %name) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call zeroext i1 @set_freezable() #9
  %name167 = getelementptr inbounds %struct.v4l2_subdev, ptr %data, i32 0, i32 9
  %radio = getelementptr inbounds %struct.CHIPSTATE, ptr %data, i32 0, i32 7
  %getrxsubchans = getelementptr inbounds %struct.CHIPDESC, ptr %1, i32 0, i32 19
  %prevmode = getelementptr inbounds %struct.CHIPSTATE, ptr %data, i32 0, i32 6
  %audmode = getelementptr inbounds %struct.CHIPSTATE, ptr %data, i32 0, i32 11
  %setaudmode = getelementptr inbounds %struct.CHIPDESC, ptr %1, i32 0, i32 20
  %wt = getelementptr inbounds %struct.CHIPSTATE, ptr %data, i32 0, i32 10
  br label %__here

__here:                                           ; preds = %__here.backedge, %do.end5
  %3 = tail call i32 @llvm.read_register.i32(metadata !418) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@chip_thread, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 1, ptr %8, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !428
  %call73 = tail call zeroext i1 @kthread_should_stop() #9
  br i1 %call73, label %__here.__here126_crit_edge, label %if.then74

__here.__here126_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here126

if.then74:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @schedule() #9
  br label %__here126

__here126:                                        ; preds = %if.then74, %__here.__here126_crit_edge
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %task_state_change130 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 212
  %12 = ptrtoint ptr %task_state_change130 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 ptrtoint (ptr blockaddress(@chip_thread, %__here126) to i32), ptr %task_state_change130, align 4
  %13 = load ptr, ptr %task, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %13, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !429
  %15 = tail call i32 @llvm.read_register.i32(metadata !418) #9
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i268 = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i268)
  %tobool.not.i = icmp eq i32 %and.i268, 0
  br i1 %tobool.not.i, label %if.then.i, label %__here126.if.end.i_crit_edge

__here126.if.end.i_crit_edge:                     ; preds = %__here126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %__here126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_check_no_locks_held() #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %__here126.if.end.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.164, i32 noundef 57) #9
  %21 = tail call i32 @llvm.read_register.i32(metadata !418) #9
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %25 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !430

if.end.i.try_to_freeze.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %24) #9
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !431

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i.try_to_freeze.exit_crit_edge
  %call157 = tail call zeroext i1 @kthread_should_stop() #9
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp229 = icmp sgt i32 %26, 0
  br i1 %call157, label %do.body228, label %do.body160

do.body160:                                       ; preds = %try_to_freeze.exit
  br i1 %cmp229, label %do.end165, label %do.body160.do.end172_crit_edge

do.body160.do.end172_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end172

do.end165:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #11
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %name167) #12
  br label %do.end172

do.end172:                                        ; preds = %do.end165, %do.body160.do.end172_crit_edge
  %27 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool173.not = icmp eq i32 %28, 0
  br i1 %tobool173.not, label %if.end175, label %do.end172.__here.backedge_crit_edge

do.end172.__here.backedge_crit_edge:              ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here.backedge

if.end175:                                        ; preds = %do.end172
  %29 = ptrtoint ptr %getrxsubchans to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %getrxsubchans, align 4
  %call176 = tail call i32 %30(ptr noundef %data) #9
  %31 = ptrtoint ptr %prevmode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %prevmode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call176, i32 %32)
  %cmp177 = icmp eq i32 %call176, %32
  br i1 %cmp177, label %if.end175.__here.backedge_crit_edge, label %do.body180

if.end175.__here.backedge_crit_edge:              ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here.backedge

do.body180:                                       ; preds = %if.end175
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp181 = icmp sgt i32 %33, 0
  br i1 %cmp181, label %do.end185, label %do.body180.do.end192_crit_edge

do.body180.do.end192_crit_edge:                   ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end192

do.end185:                                        ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #11
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name167) #12
  br label %do.end192

do.end192:                                        ; preds = %do.end185, %do.body180.do.end192_crit_edge
  %34 = ptrtoint ptr %prevmode to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call176, ptr %prevmode, align 4
  %35 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %audmode, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %do.end192.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.end192.sw.bb197_crit_edge
    i32 3, label %do.end192.sw.bb197_crit_edge269
    i32 2, label %sw.bb206
    i32 4, label %sw.bb216
  ]

do.end192.sw.bb197_crit_edge269:                  ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb197

do.end192.sw.bb197_crit_edge:                     ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb197

do.end192.sw.epilog_crit_edge:                    ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %call176, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool194.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool194.not, i32 0, i32 3
  br label %sw.epilog

sw.bb197:                                         ; preds = %do.end192.sw.bb197_crit_edge, %do.end192.sw.bb197_crit_edge269
  %and198 = and i32 %call176, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %if.else, label %sw.bb197.sw.epilog_crit_edge

sw.bb197.sw.epilog_crit_edge:                     ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #11
  %and201 = lshr i32 %call176, 1
  %and201.lobit = and i32 %and201, 1
  br label %sw.epilog

sw.bb206:                                         ; preds = %do.end192
  %and207 = and i32 %call176, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %if.else210, label %sw.bb206.sw.epilog_crit_edge

sw.bb206.sw.epilog_crit_edge:                     ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else210:                                       ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #11
  %and211 = lshr i32 %call176, 1
  %and211.lobit = and i32 %and211, 1
  br label %sw.epilog

sw.bb216:                                         ; preds = %do.end192
  %and217 = and i32 %call176, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.else220, label %sw.bb216.sw.epilog_crit_edge

sw.bb216.sw.epilog_crit_edge:                     ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.else220:                                       ; preds = %sw.bb216
  call void @__sanitizer_cov_trace_pc() #11
  %and221 = lshr i32 %call176, 1
  %and221.lobit = and i32 %and221, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else220, %sw.bb216.sw.epilog_crit_edge, %if.else210, %sw.bb206.sw.epilog_crit_edge, %if.else, %sw.bb197.sw.epilog_crit_edge, %sw.bb, %do.end192.sw.epilog_crit_edge
  %selected.0 = phi i32 [ 0, %do.end192.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ 3, %sw.bb197.sw.epilog_crit_edge ], [ %and201.lobit, %if.else ], [ 2, %sw.bb206.sw.epilog_crit_edge ], [ %and211.lobit, %if.else210 ], [ 4, %sw.bb216.sw.epilog_crit_edge ], [ %and221.lobit, %if.else220 ]
  %38 = ptrtoint ptr %setaudmode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %setaudmode, align 4
  tail call void %39(ptr noundef %data, i32 noundef %selected.0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %40, 200
  %call227 = tail call i32 @mod_timer(ptr noundef %wt, i32 noundef %add) #9
  br label %__here.backedge

__here.backedge:                                  ; preds = %sw.epilog, %if.end175.__here.backedge_crit_edge, %do.end172.__here.backedge_crit_edge
  br label %__here

do.body228:                                       ; preds = %try_to_freeze.exit
  br i1 %cmp229, label %do.end233, label %do.body228.do.end240_crit_edge

do.body228.do.end240_crit_edge:                   ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end240

do.end233:                                        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #11
  %call237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %name167) #12
  br label %do.end240

do.end240:                                        ; preds = %do.end233, %do.body228.do.end240_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9840_checkit(ptr noundef %chip) #2 align 64 {
entry:
  %buffer.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buffer.i) #9
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buffer.i, align 1, !annotation !432
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %do.body7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  %call2..i = select i1 %cmp4.i, i32 %call.i.i, i32 -5
  br label %chip_read.exit

do.body7.i:                                       ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %do.end12.i, label %do.body7.i.do.end19.i_crit_edge

do.body7.i.do.end19.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i

do.end12.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %name14.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer.i, align 1
  %conv.i = zext i8 %5 to i32
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name14.i, i32 noundef %conv.i) #12
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end12.i, %do.body7.i.do.end19.i_crit_edge
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer.i, align 1
  %conv20.i = zext i8 %7 to i32
  br label %chip_read.exit

chip_read.exit:                                   ; preds = %do.end19.i, %do.end.i
  %retval.0.i = phi i32 [ %conv20.i, %do.end19.i ], [ %call2..i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  %8 = and i32 %retval.0.i, -2147483617
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %retval.0 = zext i1 %9 to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9840_getrxsubchans(ptr noundef %chip) #2 align 64 {
entry:
  %buffer.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buffer.i) #9
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buffer.i, align 1, !annotation !432
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %do.body7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  br label %cleanup

do.body7.i:                                       ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %do.end12.i, label %do.body7.i.chip_read.exit_crit_edge

do.body7.i.chip_read.exit_crit_edge:              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_read.exit

do.end12.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %name14.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer.i, align 1
  %conv.i = zext i8 %5 to i32
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name14.i, i32 noundef %conv.i) #12
  br label %chip_read.exit

chip_read.exit:                                   ; preds = %do.end12.i, %do.body7.i.chip_read.exit_crit_edge
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer.i, align 1
  %conv20.i = zext i8 %7 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  %and = and i32 %conv20.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 13
  %and4 = and i32 %conv20.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %mode.1 = select i1 %tobool5.not, i32 %spec.select, i32 2
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %do.end, label %chip_read.exit.cleanup_crit_edge

chip_read.exit.cleanup_crit_edge:                 ; preds = %chip_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %chip_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name, i32 noundef %conv20.i, i32 noundef %mode.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %chip_read.exit.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %mode.1, %do.end ], [ %mode.1, %chip_read.exit.cleanup_crit_edge ], [ 1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda9840_setaudmode(ptr noundef %chip, i32 noundef %mode) #2 align 64 {
entry:
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode)
  %0 = icmp ult i32 %mode, 5
  br i1 %0, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

switch.lookup:                                    ; preds = %entry
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, -127
  %and = zext i8 %3 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tda9840_setaudmode, i32 0, i32 %mode
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %or8 = or i32 %switch.load, %and
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #9
  %7 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp39.i = icmp sgt i32 %8, 0
  br i1 %cmp39.i, label %do.end44.i, label %switch.lookup.do.end51.i_crit_edge

switch.lookup.do.end51.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end44.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i, i32 noundef 0, i32 noundef %or8) #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end44.i, %switch.lookup.do.end51.i_crit_edge
  %conv52.i = trunc i32 %or8 to i8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv52.i, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %buffer.i, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv52.i, ptr %7, align 1
  %call.i108.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i)
  %cmp63.not.i = icmp eq i32 %call.i108.i, 2
  br i1 %cmp63.not.i, label %do.end51.i.chip_write.exit_crit_edge, label %do.end68.i

do.end51.i.chip_write.exit_crit_edge:             ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit

do.end68.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i, i32 noundef 0, i32 noundef %or8) #12
  br label %chip_write.exit

chip_write.exit:                                  ; preds = %do.end68.i, %do.end51.i.chip_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #9
  br label %if.end

if.end:                                           ; preds = %chip_write.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9873_checkit(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @chip_read2(ptr noundef %chip, i32 noundef 254)
  %0 = and i32 %call, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %0)
  %1 = icmp eq i32 %0, 128
  %retval.0 = zext i1 %1 to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9873_getrxsubchans(ptr noundef %chip) #2 align 64 {
entry:
  %buffer.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buffer.i) #9
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buffer.i, align 1, !annotation !432
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %do.body7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  br label %cleanup

do.body7.i:                                       ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %do.end12.i, label %do.body7.i.chip_read.exit_crit_edge

do.body7.i.chip_read.exit_crit_edge:              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_read.exit

do.end12.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %name14.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer.i, align 1
  %conv.i = zext i8 %5 to i32
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name14.i, i32 noundef %conv.i) #12
  br label %chip_read.exit

chip_read.exit:                                   ; preds = %do.end12.i, %do.body7.i.chip_read.exit_crit_edge
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer.i, align 1
  %conv20.i = zext i8 %7 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  %and = and i32 %conv20.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  %and4 = and i32 %conv20.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %or = or i32 %spec.select, 12
  %mode.1 = select i1 %tobool5.not, i32 %spec.select, i32 %or
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp sgt i32 %8, 0
  br i1 %cmp8, label %do.end, label %chip_read.exit.cleanup_crit_edge

chip_read.exit.cleanup_crit_edge:                 ; preds = %chip_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %chip_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name, i32 noundef %conv20.i, i32 noundef %mode.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %chip_read.exit.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ %mode.1, %do.end ], [ %mode.1, %chip_read.exit.cleanup_crit_edge ], [ 1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda9873_setaudmode(ptr noundef %chip, i32 noundef %mode) #2 align 64 {
entry:
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 227
  %and2 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp.not = icmp eq i32 %and2, 0
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp12 = icmp sgt i32 %2, 0
  br i1 %cmp.not, label %do.body11, label %do.body

do.body:                                          ; preds = %entry
  br i1 %cmp12, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name) #12
  br label %cleanup

do.body11:                                        ; preds = %entry
  br i1 %cmp12, label %do.body29, label %do.body11.do.end42_crit_edge

do.body11.do.end42_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

do.body29:                                        ; preds = %do.body11
  %name19 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name19, i32 noundef 1, i32 noundef %conv) #12
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp30 = icmp sgt i32 %.pr, 0
  br i1 %cmp30, label %do.end35, label %do.body29.do.end42_crit_edge

do.body29.do.end42_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end42

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %name19, i32 noundef %and) #12
  br label %do.end42

do.end42:                                         ; preds = %do.end35, %do.body29.do.end42_crit_edge, %do.body11.do.end42_crit_edge
  %3 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %mode, label %do.end42.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb43
    i32 3, label %sw.bb45
    i32 2, label %sw.bb47
    i32 4, label %do.end42.sw.epilog_crit_edge
  ]

do.end42.sw.epilog_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %and, 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %or44 = or i32 %and, 16
  br label %sw.epilog

sw.bb45:                                          ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %or46 = or i32 %and, 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %or48 = or i32 %and, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb, %do.end42.sw.epilog_crit_edge
  %sw_data.0 = phi i32 [ %or48, %sw.bb47 ], [ %or46, %sw.bb45 ], [ %or44, %sw.bb43 ], [ %or, %sw.bb ], [ %and, %do.end42.sw.epilog_crit_edge ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp39.i = icmp sgt i32 %7, 0
  br i1 %cmp39.i, label %do.end44.i, label %sw.epilog.do.end51.i_crit_edge

sw.epilog.do.end51.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end44.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i, i32 noundef 0, i32 noundef %sw_data.0) #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end44.i, %sw.epilog.do.end51.i_crit_edge
  %conv52.i = trunc i32 %sw_data.0 to i8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv52.i, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %buffer.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv52.i, ptr %6, align 1
  %call.i108.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i)
  %cmp63.not.i = icmp eq i32 %call.i108.i, 2
  br i1 %cmp63.not.i, label %do.end51.i.chip_write.exit_crit_edge, label %do.end68.i

do.end51.i.chip_write.exit_crit_edge:             ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit

do.end68.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i, i32 noundef 0, i32 noundef %sw_data.0) #12
  br label %chip_write.exit

chip_write.exit:                                  ; preds = %do.end68.i, %do.end51.i.chip_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #9
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp53 = icmp sgt i32 %11, 0
  br i1 %cmp53, label %do.end58, label %chip_write.exit.cleanup_crit_edge

chip_write.exit.cleanup_crit_edge:                ; preds = %chip_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end58:                                         ; preds = %chip_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name60 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name60, i32 noundef %mode, i32 noundef %sw_data.0) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %chip_write.exit.cleanup_crit_edge, %do.end42.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9874a_checkit(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @chip_read2(ptr noundef %chip, i32 noundef 254)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @chip_read2(ptr noundef %chip, i32 noundef 255)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %do.end, label %do.body.do.end12_crit_edge

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name, i32 noundef %call, i32 noundef %call2) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %call, label %do.end12.cleanup_crit_edge [
    i32 17, label %do.end12.do.end18_crit_edge
    i32 7, label %do.end18.fold.split
  ]

do.end12.do.end18_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18.fold.split:                              ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end18:                                         ; preds = %do.end18.fold.split, %do.end12.do.end18_crit_edge
  %cond = phi ptr [ @.str.103, %do.end12.do.end18_crit_edge ], [ @.str.104, %do.end18.fold.split ]
  %name20 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %name20, ptr noundef nonnull %cond) #12
  store i32 %call, ptr @tda9874a_dic, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end18 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9874a_initialize(ptr noundef %chip) #2 align 64 {
entry:
  %buffer.i296.i = alloca [2 x i8], align 1
  %buffer.i278.i = alloca [2 x i8], align 1
  %buffer.i261.i = alloca [2 x i8], align 1
  %buffer.i243.i = alloca [2 x i8], align 1
  %buffer.i225.i = alloca [2 x i8], align 1
  %buffer.i208.i = alloca [2 x i8], align 1
  %buffer.i190.i = alloca [2 x i8], align 1
  %buffer.i173.i = alloca [2 x i8], align 1
  %buffer.i156.i = alloca [2 x i8], align 1
  %buffer.i139.i = alloca [2 x i8], align 1
  %buffer.i122.i = alloca [2 x i8], align 1
  %buffer.i104.i = alloca [2 x i8], align 1
  %buffer.i87.i = alloca [2 x i8], align 1
  %buffer.i70.i = alloca [2 x i8], align 1
  %buffer.i53.i = alloca [2 x i8], align 1
  %buffer.i36.i = alloca [2 x i8], align 1
  %buffer.i18.i = alloca [2 x i8], align 1
  %buffer.i1.i = alloca [2 x i8], align 1
  %buffer.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tda9874a_SIF, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp ugt i32 %0, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i32 1, ptr @tda9874a_SIF, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load i32, ptr @tda9874a_STD, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp1 = icmp ugt i32 %1, 8
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @tda9874a_STD, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %2 = load i32, ptr @tda9874a_AMSEL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp4 = icmp ugt i32 %2, 1
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr @tda9874a_AMSEL, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %3 = load i32, ptr @tda9874a_SIF, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp ne i32 %3, 1
  store i1 %cmp7, ptr @tda9874a_GCONR, align 4
  %4 = load i32, ptr @tda9874a_STD, align 4
  store i32 %4, ptr @tda9874a_ESP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp10 = icmp ugt i32 %4, 4
  %cond = zext i1 %cmp10 to i32
  store i32 %cond, ptr @tda9874a_mode, align 4
  %5 = load i32, ptr @tda9874a_AMSEL, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11 = icmp eq i32 %5, 0
  %storemerge = select i1 %cmp11, i32 1, i32 5
  store i32 %storemerge, ptr @tda9874a_NCONR, align 4
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i.i) #9
  %8 = getelementptr inbounds [2 x i8], ptr %buffer.i.i, i32 0, i32 1
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp39.i.i = icmp sgt i32 %9, 0
  br i1 %cmp39.i.i, label %do.end44.i.i, label %if.end6.do.end51.i.i_crit_edge

if.end6.do.end51.i.i_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i.i

do.end44.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i.i, i32 noundef 0, i32 noundef 0) #12
  br label %do.end51.i.i

do.end51.i.i:                                     ; preds = %do.end44.i.i, %if.end6.do.end51.i.i_crit_edge
  %arrayidx56.i.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx56.i.i, align 1
  %11 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buffer.i.i, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %8, align 1
  %call.i108.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buffer.i.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i.i)
  %cmp63.not.i.i = icmp eq i32 %call.i108.i.i, 2
  br i1 %cmp63.not.i.i, label %do.end51.i.i.chip_write.exit.i_crit_edge, label %do.end68.i.i

do.end51.i.i.chip_write.exit.i_crit_edge:         ; preds = %do.end51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit.i

do.end68.i.i:                                     ; preds = %do.end51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i.i, i32 noundef 0, i32 noundef 0) #12
  br label %chip_write.exit.i

chip_write.exit.i:                                ; preds = %do.end68.i.i, %do.end51.i.i.chip_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i.i) #9
  %.b.i = load i1, ptr @tda9874a_GCONR, align 4
  %13 = select i1 %.b.i, i32 193, i32 192
  %14 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i1.i) #9
  %16 = getelementptr inbounds [2 x i8], ptr %buffer.i1.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1, !annotation !432
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp39.i3.i = icmp sgt i32 %18, 0
  br i1 %cmp39.i3.i, label %do.end44.i6.i, label %chip_write.exit.i.do.end51.i10.i_crit_edge

chip_write.exit.i.do.end51.i10.i_crit_edge:       ; preds = %chip_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i10.i

do.end44.i6.i:                                    ; preds = %chip_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i4.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i4.i, i32 noundef 1, i32 noundef %13) #12
  br label %do.end51.i10.i

do.end51.i10.i:                                   ; preds = %do.end44.i6.i, %chip_write.exit.i.do.end51.i10.i_crit_edge
  %conv52.i.i = trunc i32 %13 to i8
  %arrayidx56.i7.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx56.i7.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv52.i.i, ptr %arrayidx56.i7.i, align 1
  %20 = ptrtoint ptr %buffer.i1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %buffer.i1.i, align 1
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv52.i.i, ptr %16, align 1
  %call.i108.i8.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %buffer.i1.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i8.i)
  %cmp63.not.i9.i = icmp eq i32 %call.i108.i8.i, 2
  br i1 %cmp63.not.i9.i, label %do.end51.i10.i.chip_write.exit17.i_crit_edge, label %do.end68.i15.i

do.end51.i10.i.chip_write.exit17.i_crit_edge:     ; preds = %do.end51.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit17.i

do.end68.i15.i:                                   ; preds = %do.end51.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i11.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i11.i, i32 noundef 1, i32 noundef %13) #12
  br label %chip_write.exit17.i

chip_write.exit17.i:                              ; preds = %do.end68.i15.i, %do.end51.i10.i.chip_write.exit17.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i1.i) #9
  %22 = load i32, ptr @tda9874a_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 3
  %23 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i18.i) #9
  %25 = getelementptr inbounds [2 x i8], ptr %buffer.i18.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %25, align 1, !annotation !432
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp39.i20.i = icmp sgt i32 %27, 0
  br i1 %cmp39.i20.i, label %do.end44.i23.i, label %chip_write.exit17.i.do.end51.i28.i_crit_edge

chip_write.exit17.i.do.end51.i28.i_crit_edge:     ; preds = %chip_write.exit17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i28.i

do.end44.i23.i:                                   ; preds = %chip_write.exit17.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i21.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i21.i, i32 noundef 2, i32 noundef %cond.i) #12
  br label %do.end51.i28.i

do.end51.i28.i:                                   ; preds = %do.end44.i23.i, %chip_write.exit17.i.do.end51.i28.i_crit_edge
  %conv52.i24.i = trunc i32 %cond.i to i8
  %arrayidx56.i25.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx56.i25.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv52.i24.i, ptr %arrayidx56.i25.i, align 1
  %29 = ptrtoint ptr %buffer.i18.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %buffer.i18.i, align 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv52.i24.i, ptr %25, align 1
  %call.i108.i26.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %buffer.i18.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i26.i)
  %cmp63.not.i27.i = icmp eq i32 %call.i108.i26.i, 2
  br i1 %cmp63.not.i27.i, label %do.end51.i28.i.chip_write.exit35.i_crit_edge, label %do.end68.i33.i

do.end51.i28.i.chip_write.exit35.i_crit_edge:     ; preds = %do.end51.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit35.i

do.end68.i33.i:                                   ; preds = %do.end51.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i29.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i29.i, i32 noundef 2, i32 noundef %cond.i) #12
  br label %chip_write.exit35.i

chip_write.exit35.i:                              ; preds = %do.end68.i33.i, %do.end51.i28.i.chip_write.exit35.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i18.i) #9
  %31 = load i32, ptr @tda9874a_dic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %31)
  %cmp.i = icmp eq i32 %31, 17
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %chip_write.exit35.i
  %32 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i36.i) #9
  %34 = getelementptr inbounds [2 x i8], ptr %buffer.i36.i, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %34, align 1, !annotation !432
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp39.i38.i = icmp sgt i32 %36, 0
  br i1 %cmp39.i38.i, label %do.end44.i41.i, label %if.then.i.do.end51.i45.i_crit_edge

if.then.i.do.end51.i45.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i45.i

do.end44.i41.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i39.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i39.i, i32 noundef 11, i32 noundef 128) #12
  br label %do.end51.i45.i

do.end51.i45.i:                                   ; preds = %do.end44.i41.i, %if.then.i.do.end51.i45.i_crit_edge
  %arrayidx56.i42.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 12
  %37 = ptrtoint ptr %arrayidx56.i42.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -128, ptr %arrayidx56.i42.i, align 1
  %38 = ptrtoint ptr %buffer.i36.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 11, ptr %buffer.i36.i, align 1
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -128, ptr %34, align 1
  %call.i108.i43.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %buffer.i36.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i43.i)
  %cmp63.not.i44.i = icmp eq i32 %call.i108.i43.i, 2
  br i1 %cmp63.not.i44.i, label %do.end51.i45.i.chip_write.exit52.i_crit_edge, label %do.end68.i50.i

do.end51.i45.i.chip_write.exit52.i_crit_edge:     ; preds = %do.end51.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit52.i

do.end68.i50.i:                                   ; preds = %do.end51.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i46.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i46.i, i32 noundef 11, i32 noundef 128) #12
  br label %chip_write.exit52.i

chip_write.exit52.i:                              ; preds = %do.end68.i50.i, %do.end51.i45.i.chip_write.exit52.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i36.i) #9
  br label %if.end.i

if.else.i:                                        ; preds = %chip_write.exit35.i
  %40 = load i32, ptr @tda9874a_STD, align 4
  %cmd.i = getelementptr [9 x %struct.tda9874a_MODES], ptr @tda9874a_modelist, i32 0, i32 %40, i32 1
  call fastcc void @chip_cmd(ptr noundef %chip, ptr noundef nonnull @.str.105, ptr noundef %cmd.i) #9
  %41 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i53.i) #9
  %43 = getelementptr inbounds [2 x i8], ptr %buffer.i53.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %43, align 1, !annotation !432
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp39.i55.i = icmp sgt i32 %45, 0
  br i1 %cmp39.i55.i, label %do.end44.i58.i, label %if.else.i.do.end51.i62.i_crit_edge

if.else.i.do.end51.i62.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i62.i

do.end44.i58.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i56.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i56.i, i32 noundef 11, i32 noundef 0) #12
  br label %do.end51.i62.i

do.end51.i62.i:                                   ; preds = %do.end44.i58.i, %if.else.i.do.end51.i62.i_crit_edge
  %arrayidx56.i59.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 12
  %46 = ptrtoint ptr %arrayidx56.i59.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx56.i59.i, align 1
  %47 = ptrtoint ptr %buffer.i53.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 11, ptr %buffer.i53.i, align 1
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %43, align 1
  %call.i108.i60.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef nonnull %buffer.i53.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i60.i)
  %cmp63.not.i61.i = icmp eq i32 %call.i108.i60.i, 2
  br i1 %cmp63.not.i61.i, label %do.end51.i62.i.chip_write.exit69.i_crit_edge, label %do.end68.i67.i

do.end51.i62.i.chip_write.exit69.i_crit_edge:     ; preds = %do.end51.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit69.i

do.end68.i67.i:                                   ; preds = %do.end51.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i63.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i63.i, i32 noundef 11, i32 noundef 0) #12
  br label %chip_write.exit69.i

chip_write.exit69.i:                              ; preds = %do.end68.i67.i, %do.end51.i62.i.chip_write.exit69.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i53.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %chip_write.exit69.i, %chip_write.exit52.i
  %49 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i70.i) #9
  %51 = getelementptr inbounds [2 x i8], ptr %buffer.i70.i, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %51, align 1, !annotation !432
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp39.i72.i = icmp sgt i32 %53, 0
  br i1 %cmp39.i72.i, label %do.end44.i75.i, label %if.end.i.do.end51.i79.i_crit_edge

if.end.i.do.end51.i79.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i79.i

do.end44.i75.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i73.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i73.i, i32 noundef 12, i32 noundef 0) #12
  br label %do.end51.i79.i

do.end51.i79.i:                                   ; preds = %do.end44.i75.i, %if.end.i.do.end51.i79.i_crit_edge
  %arrayidx56.i76.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 13
  %54 = ptrtoint ptr %arrayidx56.i76.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx56.i76.i, align 1
  %55 = ptrtoint ptr %buffer.i70.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 12, ptr %buffer.i70.i, align 1
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %51, align 1
  %call.i108.i77.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %50, ptr noundef nonnull %buffer.i70.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i77.i)
  %cmp63.not.i78.i = icmp eq i32 %call.i108.i77.i, 2
  br i1 %cmp63.not.i78.i, label %do.end51.i79.i.chip_write.exit86.i_crit_edge, label %do.end68.i84.i

do.end51.i79.i.chip_write.exit86.i_crit_edge:     ; preds = %do.end51.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit86.i

do.end68.i84.i:                                   ; preds = %do.end51.i79.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i80.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i80.i, i32 noundef 12, i32 noundef 0) #12
  br label %chip_write.exit86.i

chip_write.exit86.i:                              ; preds = %do.end68.i84.i, %do.end51.i79.i.chip_write.exit86.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i70.i) #9
  %57 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i87.i) #9
  %59 = getelementptr inbounds [2 x i8], ptr %buffer.i87.i, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %59, align 1, !annotation !432
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp39.i89.i = icmp sgt i32 %61, 0
  br i1 %cmp39.i89.i, label %do.end44.i92.i, label %chip_write.exit86.i.do.end51.i96.i_crit_edge

chip_write.exit86.i.do.end51.i96.i_crit_edge:     ; preds = %chip_write.exit86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i96.i

do.end44.i92.i:                                   ; preds = %chip_write.exit86.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i90.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i91.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i90.i, i32 noundef 13, i32 noundef 0) #12
  br label %do.end51.i96.i

do.end51.i96.i:                                   ; preds = %do.end44.i92.i, %chip_write.exit86.i.do.end51.i96.i_crit_edge
  %arrayidx56.i93.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 14
  %62 = ptrtoint ptr %arrayidx56.i93.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx56.i93.i, align 1
  %63 = ptrtoint ptr %buffer.i87.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 13, ptr %buffer.i87.i, align 1
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %59, align 1
  %call.i108.i94.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %58, ptr noundef nonnull %buffer.i87.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i94.i)
  %cmp63.not.i95.i = icmp eq i32 %call.i108.i94.i, 2
  br i1 %cmp63.not.i95.i, label %do.end51.i96.i.chip_write.exit103.i_crit_edge, label %do.end68.i101.i

do.end51.i96.i.chip_write.exit103.i_crit_edge:    ; preds = %do.end51.i96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit103.i

do.end68.i101.i:                                  ; preds = %do.end51.i96.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i97.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i97.i, i32 noundef 13, i32 noundef 0) #12
  br label %chip_write.exit103.i

chip_write.exit103.i:                             ; preds = %do.end68.i101.i, %do.end51.i96.i.chip_write.exit103.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i87.i) #9
  %65 = load i32, ptr @tda9874a_NCONR, align 4
  %66 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i104.i) #9
  %68 = getelementptr inbounds [2 x i8], ptr %buffer.i104.i, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %68, align 1, !annotation !432
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp39.i106.i = icmp sgt i32 %70, 0
  br i1 %cmp39.i106.i, label %do.end44.i109.i, label %chip_write.exit103.i.do.end51.i114.i_crit_edge

chip_write.exit103.i.do.end51.i114.i_crit_edge:   ; preds = %chip_write.exit103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i114.i

do.end44.i109.i:                                  ; preds = %chip_write.exit103.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i107.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i107.i, i32 noundef 14, i32 noundef %65) #12
  br label %do.end51.i114.i

do.end51.i114.i:                                  ; preds = %do.end44.i109.i, %chip_write.exit103.i.do.end51.i114.i_crit_edge
  %conv52.i110.i = trunc i32 %65 to i8
  %arrayidx56.i111.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 15
  %71 = ptrtoint ptr %arrayidx56.i111.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv52.i110.i, ptr %arrayidx56.i111.i, align 1
  %72 = ptrtoint ptr %buffer.i104.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 14, ptr %buffer.i104.i, align 1
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv52.i110.i, ptr %68, align 1
  %call.i108.i112.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %67, ptr noundef nonnull %buffer.i104.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i112.i)
  %cmp63.not.i113.i = icmp eq i32 %call.i108.i112.i, 2
  br i1 %cmp63.not.i113.i, label %do.end51.i114.i.chip_write.exit121.i_crit_edge, label %do.end68.i119.i

do.end51.i114.i.chip_write.exit121.i_crit_edge:   ; preds = %do.end51.i114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit121.i

do.end68.i119.i:                                  ; preds = %do.end51.i114.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i115.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i116.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i115.i, i32 noundef 14, i32 noundef %65) #12
  br label %chip_write.exit121.i

chip_write.exit121.i:                             ; preds = %do.end68.i119.i, %do.end51.i114.i.chip_write.exit121.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i104.i) #9
  %74 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i122.i) #9
  %76 = getelementptr inbounds [2 x i8], ptr %buffer.i122.i, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -1, ptr %76, align 1, !annotation !432
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp39.i124.i = icmp sgt i32 %78, 0
  br i1 %cmp39.i124.i, label %do.end44.i127.i, label %chip_write.exit121.i.do.end51.i131.i_crit_edge

chip_write.exit121.i.do.end51.i131.i_crit_edge:   ; preds = %chip_write.exit121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i131.i

do.end44.i127.i:                                  ; preds = %chip_write.exit121.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i125.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i125.i, i32 noundef 15, i32 noundef 0) #12
  br label %do.end51.i131.i

do.end51.i131.i:                                  ; preds = %do.end44.i127.i, %chip_write.exit121.i.do.end51.i131.i_crit_edge
  %arrayidx56.i128.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 16
  %79 = ptrtoint ptr %arrayidx56.i128.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %arrayidx56.i128.i, align 1
  %80 = ptrtoint ptr %buffer.i122.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 15, ptr %buffer.i122.i, align 1
  %81 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %76, align 1
  %call.i108.i129.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %75, ptr noundef nonnull %buffer.i122.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i129.i)
  %cmp63.not.i130.i = icmp eq i32 %call.i108.i129.i, 2
  br i1 %cmp63.not.i130.i, label %do.end51.i131.i.chip_write.exit138.i_crit_edge, label %do.end68.i136.i

do.end51.i131.i.chip_write.exit138.i_crit_edge:   ; preds = %do.end51.i131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit138.i

do.end68.i136.i:                                  ; preds = %do.end51.i131.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i132.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i133.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i132.i, i32 noundef 15, i32 noundef 0) #12
  br label %chip_write.exit138.i

chip_write.exit138.i:                             ; preds = %do.end68.i136.i, %do.end51.i131.i.chip_write.exit138.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i122.i) #9
  %82 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i139.i) #9
  %84 = getelementptr inbounds [2 x i8], ptr %buffer.i139.i, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -1, ptr %84, align 1, !annotation !432
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp39.i141.i = icmp sgt i32 %86, 0
  br i1 %cmp39.i141.i, label %do.end44.i144.i, label %chip_write.exit138.i.do.end51.i148.i_crit_edge

chip_write.exit138.i.do.end51.i148.i_crit_edge:   ; preds = %chip_write.exit138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i148.i

do.end44.i144.i:                                  ; preds = %chip_write.exit138.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i142.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i143.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i142.i, i32 noundef 16, i32 noundef 20) #12
  br label %do.end51.i148.i

do.end51.i148.i:                                  ; preds = %do.end44.i144.i, %chip_write.exit138.i.do.end51.i148.i_crit_edge
  %arrayidx56.i145.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 17
  %87 = ptrtoint ptr %arrayidx56.i145.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 20, ptr %arrayidx56.i145.i, align 1
  %88 = ptrtoint ptr %buffer.i139.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 16, ptr %buffer.i139.i, align 1
  %89 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 20, ptr %84, align 1
  %call.i108.i146.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %83, ptr noundef nonnull %buffer.i139.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i146.i)
  %cmp63.not.i147.i = icmp eq i32 %call.i108.i146.i, 2
  br i1 %cmp63.not.i147.i, label %do.end51.i148.i.chip_write.exit155.i_crit_edge, label %do.end68.i153.i

do.end51.i148.i.chip_write.exit155.i_crit_edge:   ; preds = %do.end51.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit155.i

do.end68.i153.i:                                  ; preds = %do.end51.i148.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i149.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i149.i, i32 noundef 16, i32 noundef 20) #12
  br label %chip_write.exit155.i

chip_write.exit155.i:                             ; preds = %do.end68.i153.i, %do.end51.i148.i.chip_write.exit155.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i139.i) #9
  %90 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i156.i) #9
  %92 = getelementptr inbounds [2 x i8], ptr %buffer.i156.i, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %92, align 1, !annotation !432
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp39.i158.i = icmp sgt i32 %94, 0
  br i1 %cmp39.i158.i, label %do.end44.i161.i, label %chip_write.exit155.i.do.end51.i165.i_crit_edge

chip_write.exit155.i.do.end51.i165.i_crit_edge:   ; preds = %chip_write.exit155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i165.i

do.end44.i161.i:                                  ; preds = %chip_write.exit155.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i159.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i159.i, i32 noundef 17, i32 noundef 80) #12
  br label %do.end51.i165.i

do.end51.i165.i:                                  ; preds = %do.end44.i161.i, %chip_write.exit155.i.do.end51.i165.i_crit_edge
  %arrayidx56.i162.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 18
  %95 = ptrtoint ptr %arrayidx56.i162.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 80, ptr %arrayidx56.i162.i, align 1
  %96 = ptrtoint ptr %buffer.i156.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 17, ptr %buffer.i156.i, align 1
  %97 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 80, ptr %92, align 1
  %call.i108.i163.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %91, ptr noundef nonnull %buffer.i156.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i163.i)
  %cmp63.not.i164.i = icmp eq i32 %call.i108.i163.i, 2
  br i1 %cmp63.not.i164.i, label %do.end51.i165.i.chip_write.exit172.i_crit_edge, label %do.end68.i170.i

do.end51.i165.i.chip_write.exit172.i_crit_edge:   ; preds = %do.end51.i165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit172.i

do.end68.i170.i:                                  ; preds = %do.end51.i165.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i166.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i167.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i166.i, i32 noundef 17, i32 noundef 80) #12
  br label %chip_write.exit172.i

chip_write.exit172.i:                             ; preds = %do.end68.i170.i, %do.end51.i165.i.chip_write.exit172.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i156.i) #9
  %98 = load i32, ptr @tda9874a_dic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %98)
  %cmp13.i = icmp eq i32 %98, 17
  %99 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_priv.i.i.i, align 4
  br i1 %cmp13.i, label %if.then14.i, label %if.else24.i

if.then14.i:                                      ; preds = %chip_write.exit172.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i173.i) #9
  %101 = getelementptr inbounds [2 x i8], ptr %buffer.i173.i, i32 0, i32 1
  %102 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp39.i175.i = icmp sgt i32 %102, 0
  br i1 %cmp39.i175.i, label %do.end44.i178.i, label %if.then14.i.do.end51.i182.i_crit_edge

if.then14.i.do.end51.i182.i_crit_edge:            ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i182.i

do.end44.i178.i:                                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i176.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i177.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i176.i, i32 noundef 18, i32 noundef 249) #12
  br label %do.end51.i182.i

do.end51.i182.i:                                  ; preds = %do.end44.i178.i, %if.then14.i.do.end51.i182.i_crit_edge
  %arrayidx56.i179.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 19
  %103 = ptrtoint ptr %arrayidx56.i179.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -7, ptr %arrayidx56.i179.i, align 1
  %104 = ptrtoint ptr %buffer.i173.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 18, ptr %buffer.i173.i, align 1
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 -7, ptr %101, align 1
  %call.i108.i180.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %100, ptr noundef nonnull %buffer.i173.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i180.i)
  %cmp63.not.i181.i = icmp eq i32 %call.i108.i180.i, 2
  br i1 %cmp63.not.i181.i, label %do.end51.i182.i.chip_write.exit189.i_crit_edge, label %do.end68.i187.i

do.end51.i182.i.chip_write.exit189.i_crit_edge:   ; preds = %do.end51.i182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit189.i

do.end68.i187.i:                                  ; preds = %do.end51.i182.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i183.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i184.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i183.i, i32 noundef 18, i32 noundef 249) #12
  br label %chip_write.exit189.i

chip_write.exit189.i:                             ; preds = %do.end68.i187.i, %do.end51.i182.i.chip_write.exit189.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i173.i) #9
  %106 = load i32, ptr @tda9874a_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool16.not.i = icmp eq i32 %106, 0
  %cond17.i = select i1 %tobool16.not.i, i32 128, i32 129
  %107 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i190.i) #9
  %109 = getelementptr inbounds [2 x i8], ptr %buffer.i190.i, i32 0, i32 1
  %110 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp39.i192.i = icmp sgt i32 %110, 0
  br i1 %cmp39.i192.i, label %do.end44.i195.i, label %chip_write.exit189.i.do.end51.i200.i_crit_edge

chip_write.exit189.i.do.end51.i200.i_crit_edge:   ; preds = %chip_write.exit189.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i200.i

do.end44.i195.i:                                  ; preds = %chip_write.exit189.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i193.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i194.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i193.i, i32 noundef 19, i32 noundef %cond17.i) #12
  br label %do.end51.i200.i

do.end51.i200.i:                                  ; preds = %do.end44.i195.i, %chip_write.exit189.i.do.end51.i200.i_crit_edge
  %conv52.i196.i = trunc i32 %cond17.i to i8
  %arrayidx56.i197.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 20
  %111 = ptrtoint ptr %arrayidx56.i197.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv52.i196.i, ptr %arrayidx56.i197.i, align 1
  %112 = ptrtoint ptr %buffer.i190.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 19, ptr %buffer.i190.i, align 1
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv52.i196.i, ptr %109, align 1
  %call.i108.i198.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %108, ptr noundef nonnull %buffer.i190.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i198.i)
  %cmp63.not.i199.i = icmp eq i32 %call.i108.i198.i, 2
  br i1 %cmp63.not.i199.i, label %do.end51.i200.i.chip_write.exit207.i_crit_edge, label %do.end68.i205.i

do.end51.i200.i.chip_write.exit207.i_crit_edge:   ; preds = %do.end51.i200.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit207.i

do.end68.i205.i:                                  ; preds = %do.end51.i200.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i201.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i202.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i201.i, i32 noundef 19, i32 noundef %cond17.i) #12
  br label %chip_write.exit207.i

chip_write.exit207.i:                             ; preds = %do.end68.i205.i, %do.end51.i200.i.chip_write.exit207.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i190.i) #9
  %114 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i208.i) #9
  %116 = getelementptr inbounds [2 x i8], ptr %buffer.i208.i, i32 0, i32 1
  %117 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp39.i210.i = icmp sgt i32 %117, 0
  br i1 %cmp39.i210.i, label %do.end44.i213.i, label %chip_write.exit207.i.do.end51.i217.i_crit_edge

chip_write.exit207.i.do.end51.i217.i_crit_edge:   ; preds = %chip_write.exit207.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i217.i

do.end44.i213.i:                                  ; preds = %chip_write.exit207.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i211.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i212.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i211.i, i32 noundef 20, i32 noundef 128) #12
  br label %do.end51.i217.i

do.end51.i217.i:                                  ; preds = %do.end44.i213.i, %chip_write.exit207.i.do.end51.i217.i_crit_edge
  %arrayidx56.i214.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 21
  %118 = ptrtoint ptr %arrayidx56.i214.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -128, ptr %arrayidx56.i214.i, align 1
  %119 = ptrtoint ptr %buffer.i208.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 20, ptr %buffer.i208.i, align 1
  %120 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 -128, ptr %116, align 1
  %call.i108.i215.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %115, ptr noundef nonnull %buffer.i208.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i215.i)
  %cmp63.not.i216.i = icmp eq i32 %call.i108.i215.i, 2
  br i1 %cmp63.not.i216.i, label %do.end51.i217.i.chip_write.exit224.i_crit_edge, label %do.end68.i222.i

do.end51.i217.i.chip_write.exit224.i_crit_edge:   ; preds = %do.end51.i217.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit224.i

do.end68.i222.i:                                  ; preds = %do.end51.i217.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i218.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i219.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i218.i, i32 noundef 20, i32 noundef 128) #12
  br label %chip_write.exit224.i

chip_write.exit224.i:                             ; preds = %do.end68.i222.i, %do.end51.i217.i.chip_write.exit224.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i208.i) #9
  %121 = load i32, ptr @tda9874a_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool20.not.i = icmp eq i32 %121, 0
  %cond21.i = select i1 %tobool20.not.i, i32 128, i32 130
  %122 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i225.i) #9
  %124 = getelementptr inbounds [2 x i8], ptr %buffer.i225.i, i32 0, i32 1
  %125 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %cmp39.i227.i = icmp sgt i32 %125, 0
  br i1 %cmp39.i227.i, label %do.end44.i230.i, label %chip_write.exit224.i.do.end51.i235.i_crit_edge

chip_write.exit224.i.do.end51.i235.i_crit_edge:   ; preds = %chip_write.exit224.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i235.i

do.end44.i230.i:                                  ; preds = %chip_write.exit224.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i228.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i229.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i228.i, i32 noundef 24, i32 noundef %cond21.i) #12
  br label %do.end51.i235.i

do.end51.i235.i:                                  ; preds = %do.end44.i230.i, %chip_write.exit224.i.do.end51.i235.i_crit_edge
  %conv52.i231.i = trunc i32 %cond21.i to i8
  %arrayidx56.i232.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 25
  %126 = ptrtoint ptr %arrayidx56.i232.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv52.i231.i, ptr %arrayidx56.i232.i, align 1
  %127 = ptrtoint ptr %buffer.i225.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 24, ptr %buffer.i225.i, align 1
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv52.i231.i, ptr %124, align 1
  %call.i108.i233.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %123, ptr noundef nonnull %buffer.i225.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i233.i)
  %cmp63.not.i234.i = icmp eq i32 %call.i108.i233.i, 2
  br i1 %cmp63.not.i234.i, label %do.end51.i235.i.chip_write.exit242.i_crit_edge, label %do.end68.i240.i

do.end51.i235.i.chip_write.exit242.i_crit_edge:   ; preds = %do.end51.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit242.i

do.end68.i240.i:                                  ; preds = %do.end51.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i236.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i237.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i236.i, i32 noundef 24, i32 noundef %cond21.i) #12
  br label %chip_write.exit242.i

chip_write.exit242.i:                             ; preds = %do.end68.i240.i, %do.end51.i235.i.chip_write.exit242.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i225.i) #9
  %129 = load i32, ptr @tda9874a_ESP, align 4
  %130 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i243.i) #9
  %132 = getelementptr inbounds [2 x i8], ptr %buffer.i243.i, i32 0, i32 1
  %133 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp39.i245.i = icmp sgt i32 %133, 0
  br i1 %cmp39.i245.i, label %do.end44.i248.i, label %chip_write.exit242.i.do.end51.i253.i_crit_edge

chip_write.exit242.i.do.end51.i253.i_crit_edge:   ; preds = %chip_write.exit242.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i253.i

do.end44.i248.i:                                  ; preds = %chip_write.exit242.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i246.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i247.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i246.i, i32 noundef 255, i32 noundef %129) #12
  br label %do.end51.i253.i

do.end51.i253.i:                                  ; preds = %do.end44.i248.i, %chip_write.exit242.i.do.end51.i253.i_crit_edge
  %conv52.i249.i = trunc i32 %129 to i8
  %arrayidx56.i250.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 256
  %134 = ptrtoint ptr %arrayidx56.i250.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv52.i249.i, ptr %arrayidx56.i250.i, align 1
  %135 = ptrtoint ptr %buffer.i243.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %buffer.i243.i, align 1
  %136 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %conv52.i249.i, ptr %132, align 1
  %call.i108.i251.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %131, ptr noundef nonnull %buffer.i243.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i251.i)
  %cmp63.not.i252.i = icmp eq i32 %call.i108.i251.i, 2
  br i1 %cmp63.not.i252.i, label %do.end51.i253.i.chip_write.exit260.i_crit_edge, label %do.end68.i258.i

do.end51.i253.i.chip_write.exit260.i_crit_edge:   ; preds = %do.end51.i253.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit260.i

do.end68.i258.i:                                  ; preds = %do.end51.i253.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i254.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i255.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i254.i, i32 noundef 255, i32 noundef %129) #12
  br label %chip_write.exit260.i

chip_write.exit260.i:                             ; preds = %do.end68.i258.i, %do.end51.i253.i.chip_write.exit260.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i243.i) #9
  br label %do.body.i

if.else24.i:                                      ; preds = %chip_write.exit172.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i261.i) #9
  %137 = getelementptr inbounds [2 x i8], ptr %buffer.i261.i, i32 0, i32 1
  %138 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp39.i263.i = icmp sgt i32 %138, 0
  br i1 %cmp39.i263.i, label %do.end44.i266.i, label %if.else24.i.do.end51.i270.i_crit_edge

if.else24.i.do.end51.i270.i_crit_edge:            ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i270.i

do.end44.i266.i:                                  ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i264.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i265.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i264.i, i32 noundef 18, i32 noundef 251) #12
  br label %do.end51.i270.i

do.end51.i270.i:                                  ; preds = %do.end44.i266.i, %if.else24.i.do.end51.i270.i_crit_edge
  %arrayidx56.i267.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 19
  %139 = ptrtoint ptr %arrayidx56.i267.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 -5, ptr %arrayidx56.i267.i, align 1
  %140 = ptrtoint ptr %buffer.i261.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 18, ptr %buffer.i261.i, align 1
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -5, ptr %137, align 1
  %call.i108.i268.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %100, ptr noundef nonnull %buffer.i261.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i268.i)
  %cmp63.not.i269.i = icmp eq i32 %call.i108.i268.i, 2
  br i1 %cmp63.not.i269.i, label %do.end51.i270.i.chip_write.exit277.i_crit_edge, label %do.end68.i275.i

do.end51.i270.i.chip_write.exit277.i_crit_edge:   ; preds = %do.end51.i270.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit277.i

do.end68.i275.i:                                  ; preds = %do.end51.i270.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i271.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i272.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i271.i, i32 noundef 18, i32 noundef 251) #12
  br label %chip_write.exit277.i

chip_write.exit277.i:                             ; preds = %do.end68.i275.i, %do.end51.i270.i.chip_write.exit277.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i261.i) #9
  %142 = load i32, ptr @tda9874a_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool26.not.i = icmp eq i32 %142, 0
  %cond27.i = select i1 %tobool26.not.i, i32 128, i32 129
  %143 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i278.i) #9
  %145 = getelementptr inbounds [2 x i8], ptr %buffer.i278.i, i32 0, i32 1
  %146 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp39.i280.i = icmp sgt i32 %146, 0
  br i1 %cmp39.i280.i, label %do.end44.i283.i, label %chip_write.exit277.i.do.end51.i288.i_crit_edge

chip_write.exit277.i.do.end51.i288.i_crit_edge:   ; preds = %chip_write.exit277.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i288.i

do.end44.i283.i:                                  ; preds = %chip_write.exit277.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i281.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i282.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i281.i, i32 noundef 19, i32 noundef %cond27.i) #12
  br label %do.end51.i288.i

do.end51.i288.i:                                  ; preds = %do.end44.i283.i, %chip_write.exit277.i.do.end51.i288.i_crit_edge
  %conv52.i284.i = trunc i32 %cond27.i to i8
  %arrayidx56.i285.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 20
  %147 = ptrtoint ptr %arrayidx56.i285.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv52.i284.i, ptr %arrayidx56.i285.i, align 1
  %148 = ptrtoint ptr %buffer.i278.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 19, ptr %buffer.i278.i, align 1
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv52.i284.i, ptr %145, align 1
  %call.i108.i286.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %144, ptr noundef nonnull %buffer.i278.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i286.i)
  %cmp63.not.i287.i = icmp eq i32 %call.i108.i286.i, 2
  br i1 %cmp63.not.i287.i, label %do.end51.i288.i.chip_write.exit295.i_crit_edge, label %do.end68.i293.i

do.end51.i288.i.chip_write.exit295.i_crit_edge:   ; preds = %do.end51.i288.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit295.i

do.end68.i293.i:                                  ; preds = %do.end51.i288.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i289.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i290.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i289.i, i32 noundef 19, i32 noundef %cond27.i) #12
  br label %chip_write.exit295.i

chip_write.exit295.i:                             ; preds = %do.end68.i293.i, %do.end51.i288.i.chip_write.exit295.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i278.i) #9
  %150 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_priv.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i296.i) #9
  %152 = getelementptr inbounds [2 x i8], ptr %buffer.i296.i, i32 0, i32 1
  %153 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp39.i298.i = icmp sgt i32 %153, 0
  br i1 %cmp39.i298.i, label %do.end44.i301.i, label %chip_write.exit295.i.do.end51.i305.i_crit_edge

chip_write.exit295.i.do.end51.i305.i_crit_edge:   ; preds = %chip_write.exit295.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i305.i

do.end44.i301.i:                                  ; preds = %chip_write.exit295.i
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i299.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i300.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i299.i, i32 noundef 20, i32 noundef 0) #12
  br label %do.end51.i305.i

do.end51.i305.i:                                  ; preds = %do.end44.i301.i, %chip_write.exit295.i.do.end51.i305.i_crit_edge
  %arrayidx56.i302.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 21
  %154 = ptrtoint ptr %arrayidx56.i302.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %arrayidx56.i302.i, align 1
  %155 = ptrtoint ptr %buffer.i296.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 20, ptr %buffer.i296.i, align 1
  %156 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %152, align 1
  %call.i108.i303.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %151, ptr noundef nonnull %buffer.i296.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i303.i)
  %cmp63.not.i304.i = icmp eq i32 %call.i108.i303.i, 2
  br i1 %cmp63.not.i304.i, label %do.end51.i305.i.chip_write.exit312.i_crit_edge, label %do.end68.i310.i

do.end51.i305.i.chip_write.exit312.i_crit_edge:   ; preds = %do.end51.i305.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit312.i

do.end68.i310.i:                                  ; preds = %do.end51.i305.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i306.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i307.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i306.i, i32 noundef 20, i32 noundef 0) #12
  br label %chip_write.exit312.i

chip_write.exit312.i:                             ; preds = %do.end68.i310.i, %do.end51.i305.i.chip_write.exit312.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i296.i) #9
  br label %do.body.i

do.body.i:                                        ; preds = %chip_write.exit312.i, %chip_write.exit260.i
  %157 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp31.i = icmp sgt i32 %157, 0
  br i1 %cmp31.i, label %do.end.i, label %do.body.i.tda9874a_setup.exit_crit_edge

do.body.i.tda9874a_setup.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tda9874a_setup.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %158 = load i32, ptr @tda9874a_STD, align 4
  %arrayidx34.i = getelementptr [9 x %struct.tda9874a_MODES], ptr @tda9874a_modelist, i32 0, i32 %158
  %159 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx34.i, align 4
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name.i, ptr noundef %160, i32 noundef %158) #12
  br label %tda9874a_setup.exit

tda9874a_setup.exit:                              ; preds = %do.end.i, %do.body.i.tda9874a_setup.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9874a_getrxsubchans(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @chip_read2(ptr noundef %chip, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @chip_read2(ptr noundef %chip, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @chip_read2(ptr noundef %chip, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %conv = trunc i32 %call to i8
  %arrayidx = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 254
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %arrayidx, align 2
  %conv10 = trunc i32 %call2 to i8
  %arrayidx13 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 255
  %1 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv10, ptr %arrayidx13, align 1
  %2 = load i32, ptr @tda9874a_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %call2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool15.not, i32 1, i32 2
  %and18 = and i32 %call2, 1
  br label %do.body

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %and22 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %spec.select64 = select i1 %tobool23.not, i32 1, i32 2
  %and26 = and i32 %call, 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then14
  %and26.sink = phi i32 [ %and26, %if.else ], [ %and18, %if.then14 ]
  %spec.select64.sink67 = phi i32 [ %spec.select64, %if.else ], [ %spec.select, %if.then14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.sink)
  %tobool27.not = icmp eq i32 %and26.sink, 0
  %or29 = or i32 %spec.select64.sink67, 12
  %spec.select66 = select i1 %tobool27.not, i32 %spec.select64.sink67, i32 %or29
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp32 = icmp sgt i32 %3, 0
  br i1 %cmp32, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name, i32 noundef %call, i32 noundef %call2, i32 noundef %call6, i32 noundef %spec.select66) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ %spec.select66, %do.end ], [ %spec.select66, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda9874a_setaudmode(ptr noundef %chip, i32 noundef %mode) #2 align 64 {
entry:
  %buffer.i141 = alloca [2 x i8], align 1
  %buffer.i123 = alloca [2 x i8], align 1
  %buffer.i105 = alloca [2 x i8], align 1
  %buffer.i87 = alloca [2 x i8], align 1
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tda9874a_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 254
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 2
  %3 = and i8 %2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %4 = load i32, ptr @tda9874a_NCONR, align 4
  %or = or i32 %4, 1
  %and4 = and i32 %4, 254
  %storemerge = select i1 %tobool2.not, i32 %or, i32 %and4
  store i32 %storemerge, ptr @tda9874a_NCONR, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #9
  %7 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp39.i = icmp sgt i32 %8, 0
  br i1 %cmp39.i, label %do.end44.i, label %if.then.do.end51.i_crit_edge

if.then.do.end51.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end44.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i, i32 noundef 14, i32 noundef %storemerge) #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end44.i, %if.then.do.end51.i_crit_edge
  %conv52.i = trunc i32 %storemerge to i8
  %arrayidx56.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 15
  %9 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv52.i, ptr %arrayidx56.i, align 1
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 14, ptr %buffer.i, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv52.i, ptr %7, align 1
  %call.i108.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i)
  %cmp63.not.i = icmp eq i32 %call.i108.i, 2
  br i1 %cmp63.not.i, label %do.end51.i.chip_write.exit_crit_edge, label %do.end68.i

do.end51.i.chip_write.exit_crit_edge:             ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit

do.end68.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i, i32 noundef 14, i32 noundef %storemerge) #12
  br label %chip_write.exit

chip_write.exit:                                  ; preds = %do.end68.i, %do.end51.i.chip_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #9
  br label %if.end5

if.end5:                                          ; preds = %chip_write.exit, %entry.if.end5_crit_edge
  %12 = load i32, ptr @tda9874a_dic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %12)
  %cmp = icmp eq i32 %12, 17
  br i1 %cmp, label %if.then7, label %if.else29

if.then7:                                         ; preds = %if.end5
  %13 = load i32, ptr @tda9874a_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  %cond = select i1 %tobool8.not, i32 128, i32 130
  %14 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %mode, label %if.then7.cleanup66_crit_edge [
    i32 0, label %if.then7.sw.epilog_crit_edge
    i32 1, label %if.then7.sw.epilog_crit_edge159
    i32 3, label %if.then7.sw.epilog_crit_edge160
    i32 2, label %sw.bb12
    i32 4, label %sw.bb15
  ]

if.then7.sw.epilog_crit_edge160:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then7.sw.epilog_crit_edge159:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then7.sw.epilog_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then7.cleanup66_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

sw.bb12:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %cond14 = select i1 %tobool8.not, i32 129, i32 131
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb12, %if.then7.sw.epilog_crit_edge, %if.then7.sw.epilog_crit_edge159, %if.then7.sw.epilog_crit_edge160
  %mdacosr.0 = phi i32 [ %cond, %sw.bb15 ], [ %cond14, %sw.bb12 ], [ %cond, %if.then7.sw.epilog_crit_edge ], [ %cond, %if.then7.sw.epilog_crit_edge159 ], [ %cond, %if.then7.sw.epilog_crit_edge160 ]
  %aosr.0 = phi i32 [ 0, %sw.bb15 ], [ 160, %sw.bb12 ], [ 128, %if.then7.sw.epilog_crit_edge ], [ 128, %if.then7.sw.epilog_crit_edge159 ], [ 128, %if.then7.sw.epilog_crit_edge160 ]
  %dev_priv.i.i88 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %15 = ptrtoint ptr %dev_priv.i.i88 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i88, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i87) #9
  %17 = getelementptr inbounds [2 x i8], ptr %buffer.i87, i32 0, i32 1
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp39.i89 = icmp sgt i32 %18, 0
  br i1 %cmp39.i89, label %do.end44.i92, label %sw.epilog.do.end51.i97_crit_edge

sw.epilog.do.end51.i97_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i97

do.end44.i92:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i90 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i90, i32 noundef 20, i32 noundef %aosr.0) #12
  br label %do.end51.i97

do.end51.i97:                                     ; preds = %do.end44.i92, %sw.epilog.do.end51.i97_crit_edge
  %conv52.i93 = trunc i32 %aosr.0 to i8
  %arrayidx56.i94 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 21
  %19 = ptrtoint ptr %arrayidx56.i94 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv52.i93, ptr %arrayidx56.i94, align 1
  %20 = ptrtoint ptr %buffer.i87 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 20, ptr %buffer.i87, align 1
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv52.i93, ptr %17, align 1
  %call.i108.i95 = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %buffer.i87, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i95)
  %cmp63.not.i96 = icmp eq i32 %call.i108.i95, 2
  br i1 %cmp63.not.i96, label %do.end51.i97.chip_write.exit104_crit_edge, label %do.end68.i102

do.end51.i97.chip_write.exit104_crit_edge:        ; preds = %do.end51.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit104

do.end68.i102:                                    ; preds = %do.end51.i97
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i98 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i98, i32 noundef 20, i32 noundef %aosr.0) #12
  br label %chip_write.exit104

chip_write.exit104:                               ; preds = %do.end68.i102, %do.end51.i97.chip_write.exit104_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i87) #9
  %22 = ptrtoint ptr %dev_priv.i.i88 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i88, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i105) #9
  %24 = getelementptr inbounds [2 x i8], ptr %buffer.i105, i32 0, i32 1
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp39.i107 = icmp sgt i32 %25, 0
  br i1 %cmp39.i107, label %do.end44.i110, label %chip_write.exit104.do.end51.i115_crit_edge

chip_write.exit104.do.end51.i115_crit_edge:       ; preds = %chip_write.exit104
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i115

do.end44.i110:                                    ; preds = %chip_write.exit104
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i108 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i108, i32 noundef 24, i32 noundef %mdacosr.0) #12
  br label %do.end51.i115

do.end51.i115:                                    ; preds = %do.end44.i110, %chip_write.exit104.do.end51.i115_crit_edge
  %conv52.i111 = trunc i32 %mdacosr.0 to i8
  %arrayidx56.i112 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 25
  %26 = ptrtoint ptr %arrayidx56.i112 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv52.i111, ptr %arrayidx56.i112, align 1
  %27 = ptrtoint ptr %buffer.i105 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 24, ptr %buffer.i105, align 1
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv52.i111, ptr %24, align 1
  %call.i108.i113 = call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef nonnull %buffer.i105, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i113)
  %cmp63.not.i114 = icmp eq i32 %call.i108.i113, 2
  br i1 %cmp63.not.i114, label %do.end51.i115.chip_write.exit122_crit_edge, label %do.end68.i120

do.end51.i115.chip_write.exit122_crit_edge:       ; preds = %do.end51.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit122

do.end68.i120:                                    ; preds = %do.end51.i115
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i116 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i116, i32 noundef 24, i32 noundef %mdacosr.0) #12
  br label %chip_write.exit122

chip_write.exit122:                               ; preds = %do.end68.i120, %do.end51.i115.chip_write.exit122_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i105) #9
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp20 = icmp sgt i32 %29, 0
  br i1 %cmp20, label %do.end, label %chip_write.exit122.cleanup66_crit_edge

chip_write.exit122.cleanup66_crit_edge:           ; preds = %chip_write.exit122
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

do.end:                                           ; preds = %chip_write.exit122
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %name, i32 noundef %mode, i32 noundef %aosr.0, i32 noundef %mdacosr.0) #12
  br label %cleanup66

if.else29:                                        ; preds = %if.end5
  %30 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %mode, label %if.else29.cleanup66_crit_edge [
    i32 0, label %if.else29.sw.epilog44_crit_edge
    i32 1, label %sw.bb32
    i32 3, label %sw.bb40
    i32 2, label %sw.bb41
    i32 4, label %sw.bb42
  ]

if.else29.sw.epilog44_crit_edge:                  ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog44

if.else29.cleanup66_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

sw.bb32:                                          ; preds = %if.else29
  %31 = load i32, ptr @tda9874a_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool33.not = icmp eq i32 %31, 0
  br i1 %tobool33.not, label %if.else35, label %sw.bb32.sw.epilog44_crit_edge

sw.bb32.sw.epilog44_crit_edge:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog44

if.else35:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  %32 = load i32, ptr @tda9874a_ESP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp36 = icmp eq i32 %32, 1
  %cond38 = select i1 %cmp36, i32 5, i32 4
  br label %sw.epilog44

sw.bb40:                                          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog44

sw.bb41:                                          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog44

sw.bb42:                                          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %sw.bb42, %sw.bb41, %sw.bb40, %if.else35, %sw.bb32.sw.epilog44_crit_edge, %if.else29.sw.epilog44_crit_edge
  %fmmr.0 = phi i32 [ 2, %sw.bb42 ], [ 2, %sw.bb41 ], [ 2, %sw.bb40 ], [ %cond38, %if.else35 ], [ %mode, %if.else29.sw.epilog44_crit_edge ], [ 0, %sw.bb32.sw.epilog44_crit_edge ]
  %aosr30.0 = phi i32 [ 0, %sw.bb42 ], [ 32, %sw.bb41 ], [ 16, %sw.bb40 ], [ 0, %if.else35 ], [ 16, %if.else29.sw.epilog44_crit_edge ], [ 0, %sw.bb32.sw.epilog44_crit_edge ]
  %dev_priv.i.i124 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %33 = ptrtoint ptr %dev_priv.i.i124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i124, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i123) #9
  %35 = getelementptr inbounds [2 x i8], ptr %buffer.i123, i32 0, i32 1
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp39.i125 = icmp sgt i32 %36, 0
  br i1 %cmp39.i125, label %do.end44.i128, label %sw.epilog44.do.end51.i133_crit_edge

sw.epilog44.do.end51.i133_crit_edge:              ; preds = %sw.epilog44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i133

do.end44.i128:                                    ; preds = %sw.epilog44
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i126 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i126, i32 noundef 11, i32 noundef %fmmr.0) #12
  br label %do.end51.i133

do.end51.i133:                                    ; preds = %do.end44.i128, %sw.epilog44.do.end51.i133_crit_edge
  %conv52.i129 = trunc i32 %fmmr.0 to i8
  %arrayidx56.i130 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 12
  %37 = ptrtoint ptr %arrayidx56.i130 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv52.i129, ptr %arrayidx56.i130, align 1
  %38 = ptrtoint ptr %buffer.i123 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 11, ptr %buffer.i123, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv52.i129, ptr %35, align 1
  %call.i108.i131 = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %buffer.i123, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i131)
  %cmp63.not.i132 = icmp eq i32 %call.i108.i131, 2
  br i1 %cmp63.not.i132, label %do.end51.i133.chip_write.exit140_crit_edge, label %do.end68.i138

do.end51.i133.chip_write.exit140_crit_edge:       ; preds = %do.end51.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit140

do.end68.i138:                                    ; preds = %do.end51.i133
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i134 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i134, i32 noundef 11, i32 noundef %fmmr.0) #12
  br label %chip_write.exit140

chip_write.exit140:                               ; preds = %do.end68.i138, %do.end51.i133.chip_write.exit140_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i123) #9
  %40 = ptrtoint ptr %dev_priv.i.i124 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i124, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i141) #9
  %42 = getelementptr inbounds [2 x i8], ptr %buffer.i141, i32 0, i32 1
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp39.i143 = icmp sgt i32 %43, 0
  br i1 %cmp39.i143, label %do.end44.i146, label %chip_write.exit140.do.end51.i151_crit_edge

chip_write.exit140.do.end51.i151_crit_edge:       ; preds = %chip_write.exit140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i151

do.end44.i146:                                    ; preds = %chip_write.exit140
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i144 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i144, i32 noundef 20, i32 noundef %aosr30.0) #12
  br label %do.end51.i151

do.end51.i151:                                    ; preds = %do.end44.i146, %chip_write.exit140.do.end51.i151_crit_edge
  %conv52.i147 = trunc i32 %aosr30.0 to i8
  %arrayidx56.i148 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 21
  %44 = ptrtoint ptr %arrayidx56.i148 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv52.i147, ptr %arrayidx56.i148, align 1
  %45 = ptrtoint ptr %buffer.i141 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 20, ptr %buffer.i141, align 1
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv52.i147, ptr %42, align 1
  %call.i108.i149 = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %buffer.i141, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i149)
  %cmp63.not.i150 = icmp eq i32 %call.i108.i149, 2
  br i1 %cmp63.not.i150, label %do.end51.i151.chip_write.exit158_crit_edge, label %do.end68.i156

do.end51.i151.chip_write.exit158_crit_edge:       ; preds = %do.end51.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit158

do.end68.i156:                                    ; preds = %do.end51.i151
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i152 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i152, i32 noundef 20, i32 noundef %aosr30.0) #12
  br label %chip_write.exit158

chip_write.exit158:                               ; preds = %do.end68.i156, %do.end51.i151.chip_write.exit158_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i141) #9
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp48 = icmp sgt i32 %47, 0
  br i1 %cmp48, label %do.end53, label %chip_write.exit158.cleanup66_crit_edge

chip_write.exit158.cleanup66_crit_edge:           ; preds = %chip_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

do.end53:                                         ; preds = %chip_write.exit158
  call void @__sanitizer_cov_trace_pc() #11
  %name55 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %name55, i32 noundef %mode, i32 noundef %fmmr.0, i32 noundef %aosr30.0) #12
  br label %cleanup66

cleanup66:                                        ; preds = %do.end53, %chip_write.exit158.cleanup66_crit_edge, %if.else29.cleanup66_crit_edge, %do.end, %chip_write.exit122.cleanup66_crit_edge, %if.then7.cleanup66_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9875_checkit(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @chip_read2(ptr noundef %chip, i32 noundef 254)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @chip_read2(ptr noundef %chip, i32 noundef 255)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %call, label %if.end5.cleanup_crit_edge [
    i32 0, label %if.end5.do.end_crit_edge
    i32 2, label %do.end.fold.split
  ]

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.fold.split:                                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %do.end.fold.split, %if.end5.do.end_crit_edge
  %cond = phi ptr [ @.str.10, %if.end5.do.end_crit_edge ], [ @.str.127, %do.end.fold.split ]
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name, ptr noundef nonnull %cond, i32 noundef %call2) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9875_initialize(ptr noundef %chip) #2 align 64 {
entry:
  %buffer.i535 = alloca [2 x i8], align 1
  %buffer.i518 = alloca [2 x i8], align 1
  %buffer.i501 = alloca [2 x i8], align 1
  %buffer.i484 = alloca [2 x i8], align 1
  %buffer.i467 = alloca [2 x i8], align 1
  %buffer.i450 = alloca [2 x i8], align 1
  %buffer.i433 = alloca [2 x i8], align 1
  %buffer.i416 = alloca [2 x i8], align 1
  %buffer.i399 = alloca [2 x i8], align 1
  %buffer.i382 = alloca [2 x i8], align 1
  %buffer.i365 = alloca [2 x i8], align 1
  %buffer.i348 = alloca [2 x i8], align 1
  %buffer.i331 = alloca [2 x i8], align 1
  %buffer.i314 = alloca [2 x i8], align 1
  %buffer.i297 = alloca [2 x i8], align 1
  %buffer.i280 = alloca [2 x i8], align 1
  %buffer.i263 = alloca [2 x i8], align 1
  %buffer.i246 = alloca [2 x i8], align 1
  %buffer.i229 = alloca [2 x i8], align 1
  %buffer.i212 = alloca [2 x i8], align 1
  %buffer.i195 = alloca [2 x i8], align 1
  %buffer.i178 = alloca [2 x i8], align 1
  %buffer.i161 = alloca [2 x i8], align 1
  %buffer.i144 = alloca [2 x i8], align 1
  %buffer.i127 = alloca [2 x i8], align 1
  %buffer.i110 = alloca [2 x i8], align 1
  %buffer.i93 = alloca [2 x i8], align 1
  %buffer.i76 = alloca [2 x i8], align 1
  %buffer.i59 = alloca [2 x i8], align 1
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #9
  %2 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp39.i = icmp sgt i32 %3, 0
  br i1 %cmp39.i, label %do.end44.i, label %entry.do.end51.i_crit_edge

entry.do.end51.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end44.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i, i32 noundef 1, i32 noundef 208) #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end44.i, %entry.do.end51.i_crit_edge
  %arrayidx56.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -48, ptr %arrayidx56.i, align 1
  %5 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %buffer.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -48, ptr %2, align 1
  %call.i108.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i)
  %cmp63.not.i = icmp eq i32 %call.i108.i, 2
  br i1 %cmp63.not.i, label %do.end51.i.chip_write.exit_crit_edge, label %do.end68.i

do.end51.i.chip_write.exit_crit_edge:             ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit

do.end68.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i, i32 noundef 1, i32 noundef 208) #12
  br label %chip_write.exit

chip_write.exit:                                  ; preds = %do.end68.i, %do.end51.i.chip_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #9
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i59) #9
  %9 = getelementptr inbounds [2 x i8], ptr %buffer.i59, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !432
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp39.i61 = icmp sgt i32 %11, 0
  br i1 %cmp39.i61, label %do.end44.i64, label %chip_write.exit.do.end51.i68_crit_edge

chip_write.exit.do.end51.i68_crit_edge:           ; preds = %chip_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i68

do.end44.i64:                                     ; preds = %chip_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i62 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i62, i32 noundef 2, i32 noundef 3) #12
  br label %do.end51.i68

do.end51.i68:                                     ; preds = %do.end44.i64, %chip_write.exit.do.end51.i68_crit_edge
  %arrayidx56.i65 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx56.i65 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %arrayidx56.i65, align 1
  %13 = ptrtoint ptr %buffer.i59 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %buffer.i59, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %9, align 1
  %call.i108.i66 = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buffer.i59, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i66)
  %cmp63.not.i67 = icmp eq i32 %call.i108.i66, 2
  br i1 %cmp63.not.i67, label %do.end51.i68.chip_write.exit75_crit_edge, label %do.end68.i73

do.end51.i68.chip_write.exit75_crit_edge:         ; preds = %do.end51.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit75

do.end68.i73:                                     ; preds = %do.end51.i68
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i69 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i69, i32 noundef 2, i32 noundef 3) #12
  br label %chip_write.exit75

chip_write.exit75:                                ; preds = %do.end68.i73, %do.end51.i68.chip_write.exit75_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i59) #9
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i76) #9
  %17 = getelementptr inbounds [2 x i8], ptr %buffer.i76, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %17, align 1, !annotation !432
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp39.i78 = icmp sgt i32 %19, 0
  br i1 %cmp39.i78, label %do.end44.i81, label %chip_write.exit75.do.end51.i85_crit_edge

chip_write.exit75.do.end51.i85_crit_edge:         ; preds = %chip_write.exit75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i85

do.end44.i81:                                     ; preds = %chip_write.exit75
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i79 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i79, i32 noundef 3, i32 noundef 0) #12
  br label %do.end51.i85

do.end51.i85:                                     ; preds = %do.end44.i81, %chip_write.exit75.do.end51.i85_crit_edge
  %arrayidx56.i82 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 4
  %20 = ptrtoint ptr %arrayidx56.i82 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx56.i82, align 1
  %21 = ptrtoint ptr %buffer.i76 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %buffer.i76, align 1
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %17, align 1
  %call.i108.i83 = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %buffer.i76, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i83)
  %cmp63.not.i84 = icmp eq i32 %call.i108.i83, 2
  br i1 %cmp63.not.i84, label %do.end51.i85.chip_write.exit92_crit_edge, label %do.end68.i90

do.end51.i85.chip_write.exit92_crit_edge:         ; preds = %do.end51.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit92

do.end68.i90:                                     ; preds = %do.end51.i85
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i86 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i86, i32 noundef 3, i32 noundef 0) #12
  br label %chip_write.exit92

chip_write.exit92:                                ; preds = %do.end68.i90, %do.end51.i85.chip_write.exit92_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i76) #9
  %23 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i93) #9
  %25 = getelementptr inbounds [2 x i8], ptr %buffer.i93, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %25, align 1, !annotation !432
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp39.i95 = icmp sgt i32 %27, 0
  br i1 %cmp39.i95, label %do.end44.i98, label %chip_write.exit92.do.end51.i102_crit_edge

chip_write.exit92.do.end51.i102_crit_edge:        ; preds = %chip_write.exit92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i102

do.end44.i98:                                     ; preds = %chip_write.exit92
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i96 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i96, i32 noundef 4, i32 noundef 0) #12
  br label %do.end51.i102

do.end51.i102:                                    ; preds = %do.end44.i98, %chip_write.exit92.do.end51.i102_crit_edge
  %arrayidx56.i99 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 5
  %28 = ptrtoint ptr %arrayidx56.i99 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx56.i99, align 1
  %29 = ptrtoint ptr %buffer.i93 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %buffer.i93, align 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %25, align 1
  %call.i108.i100 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %buffer.i93, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i100)
  %cmp63.not.i101 = icmp eq i32 %call.i108.i100, 2
  br i1 %cmp63.not.i101, label %do.end51.i102.chip_write.exit109_crit_edge, label %do.end68.i107

do.end51.i102.chip_write.exit109_crit_edge:       ; preds = %do.end51.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit109

do.end68.i107:                                    ; preds = %do.end51.i102
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i103 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i103, i32 noundef 4, i32 noundef 0) #12
  br label %chip_write.exit109

chip_write.exit109:                               ; preds = %do.end68.i107, %do.end51.i102.chip_write.exit109_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i93) #9
  %31 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i110) #9
  %33 = getelementptr inbounds [2 x i8], ptr %buffer.i110, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %33, align 1, !annotation !432
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp39.i112 = icmp sgt i32 %35, 0
  br i1 %cmp39.i112, label %do.end44.i115, label %chip_write.exit109.do.end51.i119_crit_edge

chip_write.exit109.do.end51.i119_crit_edge:       ; preds = %chip_write.exit109
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i119

do.end44.i115:                                    ; preds = %chip_write.exit109
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i113 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i113, i32 noundef 5, i32 noundef 0) #12
  br label %do.end51.i119

do.end51.i119:                                    ; preds = %do.end44.i115, %chip_write.exit109.do.end51.i119_crit_edge
  %arrayidx56.i116 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 6
  %36 = ptrtoint ptr %arrayidx56.i116 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx56.i116, align 1
  %37 = ptrtoint ptr %buffer.i110 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 5, ptr %buffer.i110, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %33, align 1
  %call.i108.i117 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %buffer.i110, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i117)
  %cmp63.not.i118 = icmp eq i32 %call.i108.i117, 2
  br i1 %cmp63.not.i118, label %do.end51.i119.chip_write.exit126_crit_edge, label %do.end68.i124

do.end51.i119.chip_write.exit126_crit_edge:       ; preds = %do.end51.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit126

do.end68.i124:                                    ; preds = %do.end51.i119
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i120 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i120, i32 noundef 5, i32 noundef 0) #12
  br label %chip_write.exit126

chip_write.exit126:                               ; preds = %do.end68.i124, %do.end51.i119.chip_write.exit126_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i110) #9
  %39 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i127) #9
  %41 = getelementptr inbounds [2 x i8], ptr %buffer.i127, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %41, align 1, !annotation !432
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp39.i129 = icmp sgt i32 %43, 0
  br i1 %cmp39.i129, label %do.end44.i132, label %chip_write.exit126.do.end51.i136_crit_edge

chip_write.exit126.do.end51.i136_crit_edge:       ; preds = %chip_write.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i136

do.end44.i132:                                    ; preds = %chip_write.exit126
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i130 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i130, i32 noundef 6, i32 noundef 0) #12
  br label %do.end51.i136

do.end51.i136:                                    ; preds = %do.end44.i132, %chip_write.exit126.do.end51.i136_crit_edge
  %arrayidx56.i133 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 7
  %44 = ptrtoint ptr %arrayidx56.i133 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx56.i133, align 1
  %45 = ptrtoint ptr %buffer.i127 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 6, ptr %buffer.i127, align 1
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %41, align 1
  %call.i108.i134 = call i32 @i2c_transfer_buffer_flags(ptr noundef %40, ptr noundef nonnull %buffer.i127, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i134)
  %cmp63.not.i135 = icmp eq i32 %call.i108.i134, 2
  br i1 %cmp63.not.i135, label %do.end51.i136.chip_write.exit143_crit_edge, label %do.end68.i141

do.end51.i136.chip_write.exit143_crit_edge:       ; preds = %do.end51.i136
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit143

do.end68.i141:                                    ; preds = %do.end51.i136
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i137 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i137, i32 noundef 6, i32 noundef 0) #12
  br label %chip_write.exit143

chip_write.exit143:                               ; preds = %do.end68.i141, %do.end51.i136.chip_write.exit143_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i127) #9
  %47 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i144) #9
  %49 = getelementptr inbounds [2 x i8], ptr %buffer.i144, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %49, align 1, !annotation !432
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp39.i146 = icmp sgt i32 %51, 0
  br i1 %cmp39.i146, label %do.end44.i149, label %chip_write.exit143.do.end51.i153_crit_edge

chip_write.exit143.do.end51.i153_crit_edge:       ; preds = %chip_write.exit143
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i153

do.end44.i149:                                    ; preds = %chip_write.exit143
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i147 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i147, i32 noundef 7, i32 noundef 0) #12
  br label %do.end51.i153

do.end51.i153:                                    ; preds = %do.end44.i149, %chip_write.exit143.do.end51.i153_crit_edge
  %arrayidx56.i150 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 8
  %52 = ptrtoint ptr %arrayidx56.i150 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx56.i150, align 1
  %53 = ptrtoint ptr %buffer.i144 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 7, ptr %buffer.i144, align 1
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %49, align 1
  %call.i108.i151 = call i32 @i2c_transfer_buffer_flags(ptr noundef %48, ptr noundef nonnull %buffer.i144, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i151)
  %cmp63.not.i152 = icmp eq i32 %call.i108.i151, 2
  br i1 %cmp63.not.i152, label %do.end51.i153.chip_write.exit160_crit_edge, label %do.end68.i158

do.end51.i153.chip_write.exit160_crit_edge:       ; preds = %do.end51.i153
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit160

do.end68.i158:                                    ; preds = %do.end51.i153
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i154 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i154, i32 noundef 7, i32 noundef 0) #12
  br label %chip_write.exit160

chip_write.exit160:                               ; preds = %do.end68.i158, %do.end51.i153.chip_write.exit160_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i144) #9
  %55 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i161) #9
  %57 = getelementptr inbounds [2 x i8], ptr %buffer.i161, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %57, align 1, !annotation !432
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp39.i163 = icmp sgt i32 %59, 0
  br i1 %cmp39.i163, label %do.end44.i166, label %chip_write.exit160.do.end51.i170_crit_edge

chip_write.exit160.do.end51.i170_crit_edge:       ; preds = %chip_write.exit160
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i170

do.end44.i166:                                    ; preds = %chip_write.exit160
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i164 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i164, i32 noundef 8, i32 noundef 0) #12
  br label %do.end51.i170

do.end51.i170:                                    ; preds = %do.end44.i166, %chip_write.exit160.do.end51.i170_crit_edge
  %arrayidx56.i167 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 9
  %60 = ptrtoint ptr %arrayidx56.i167 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx56.i167, align 1
  %61 = ptrtoint ptr %buffer.i161 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 8, ptr %buffer.i161, align 1
  %62 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %57, align 1
  %call.i108.i168 = call i32 @i2c_transfer_buffer_flags(ptr noundef %56, ptr noundef nonnull %buffer.i161, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i168)
  %cmp63.not.i169 = icmp eq i32 %call.i108.i168, 2
  br i1 %cmp63.not.i169, label %do.end51.i170.chip_write.exit177_crit_edge, label %do.end68.i175

do.end51.i170.chip_write.exit177_crit_edge:       ; preds = %do.end51.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit177

do.end68.i175:                                    ; preds = %do.end51.i170
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i171 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i171, i32 noundef 8, i32 noundef 0) #12
  br label %chip_write.exit177

chip_write.exit177:                               ; preds = %do.end68.i175, %do.end51.i170.chip_write.exit177_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i161) #9
  %63 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i178) #9
  %65 = getelementptr inbounds [2 x i8], ptr %buffer.i178, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %65, align 1, !annotation !432
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp39.i180 = icmp sgt i32 %67, 0
  br i1 %cmp39.i180, label %do.end44.i183, label %chip_write.exit177.do.end51.i187_crit_edge

chip_write.exit177.do.end51.i187_crit_edge:       ; preds = %chip_write.exit177
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i187

do.end44.i183:                                    ; preds = %chip_write.exit177
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i181 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i181, i32 noundef 9, i32 noundef 0) #12
  br label %do.end51.i187

do.end51.i187:                                    ; preds = %do.end44.i183, %chip_write.exit177.do.end51.i187_crit_edge
  %arrayidx56.i184 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 10
  %68 = ptrtoint ptr %arrayidx56.i184 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %arrayidx56.i184, align 1
  %69 = ptrtoint ptr %buffer.i178 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 9, ptr %buffer.i178, align 1
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %65, align 1
  %call.i108.i185 = call i32 @i2c_transfer_buffer_flags(ptr noundef %64, ptr noundef nonnull %buffer.i178, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i185)
  %cmp63.not.i186 = icmp eq i32 %call.i108.i185, 2
  br i1 %cmp63.not.i186, label %do.end51.i187.chip_write.exit194_crit_edge, label %do.end68.i192

do.end51.i187.chip_write.exit194_crit_edge:       ; preds = %do.end51.i187
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit194

do.end68.i192:                                    ; preds = %do.end51.i187
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i188 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i188, i32 noundef 9, i32 noundef 0) #12
  br label %chip_write.exit194

chip_write.exit194:                               ; preds = %do.end68.i192, %do.end51.i187.chip_write.exit194_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i178) #9
  %71 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i195) #9
  %73 = getelementptr inbounds [2 x i8], ptr %buffer.i195, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %73, align 1, !annotation !432
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp39.i197 = icmp sgt i32 %75, 0
  br i1 %cmp39.i197, label %do.end44.i200, label %chip_write.exit194.do.end51.i204_crit_edge

chip_write.exit194.do.end51.i204_crit_edge:       ; preds = %chip_write.exit194
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i204

do.end44.i200:                                    ; preds = %chip_write.exit194
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i198 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i198, i32 noundef 10, i32 noundef 68) #12
  br label %do.end51.i204

do.end51.i204:                                    ; preds = %do.end44.i200, %chip_write.exit194.do.end51.i204_crit_edge
  %arrayidx56.i201 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 11
  %76 = ptrtoint ptr %arrayidx56.i201 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 68, ptr %arrayidx56.i201, align 1
  %77 = ptrtoint ptr %buffer.i195 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 10, ptr %buffer.i195, align 1
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 68, ptr %73, align 1
  %call.i108.i202 = call i32 @i2c_transfer_buffer_flags(ptr noundef %72, ptr noundef nonnull %buffer.i195, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i202)
  %cmp63.not.i203 = icmp eq i32 %call.i108.i202, 2
  br i1 %cmp63.not.i203, label %do.end51.i204.chip_write.exit211_crit_edge, label %do.end68.i209

do.end51.i204.chip_write.exit211_crit_edge:       ; preds = %do.end51.i204
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit211

do.end68.i209:                                    ; preds = %do.end51.i204
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i205 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i205, i32 noundef 10, i32 noundef 68) #12
  br label %chip_write.exit211

chip_write.exit211:                               ; preds = %do.end68.i209, %do.end51.i204.chip_write.exit211_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i195) #9
  %79 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i212) #9
  %81 = getelementptr inbounds [2 x i8], ptr %buffer.i212, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -1, ptr %81, align 1, !annotation !432
  %83 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp39.i214 = icmp sgt i32 %83, 0
  br i1 %cmp39.i214, label %do.end44.i217, label %chip_write.exit211.do.end51.i221_crit_edge

chip_write.exit211.do.end51.i221_crit_edge:       ; preds = %chip_write.exit211
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i221

do.end44.i217:                                    ; preds = %chip_write.exit211
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i215 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i215, i32 noundef 11, i32 noundef 0) #12
  br label %do.end51.i221

do.end51.i221:                                    ; preds = %do.end44.i217, %chip_write.exit211.do.end51.i221_crit_edge
  %arrayidx56.i218 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 12
  %84 = ptrtoint ptr %arrayidx56.i218 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx56.i218, align 1
  %85 = ptrtoint ptr %buffer.i212 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 11, ptr %buffer.i212, align 1
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %81, align 1
  %call.i108.i219 = call i32 @i2c_transfer_buffer_flags(ptr noundef %80, ptr noundef nonnull %buffer.i212, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i219)
  %cmp63.not.i220 = icmp eq i32 %call.i108.i219, 2
  br i1 %cmp63.not.i220, label %do.end51.i221.chip_write.exit228_crit_edge, label %do.end68.i226

do.end51.i221.chip_write.exit228_crit_edge:       ; preds = %do.end51.i221
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit228

do.end68.i226:                                    ; preds = %do.end51.i221
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i222 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i222, i32 noundef 11, i32 noundef 0) #12
  br label %chip_write.exit228

chip_write.exit228:                               ; preds = %do.end68.i226, %do.end51.i221.chip_write.exit228_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i212) #9
  %87 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i229) #9
  %89 = getelementptr inbounds [2 x i8], ptr %buffer.i229, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -1, ptr %89, align 1, !annotation !432
  %91 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp39.i231 = icmp sgt i32 %91, 0
  br i1 %cmp39.i231, label %do.end44.i234, label %chip_write.exit228.do.end51.i238_crit_edge

chip_write.exit228.do.end51.i238_crit_edge:       ; preds = %chip_write.exit228
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i238

do.end44.i234:                                    ; preds = %chip_write.exit228
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i232 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i232, i32 noundef 20, i32 noundef 0) #12
  br label %do.end51.i238

do.end51.i238:                                    ; preds = %do.end44.i234, %chip_write.exit228.do.end51.i238_crit_edge
  %arrayidx56.i235 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 21
  %92 = ptrtoint ptr %arrayidx56.i235 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx56.i235, align 1
  %93 = ptrtoint ptr %buffer.i229 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 20, ptr %buffer.i229, align 1
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %89, align 1
  %call.i108.i236 = call i32 @i2c_transfer_buffer_flags(ptr noundef %88, ptr noundef nonnull %buffer.i229, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i236)
  %cmp63.not.i237 = icmp eq i32 %call.i108.i236, 2
  br i1 %cmp63.not.i237, label %do.end51.i238.chip_write.exit245_crit_edge, label %do.end68.i243

do.end51.i238.chip_write.exit245_crit_edge:       ; preds = %do.end51.i238
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit245

do.end68.i243:                                    ; preds = %do.end51.i238
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i239 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i240 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i239, i32 noundef 20, i32 noundef 0) #12
  br label %chip_write.exit245

chip_write.exit245:                               ; preds = %do.end68.i243, %do.end51.i238.chip_write.exit245_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i229) #9
  %95 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i246) #9
  %97 = getelementptr inbounds [2 x i8], ptr %buffer.i246, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 -1, ptr %97, align 1, !annotation !432
  %99 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp39.i248 = icmp sgt i32 %99, 0
  br i1 %cmp39.i248, label %do.end44.i251, label %chip_write.exit245.do.end51.i255_crit_edge

chip_write.exit245.do.end51.i255_crit_edge:       ; preds = %chip_write.exit245
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i255

do.end44.i251:                                    ; preds = %chip_write.exit245
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i249 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i249, i32 noundef 21, i32 noundef 1) #12
  br label %do.end51.i255

do.end51.i255:                                    ; preds = %do.end44.i251, %chip_write.exit245.do.end51.i255_crit_edge
  %arrayidx56.i252 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 22
  %100 = ptrtoint ptr %arrayidx56.i252 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %arrayidx56.i252, align 1
  %101 = ptrtoint ptr %buffer.i246 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 21, ptr %buffer.i246, align 1
  %102 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %97, align 1
  %call.i108.i253 = call i32 @i2c_transfer_buffer_flags(ptr noundef %96, ptr noundef nonnull %buffer.i246, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i253)
  %cmp63.not.i254 = icmp eq i32 %call.i108.i253, 2
  br i1 %cmp63.not.i254, label %do.end51.i255.chip_write.exit262_crit_edge, label %do.end68.i260

do.end51.i255.chip_write.exit262_crit_edge:       ; preds = %do.end51.i255
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit262

do.end68.i260:                                    ; preds = %do.end51.i255
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i256 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i257 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i256, i32 noundef 21, i32 noundef 1) #12
  br label %chip_write.exit262

chip_write.exit262:                               ; preds = %do.end68.i260, %do.end51.i255.chip_write.exit262_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i246) #9
  %103 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i263) #9
  %105 = getelementptr inbounds [2 x i8], ptr %buffer.i263, i32 0, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %105, align 1, !annotation !432
  %107 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp39.i265 = icmp sgt i32 %107, 0
  br i1 %cmp39.i265, label %do.end44.i268, label %chip_write.exit262.do.end51.i272_crit_edge

chip_write.exit262.do.end51.i272_crit_edge:       ; preds = %chip_write.exit262
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i272

do.end44.i268:                                    ; preds = %chip_write.exit262
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i266 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i267 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i266, i32 noundef 12, i32 noundef 16) #12
  br label %do.end51.i272

do.end51.i272:                                    ; preds = %do.end44.i268, %chip_write.exit262.do.end51.i272_crit_edge
  %arrayidx56.i269 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 13
  %108 = ptrtoint ptr %arrayidx56.i269 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 16, ptr %arrayidx56.i269, align 1
  %109 = ptrtoint ptr %buffer.i263 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 12, ptr %buffer.i263, align 1
  %110 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 16, ptr %105, align 1
  %call.i108.i270 = call i32 @i2c_transfer_buffer_flags(ptr noundef %104, ptr noundef nonnull %buffer.i263, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i270)
  %cmp63.not.i271 = icmp eq i32 %call.i108.i270, 2
  br i1 %cmp63.not.i271, label %do.end51.i272.chip_write.exit279_crit_edge, label %do.end68.i277

do.end51.i272.chip_write.exit279_crit_edge:       ; preds = %do.end51.i272
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit279

do.end68.i277:                                    ; preds = %do.end51.i272
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i273 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i273, i32 noundef 12, i32 noundef 16) #12
  br label %chip_write.exit279

chip_write.exit279:                               ; preds = %do.end68.i277, %do.end51.i272.chip_write.exit279_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i263) #9
  %111 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i280) #9
  %113 = getelementptr inbounds [2 x i8], ptr %buffer.i280, i32 0, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -1, ptr %113, align 1, !annotation !432
  %115 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp39.i282 = icmp sgt i32 %115, 0
  br i1 %cmp39.i282, label %do.end44.i285, label %chip_write.exit279.do.end51.i289_crit_edge

chip_write.exit279.do.end51.i289_crit_edge:       ; preds = %chip_write.exit279
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i289

do.end44.i285:                                    ; preds = %chip_write.exit279
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i283 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i283, i32 noundef 13, i32 noundef 16) #12
  br label %do.end51.i289

do.end51.i289:                                    ; preds = %do.end44.i285, %chip_write.exit279.do.end51.i289_crit_edge
  %arrayidx56.i286 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 14
  %116 = ptrtoint ptr %arrayidx56.i286 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 16, ptr %arrayidx56.i286, align 1
  %117 = ptrtoint ptr %buffer.i280 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 13, ptr %buffer.i280, align 1
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 16, ptr %113, align 1
  %call.i108.i287 = call i32 @i2c_transfer_buffer_flags(ptr noundef %112, ptr noundef nonnull %buffer.i280, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i287)
  %cmp63.not.i288 = icmp eq i32 %call.i108.i287, 2
  br i1 %cmp63.not.i288, label %do.end51.i289.chip_write.exit296_crit_edge, label %do.end68.i294

do.end51.i289.chip_write.exit296_crit_edge:       ; preds = %do.end51.i289
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit296

do.end68.i294:                                    ; preds = %do.end51.i289
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i290 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i290, i32 noundef 13, i32 noundef 16) #12
  br label %chip_write.exit296

chip_write.exit296:                               ; preds = %do.end68.i294, %do.end51.i289.chip_write.exit296_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i280) #9
  %119 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i297) #9
  %121 = getelementptr inbounds [2 x i8], ptr %buffer.i297, i32 0, i32 1
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %121, align 1, !annotation !432
  %123 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp39.i299 = icmp sgt i32 %123, 0
  br i1 %cmp39.i299, label %do.end44.i302, label %chip_write.exit296.do.end51.i306_crit_edge

chip_write.exit296.do.end51.i306_crit_edge:       ; preds = %chip_write.exit296
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i306

do.end44.i302:                                    ; preds = %chip_write.exit296
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i300 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i301 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i300, i32 noundef 19, i32 noundef 2) #12
  br label %do.end51.i306

do.end51.i306:                                    ; preds = %do.end44.i302, %chip_write.exit296.do.end51.i306_crit_edge
  %arrayidx56.i303 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 20
  %124 = ptrtoint ptr %arrayidx56.i303 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 2, ptr %arrayidx56.i303, align 1
  %125 = ptrtoint ptr %buffer.i297 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 19, ptr %buffer.i297, align 1
  %126 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 2, ptr %121, align 1
  %call.i108.i304 = call i32 @i2c_transfer_buffer_flags(ptr noundef %120, ptr noundef nonnull %buffer.i297, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i304)
  %cmp63.not.i305 = icmp eq i32 %call.i108.i304, 2
  br i1 %cmp63.not.i305, label %do.end51.i306.chip_write.exit313_crit_edge, label %do.end68.i311

do.end51.i306.chip_write.exit313_crit_edge:       ; preds = %do.end51.i306
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit313

do.end68.i311:                                    ; preds = %do.end51.i306
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i307 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i307, i32 noundef 19, i32 noundef 2) #12
  br label %chip_write.exit313

chip_write.exit313:                               ; preds = %do.end68.i311, %do.end51.i306.chip_write.exit313_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i297) #9
  %127 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i314) #9
  %129 = getelementptr inbounds [2 x i8], ptr %buffer.i314, i32 0, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 -1, ptr %129, align 1, !annotation !432
  %131 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp39.i316 = icmp sgt i32 %131, 0
  br i1 %cmp39.i316, label %do.end44.i319, label %chip_write.exit313.do.end51.i323_crit_edge

chip_write.exit313.do.end51.i323_crit_edge:       ; preds = %chip_write.exit313
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i323

do.end44.i319:                                    ; preds = %chip_write.exit313
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i317 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i318 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i317, i32 noundef 23, i32 noundef 111) #12
  br label %do.end51.i323

do.end51.i323:                                    ; preds = %do.end44.i319, %chip_write.exit313.do.end51.i323_crit_edge
  %arrayidx56.i320 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 24
  %132 = ptrtoint ptr %arrayidx56.i320 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 111, ptr %arrayidx56.i320, align 1
  %133 = ptrtoint ptr %buffer.i314 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 23, ptr %buffer.i314, align 1
  %134 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 111, ptr %129, align 1
  %call.i108.i321 = call i32 @i2c_transfer_buffer_flags(ptr noundef %128, ptr noundef nonnull %buffer.i314, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i321)
  %cmp63.not.i322 = icmp eq i32 %call.i108.i321, 2
  br i1 %cmp63.not.i322, label %do.end51.i323.chip_write.exit330_crit_edge, label %do.end68.i328

do.end51.i323.chip_write.exit330_crit_edge:       ; preds = %do.end51.i323
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit330

do.end68.i328:                                    ; preds = %do.end51.i323
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i324 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i324, i32 noundef 23, i32 noundef 111) #12
  br label %chip_write.exit330

chip_write.exit330:                               ; preds = %do.end68.i328, %do.end51.i323.chip_write.exit330_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i314) #9
  %135 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i331) #9
  %137 = getelementptr inbounds [2 x i8], ptr %buffer.i331, i32 0, i32 1
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 -1, ptr %137, align 1, !annotation !432
  %139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp39.i333 = icmp sgt i32 %139, 0
  br i1 %cmp39.i333, label %do.end44.i336, label %chip_write.exit330.do.end51.i340_crit_edge

chip_write.exit330.do.end51.i340_crit_edge:       ; preds = %chip_write.exit330
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i340

do.end44.i336:                                    ; preds = %chip_write.exit330
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i334 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i335 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i334, i32 noundef 22, i32 noundef 0) #12
  br label %do.end51.i340

do.end51.i340:                                    ; preds = %do.end44.i336, %chip_write.exit330.do.end51.i340_crit_edge
  %arrayidx56.i337 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 23
  %140 = ptrtoint ptr %arrayidx56.i337 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %arrayidx56.i337, align 1
  %141 = ptrtoint ptr %buffer.i331 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 22, ptr %buffer.i331, align 1
  %142 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %137, align 1
  %call.i108.i338 = call i32 @i2c_transfer_buffer_flags(ptr noundef %136, ptr noundef nonnull %buffer.i331, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i338)
  %cmp63.not.i339 = icmp eq i32 %call.i108.i338, 2
  br i1 %cmp63.not.i339, label %do.end51.i340.chip_write.exit347_crit_edge, label %do.end68.i345

do.end51.i340.chip_write.exit347_crit_edge:       ; preds = %do.end51.i340
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit347

do.end68.i345:                                    ; preds = %do.end51.i340
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i341 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i341, i32 noundef 22, i32 noundef 0) #12
  br label %chip_write.exit347

chip_write.exit347:                               ; preds = %do.end68.i345, %do.end51.i340.chip_write.exit347_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i331) #9
  %143 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i348) #9
  %145 = getelementptr inbounds [2 x i8], ptr %buffer.i348, i32 0, i32 1
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -1, ptr %145, align 1, !annotation !432
  %147 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp39.i350 = icmp sgt i32 %147, 0
  br i1 %cmp39.i350, label %do.end44.i353, label %chip_write.exit347.do.end51.i357_crit_edge

chip_write.exit347.do.end51.i357_crit_edge:       ; preds = %chip_write.exit347
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i357

do.end44.i353:                                    ; preds = %chip_write.exit347
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i351 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i351, i32 noundef 25, i32 noundef 0) #12
  br label %do.end51.i357

do.end51.i357:                                    ; preds = %do.end44.i353, %chip_write.exit347.do.end51.i357_crit_edge
  %arrayidx56.i354 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 26
  %148 = ptrtoint ptr %arrayidx56.i354 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %arrayidx56.i354, align 1
  %149 = ptrtoint ptr %buffer.i348 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 25, ptr %buffer.i348, align 1
  %150 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %145, align 1
  %call.i108.i355 = call i32 @i2c_transfer_buffer_flags(ptr noundef %144, ptr noundef nonnull %buffer.i348, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i355)
  %cmp63.not.i356 = icmp eq i32 %call.i108.i355, 2
  br i1 %cmp63.not.i356, label %do.end51.i357.chip_write.exit364_crit_edge, label %do.end68.i362

do.end51.i357.chip_write.exit364_crit_edge:       ; preds = %do.end51.i357
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit364

do.end68.i362:                                    ; preds = %do.end51.i357
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i358 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i358, i32 noundef 25, i32 noundef 0) #12
  br label %chip_write.exit364

chip_write.exit364:                               ; preds = %do.end68.i362, %do.end51.i357.chip_write.exit364_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i348) #9
  %151 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i365) #9
  %153 = getelementptr inbounds [2 x i8], ptr %buffer.i365, i32 0, i32 1
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -1, ptr %153, align 1, !annotation !432
  %155 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp39.i367 = icmp sgt i32 %155, 0
  br i1 %cmp39.i367, label %do.end44.i370, label %chip_write.exit364.do.end51.i374_crit_edge

chip_write.exit364.do.end51.i374_crit_edge:       ; preds = %chip_write.exit364
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i374

do.end44.i370:                                    ; preds = %chip_write.exit364
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i368 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i368, i32 noundef 24, i32 noundef 68) #12
  br label %do.end51.i374

do.end51.i374:                                    ; preds = %do.end44.i370, %chip_write.exit364.do.end51.i374_crit_edge
  %arrayidx56.i371 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 25
  %156 = ptrtoint ptr %arrayidx56.i371 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 68, ptr %arrayidx56.i371, align 1
  %157 = ptrtoint ptr %buffer.i365 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 24, ptr %buffer.i365, align 1
  %158 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 68, ptr %153, align 1
  %call.i108.i372 = call i32 @i2c_transfer_buffer_flags(ptr noundef %152, ptr noundef nonnull %buffer.i365, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i372)
  %cmp63.not.i373 = icmp eq i32 %call.i108.i372, 2
  br i1 %cmp63.not.i373, label %do.end51.i374.chip_write.exit381_crit_edge, label %do.end68.i379

do.end51.i374.chip_write.exit381_crit_edge:       ; preds = %do.end51.i374
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit381

do.end68.i379:                                    ; preds = %do.end51.i374
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i375 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i376 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i375, i32 noundef 24, i32 noundef 68) #12
  br label %chip_write.exit381

chip_write.exit381:                               ; preds = %do.end68.i379, %do.end51.i374.chip_write.exit381_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i365) #9
  %159 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i382) #9
  %161 = getelementptr inbounds [2 x i8], ptr %buffer.i382, i32 0, i32 1
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 -1, ptr %161, align 1, !annotation !432
  %163 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp39.i384 = icmp sgt i32 %163, 0
  br i1 %cmp39.i384, label %do.end44.i387, label %chip_write.exit381.do.end51.i391_crit_edge

chip_write.exit381.do.end51.i391_crit_edge:       ; preds = %chip_write.exit381
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i391

do.end44.i387:                                    ; preds = %chip_write.exit381
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i385 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i385, i32 noundef 26, i32 noundef 3) #12
  br label %do.end51.i391

do.end51.i391:                                    ; preds = %do.end44.i387, %chip_write.exit381.do.end51.i391_crit_edge
  %arrayidx56.i388 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 27
  %164 = ptrtoint ptr %arrayidx56.i388 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 3, ptr %arrayidx56.i388, align 1
  %165 = ptrtoint ptr %buffer.i382 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 26, ptr %buffer.i382, align 1
  %166 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 3, ptr %161, align 1
  %call.i108.i389 = call i32 @i2c_transfer_buffer_flags(ptr noundef %160, ptr noundef nonnull %buffer.i382, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i389)
  %cmp63.not.i390 = icmp eq i32 %call.i108.i389, 2
  br i1 %cmp63.not.i390, label %do.end51.i391.chip_write.exit398_crit_edge, label %do.end68.i396

do.end51.i391.chip_write.exit398_crit_edge:       ; preds = %do.end51.i391
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit398

do.end68.i396:                                    ; preds = %do.end51.i391
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i392 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i392, i32 noundef 26, i32 noundef 3) #12
  br label %chip_write.exit398

chip_write.exit398:                               ; preds = %do.end68.i396, %do.end51.i391.chip_write.exit398_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i382) #9
  %167 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i399) #9
  %169 = getelementptr inbounds [2 x i8], ptr %buffer.i399, i32 0, i32 1
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 -1, ptr %169, align 1, !annotation !432
  %171 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp39.i401 = icmp sgt i32 %171, 0
  br i1 %cmp39.i401, label %do.end44.i404, label %chip_write.exit398.do.end51.i408_crit_edge

chip_write.exit398.do.end51.i408_crit_edge:       ; preds = %chip_write.exit398
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i408

do.end44.i404:                                    ; preds = %chip_write.exit398
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i402 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i402, i32 noundef 27, i32 noundef 3) #12
  br label %do.end51.i408

do.end51.i408:                                    ; preds = %do.end44.i404, %chip_write.exit398.do.end51.i408_crit_edge
  %arrayidx56.i405 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 28
  %172 = ptrtoint ptr %arrayidx56.i405 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 3, ptr %arrayidx56.i405, align 1
  %173 = ptrtoint ptr %buffer.i399 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 27, ptr %buffer.i399, align 1
  %174 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 3, ptr %169, align 1
  %call.i108.i406 = call i32 @i2c_transfer_buffer_flags(ptr noundef %168, ptr noundef nonnull %buffer.i399, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i406)
  %cmp63.not.i407 = icmp eq i32 %call.i108.i406, 2
  br i1 %cmp63.not.i407, label %do.end51.i408.chip_write.exit415_crit_edge, label %do.end68.i413

do.end51.i408.chip_write.exit415_crit_edge:       ; preds = %do.end51.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit415

do.end68.i413:                                    ; preds = %do.end51.i408
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i409 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i409, i32 noundef 27, i32 noundef 3) #12
  br label %chip_write.exit415

chip_write.exit415:                               ; preds = %do.end68.i413, %do.end51.i408.chip_write.exit415_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i399) #9
  %175 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i416) #9
  %177 = getelementptr inbounds [2 x i8], ptr %buffer.i416, i32 0, i32 1
  %178 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp39.i418 = icmp sgt i32 %178, 0
  br i1 %cmp39.i418, label %do.end44.i421, label %chip_write.exit415.do.end51.i425_crit_edge

chip_write.exit415.do.end51.i425_crit_edge:       ; preds = %chip_write.exit415
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i425

do.end44.i421:                                    ; preds = %chip_write.exit415
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i419 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i420 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i419, i32 noundef 29, i32 noundef 0) #12
  br label %do.end51.i425

do.end51.i425:                                    ; preds = %do.end44.i421, %chip_write.exit415.do.end51.i425_crit_edge
  %arrayidx56.i422 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 30
  %179 = ptrtoint ptr %arrayidx56.i422 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %arrayidx56.i422, align 1
  %180 = ptrtoint ptr %buffer.i416 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 29, ptr %buffer.i416, align 1
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %177, align 1
  %call.i108.i423 = call i32 @i2c_transfer_buffer_flags(ptr noundef %176, ptr noundef nonnull %buffer.i416, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i423)
  %cmp63.not.i424 = icmp eq i32 %call.i108.i423, 2
  br i1 %cmp63.not.i424, label %do.end51.i425.chip_write.exit432_crit_edge, label %do.end68.i430

do.end51.i425.chip_write.exit432_crit_edge:       ; preds = %do.end51.i425
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit432

do.end68.i430:                                    ; preds = %do.end51.i425
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i426 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i426, i32 noundef 29, i32 noundef 0) #12
  br label %chip_write.exit432

chip_write.exit432:                               ; preds = %do.end68.i430, %do.end51.i425.chip_write.exit432_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i416) #9
  %182 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i433) #9
  %184 = getelementptr inbounds [2 x i8], ptr %buffer.i433, i32 0, i32 1
  %185 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp39.i435 = icmp sgt i32 %185, 0
  br i1 %cmp39.i435, label %do.end44.i438, label %chip_write.exit432.do.end51.i442_crit_edge

chip_write.exit432.do.end51.i442_crit_edge:       ; preds = %chip_write.exit432
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i442

do.end44.i438:                                    ; preds = %chip_write.exit432
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i436 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i437 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i436, i32 noundef 30, i32 noundef 0) #12
  br label %do.end51.i442

do.end51.i442:                                    ; preds = %do.end44.i438, %chip_write.exit432.do.end51.i442_crit_edge
  %arrayidx56.i439 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 31
  %186 = ptrtoint ptr %arrayidx56.i439 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %arrayidx56.i439, align 1
  %187 = ptrtoint ptr %buffer.i433 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 30, ptr %buffer.i433, align 1
  %188 = ptrtoint ptr %184 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %184, align 1
  %call.i108.i440 = call i32 @i2c_transfer_buffer_flags(ptr noundef %183, ptr noundef nonnull %buffer.i433, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i440)
  %cmp63.not.i441 = icmp eq i32 %call.i108.i440, 2
  br i1 %cmp63.not.i441, label %do.end51.i442.chip_write.exit449_crit_edge, label %do.end68.i447

do.end51.i442.chip_write.exit449_crit_edge:       ; preds = %do.end51.i442
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit449

do.end68.i447:                                    ; preds = %do.end51.i442
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i443 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i444 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i443, i32 noundef 30, i32 noundef 0) #12
  br label %chip_write.exit449

chip_write.exit449:                               ; preds = %do.end68.i447, %do.end51.i442.chip_write.exit449_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i433) #9
  %189 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i450) #9
  %191 = getelementptr inbounds [2 x i8], ptr %buffer.i450, i32 0, i32 1
  %192 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp39.i452 = icmp sgt i32 %192, 0
  br i1 %cmp39.i452, label %do.end44.i455, label %chip_write.exit449.do.end51.i459_crit_edge

chip_write.exit449.do.end51.i459_crit_edge:       ; preds = %chip_write.exit449
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i459

do.end44.i455:                                    ; preds = %chip_write.exit449
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i453 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i453, i32 noundef 31, i32 noundef 68) #12
  br label %do.end51.i459

do.end51.i459:                                    ; preds = %do.end44.i455, %chip_write.exit449.do.end51.i459_crit_edge
  %arrayidx56.i456 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 32
  %193 = ptrtoint ptr %arrayidx56.i456 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 68, ptr %arrayidx56.i456, align 1
  %194 = ptrtoint ptr %buffer.i450 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 31, ptr %buffer.i450, align 1
  %195 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 68, ptr %191, align 1
  %call.i108.i457 = call i32 @i2c_transfer_buffer_flags(ptr noundef %190, ptr noundef nonnull %buffer.i450, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i457)
  %cmp63.not.i458 = icmp eq i32 %call.i108.i457, 2
  br i1 %cmp63.not.i458, label %do.end51.i459.chip_write.exit466_crit_edge, label %do.end68.i464

do.end51.i459.chip_write.exit466_crit_edge:       ; preds = %do.end51.i459
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit466

do.end68.i464:                                    ; preds = %do.end51.i459
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i460 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i461 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i460, i32 noundef 31, i32 noundef 68) #12
  br label %chip_write.exit466

chip_write.exit466:                               ; preds = %do.end68.i464, %do.end51.i459.chip_write.exit466_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i450) #9
  %196 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i467) #9
  %198 = getelementptr inbounds [2 x i8], ptr %buffer.i467, i32 0, i32 1
  %199 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp39.i469 = icmp sgt i32 %199, 0
  br i1 %cmp39.i469, label %do.end44.i472, label %chip_write.exit466.do.end51.i476_crit_edge

chip_write.exit466.do.end51.i476_crit_edge:       ; preds = %chip_write.exit466
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i476

do.end44.i472:                                    ; preds = %chip_write.exit466
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i470 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i471 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i470, i32 noundef 32, i32 noundef 0) #12
  br label %do.end51.i476

do.end51.i476:                                    ; preds = %do.end44.i472, %chip_write.exit466.do.end51.i476_crit_edge
  %arrayidx56.i473 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 33
  %200 = ptrtoint ptr %arrayidx56.i473 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %arrayidx56.i473, align 1
  %201 = ptrtoint ptr %buffer.i467 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 32, ptr %buffer.i467, align 1
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %198, align 1
  %call.i108.i474 = call i32 @i2c_transfer_buffer_flags(ptr noundef %197, ptr noundef nonnull %buffer.i467, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i474)
  %cmp63.not.i475 = icmp eq i32 %call.i108.i474, 2
  br i1 %cmp63.not.i475, label %do.end51.i476.chip_write.exit483_crit_edge, label %do.end68.i481

do.end51.i476.chip_write.exit483_crit_edge:       ; preds = %do.end51.i476
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit483

do.end68.i481:                                    ; preds = %do.end51.i476
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i477 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i477, i32 noundef 32, i32 noundef 0) #12
  br label %chip_write.exit483

chip_write.exit483:                               ; preds = %do.end68.i481, %do.end51.i476.chip_write.exit483_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i467) #9
  %203 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i484) #9
  %205 = getelementptr inbounds [2 x i8], ptr %buffer.i484, i32 0, i32 1
  %206 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp39.i486 = icmp sgt i32 %206, 0
  br i1 %cmp39.i486, label %do.end44.i489, label %chip_write.exit483.do.end51.i493_crit_edge

chip_write.exit483.do.end51.i493_crit_edge:       ; preds = %chip_write.exit483
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i493

do.end44.i489:                                    ; preds = %chip_write.exit483
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i487 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i488 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i487, i32 noundef 33, i32 noundef 0) #12
  br label %do.end51.i493

do.end51.i493:                                    ; preds = %do.end44.i489, %chip_write.exit483.do.end51.i493_crit_edge
  %arrayidx56.i490 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 34
  %207 = ptrtoint ptr %arrayidx56.i490 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %arrayidx56.i490, align 1
  %208 = ptrtoint ptr %buffer.i484 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 33, ptr %buffer.i484, align 1
  %209 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %205, align 1
  %call.i108.i491 = call i32 @i2c_transfer_buffer_flags(ptr noundef %204, ptr noundef nonnull %buffer.i484, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i491)
  %cmp63.not.i492 = icmp eq i32 %call.i108.i491, 2
  br i1 %cmp63.not.i492, label %do.end51.i493.chip_write.exit500_crit_edge, label %do.end68.i498

do.end51.i493.chip_write.exit500_crit_edge:       ; preds = %do.end51.i493
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit500

do.end68.i498:                                    ; preds = %do.end51.i493
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i494 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i495 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i494, i32 noundef 33, i32 noundef 0) #12
  br label %chip_write.exit500

chip_write.exit500:                               ; preds = %do.end68.i498, %do.end51.i493.chip_write.exit500_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i484) #9
  %210 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i501) #9
  %212 = getelementptr inbounds [2 x i8], ptr %buffer.i501, i32 0, i32 1
  %213 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp39.i503 = icmp sgt i32 %213, 0
  br i1 %cmp39.i503, label %do.end44.i506, label %chip_write.exit500.do.end51.i510_crit_edge

chip_write.exit500.do.end51.i510_crit_edge:       ; preds = %chip_write.exit500
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i510

do.end44.i506:                                    ; preds = %chip_write.exit500
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i504 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i505 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i504, i32 noundef 34, i32 noundef 0) #12
  br label %do.end51.i510

do.end51.i510:                                    ; preds = %do.end44.i506, %chip_write.exit500.do.end51.i510_crit_edge
  %arrayidx56.i507 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 35
  %214 = ptrtoint ptr %arrayidx56.i507 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %arrayidx56.i507, align 1
  %215 = ptrtoint ptr %buffer.i501 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 34, ptr %buffer.i501, align 1
  %216 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %212, align 1
  %call.i108.i508 = call i32 @i2c_transfer_buffer_flags(ptr noundef %211, ptr noundef nonnull %buffer.i501, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i508)
  %cmp63.not.i509 = icmp eq i32 %call.i108.i508, 2
  br i1 %cmp63.not.i509, label %do.end51.i510.chip_write.exit517_crit_edge, label %do.end68.i515

do.end51.i510.chip_write.exit517_crit_edge:       ; preds = %do.end51.i510
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit517

do.end68.i515:                                    ; preds = %do.end51.i510
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i511 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i512 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i511, i32 noundef 34, i32 noundef 0) #12
  br label %chip_write.exit517

chip_write.exit517:                               ; preds = %do.end68.i515, %do.end51.i510.chip_write.exit517_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i501) #9
  %217 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i518) #9
  %219 = getelementptr inbounds [2 x i8], ptr %buffer.i518, i32 0, i32 1
  %220 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %cmp39.i520 = icmp sgt i32 %220, 0
  br i1 %cmp39.i520, label %do.end44.i523, label %chip_write.exit517.do.end51.i527_crit_edge

chip_write.exit517.do.end51.i527_crit_edge:       ; preds = %chip_write.exit517
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i527

do.end44.i523:                                    ; preds = %chip_write.exit517
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i521 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i521, i32 noundef 35, i32 noundef 0) #12
  br label %do.end51.i527

do.end51.i527:                                    ; preds = %do.end44.i523, %chip_write.exit517.do.end51.i527_crit_edge
  %arrayidx56.i524 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 36
  %221 = ptrtoint ptr %arrayidx56.i524 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %arrayidx56.i524, align 1
  %222 = ptrtoint ptr %buffer.i518 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 35, ptr %buffer.i518, align 1
  %223 = ptrtoint ptr %219 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %219, align 1
  %call.i108.i525 = call i32 @i2c_transfer_buffer_flags(ptr noundef %218, ptr noundef nonnull %buffer.i518, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i525)
  %cmp63.not.i526 = icmp eq i32 %call.i108.i525, 2
  br i1 %cmp63.not.i526, label %do.end51.i527.chip_write.exit534_crit_edge, label %do.end68.i532

do.end51.i527.chip_write.exit534_crit_edge:       ; preds = %do.end51.i527
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit534

do.end68.i532:                                    ; preds = %do.end51.i527
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i528 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i529 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i528, i32 noundef 35, i32 noundef 0) #12
  br label %chip_write.exit534

chip_write.exit534:                               ; preds = %do.end68.i532, %do.end51.i527.chip_write.exit534_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i518) #9
  %224 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i535) #9
  %226 = getelementptr inbounds [2 x i8], ptr %buffer.i535, i32 0, i32 1
  %227 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp39.i537 = icmp sgt i32 %227, 0
  br i1 %cmp39.i537, label %do.end44.i540, label %chip_write.exit534.do.end51.i544_crit_edge

chip_write.exit534.do.end51.i544_crit_edge:       ; preds = %chip_write.exit534
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i544

do.end44.i540:                                    ; preds = %chip_write.exit534
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i538 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i539 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i538, i32 noundef 18, i32 noundef 204) #12
  br label %do.end51.i544

do.end51.i544:                                    ; preds = %do.end44.i540, %chip_write.exit534.do.end51.i544_crit_edge
  %arrayidx56.i541 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 19
  %228 = ptrtoint ptr %arrayidx56.i541 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 -52, ptr %arrayidx56.i541, align 1
  %229 = ptrtoint ptr %buffer.i535 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 18, ptr %buffer.i535, align 1
  %230 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 -52, ptr %226, align 1
  %call.i108.i542 = call i32 @i2c_transfer_buffer_flags(ptr noundef %225, ptr noundef nonnull %buffer.i535, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i542)
  %cmp63.not.i543 = icmp eq i32 %call.i108.i542, 2
  br i1 %cmp63.not.i543, label %do.end51.i544.chip_write.exit551_crit_edge, label %do.end68.i549

do.end51.i544.chip_write.exit551_crit_edge:       ; preds = %do.end51.i544
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit551

do.end68.i549:                                    ; preds = %do.end51.i544
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i545 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i545, i32 noundef 18, i32 noundef 204) #12
  br label %chip_write.exit551

chip_write.exit551:                               ; preds = %do.end68.i549, %do.end51.i544.chip_write.exit551_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i535) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda9875_volume(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %val, 602
  %conv = add nsw i32 %div, 172
  %conv1 = and i32 %conv, 255
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda9875_treble(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %val, 2622
  %conv = add nsw i32 %div, 244
  %conv1 = and i32 %conv, 255
  ret i32 %conv1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda9875_bass(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6345, i32 %val)
  %cmp = icmp slt i32 %val, 6345
  %div = sdiv i32 %val, 2115
  %phi.cast = add nsw i32 %div, 241
  %phi.cast4 = and i32 %phi.cast, 255
  %cond = select i1 %cmp, i32 244, i32 %phi.cast4
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda985x_getrxsubchans(ptr noundef %chip) #2 align 64 {
entry:
  %buffer.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buffer.i) #9
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buffer.i, align 1, !annotation !432
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %do.body7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  br label %cleanup

do.body7.i:                                       ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %do.end12.i, label %do.body7.i.chip_read.exit_crit_edge

do.body7.i.chip_read.exit_crit_edge:              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_read.exit

do.end12.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %name14.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer.i, align 1
  %conv.i = zext i8 %5 to i32
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name14.i, i32 noundef %conv.i) #12
  br label %chip_read.exit

chip_read.exit:                                   ; preds = %do.end12.i, %do.body7.i.chip_read.exit_crit_edge
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer.i, align 1
  %conv20.i = zext i8 %7 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  %and = and i32 %conv20.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  %and3 = lshr i32 %conv20.i, 4
  %8 = and i32 %and3, 4
  %9 = or i32 %spec.select, %8
  br label %cleanup

cleanup:                                          ; preds = %chip_read.exit, %do.end.i
  %retval.0 = phi i32 [ %9, %chip_read.exit ], [ 1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda985x_setaudmode(ptr noundef %chip, i32 noundef %mode) #2 align 64 {
entry:
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = and i8 %1, 63
  %and = zext i8 %2 to i32
  %3 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %mode, label %entry.if.end_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 1, label %entry.sw.bb1_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge15
    i32 2, label %sw.bb3
    i32 4, label %sw.bb5
  ]

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge15
  %or2 = or i32 %and, 64
  br label %if.then

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or4 = or i32 %and, 192
  br label %if.then

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or6 = or i32 %and, 128
  br label %if.then

if.then:                                          ; preds = %sw.bb5, %sw.bb3, %sw.bb1, %entry.if.then_crit_edge
  %c6.0.ph = phi i32 [ %and, %entry.if.then_crit_edge ], [ %or2, %sw.bb1 ], [ %or4, %sw.bb3 ], [ %or6, %sw.bb5 ]
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp39.i = icmp sgt i32 %7, 0
  br i1 %cmp39.i, label %do.end44.i, label %if.then.do.end51.i_crit_edge

if.then.do.end51.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end44.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i, i32 noundef 6, i32 noundef %c6.0.ph) #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end44.i, %if.then.do.end51.i_crit_edge
  %conv52.i = trunc i32 %c6.0.ph to i8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv52.i, ptr %arrayidx, align 1
  %9 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %buffer.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv52.i, ptr %6, align 1
  %call.i108.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i)
  %cmp63.not.i = icmp eq i32 %call.i108.i, 2
  br i1 %cmp63.not.i, label %do.end51.i.chip_write.exit_crit_edge, label %do.end68.i

do.end51.i.chip_write.exit_crit_edge:             ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit

do.end68.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i, i32 noundef 6, i32 noundef %c6.0.ph) #12
  br label %chip_write.exit

chip_write.exit:                                  ; preds = %do.end68.i, %do.end51.i.chip_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #9
  br label %if.end

if.end:                                           ; preds = %chip_write.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda9855_volume(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %val, 744
  %add = add nsw i32 %div, 39
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda9855_treble(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %val, 7281
  %add = shl nsw i32 %div, 1
  %shl = add nsw i32 %add, 6
  ret i32 %shl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda9855_bass(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %val, 3276
  %add = add nsw i32 %div, 6
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tea6300_shift10(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %val, 10
  ret i32 %shr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tea6300_shift12(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %val, 12
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tea6320_initialize(ptr noundef %chip) #2 align 64 {
entry:
  %buffer.i41 = alloca [2 x i8], align 1
  %buffer.i24 = alloca [2 x i8], align 1
  %buffer.i7 = alloca [2 x i8], align 1
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #9
  %2 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp39.i = icmp sgt i32 %3, 0
  br i1 %cmp39.i, label %do.end44.i, label %entry.do.end51.i_crit_edge

entry.do.end51.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end44.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i, i32 noundef 1, i32 noundef 63) #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end44.i, %entry.do.end51.i_crit_edge
  %arrayidx56.i = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 63, ptr %arrayidx56.i, align 1
  %5 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %buffer.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 63, ptr %2, align 1
  %call.i108.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i)
  %cmp63.not.i = icmp eq i32 %call.i108.i, 2
  br i1 %cmp63.not.i, label %do.end51.i.chip_write.exit_crit_edge, label %do.end68.i

do.end51.i.chip_write.exit_crit_edge:             ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit

do.end68.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i, i32 noundef 1, i32 noundef 63) #12
  br label %chip_write.exit

chip_write.exit:                                  ; preds = %do.end68.i, %do.end51.i.chip_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #9
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i7) #9
  %9 = getelementptr inbounds [2 x i8], ptr %buffer.i7, i32 0, i32 1
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp39.i9 = icmp sgt i32 %10, 0
  br i1 %cmp39.i9, label %do.end44.i12, label %chip_write.exit.do.end51.i16_crit_edge

chip_write.exit.do.end51.i16_crit_edge:           ; preds = %chip_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i16

do.end44.i12:                                     ; preds = %chip_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i10 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i10, i32 noundef 2, i32 noundef 63) #12
  br label %do.end51.i16

do.end51.i16:                                     ; preds = %do.end44.i12, %chip_write.exit.do.end51.i16_crit_edge
  %arrayidx56.i13 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx56.i13 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 63, ptr %arrayidx56.i13, align 1
  %12 = ptrtoint ptr %buffer.i7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %buffer.i7, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 63, ptr %9, align 1
  %call.i108.i14 = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buffer.i7, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i14)
  %cmp63.not.i15 = icmp eq i32 %call.i108.i14, 2
  br i1 %cmp63.not.i15, label %do.end51.i16.chip_write.exit23_crit_edge, label %do.end68.i21

do.end51.i16.chip_write.exit23_crit_edge:         ; preds = %do.end51.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit23

do.end68.i21:                                     ; preds = %do.end51.i16
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i17 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i17, i32 noundef 2, i32 noundef 63) #12
  br label %chip_write.exit23

chip_write.exit23:                                ; preds = %do.end68.i21, %do.end51.i16.chip_write.exit23_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i7) #9
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i24) #9
  %16 = getelementptr inbounds [2 x i8], ptr %buffer.i24, i32 0, i32 1
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp39.i26 = icmp sgt i32 %17, 0
  br i1 %cmp39.i26, label %do.end44.i29, label %chip_write.exit23.do.end51.i33_crit_edge

chip_write.exit23.do.end51.i33_crit_edge:         ; preds = %chip_write.exit23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i33

do.end44.i29:                                     ; preds = %chip_write.exit23
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i27 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i27, i32 noundef 3, i32 noundef 63) #12
  br label %do.end51.i33

do.end51.i33:                                     ; preds = %do.end44.i29, %chip_write.exit23.do.end51.i33_crit_edge
  %arrayidx56.i30 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx56.i30 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 63, ptr %arrayidx56.i30, align 1
  %19 = ptrtoint ptr %buffer.i24 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %buffer.i24, align 1
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 63, ptr %16, align 1
  %call.i108.i31 = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %buffer.i24, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i31)
  %cmp63.not.i32 = icmp eq i32 %call.i108.i31, 2
  br i1 %cmp63.not.i32, label %do.end51.i33.chip_write.exit40_crit_edge, label %do.end68.i38

do.end51.i33.chip_write.exit40_crit_edge:         ; preds = %do.end51.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit40

do.end68.i38:                                     ; preds = %do.end51.i33
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i34 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i34, i32 noundef 3, i32 noundef 63) #12
  br label %chip_write.exit40

chip_write.exit40:                                ; preds = %do.end68.i38, %do.end51.i33.chip_write.exit40_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i24) #9
  %21 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i41) #9
  %23 = getelementptr inbounds [2 x i8], ptr %buffer.i41, i32 0, i32 1
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp39.i43 = icmp sgt i32 %24, 0
  br i1 %cmp39.i43, label %do.end44.i46, label %chip_write.exit40.do.end51.i50_crit_edge

chip_write.exit40.do.end51.i50_crit_edge:         ; preds = %chip_write.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i50

do.end44.i46:                                     ; preds = %chip_write.exit40
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i44 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i44, i32 noundef 4, i32 noundef 63) #12
  br label %do.end51.i50

do.end51.i50:                                     ; preds = %do.end44.i46, %chip_write.exit40.do.end51.i50_crit_edge
  %arrayidx56.i47 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 5
  %25 = ptrtoint ptr %arrayidx56.i47 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 63, ptr %arrayidx56.i47, align 1
  %26 = ptrtoint ptr %buffer.i41 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %buffer.i41, align 1
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 63, ptr %23, align 1
  %call.i108.i48 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %buffer.i41, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i48)
  %cmp63.not.i49 = icmp eq i32 %call.i108.i48, 2
  br i1 %cmp63.not.i49, label %do.end51.i50.chip_write.exit57_crit_edge, label %do.end68.i55

do.end51.i50.chip_write.exit57_crit_edge:         ; preds = %do.end51.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit57

do.end68.i55:                                     ; preds = %do.end51.i50
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i51 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i51, i32 noundef 4, i32 noundef 63) #12
  br label %chip_write.exit57

chip_write.exit57:                                ; preds = %do.end68.i55, %do.end51.i50.chip_write.exit57_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i41) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tea6320_volume(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %val, 1285
  %add = add nsw i32 %div, 12
  %and = and i32 %add, 63
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tea6320_shift11(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %val, 11
  ret i32 %shr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda8425_shift10(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %val, 10
  %or = or i32 %shr, 192
  ret i32 %or
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda8425_shift12(i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = ashr i32 %val, 12
  %or = or i32 %shr, 240
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda8425_setaudmode(ptr noundef %chip, i32 noundef %mode) #2 align 64 {
entry:
  %buffer.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode)
  %0 = icmp ult i32 %mode, 5
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = and i8 %2, -31
  %and = zext i8 %3 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tda8425_setaudmode, i32 0, i32 %mode
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %or13 = or i32 %switch.load, %and
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer.i) #9
  %7 = getelementptr inbounds [2 x i8], ptr %buffer.i, i32 0, i32 1
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp39.i = icmp sgt i32 %8, 0
  br i1 %cmp39.i, label %do.end44.i, label %switch.lookup.do.end51.i_crit_edge

switch.lookup.do.end51.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end44.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %name46.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46.i, i32 noundef 8, i32 noundef %or13) #12
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end44.i, %switch.lookup.do.end51.i_crit_edge
  %conv52.i = trunc i32 %or13 to i8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv52.i, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %buffer.i, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv52.i, ptr %7, align 1
  %call.i108.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %buffer.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108.i)
  %cmp63.not.i = icmp eq i32 %call.i108.i, 2
  br i1 %cmp63.not.i, label %do.end51.i.chip_write.exit_crit_edge, label %do.end68.i

do.end51.i.chip_write.exit_crit_edge:             ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_write.exit

do.end68.i:                                       ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %name70.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70.i, i32 noundef 8, i32 noundef %or13) #12
  br label %chip_write.exit

chip_write.exit:                                  ; preds = %do.end68.i, %do.end51.i.chip_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer.i) #9
  br label %cleanup

cleanup:                                          ; preds = %chip_write.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ta8874z_checkit(ptr noundef %chip) #2 align 64 {
entry:
  %buffer.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buffer.i) #9
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buffer.i, align 1, !annotation !432
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %do.body7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  %call2..i = select i1 %cmp4.i, i32 %call.i.i, i32 -5
  br label %chip_read.exit

do.body7.i:                                       ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %do.end12.i, label %do.body7.i.do.end19.i_crit_edge

do.body7.i.do.end19.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i

do.end12.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %name14.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer.i, align 1
  %conv.i = zext i8 %5 to i32
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name14.i, i32 noundef %conv.i) #12
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end12.i, %do.body7.i.do.end19.i_crit_edge
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer.i, align 1
  %conv20.i = zext i8 %7 to i32
  br label %chip_read.exit

chip_read.exit:                                   ; preds = %do.end19.i, %do.end.i
  %retval.0.i = phi i32 [ %conv20.i, %do.end19.i ], [ %call2..i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %and = and i32 %retval.0.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and)
  %cmp1 = icmp eq i32 %and, 31
  %cond = zext i1 %cmp1 to i32
  %retval.0 = select i1 %cmp, i32 %retval.0.i, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ta8874z_getrxsubchans(ptr noundef %chip) #2 align 64 {
entry:
  %buffer.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buffer.i) #9
  %2 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buffer.i, align 1, !annotation !432
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %do.body7.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %name.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  br label %cleanup

do.body7.i:                                       ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %do.end12.i, label %do.body7.i.chip_read.exit_crit_edge

do.body7.i.chip_read.exit_crit_edge:              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chip_read.exit

do.end12.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %name14.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %4 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buffer.i, align 1
  %conv.i = zext i8 %5 to i32
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name14.i, i32 noundef %conv.i) #12
  br label %chip_read.exit

chip_read.exit:                                   ; preds = %do.end12.i, %do.body7.i.chip_read.exit_crit_edge
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buffer.i, align 1
  %conv20.i = zext i8 %7 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buffer.i) #9
  %and = and i32 %conv20.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %chip_read.exit.cleanup_crit_edge

chip_read.exit.cleanup_crit_edge:                 ; preds = %chip_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %chip_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and2 = and i32 %conv20.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.select = select i1 %tobool3.not, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %chip_read.exit.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 13, %chip_read.exit.cleanup_crit_edge ], [ %spec.select, %if.else ], [ 1, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ta8874z_setaudmode(ptr noundef %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %name, i32 noundef %mode) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode)
  %1 = icmp ult i32 %mode, 5
  br i1 %1, label %switch.lookup, label %do.end4.if.end11_crit_edge

do.end4.if.end11_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

switch.lookup:                                    ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.ta8874z_setaudmode, i32 0, i32 %mode
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  tail call fastcc void @chip_cmd(ptr noundef %chip, ptr noundef nonnull @.str.130, ptr noundef nonnull %switch.load)
  br label %if.end11

if.end11:                                         ; preds = %switch.lookup, %do.end4.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chip_write(ptr noundef %chip, i32 noundef %subaddr, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buffer) #9
  %2 = getelementptr inbounds [2 x i8], ptr %buffer, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %subaddr)
  %cmp = icmp slt i32 %subaddr, 0
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, i32 noundef %val) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %conv = trunc i32 %val to i8
  %arrayidx = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buffer, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp12.not = icmp eq i32 %call.i, 1
  br i1 %cmp12.not, label %do.end7.cleanup_crit_edge, label %do.end17

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end17:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %name19 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name19, i32 noundef %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  %call11. = select i1 %cmp22, i32 %call.i, i32 -5
  br label %cleanup

if.else:                                          ; preds = %entry
  %add = add nuw i32 %subaddr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %subaddr)
  %cmp27 = icmp ugt i32 %subaddr, 255
  br i1 %cmp27, label %do.end32, label %do.body38

do.end32:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %name34 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name34, i32 noundef %subaddr) #12
  br label %cleanup

do.body38:                                        ; preds = %if.else
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp39 = icmp sgt i32 %7, 0
  br i1 %cmp39, label %do.end44, label %do.body38.do.end51_crit_edge

do.body38.do.end51_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  %name46 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name46, i32 noundef %subaddr, i32 noundef %val) #12
  br label %do.end51

do.end51:                                         ; preds = %do.end44, %do.body38.do.end51_crit_edge
  %conv52 = trunc i32 %val to i8
  %arrayidx56 = getelementptr %struct.CHIPSTATE, ptr %chip, i32 0, i32 4, i32 1, i32 %add
  %8 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv52, ptr %arrayidx56, align 1
  %conv57 = trunc i32 %subaddr to i8
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv57, ptr %buffer, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv52, ptr %2, align 1
  %call.i108 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buffer, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i108)
  %cmp63.not = icmp eq i32 %call.i108, 2
  br i1 %cmp63.not, label %do.end51.cleanup_crit_edge, label %do.end68

do.end51.cleanup_crit_edge:                       ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end68:                                         ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  %name70 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name70, i32 noundef %subaddr, i32 noundef %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp73 = icmp slt i32 %call.i108, 0
  %call62. = select i1 %cmp73, i32 %call.i108, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.end51.cleanup_crit_edge, %do.end32, %do.end17, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end32 ], [ %call11., %do.end17 ], [ %call62., %do.end68 ], [ 0, %do.end51.cleanup_crit_edge ], [ 0, %do.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buffer) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chip_read2(ptr noundef %chip, i32 noundef %subaddr) unnamed_addr #2 align 64 {
entry:
  %write = alloca [1 x i8], align 1
  %read = alloca [1 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %write) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %read) #9
  %2 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %read, align 1, !annotation !432
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #9
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %addr2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %addr2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr2, align 2
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %write, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %11 = load i16, ptr %addr2, align 2
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %13 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %14 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %15 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %read, ptr %buf7, align 4
  %conv = trunc i32 %subaddr to i8
  %16 = ptrtoint ptr %write to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %write, align 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call10 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msgs, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 2
  br i1 %cmp.not, label %do.body18, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp14 = icmp slt i32 %call10, 0
  %call10. = select i1 %cmp14, i32 %call10, i32 -5
  br label %cleanup

do.body18:                                        ; preds = %entry
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp19 = icmp sgt i32 %19, 0
  br i1 %cmp19, label %do.end24, label %do.body18.do.end33_crit_edge

do.body18.do.end33_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %name26 = getelementptr inbounds %struct.v4l2_subdev, ptr %chip, i32 0, i32 9
  %20 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %read, align 1
  %conv29 = zext i8 %21 to i32
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %name26, i32 noundef %subaddr, i32 noundef %conv29) #12
  br label %do.end33

do.end33:                                         ; preds = %do.end24, %do.body18.do.end33_crit_edge
  %22 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %read, align 1
  %conv35 = zext i8 %23 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end
  %retval.0 = phi i32 [ %conv35, %do.end33 ], [ %call10., %do.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %read) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %write) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %name, ptr noundef %3) #12
  %hdl = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tvaudio_s_radio(ptr nocapture noundef writeonly %sd) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 7
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %radio, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_s_frequency(ptr noundef %sd, ptr nocapture noundef readnone %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %thread = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thread, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %desc1 = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 3
  %2 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc1, align 4
  %setaudmode = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %setaudmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setaudmode, align 4
  tail call void %5(ptr noundef %sd, i32 noundef 0) #9
  %prevmode = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 6
  %6 = ptrtoint ptr %prevmode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %prevmode, align 4
  %wt = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 200
  %call3 = tail call i32 @mod_timer(ptr noundef %wt, i32 noundef %add) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_g_tuner(ptr noundef %sd, ptr nocapture noundef %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %getrxsubchans = getelementptr inbounds %struct.CHIPDESC, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %getrxsubchans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %getrxsubchans, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %radio = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 7
  %4 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %audmode = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 11
  %6 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audmode, align 4
  %audmode5 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %8 = ptrtoint ptr %audmode5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %audmode5, align 4
  %9 = ptrtoint ptr %getrxsubchans to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %getrxsubchans, align 4
  %call7 = tail call i32 %10(ptr noundef %sd) #9
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %11 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call7, ptr %rxsubchans, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %12 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capability, align 4
  %or = or i32 %13, 112
  store i32 %or, ptr %capability, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_s_tuner(ptr noundef %sd, ptr nocapture noundef readonly %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %setaudmode = getelementptr inbounds %struct.CHIPDESC, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %setaudmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setaudmode, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %radio = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 7
  %4 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %6 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %switch = icmp ult i32 %7, 5
  br i1 %switch, label %sw.epilog, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end4
  %audmode6 = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 11
  %8 = ptrtoint ptr %audmode6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %audmode6, align 4
  %thread = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 9
  %9 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %thread, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @wake_up_process(ptr noundef nonnull %10) #9
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %setaudmode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setaudmode, align 4
  %13 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %audmode, align 4
  tail call void %12(ptr noundef %sd, i32 noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %flags = getelementptr inbounds %struct.CHIPDESC, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %input)
  %cmp = icmp ugt i32 %input, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %input4 = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 8
  %4 = ptrtoint ptr %input4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %input, ptr %input4, align 4
  %muted = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 5
  %5 = ptrtoint ptr %muted to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %muted, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %inputreg = getelementptr inbounds %struct.CHIPDESC, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %inputreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inputreg, align 4
  %arrayidx = getelementptr %struct.CHIPDESC, ptr %1, i32 0, i32 22, i32 %input
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %inputmask = getelementptr inbounds %struct.CHIPDESC, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %inputmask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inputmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %if.end7.if.end18.i_crit_edge, label %if.then.i

if.end7.if.end18.i_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp slt i32 %8, 0
  br i1 %cmp2.i, label %if.then.i.if.end18.sink.split.i_crit_edge, label %if.else.i

if.then.i.if.end18.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %cmp5.i = icmp ugt i32 %8, 255
  br i1 %cmp5.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name.i, i32 noundef %8) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add nuw nsw i32 %8, 1
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %if.end.i, %if.then.i.if.end18.sink.split.i_crit_edge
  %add.sink.i = phi i32 [ %add.i, %if.end.i ], [ 1, %if.then.i.if.end18.sink.split.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.CHIPSTATE, ptr %sd, i32 0, i32 4, i32 1, i32 %add.sink.i
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx11.i, align 1
  %conv.i = zext i8 %14 to i32
  %neg.i = xor i32 %12, -1
  %and.i = and i32 %conv.i, %neg.i
  %and4.i = and i32 %12, %10
  %or.i = or i32 %and.i, %and4.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18.sink.split.i, %if.end7.if.end18.i_crit_edge
  %val.addr.0.i = phi i32 [ %10, %if.end7.if.end18.i_crit_edge ], [ %or.i, %if.end18.sink.split.i ]
  %call19.i = tail call fastcc i32 @chip_write(ptr noundef %sd, i32 noundef %8, i32 noundef %val.addr.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end18.i, %do.end.i, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end18.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tvaudio_s_std(ptr nocapture noundef writeonly %sd, i64 noundef %std) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.CHIPSTATE, ptr %sd, i32 0, i32 7
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %radio, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tvaudio_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -196
  %desc2 = getelementptr i8, ptr %1, i32 192
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc2, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963785, label %sw.bb
    i32 9963781, label %sw.bb8
    i32 9963783, label %sw.bb28
    i32 9963784, label %sw.bb32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %conv = trunc i32 %8 to i16
  %muted = getelementptr i8, ptr %1, i32 460
  %9 = ptrtoint ptr %muted to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %muted, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  %inputreg5 = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %inputreg5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %inputreg5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %inputmute = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 23
  %12 = ptrtoint ptr %inputmute to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %inputmute, align 4
  %inputmask = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 24
  %14 = ptrtoint ptr %inputmask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inputmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.then.if.end18.i_crit_edge, label %if.then.i

if.then.if.end18.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i = icmp slt i32 %11, 0
  br i1 %cmp2.i, label %if.then.i.if.end18.sink.split.i_crit_edge, label %if.else.i

if.then.i.if.end18.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp5.i = icmp ugt i32 %11, 255
  br i1 %cmp5.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr i8, ptr %1, i32 -80
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name.i, i32 noundef %11) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add nuw nsw i32 %11, 1
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %if.end.i, %if.then.i.if.end18.sink.split.i_crit_edge
  %add.sink.i = phi i32 [ %add.i, %if.end.i ], [ 1, %if.then.i.if.end18.sink.split.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.CHIPSTATE, ptr %add.ptr.i, i32 0, i32 4, i32 1, i32 %add.sink.i
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  %conv.i = zext i8 %17 to i32
  %neg.i = xor i32 %15, -1
  %and.i = and i32 %conv.i, %neg.i
  %and4.i = and i32 %15, %13
  %or.i = or i32 %and.i, %and4.i
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end18.sink.split.i, %if.then.if.end18.i_crit_edge
  %val.addr.0.i = phi i32 [ %13, %if.then.if.end18.i_crit_edge ], [ %or.i, %if.end18.sink.split.i ]
  %call19.i = tail call fastcc i32 @chip_write(ptr noundef %add.ptr.i, i32 noundef %11, i32 noundef %val.addr.0.i) #9
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %input = getelementptr i8, ptr %1, i32 472
  %18 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %input, align 4
  %arrayidx = getelementptr %struct.CHIPDESC, ptr %3, i32 0, i32 22, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %inputmask6 = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 24
  %22 = ptrtoint ptr %inputmask6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %inputmask6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i74 = icmp eq i32 %23, 0
  br i1 %cmp.not.i74, label %if.else.if.end18.i94_crit_edge, label %if.then.i76

if.else.if.end18.i94_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i94

if.then.i76:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i75 = icmp slt i32 %11, 0
  br i1 %cmp2.i75, label %if.then.i76.if.end18.sink.split.i91_crit_edge, label %if.else.i78

if.then.i76.if.end18.sink.split.i91_crit_edge:    ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i91

if.else.i78:                                      ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp5.i77 = icmp ugt i32 %11, 255
  br i1 %cmp5.i77, label %do.end.i81, label %if.end.i83

do.end.i81:                                       ; preds = %if.else.i78
  call void @__sanitizer_cov_trace_pc() #11
  %name.i79 = getelementptr i8, ptr %1, i32 -80
  %call.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name.i79, i32 noundef %11) #12
  br label %cleanup

if.end.i83:                                       ; preds = %if.else.i78
  call void @__sanitizer_cov_trace_pc() #11
  %add.i82 = add nuw nsw i32 %11, 1
  br label %if.end18.sink.split.i91

if.end18.sink.split.i91:                          ; preds = %if.end.i83, %if.then.i76.if.end18.sink.split.i91_crit_edge
  %add.sink.i84 = phi i32 [ %add.i82, %if.end.i83 ], [ 1, %if.then.i76.if.end18.sink.split.i91_crit_edge ]
  %arrayidx11.i85 = getelementptr %struct.CHIPSTATE, ptr %add.ptr.i, i32 0, i32 4, i32 1, i32 %add.sink.i84
  %24 = ptrtoint ptr %arrayidx11.i85 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx11.i85, align 1
  %conv.i86 = zext i8 %25 to i32
  %neg.i87 = xor i32 %23, -1
  %and.i88 = and i32 %conv.i86, %neg.i87
  %and4.i89 = and i32 %23, %21
  %or.i90 = or i32 %and.i88, %and4.i89
  br label %if.end18.i94

if.end18.i94:                                     ; preds = %if.end18.sink.split.i91, %if.else.if.end18.i94_crit_edge
  %val.addr.0.i92 = phi i32 [ %21, %if.else.if.end18.i94_crit_edge ], [ %or.i90, %if.end18.sink.split.i91 ]
  %call19.i93 = tail call fastcc i32 @chip_write(ptr noundef %add.ptr.i, i32 noundef %11, i32 noundef %val.addr.0.i92) #9
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %26 = getelementptr i8, ptr %1, i32 184
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val10, align 4
  %balance11 = getelementptr i8, ptr %1, i32 188
  %31 = ptrtoint ptr %balance11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %balance11, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 22
  %33 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val12, align 4
  %sub = sub i32 65536, %34
  %35 = tail call i32 @llvm.umin.i32(i32 %sub, i32 32768)
  %mul = mul i32 %35, %30
  %div72 = lshr i32 %mul, 15
  %36 = tail call i32 @llvm.umin.i32(i32 %34, i32 32768)
  %mul21 = mul i32 %36, %30
  %div2273 = lshr i32 %mul21, 15
  %leftreg = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 9
  %37 = ptrtoint ptr %leftreg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %leftreg, align 4
  %volfunc = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 16
  %39 = ptrtoint ptr %volfunc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %volfunc, align 4
  %call23 = tail call i32 %40(i32 noundef %div72) #9
  %call24 = tail call fastcc i32 @chip_write(ptr noundef %add.ptr.i, i32 noundef %38, i32 noundef %call23)
  %rightreg = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 10
  %41 = ptrtoint ptr %rightreg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rightreg, align 4
  %43 = ptrtoint ptr %volfunc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %volfunc, align 4
  %call26 = tail call i32 %44(i32 noundef %div2273) #9
  %call27 = tail call fastcc i32 @chip_write(ptr noundef %add.ptr.i, i32 noundef %42, i32 noundef %call26)
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bassreg = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 12
  %45 = ptrtoint ptr %bassreg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bassreg, align 4
  %bassfunc = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 18
  %47 = ptrtoint ptr %bassfunc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bassfunc, align 4
  %val29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %49 = ptrtoint ptr %val29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val29, align 4
  %call30 = tail call i32 %48(i32 noundef %50) #9
  %call31 = tail call fastcc i32 @chip_write(ptr noundef %add.ptr.i, i32 noundef %46, i32 noundef %call30)
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %treblereg = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 11
  %51 = ptrtoint ptr %treblereg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %treblereg, align 4
  %treblefunc = getelementptr inbounds %struct.CHIPDESC, ptr %3, i32 0, i32 17
  %53 = ptrtoint ptr %treblefunc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %treblefunc, align 4
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %55 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val33, align 4
  %call34 = tail call i32 %54(i32 noundef %56) #9
  %call35 = tail call fastcc i32 @chip_write(ptr noundef %add.ptr.i, i32 noundef %52, i32 noundef %call34)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb32, %sw.bb28, %sw.bb8, %if.end18.i94, %do.end.i81, %if.end18.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb32 ], [ 0, %sw.bb28 ], [ 0, %sw.bb8 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end18.i ], [ 0, %do.end.i81 ], [ 0, %if.end18.i94 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !99, !100, !102, !103, !105, !106, !108, !110, !112, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !148, !149, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !173, !174, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !277, !278, !280, !282, !284, !286, !288, !290, !292, !293, !294, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !318, !319, !320, !322, !323, !324, !325, !327, !328, !329, !331, !332, !333, !334, !335, !337, !338, !339, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !359, !360, !361, !363, !365, !367, !368, !369, !371, !373, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !389, !390, !391, !393, !395, !396, !397, !398, !400, !402, !404, !405, !406, !408, !409, !410, !412, !413, !414, !416}
!llvm.named.register.sp = !{!418}
!llvm.module.flags = !{!419, !420, !421, !422, !423, !424, !425, !426}
!llvm.ident = !{!427}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tvaudio.c", i32 47, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/tvaudio.c", i32 49, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/tvaudio.c", i32 50, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/tvaudio.c", i32 51, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @__param_tda9874a_SIF, !11, !"__param_tda9874a_SIF", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/tvaudio.c", i32 881, i32 1}
!12 = !{ptr @__UNIQUE_ID_tda9874a_SIFtype299, !11, !"__UNIQUE_ID_tda9874a_SIFtype299", i1 false, i1 false}
!13 = !{ptr @__param_tda9874a_AMSEL, !14, !"__param_tda9874a_AMSEL", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/tvaudio.c", i32 882, i32 1}
!15 = !{ptr @__UNIQUE_ID_tda9874a_AMSELtype300, !14, !"__UNIQUE_ID_tda9874a_AMSELtype300", i1 false, i1 false}
!16 = !{ptr @__param_tda9874a_STD, !17, !"__param_tda9874a_STD", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/tvaudio.c", i32 883, i32 1}
!18 = !{ptr @__UNIQUE_ID_tda9874a_STDtype301, !17, !"__UNIQUE_ID_tda9874a_STDtype301", i1 false, i1 false}
!19 = !{ptr @__param_tda8425, !20, !"__param_tda8425", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/tvaudio.c", i32 1507, i32 1}
!21 = !{ptr @__UNIQUE_ID_tda8425type304, !20, !"__UNIQUE_ID_tda8425type304", i1 false, i1 false}
!22 = !{ptr @__param_tda9840, !23, !"__param_tda9840", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/tvaudio.c", i32 1508, i32 1}
!24 = !{ptr @__UNIQUE_ID_tda9840type305, !23, !"__UNIQUE_ID_tda9840type305", i1 false, i1 false}
!25 = !{ptr @__param_tda9850, !26, !"__param_tda9850", i1 false, i1 false}
!26 = !{!"../drivers/media/i2c/tvaudio.c", i32 1509, i32 1}
!27 = !{ptr @__UNIQUE_ID_tda9850type306, !26, !"__UNIQUE_ID_tda9850type306", i1 false, i1 false}
!28 = !{ptr @__param_tda9855, !29, !"__param_tda9855", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/tvaudio.c", i32 1510, i32 1}
!30 = !{ptr @__UNIQUE_ID_tda9855type307, !29, !"__UNIQUE_ID_tda9855type307", i1 false, i1 false}
!31 = !{ptr @__param_tda9873, !32, !"__param_tda9873", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/tvaudio.c", i32 1511, i32 1}
!33 = !{ptr @__UNIQUE_ID_tda9873type308, !32, !"__UNIQUE_ID_tda9873type308", i1 false, i1 false}
!34 = !{ptr @__param_tda9874a, !35, !"__param_tda9874a", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/tvaudio.c", i32 1512, i32 1}
!36 = !{ptr @__UNIQUE_ID_tda9874atype309, !35, !"__UNIQUE_ID_tda9874atype309", i1 false, i1 false}
!37 = !{ptr @__param_tda9875, !38, !"__param_tda9875", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/tvaudio.c", i32 1513, i32 1}
!39 = !{ptr @__UNIQUE_ID_tda9875type310, !38, !"__UNIQUE_ID_tda9875type310", i1 false, i1 false}
!40 = !{ptr @__param_tea6300, !41, !"__param_tea6300", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/tvaudio.c", i32 1514, i32 1}
!42 = !{ptr @__UNIQUE_ID_tea6300type311, !41, !"__UNIQUE_ID_tea6300type311", i1 false, i1 false}
!43 = !{ptr @__param_tea6320, !44, !"__param_tea6320", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/tvaudio.c", i32 1515, i32 1}
!45 = !{ptr @__UNIQUE_ID_tea6320type312, !44, !"__UNIQUE_ID_tea6320type312", i1 false, i1 false}
!46 = !{ptr @__param_tea6420, !47, !"__param_tea6420", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/tvaudio.c", i32 1516, i32 1}
!48 = !{ptr @__UNIQUE_ID_tea6420type313, !47, !"__UNIQUE_ID_tea6420type313", i1 false, i1 false}
!49 = !{ptr @__param_pic16c54, !50, !"__param_pic16c54", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/tvaudio.c", i32 1517, i32 1}
!51 = !{ptr @__UNIQUE_ID_pic16c54type314, !50, !"__UNIQUE_ID_pic16c54type314", i1 false, i1 false}
!52 = !{ptr @__param_ta8874z, !53, !"__param_ta8874z", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/tvaudio.c", i32 1518, i32 1}
!54 = !{ptr @__UNIQUE_ID_ta8874ztype315, !53, !"__UNIQUE_ID_ta8874ztype315", i1 false, i1 false}
!55 = !{ptr @__initcall__kmod_tvaudio__320_2103_tvaudio_driver_init6, !56, !"__initcall__kmod_tvaudio__320_2103_tvaudio_driver_init6", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/tvaudio.c", i32 2103, i32 1}
!57 = !{ptr @__exitcall_tvaudio_driver_exit, !56, !"__exitcall_tvaudio_driver_exit", i1 false, i1 false}
!58 = !{ptr @debug, !59, !"debug", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/tvaudio.c", i32 46, i32 12}
!60 = !{ptr @tea6300, !61, !"tea6300", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/tvaudio.c", i32 1501, i32 12}
!62 = !{ptr @tea6320, !63, !"tea6320", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/tvaudio.c", i32 1502, i32 12}
!64 = !{ptr @ta8874z, !65, !"ta8874z", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/tvaudio.c", i32 1505, i32 12}
!66 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!67 = !{ptr @__param_str_tda9874a_SIF, !11, !"__param_str_tda9874a_SIF", i1 false, i1 false}
!68 = !{ptr @tda9874a_SIF, !69, !"tda9874a_SIF", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/tvaudio.c", i32 878, i32 21}
!70 = !{ptr @__param_str_tda9874a_AMSEL, !14, !"__param_str_tda9874a_AMSEL", i1 false, i1 false}
!71 = !{ptr @tda9874a_AMSEL, !72, !"tda9874a_AMSEL", i1 false, i1 false}
!72 = !{!"../drivers/media/i2c/tvaudio.c", i32 879, i32 21}
!73 = !{ptr @__param_str_tda9874a_STD, !17, !"__param_str_tda9874a_STD", i1 false, i1 false}
!74 = !{ptr @tda9874a_STD, !75, !"tda9874a_STD", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/tvaudio.c", i32 880, i32 21}
!76 = !{ptr @__param_str_tda8425, !20, !"__param_str_tda8425", i1 false, i1 false}
!77 = !{ptr @tda8425, !78, !"tda8425", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/tvaudio.c", i32 1494, i32 12}
!79 = !{ptr @__param_str_tda9840, !23, !"__param_str_tda9840", i1 false, i1 false}
!80 = !{ptr @tda9840, !81, !"tda9840", i1 false, i1 false}
!81 = !{!"../drivers/media/i2c/tvaudio.c", i32 1495, i32 12}
!82 = !{ptr @__param_str_tda9850, !26, !"__param_str_tda9850", i1 false, i1 false}
!83 = !{ptr @tda9850, !84, !"tda9850", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/tvaudio.c", i32 1496, i32 12}
!85 = !{ptr @__param_str_tda9855, !29, !"__param_str_tda9855", i1 false, i1 false}
!86 = !{ptr @tda9855, !87, !"tda9855", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/tvaudio.c", i32 1497, i32 12}
!88 = !{ptr @__param_str_tda9873, !32, !"__param_str_tda9873", i1 false, i1 false}
!89 = !{ptr @tda9873, !90, !"tda9873", i1 false, i1 false}
!90 = !{!"../drivers/media/i2c/tvaudio.c", i32 1498, i32 12}
!91 = !{ptr @__param_str_tda9874a, !35, !"__param_str_tda9874a", i1 false, i1 false}
!92 = !{ptr @tda9874a, !93, !"tda9874a", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/tvaudio.c", i32 1499, i32 12}
!94 = !{ptr @__param_str_tda9875, !38, !"__param_str_tda9875", i1 false, i1 false}
!95 = !{ptr @tda9875, !96, !"tda9875", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/tvaudio.c", i32 1500, i32 12}
!97 = !{ptr @__param_str_tea6300, !41, !"__param_str_tea6300", i1 false, i1 false}
!98 = !{ptr @__param_str_tea6320, !44, !"__param_str_tea6320", i1 false, i1 false}
!99 = !{ptr @__param_str_tea6420, !47, !"__param_str_tea6420", i1 false, i1 false}
!100 = !{ptr @tea6420, !101, !"tea6420", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/tvaudio.c", i32 1503, i32 12}
!102 = !{ptr @__param_str_pic16c54, !50, !"__param_str_pic16c54", i1 false, i1 false}
!103 = !{ptr @pic16c54, !104, !"pic16c54", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/tvaudio.c", i32 1504, i32 12}
!105 = !{ptr @__param_str_ta8874z, !53, !"__param_str_ta8874z", i1 false, i1 false}
!106 = !{ptr @.str, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/tvaudio.c", i32 2096, i32 11}
!108 = !{ptr @tvaudio_driver, !109, !"tvaudio_driver", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/tvaudio.c", i32 2094, i32 26}
!110 = !{ptr @.str.1, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/tvaudio.c", i32 1944, i32 3}
!112 = !{ptr @.str.2, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.3, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @tvaudio_probe._entry, !111, !"_entry", i1 false, i1 false}
!115 = !{ptr @tvaudio_probe._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.5, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/tvaudio.c", i32 1945, i32 3}
!118 = !{ptr @tvaudio_probe._entry.4, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tvaudio_probe._entry_ptr.6, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.8, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/tvaudio.c", i32 1947, i32 4}
!122 = !{ptr @tvaudio_probe._entry.7, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @tvaudio_probe._entry_ptr.9, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.10, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.11, !121, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.13, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/tvaudio.c", i32 1949, i32 3}
!128 = !{ptr @tvaudio_probe._entry.12, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @tvaudio_probe._entry_ptr.14, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.16, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/tvaudio.c", i32 1959, i32 2}
!132 = !{ptr @tvaudio_probe._entry.15, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @tvaudio_probe._entry_ptr.17, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.19, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/tvaudio.c", i32 1971, i32 3}
!136 = !{ptr @tvaudio_probe._entry.18, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @tvaudio_probe._entry_ptr.20, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.22, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/tvaudio.c", i32 1974, i32 2}
!140 = !{ptr @tvaudio_probe._entry.21, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @tvaudio_probe._entry_ptr.23, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.25, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/tvaudio.c", i32 1976, i32 3}
!144 = !{ptr @tvaudio_probe._entry.24, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @tvaudio_probe._entry_ptr.26, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.27, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.28, !143, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.29, !143, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.30, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/tvaudio.c", i32 1994, i32 18}
!151 = !{ptr @tvaudio_probe._key, !152, !"_key", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/tvaudio.c", i32 1996, i32 2}
!153 = !{ptr @.str.31, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.33, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/tvaudio.c", i32 2005, i32 4}
!156 = !{ptr @tvaudio_probe._entry.32, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @tvaudio_probe._entry_ptr.34, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.36, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/tvaudio.c", i32 2023, i32 4}
!160 = !{ptr @tvaudio_probe._entry.35, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @tvaudio_probe._entry_ptr.37, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @tvaudio_probe.__key, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/tvaudio.c", i32 2048, i32 2}
!164 = !{ptr @.str.38, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.40, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/tvaudio.c", i32 2054, i32 4}
!167 = !{ptr @tvaudio_probe._entry.39, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @tvaudio_probe._entry_ptr.41, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.42, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/i2c/tvaudio.c", i32 2058, i32 18}
!171 = !{ptr @.str.44, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/i2c/tvaudio.c", i32 2061, i32 4}
!173 = !{ptr @tvaudio_probe._entry.43, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @tvaudio_probe._entry_ptr.45, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.46, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/i2c/tvaudio.c", i32 1522, i32 17}
!177 = !{ptr @.str.47, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/i2c/tvaudio.c", i32 1538, i32 17}
!179 = !{ptr @.str.48, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/i2c/tvaudio.c", i32 1558, i32 17}
!181 = !{ptr @.str.49, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/i2c/tvaudio.c", i32 1571, i32 17}
!183 = !{ptr @.str.50, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/i2c/tvaudio.c", i32 1590, i32 17}
!185 = !{ptr @.str.51, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/i2c/tvaudio.c", i32 1602, i32 17}
!187 = !{ptr @.str.52, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/i2c/tvaudio.c", i32 1627, i32 17}
!189 = !{ptr @.str.53, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/i2c/tvaudio.c", i32 1649, i32 17}
!191 = !{ptr @.str.54, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/i2c/tvaudio.c", i32 1672, i32 17}
!193 = !{ptr @.str.55, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/i2c/tvaudio.c", i32 1685, i32 17}
!195 = !{ptr @.str.56, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/i2c/tvaudio.c", i32 1709, i32 17}
!197 = !{ptr @.str.57, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/i2c/tvaudio.c", i32 1724, i32 17}
!199 = !{ptr @chiplist, !200, !"chiplist", i1 false, i1 false}
!200 = !{!"../drivers/media/i2c/tvaudio.c", i32 1520, i32 24}
!201 = !{ptr @.str.59, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/tvaudio.c", i32 228, i32 3}
!203 = !{ptr @.str.60, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @chip_read._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @chip_read._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.62, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/tvaudio.c", i32 233, i32 2}
!208 = !{ptr @chip_read._entry.61, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @chip_read._entry_ptr.63, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.64, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/tvaudio.c", i32 432, i32 2}
!212 = !{ptr @.str.65, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @tda9840_getrxsubchans._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @tda9840_getrxsubchans._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.66, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/tvaudio.c", i32 162, i32 3}
!217 = !{ptr @.str.67, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @chip_write._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @chip_write._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.69, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/i2c/tvaudio.c", i32 167, i32 4}
!222 = !{ptr @chip_write._entry.68, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @chip_write._entry_ptr.70, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.72, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/i2c/tvaudio.c", i32 174, i32 4}
!226 = !{ptr @chip_write._entry.71, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @chip_write._entry_ptr.73, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.75, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/i2c/tvaudio.c", i32 180, i32 3}
!230 = !{ptr @chip_write._entry.74, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @chip_write._entry_ptr.76, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.78, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/i2c/tvaudio.c", i32 187, i32 4}
!234 = !{ptr @chip_write._entry.77, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @chip_write._entry_ptr.79, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.80, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/i2c/tvaudio.c", i32 262, i32 3}
!238 = !{ptr @.str.81, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @chip_read2._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @chip_read2._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.83, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/i2c/tvaudio.c", i32 267, i32 2}
!243 = !{ptr @chip_read2._entry.82, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @chip_read2._entry_ptr.84, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.85, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/i2c/tvaudio.c", i32 763, i32 2}
!247 = !{ptr @.str.86, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @tda9873_getrxsubchans._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @tda9873_getrxsubchans._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.87, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/i2c/tvaudio.c", i32 776, i32 3}
!252 = !{ptr @.str.88, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @tda9873_setaudmode._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @tda9873_setaudmode._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.90, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/i2c/tvaudio.c", i32 781, i32 2}
!257 = !{ptr @tda9873_setaudmode._entry.89, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @tda9873_setaudmode._entry_ptr.91, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.93, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/i2c/tvaudio.c", i32 784, i32 2}
!261 = !{ptr @tda9873_setaudmode._entry.92, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @tda9873_setaudmode._entry_ptr.94, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.96, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/i2c/tvaudio.c", i32 808, i32 2}
!265 = !{ptr @tda9873_setaudmode._entry.95, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @tda9873_setaudmode._entry_ptr.97, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.98, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/i2c/tvaudio.c", i32 1107, i32 2}
!269 = !{ptr @.str.99, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @tda9874a_checkit._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @tda9874a_checkit._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.101, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/i2c/tvaudio.c", i32 1110, i32 3}
!274 = !{ptr @tda9874a_checkit._entry.100, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @tda9874a_checkit._entry_ptr.102, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.103, !273, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.104, !273, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @tda9874a_dic, !279, !"tda9874a_dic", i1 false, i1 false}
!279 = !{!"../drivers/media/i2c/tvaudio.c", i32 875, i32 12}
!280 = distinct !{null, !281, !"tda9874a_GCONR", i1 false, i1 false}
!281 = !{!"../drivers/media/i2c/tvaudio.c", i32 872, i32 12}
!282 = !{ptr @tda9874a_ESP, !283, !"tda9874a_ESP", i1 false, i1 false}
!283 = !{!"../drivers/media/i2c/tvaudio.c", i32 874, i32 12}
!284 = !{ptr @tda9874a_mode, !285, !"tda9874a_mode", i1 false, i1 false}
!285 = !{!"../drivers/media/i2c/tvaudio.c", i32 871, i32 12}
!286 = !{ptr @tda9874a_NCONR, !287, !"tda9874a_NCONR", i1 false, i1 false}
!287 = !{!"../drivers/media/i2c/tvaudio.c", i32 873, i32 12}
!288 = !{ptr @.str.105, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/i2c/tvaudio.c", i32 927, i32 17}
!290 = !{ptr @.str.106, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/media/i2c/tvaudio.c", i32 951, i32 2}
!292 = !{ptr @.str.107, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @tda9874a_setup._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @tda9874a_setup._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.108, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/i2c/tvaudio.c", i32 897, i32 5}
!297 = !{ptr @.str.109, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/i2c/tvaudio.c", i32 899, i32 5}
!299 = !{ptr @.str.110, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/i2c/tvaudio.c", i32 901, i32 5}
!301 = !{ptr @.str.111, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/i2c/tvaudio.c", i32 903, i32 5}
!303 = !{ptr @.str.112, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/i2c/tvaudio.c", i32 905, i32 5}
!305 = !{ptr @.str.113, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/i2c/tvaudio.c", i32 907, i32 5}
!307 = !{ptr @.str.114, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/i2c/tvaudio.c", i32 909, i32 5}
!309 = !{ptr @.str.115, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/i2c/tvaudio.c", i32 911, i32 5}
!311 = !{ptr @.str.116, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/i2c/tvaudio.c", i32 913, i32 5}
!313 = !{ptr @tda9874a_modelist, !314, !"tda9874a_modelist", i1 false, i1 false}
!314 = !{!"../drivers/media/i2c/tvaudio.c", i32 896, i32 3}
!315 = !{ptr @.str.118, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/i2c/tvaudio.c", i32 998, i32 2}
!317 = !{ptr @.str.119, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @tda9874a_getrxsubchans._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @tda9874a_getrxsubchans._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.120, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/i2c/tvaudio.c", i32 1050, i32 3}
!322 = !{ptr @.str.121, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @tda9874a_setaudmode._entry, !321, !"_entry", i1 false, i1 false}
!324 = !{ptr @tda9874a_setaudmode._entry_ptr, !321, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.123, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/i2c/tvaudio.c", i32 1089, i32 3}
!327 = !{ptr @tda9874a_setaudmode._entry.122, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @tda9874a_setaudmode._entry_ptr.124, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.125, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/i2c/tvaudio.c", i32 1251, i32 3}
!331 = !{ptr @.str.126, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @tda9875_checkit._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @tda9875_checkit._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.127, !330, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.128, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/i2c/tvaudio.c", i32 1453, i32 2}
!337 = !{ptr @.str.129, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @ta8874z_setaudmode._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @ta8874z_setaudmode._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.130, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/media/i2c/tvaudio.c", i32 1476, i32 18}
!342 = !{ptr @ta8874z_mono, !343, !"ta8874z_mono", i1 false, i1 false}
!343 = !{!"../drivers/media/i2c/tvaudio.c", i32 1442, i32 17}
!344 = !{ptr @ta8874z_stereo, !345, !"ta8874z_stereo", i1 false, i1 false}
!345 = !{!"../drivers/media/i2c/tvaudio.c", i32 1441, i32 17}
!346 = !{ptr @ta8874z_main, !347, !"ta8874z_main", i1 false, i1 false}
!347 = !{!"../drivers/media/i2c/tvaudio.c", i32 1443, i32 17}
!348 = !{ptr @ta8874z_sub, !349, !"ta8874z_sub", i1 false, i1 false}
!349 = !{!"../drivers/media/i2c/tvaudio.c", i32 1444, i32 17}
!350 = !{ptr @ta8874z_both, !351, !"ta8874z_both", i1 false, i1 false}
!351 = !{!"../drivers/media/i2c/tvaudio.c", i32 1445, i32 17}
!352 = !{ptr @tvaudio_ops, !353, !"tvaudio_ops", i1 false, i1 false}
!353 = !{!"../drivers/media/i2c/tvaudio.c", i32 1925, i32 37}
!354 = !{ptr @tvaudio_core_ops, !355, !"tvaudio_core_ops", i1 false, i1 false}
!355 = !{!"../drivers/media/i2c/tvaudio.c", i32 1906, i32 42}
!356 = !{ptr @.str.136, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/i2c/tvaudio.c", i32 1895, i32 2}
!358 = !{ptr @.str.137, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @tvaudio_log_status._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @tvaudio_log_status._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @tvaudio_tuner_ops, !362, !"tvaudio_tuner_ops", i1 false, i1 false}
!362 = !{!"../drivers/media/i2c/tvaudio.c", i32 1910, i32 43}
!363 = !{ptr @tvaudio_audio_ops, !364, !"tvaudio_audio_ops", i1 false, i1 false}
!364 = !{!"../drivers/media/i2c/tvaudio.c", i32 1917, i32 43}
!365 = !{ptr @.str.138, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/i2c/tvaudio.c", i32 207, i32 5}
!367 = !{ptr @chip_write_masked._entry, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @chip_write_masked._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @tvaudio_video_ops, !370, !"tvaudio_video_ops", i1 false, i1 false}
!370 = !{!"../drivers/media/i2c/tvaudio.c", i32 1921, i32 43}
!371 = !{ptr @.str.139, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/media/i2c/tvaudio.c", i32 282, i32 3}
!373 = !{ptr @.str.140, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @chip_cmd._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @chip_cmd._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.142, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/i2c/tvaudio.c", i32 291, i32 2}
!378 = !{ptr @chip_cmd._entry.141, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @chip_cmd._entry_ptr.143, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.145, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/media/i2c/tvaudio.c", i32 295, i32 4}
!382 = !{ptr @chip_cmd._entry.144, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @chip_cmd._entry_ptr.146, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @chip_cmd._entry.147, !385, !"_entry", i1 false, i1 false}
!385 = !{!"../drivers/media/i2c/tvaudio.c", i32 299, i32 3}
!386 = !{ptr @chip_cmd._entry_ptr.148, !385, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.150, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/media/i2c/tvaudio.c", i32 304, i32 3}
!389 = !{ptr @chip_cmd._entry.149, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @chip_cmd._entry_ptr.151, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @tvaudio_ctrl_ops, !392, !"tvaudio_ctrl_ops", i1 false, i1 false}
!392 = !{!"../drivers/media/i2c/tvaudio.c", i32 1902, i32 35}
!393 = !{ptr @.str.152, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/i2c/tvaudio.c", i32 332, i32 2}
!395 = !{ptr @.str.153, !394, !"<string literal>", i1 false, i1 false}
!396 = !{ptr @chip_thread._entry, !394, !"_entry", i1 false, i1 false}
!397 = !{ptr @chip_thread._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!398 = distinct !{null, !399, !"__already_done", i1 false, i1 false}
!399 = !{!"../drivers/media/i2c/tvaudio.c", i32 335, i32 3}
!400 = distinct !{null, !401, !"__already_done", i1 false, i1 false}
!401 = !{!"../drivers/media/i2c/tvaudio.c", i32 338, i32 3}
!402 = !{ptr @.str.156, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/media/i2c/tvaudio.c", i32 342, i32 3}
!404 = !{ptr @chip_thread._entry.155, !403, !"_entry", i1 false, i1 false}
!405 = !{ptr @chip_thread._entry_ptr.157, !403, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @.str.159, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/media/i2c/tvaudio.c", i32 354, i32 3}
!408 = !{ptr @chip_thread._entry.158, !407, !"_entry", i1 false, i1 false}
!409 = !{ptr @chip_thread._entry_ptr.160, !407, !"_entry_ptr", i1 false, i1 false}
!410 = !{ptr @.str.162, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/media/i2c/tvaudio.c", i32 389, i32 2}
!412 = !{ptr @chip_thread._entry.161, !411, !"_entry", i1 false, i1 false}
!413 = !{ptr @chip_thread._entry_ptr.163, !411, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.164, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!416 = !{ptr @tvaudio_id, !417, !"tvaudio_id", i1 false, i1 false}
!417 = !{!"../drivers/media/i2c/tvaudio.c", i32 2088, i32 35}
!418 = !{!"sp"}
!419 = !{i32 1, !"wchar_size", i32 2}
!420 = !{i32 1, !"min_enum_size", i32 4}
!421 = !{i32 8, !"branch-target-enforcement", i32 0}
!422 = !{i32 8, !"sign-return-address", i32 0}
!423 = !{i32 8, !"sign-return-address-all", i32 0}
!424 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!425 = !{i32 7, !"uwtable", i32 1}
!426 = !{i32 7, !"frame-pointer", i32 2}
!427 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!428 = !{i64 2156287326}
!429 = !{i64 2156292058}
!430 = !{!"branch_weights", i32 2000, i32 1}
!431 = !{!"branch_weights", i32 1, i32 2000}
!432 = !{!"auto-init"}
