; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/msp3400-driver.c_pt.bc'
source_filename = "../drivers/media/i2c/msp3400-driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.msp_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.117, i32, ptr, %struct.wait_queue_head, i8, [2 x %struct.media_pad] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.117 = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.89, %union.anon.90, i32, ptr, i32, %struct.anon.91, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.89 = type { i64 }
%union.anon.90 = type { ptr }
%struct.anon.91 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@__UNIQUE_ID_description292 = internal constant [65 x i8] c"msp3400.description=device driver for msp34xx TV sound processor\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [26 x i8] c"msp3400.author=Gerd Knorr\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"msp3400.file=drivers/media/i2c/msp3400\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"msp3400.license=GPL\00", section ".modinfo", align 1
@msp_standard = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@msp_stereo_thresh = dso_local global { i32, [28 x i8] } { i32 400, [28 x i8] zeroinitializer }, align 32
@__param_str_opmode = internal constant [15 x i8] c"msp3400.opmode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@opmode = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_opmode = internal constant %struct.kernel_param { ptr @__param_str_opmode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @opmode } }, section "__param", align 4
@__UNIQUE_ID_opmodetype296 = internal constant [28 x i8] c"msp3400.parmtype=opmode:int\00", section ".modinfo", align 1
@__param_str_once = internal constant [13 x i8] c"msp3400.once\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@msp_once = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_once = internal constant %struct.kernel_param { ptr @__param_str_once, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msp_once } }, section "__param", align 4
@__UNIQUE_ID_oncetype297 = internal constant [27 x i8] c"msp3400.parmtype=once:bool\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"msp3400.debug\00", align 1
@msp_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msp_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype298 = internal constant [27 x i8] c"msp3400.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_stereo_threshold = internal constant [25 x i8] c"msp3400.stereo_threshold\00", align 1
@__param_stereo_threshold = internal constant %struct.kernel_param { ptr @__param_str_stereo_threshold, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msp_stereo_thresh } }, section "__param", align 4
@__UNIQUE_ID_stereo_thresholdtype299 = internal constant [38 x i8] c"msp3400.parmtype=stereo_threshold:int\00", section ".modinfo", align 1
@__param_str_standard = internal constant [17 x i8] c"msp3400.standard\00", align 1
@__param_standard = internal constant %struct.kernel_param { ptr @__param_str_standard, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msp_standard } }, section "__param", align 4
@__UNIQUE_ID_standardtype300 = internal constant [30 x i8] c"msp3400.parmtype=standard:int\00", section ".modinfo", align 1
@__param_str_amsound = internal constant [16 x i8] c"msp3400.amsound\00", align 1
@msp_amsound = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_amsound = internal constant %struct.kernel_param { ptr @__param_str_amsound, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msp_amsound } }, section "__param", align 4
@__UNIQUE_ID_amsoundtype301 = internal constant [30 x i8] c"msp3400.parmtype=amsound:bool\00", section ".modinfo", align 1
@__param_str_dolby = internal constant [14 x i8] c"msp3400.dolby\00", align 1
@msp_dolby = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dolby = internal constant %struct.kernel_param { ptr @__param_str_dolby, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @msp_dolby } }, section "__param", align 4
@__UNIQUE_ID_dolbytype302 = internal constant [28 x i8] c"msp3400.parmtype=dolby:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_opmode303 = internal constant [97 x i8] c"msp3400.parm=opmode:Forces a MSP3400 opmode. 0=Manual, 1=Autodetect, 2=Autodetect and autoselect\00", section ".modinfo", align 1
@__UNIQUE_ID_once304 = internal constant [50 x i8] c"msp3400.parm=once:No continuous stereo monitoring\00", section ".modinfo", align 1
@__UNIQUE_ID_debug305 = internal constant [47 x i8] c"msp3400.parm=debug:Enable debug messages [0-3]\00", section ".modinfo", align 1
@__UNIQUE_ID_stereo_threshold306 = internal constant [71 x i8] c"msp3400.parm=stereo_threshold:Sets signal threshold to activate stereo\00", section ".modinfo", align 1
@__UNIQUE_ID_standard307 = internal constant [89 x i8] c"msp3400.parm=standard:Specify audio standard: 32 = NTSC, 64 = radio, Default: Autodetect\00", section ".modinfo", align 1
@__UNIQUE_ID_amsound308 = internal constant [74 x i8] c"msp3400.parm=amsound:Hardwire AM sound at 6.5Hz (France), FM can autoscan\00", section ".modinfo", align 1
@__UNIQUE_ID_dolby309 = internal constant [46 x i8] c"msp3400.parm=dolby:Activates Dolby processing\00", section ".modinfo", align 1
@msp_reset.reset_off = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\80\00", [29 x i8] zeroinitializer }, align 32
@msp_reset.reset_on = internal global { [3 x i8], [29 x i8] } zeroinitializer, align 32
@msp_reset.write = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\13\00\1E", [29 x i8] zeroinitializer }, align 32
@msp_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 135, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msp_reset\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msp_reset\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/i2c/msp3400-driver.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msp_reset._entry_ptr = internal global ptr @msp_reset._entry, section ".printk_index", align 4
@msp_reset._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 139, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"chip reset failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@msp_reset._entry_ptr.8 = internal global ptr @msp_reset._entry.5, section ".printk_index", align 4
@scarts = internal constant { [3 x [9 x i32]], [52 x i8] } { [3 x [9 x i32]] [[9 x i32] [i32 800, i32 0, i32 512, i32 768, i32 32, i32 -1, i32 -1, i32 256, i32 800], [9 x i32] [i32 3136, i32 1088, i32 1024, i32 0, i32 2112, i32 3072, i32 64, i32 2048, i32 3136], [9 x i32] [i32 12416, i32 4096, i32 4224, i32 8320, i32 12416, i32 0, i32 128, i32 8192, i32 12288]], [52 x i8] zeroinitializer }, align 32
@msp_set_scart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 291, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"scart switch: %s => %d (ACB=0x%04x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msp_set_scart\00", [18 x i8] zeroinitializer }, align 32
@msp_set_scart._entry_ptr = internal global ptr @msp_set_scart._entry, section ".printk_index", align 4
@scart_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_msp3400__311_900_msp_driver_init6 = internal global ptr @msp_driver_init, section ".initcall6.init", align 4
@msp_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @msp_probe, ptr @msp_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.42, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msp3400_pm_ops, ptr null, ptr null }, ptr @msp_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_msp_driver_exit = internal global ptr @msp_driver_exit, section ".exitcall.exit", align 4
@msp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 172, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"I/O error #%d (read 0x%02x/0x%02x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msp_read\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@msp_read._entry_ptr = internal global ptr @msp_read._entry, section ".printk_index", align 4
@msp_read._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 176, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"resetting chip, sound will go off.\0A\00", [60 x i8] zeroinitializer }, align 32
@msp_read._entry_ptr.16 = internal global ptr @msp_read._entry.14, section ".printk_index", align 4
@msp_read._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"msp_read(0x%x, 0x%x): 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@msp_read._entry_ptr.19 = internal global ptr @msp_read._entry.17, section ".printk_index", align 4
@msp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"msp_write(0x%x, 0x%x, 0x%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msp_write\00", [22 x i8] zeroinitializer }, align 32
@msp_write._entry_ptr = internal global ptr @msp_write._entry, section ".printk_index", align 4
@msp_write._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 213, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"I/O error #%d (write 0x%02x/0x%02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@msp_write._entry_ptr.24 = internal global ptr @msp_write._entry.22, section ".printk_index", align 4
@msp_write._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.21, ptr @.str.2, i32 217, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@msp_write._entry_ptr.26 = internal global ptr @msp_write._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in1\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in2\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in3\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"in4\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in1 da\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in2 da\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mono\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mute\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@msp_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mute=%s scanning=%s volume=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msp_s_ctrl\00", [21 x i8] zeroinitializer }, align 32
@msp_s_ctrl._entry_ptr = internal global ptr @msp_s_ctrl._entry, section ".printk_index", align 4
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msp3400\00", [24 x i8] zeroinitializer }, align 32
@msp3400_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @msp_suspend, ptr @msp_resume, ptr @msp_suspend, ptr @msp_resume, ptr @msp_suspend, ptr @msp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@msp_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"msp3400\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@msp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 685, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msp3400 not found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msp_probe\00", [22 x i8] zeroinitializer }, align 32
@msp_probe._entry_ptr = internal global ptr @msp_probe._entry, section ".printk_index", align 4
@msp_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @msp_core_ops, ptr @msp_tuner_ops, ptr @msp_audio_ops, ptr @msp_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@msp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&state->wq\00", [21 x i8] zeroinitializer }, align 32
@msp_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.2, i32 723, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rev1=0x%04x, rev2=0x%04x\0A\00", [38 x i8] zeroinitializer }, align 32
@msp_probe._entry_ptr.48 = internal global ptr @msp_probe._entry.46, section ".printk_index", align 4
@msp_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.44, ptr @.str.2, i32 726, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"not an msp3400 (cannot read chip version)\0A\00", [53 x i8] zeroinitializer }, align 32
@msp_probe._entry_ptr.51 = internal global ptr @msp_probe._entry.49, section ".printk_index", align 4
@msp_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"msp3400_driver:802:(hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@msp_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @msp_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@msp_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.44, ptr @.str.2, i32 836, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"MSP%d4%02d%c-%c%d found on %s: supports %s%s%s, mode is %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@msp_probe._entry_ptr.56 = internal global ptr @msp_probe._entry.53, section ".printk_index", align 4
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nicam\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" and \00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"radio\00", [26 x i8] zeroinitializer }, align 32
@opmode_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108], [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msp34xx\00", [24 x i8] zeroinitializer }, align 32
@msp_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.44, ptr @.str.2, i32 856, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel_thread() failed\0A\00", [40 x i8] zeroinitializer }, align 32
@msp_probe._entry_ptr.64 = internal global ptr @msp_probe._entry.62, section ".printk_index", align 4
@msp_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @msp_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@msp_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr @msp_s_radio, ptr @msp_s_frequency, ptr null, ptr null, ptr @msp_g_tuner, ptr @msp_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@msp_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr null, ptr @msp_s_i2s_clock_freq, ptr @msp_s_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@msp_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr @msp_s_std, ptr null, ptr null, ptr @msp_querystd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@msp_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 569, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s rev1 = 0x%04x rev2 = 0x%04x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msp_log_status\00", [17 x i8] zeroinitializer }, align 32
@msp_log_status._entry_ptr = internal global ptr @msp_log_status._entry, section ".printk_index", align 4
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: Audio:    \00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AM (for carrier detect)\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FM Radio\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Terrestrial FM-mono/stereo\00", [37 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Satellite FM-mono\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NICAM/FM (B/G, D/K)\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NICAM/FM (I)\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"NICAM/AM (L)\00", [19 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BTSC\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"External input\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@msp_log_status._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.66, ptr @.str.2, i32 585, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Mode:     %s\0A\00", [18 x i8] zeroinitializer }, align 32
@msp_log_status._entry_ptr.80 = internal global ptr @msp_log_status._entry.78, section ".printk_index", align 4
@msp_log_status._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.66, ptr @.str.2, i32 589, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mode:     %s (%s%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@msp_log_status._entry_ptr.83 = internal global ptr @msp_log_status._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c", dual\00", [25 x i8] zeroinitializer }, align 32
@msp_log_status._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.66, ptr @.str.2, i32 592, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@msp_log_status._entry_ptr.87 = internal global ptr @msp_log_status._entry.86, section ".printk_index", align 4
@msp_log_status._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.66, ptr @.str.2, i32 596, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Standard: %s (%s%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@msp_log_status._entry_ptr.90 = internal global ptr @msp_log_status._entry.88, section ".printk_index", align 4
@msp_log_status._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.66, ptr @.str.2, i32 598, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Audmode:  0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@msp_log_status._entry_ptr.93 = internal global ptr @msp_log_status._entry.91, section ".printk_index", align 4
@msp_log_status._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.66, ptr @.str.2, i32 600, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Routing:  0x%08x (input) 0x%08x (output)\0A\00", [54 x i8] zeroinitializer }, align 32
@msp_log_status._entry_ptr.96 = internal global ptr @msp_log_status._entry.94, section ".printk_index", align 4
@msp_log_status._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.66, ptr @.str.2, i32 601, ptr @.str.55, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ACB:      0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@msp_log_status._entry_ptr.99 = internal global ptr @msp_log_status._entry.97, section ".printk_index", align 4
@msp_s_radio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 415, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"switching to radio mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msp_s_radio\00", [20 x i8] zeroinitializer }, align 32
@msp_s_radio._entry_ptr = internal global ptr @msp_s_radio._entry, section ".printk_index", align 4
@msp_s_i2s_clock_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 544, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Setting I2S speed to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msp_s_i2s_clock_freq\00", [43 x i8] zeroinitializer }, align 32
@msp_s_i2s_clock_freq._entry_ptr = internal global ptr @msp_s_i2s_clock_freq._entry, section ".printk_index", align 4
@msp_querystd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 452, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"detected standard: %s(0x%08Lx)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msp_querystd\00", [19 x i8] zeroinitializer }, align 32
@msp_querystd._entry_ptr = internal global ptr @msp_querystd._entry, section ".printk_index", align 4
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autodetect\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"autodetect and autoselect\00", [38 x i8] zeroinitializer }, align 32
@msp_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 609, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"suspend\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msp_suspend\00", [20 x i8] zeroinitializer }, align 32
@msp_suspend._entry_ptr = internal global ptr @msp_suspend._entry, section ".printk_index", align 4
@msp_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 617, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resume\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msp_resume\00", [21 x i8] zeroinitializer }, align 32
@msp_resume._entry_ptr = internal global ptr @msp_resume._entry, section ".printk_index", align 4
@switch.table.msp_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @msp3400c_thread, ptr @msp3410d_thread, ptr @msp34xxg_thread], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963781, i64 9963782, i64 9963783, i64 9963784, i64 9963786]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.114 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1024000, i64 2048000]
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"msp_standard\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 61, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"msp_stereo_thresh\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 65, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"opmode\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 56, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"msp_once\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 58, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant [10 x i8] c"msp_debug\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 57, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"msp_amsound\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 59, i32 6 }
@___asan_gen_.136 = private unnamed_addr constant [10 x i8] c"msp_dolby\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 63, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant [10 x i8] c"reset_off\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 103, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"reset_on\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 104, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 105, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 135, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 139, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"scarts\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 261, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 290, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [12 x i8] c"scart_names\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 271, i32 14 }
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"msp_driver\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 890, i32 26 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 171, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 176, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 181, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 207, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 212, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 217, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 272, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 272, i32 9 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 272, i32 16 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 272, i32 23 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 272, i32 30 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 272, i32 40 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 272, i32 50 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 272, i32 58 }
@___asan_gen_.260 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 57, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 348, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 892, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant [15 x i8] c"msp3400_pm_ops\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 880, i32 32 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"msp_id\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 884, i32 35 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 685, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant [8 x i8] c"msp_ops\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 650, i32 37 }
@___asan_gen_.304 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 714, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 722, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 725, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 802, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [13 x i8] c"msp_ctrl_ops\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 625, i32 35 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 828, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [11 x i8] c"opmode_str\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 660, i32 27 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 853, i32 20 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 856, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant [13 x i8] c"msp_core_ops\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 629, i32 42 }
@___asan_gen_.367 = private unnamed_addr constant [14 x i8] c"msp_tuner_ops\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 638, i32 43 }
@___asan_gen_.370 = private unnamed_addr constant [14 x i8] c"msp_audio_ops\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 645, i32 43 }
@___asan_gen_.373 = private unnamed_addr constant [14 x i8] c"msp_video_ops\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 633, i32 43 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 568, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 570, i32 35 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 573, i32 32 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 574, i32 31 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 575, i32 31 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 576, i32 29 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 577, i32 32 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 578, i32 32 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 579, i32 31 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 580, i32 27 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 581, i32 29 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 582, i32 16 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 585, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 587, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 592, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 593, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 598, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 599, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 601, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 415, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 544, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 450, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 661, i32 20 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 662, i32 24 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 663, i32 24 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 609, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.515 = private constant [38 x i8] c"../drivers/media/i2c/msp3400-driver.c\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 617, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [23 x i8] c"switch.table.msp_probe\00", align 1
@llvm.compiler.used = appending global [190 x ptr] [ptr @__UNIQUE_ID_amsound308, ptr @__UNIQUE_ID_amsoundtype301, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug305, ptr @__UNIQUE_ID_debugtype298, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_dolby309, ptr @__UNIQUE_ID_dolbytype302, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_once304, ptr @__UNIQUE_ID_oncetype297, ptr @__UNIQUE_ID_opmode303, ptr @__UNIQUE_ID_opmodetype296, ptr @__UNIQUE_ID_standard307, ptr @__UNIQUE_ID_standardtype300, ptr @__UNIQUE_ID_stereo_threshold306, ptr @__UNIQUE_ID_stereo_thresholdtype299, ptr @__exitcall_msp_driver_exit, ptr @__initcall__kmod_msp3400__311_900_msp_driver_init6, ptr @__param_amsound, ptr @__param_debug, ptr @__param_dolby, ptr @__param_once, ptr @__param_opmode, ptr @__param_standard, ptr @__param_stereo_threshold, ptr @msp_driver_exit, ptr @msp_log_status._entry, ptr @msp_log_status._entry.78, ptr @msp_log_status._entry.81, ptr @msp_log_status._entry.86, ptr @msp_log_status._entry.88, ptr @msp_log_status._entry.91, ptr @msp_log_status._entry.94, ptr @msp_log_status._entry.97, ptr @msp_log_status._entry_ptr, ptr @msp_log_status._entry_ptr.80, ptr @msp_log_status._entry_ptr.83, ptr @msp_log_status._entry_ptr.87, ptr @msp_log_status._entry_ptr.90, ptr @msp_log_status._entry_ptr.93, ptr @msp_log_status._entry_ptr.96, ptr @msp_log_status._entry_ptr.99, ptr @msp_probe._entry, ptr @msp_probe._entry.46, ptr @msp_probe._entry.49, ptr @msp_probe._entry.53, ptr @msp_probe._entry.62, ptr @msp_probe._entry_ptr, ptr @msp_probe._entry_ptr.48, ptr @msp_probe._entry_ptr.51, ptr @msp_probe._entry_ptr.56, ptr @msp_probe._entry_ptr.64, ptr @msp_querystd._entry, ptr @msp_querystd._entry_ptr, ptr @msp_read._entry, ptr @msp_read._entry.14, ptr @msp_read._entry.17, ptr @msp_read._entry_ptr, ptr @msp_read._entry_ptr.16, ptr @msp_read._entry_ptr.19, ptr @msp_reset._entry, ptr @msp_reset._entry.5, ptr @msp_reset._entry_ptr, ptr @msp_reset._entry_ptr.8, ptr @msp_resume._entry, ptr @msp_resume._entry_ptr, ptr @msp_s_ctrl._entry, ptr @msp_s_ctrl._entry_ptr, ptr @msp_s_i2s_clock_freq._entry, ptr @msp_s_i2s_clock_freq._entry_ptr, ptr @msp_s_radio._entry, ptr @msp_s_radio._entry_ptr, ptr @msp_set_scart._entry, ptr @msp_set_scart._entry_ptr, ptr @msp_suspend._entry, ptr @msp_suspend._entry_ptr, ptr @msp_write._entry, ptr @msp_write._entry.22, ptr @msp_write._entry.25, ptr @msp_write._entry_ptr, ptr @msp_write._entry_ptr.24, ptr @msp_write._entry_ptr.26, ptr @msp_standard, ptr @msp_stereo_thresh, ptr @opmode, ptr @msp_once, ptr @msp_debug, ptr @msp_amsound, ptr @msp_dolby, ptr @msp_reset.reset_off, ptr @msp_reset.reset_on, ptr @msp_reset.write, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @scarts, ptr @.str.9, ptr @.str.10, ptr @scart_names, ptr @msp_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @msp3400_pm_ops, ptr @msp_id, ptr @.str.43, ptr @.str.44, ptr @msp_ops, ptr @msp_probe.__key, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @msp_probe._key, ptr @.str.52, ptr @msp_ctrl_ops, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @opmode_str, ptr @.str.61, ptr @.str.63, ptr @msp_core_ops, ptr @msp_tuner_ops, ptr @msp_audio_ops, ptr @msp_video_ops, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @switch.table.msp_probe], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_standard to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_stereo_thresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opmode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_amsound to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_dolby to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_reset.reset_off to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_reset.reset_on to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_reset.write to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_reset._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scarts to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_set_scart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scart_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_read._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_read._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_write._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_write._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opmode_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_log_status._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_log_status._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_log_status._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_log_status._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_log_status._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_log_status._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_log_status._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_s_radio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_s_i2s_clock_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_querystd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp_reset(ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  %read = alloca [2 x i8], align 1
  %reset = alloca [2 x %struct.i2c_msg], align 4
  %test = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read) #7
  %0 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %read, align 1, !annotation !302
  %1 = getelementptr inbounds [2 x i8], ptr %read, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !302
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %reset) #7
  %3 = getelementptr inbounds i8, ptr %reset, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1, align 2
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %reset, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %reset, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4096, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %reset, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 3, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %reset, i32 0, i32 3
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @msp_reset.reset_off, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %reset, i32 1
  %11 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %6, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %reset, i32 1, i32 1
  %12 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 4096, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %reset, i32 1, i32 2
  %13 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3, ptr %len5, align 4
  %buf6 = getelementptr inbounds %struct.i2c_msg, ptr %reset, i32 1, i32 3
  %14 = ptrtoint ptr %buf6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @msp_reset.reset_on, ptr %buf6, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test) #7
  %15 = getelementptr inbounds i8, ptr %test, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 16)
  %17 = ptrtoint ptr %test to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %6, ptr %test, align 4
  %flags10 = getelementptr inbounds %struct.i2c_msg, ptr %test, i32 0, i32 1
  %18 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags10, align 2
  %len11 = getelementptr inbounds %struct.i2c_msg, ptr %test, i32 0, i32 2
  %19 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 3, ptr %len11, align 4
  %buf12 = getelementptr inbounds %struct.i2c_msg, ptr %test, i32 0, i32 3
  %20 = ptrtoint ptr %buf12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @msp_reset.write, ptr %buf12, align 4
  %arrayinit.element13 = getelementptr inbounds %struct.i2c_msg, ptr %test, i32 1
  %21 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %6, ptr %arrayinit.element13, align 4
  %flags16 = getelementptr inbounds %struct.i2c_msg, ptr %test, i32 1, i32 1
  %22 = ptrtoint ptr %flags16 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags16, align 2
  %len17 = getelementptr inbounds %struct.i2c_msg, ptr %test, i32 1, i32 2
  %23 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %len17, align 4
  %buf18 = getelementptr inbounds %struct.i2c_msg, ptr %test, i32 1, i32 3
  %24 = ptrtoint ptr %buf18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %read, ptr %buf18, align 4
  %25 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp sgt i32 %25, 2
  br i1 %cmp, label %do.end, label %entry.do.end21_crit_edge

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %do.end21

do.end21:                                         ; preds = %do.end, %entry.do.end21_crit_edge
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %reset, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp22.not = icmp eq i32 %call, 1
  br i1 %cmp22.not, label %lor.lhs.false, label %do.end21.do.end35_crit_edge

do.end21.do.end35_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

lor.lhs.false:                                    ; preds = %do.end21
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %call25 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef %arrayinit.element, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26.not = icmp eq i32 %call25, 1
  br i1 %cmp26.not, label %lor.lhs.false27, label %lor.lhs.false.do.end35_crit_edge

lor.lhs.false.do.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %call30 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %test, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 2
  br i1 %cmp31.not, label %lor.lhs.false27.cleanup_crit_edge, label %lor.lhs.false27.do.end35_crit_edge

lor.lhs.false27.do.end35_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end35:                                         ; preds = %lor.lhs.false27.do.end35_crit_edge, %lor.lhs.false.do.end35_crit_edge, %do.end21.do.end35_crit_edge
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %lor.lhs.false27.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end35 ], [ 0, %lor.lhs.false27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %reset) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp_read_dem(ptr noundef %client, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @msp_read(ptr noundef %client, i32 noundef 16, i32 noundef %addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msp_read(ptr noundef %client, i32 noundef %dev, i32 noundef %addr) unnamed_addr #0 align 64 {
entry:
  %write = alloca [3 x i8], align 1
  %read = alloca [2 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %write) #7
  %0 = getelementptr inbounds [3 x i8], ptr %write, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %write, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %read) #7
  %2 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %read, align 1, !annotation !302
  %3 = getelementptr inbounds [2 x i8], ptr %read, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !302
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %5 = getelementptr inbounds i8, ptr %msgs, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr3, align 2
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 3, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %write, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %8, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %14 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %16 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %read, ptr %buf8, align 4
  %17 = trunc i32 %dev to i8
  %conv = add i8 %17, 1
  %18 = ptrtoint ptr %write to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %write, align 1
  %19 = lshr i32 %addr, 8
  %conv10 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10, ptr %0, align 1
  %conv12 = trunc i32 %addr to i8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv12, ptr %1, align 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp16 = icmp eq i32 %call, 2
  br i1 %cmp16, label %entry.if.end29_crit_edge, label %do.end

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end:                                           ; preds = %entry
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %dev, i32 noundef %addr) #10
  %call20 = call i32 @schedule_timeout_interruptible(i32 noundef 1) #7
  %24 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter, align 8
  %call.1 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.1)
  %cmp16.1 = icmp eq i32 %call.1, 2
  br i1 %cmp16.1, label %do.end.if.end29_crit_edge, label %do.end.1

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end.1:                                         ; preds = %do.end
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %dev, i32 noundef %addr) #10
  %call20.1 = call i32 @schedule_timeout_interruptible(i32 noundef 1) #7
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %call.2 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.2)
  %cmp16.2 = icmp eq i32 %call.2, 2
  br i1 %cmp16.2, label %do.end.1.if.end29_crit_edge, label %do.end26

do.end.1.if.end29_crit_edge:                      ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end26:                                         ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef %dev, i32 noundef %addr) #10
  %call20.2 = call i32 @schedule_timeout_interruptible(i32 noundef 1) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.15) #10
  %call28 = call i32 @msp_reset(ptr noundef %client)
  br label %cleanup

if.end29:                                         ; preds = %do.end.1.if.end29_crit_edge, %do.end.if.end29_crit_edge, %entry.if.end29_crit_edge
  %28 = ptrtoint ptr %read to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %read, align 1
  %conv31 = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %conv31, 8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %3, align 1
  %conv33 = zext i8 %31 to i32
  %or = or i32 %shl, %conv33
  %32 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp35 = icmp sgt i32 %32, 2
  br i1 %cmp35, label %do.end40, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev18, ptr noundef nonnull @.str.18, i32 noundef %dev, i32 noundef %addr, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end29.cleanup_crit_edge, %do.end26
  %retval.0 = phi i32 [ -1, %do.end26 ], [ %or, %do.end40 ], [ %or, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %read) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %write) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp_read_dsp(ptr noundef %client, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @msp_read(ptr noundef %client, i32 noundef 18, i32 noundef %addr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp_write_dem(ptr noundef %client, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @msp_write(ptr noundef %client, i32 noundef 16, i32 noundef %addr, i32 noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msp_write(ptr noundef %client, i32 noundef %dev, i32 noundef %addr, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer) #7
  %0 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 1
  %1 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 2
  %2 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 3
  %3 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 4
  %conv = trunc i32 %dev to i8
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %buffer, align 1
  %5 = lshr i32 %addr, 8
  %conv1 = trunc i32 %5 to i8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %0, align 1
  %conv3 = trunc i32 %addr to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %1, align 1
  %8 = lshr i32 %val, 8
  %conv6 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %2, align 1
  %conv9 = trunc i32 %val to i8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv9, ptr %3, align 1
  %11 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp sgt i32 %11, 2
  br i1 %cmp, label %do.end, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev13, ptr noundef nonnull @.str.20, i32 noundef %dev, i32 noundef %addr, i32 noundef %val) #10
  br label %do.end15

do.end15:                                         ; preds = %do.end, %entry.do.end15_crit_edge
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %cmp18 = icmp eq i32 %call.i, 5
  br i1 %cmp18, label %do.end15.cleanup_crit_edge, label %do.end24

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end24:                                         ; preds = %do.end15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %dev, i32 noundef %addr) #10
  %call27 = call i32 @schedule_timeout_interruptible(i32 noundef 1) #7
  %call.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.1)
  %cmp18.1 = icmp eq i32 %call.i.1, 5
  br i1 %cmp18.1, label %do.end24.cleanup_crit_edge, label %do.end24.1

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end24.1:                                       ; preds = %do.end24
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef %dev, i32 noundef %addr) #10
  %call27.1 = call i32 @schedule_timeout_interruptible(i32 noundef 1) #7
  %call.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer, i32 noundef 5, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.2)
  %cmp18.2 = icmp eq i32 %call.i.2, 5
  br i1 %cmp18.2, label %do.end24.1.cleanup_crit_edge, label %do.end33

do.end24.1.cleanup_crit_edge:                     ; preds = %do.end24.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end33:                                         ; preds = %do.end24.1
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.23, i32 noundef 2, i32 noundef %dev, i32 noundef %addr) #10
  %call27.2 = call i32 @schedule_timeout_interruptible(i32 noundef 1) #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev25, ptr noundef nonnull @.str.15) #10
  %call35 = call i32 @msp_reset(ptr noundef %client)
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %do.end24.1.cleanup_crit_edge, %do.end24.cleanup_crit_edge, %do.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end33 ], [ 0, %do.end24.1.cleanup_crit_edge ], [ 0, %do.end24.cleanup_crit_edge ], [ 0, %do.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp_write_dsp(ptr noundef %client, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @msp_write(ptr noundef %client, i32 noundef 18, i32 noundef %addr, i32 noundef %val)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msp_set_scart(ptr noundef %client, i32 noundef %in, i32 noundef %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %in_scart = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %in_scart to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %in, ptr %in_scart, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %in)
  %3 = icmp ult i32 %in, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %out)
  %4 = icmp ult i32 %out, 3
  %5 = and i1 %3, %4
  br i1 %5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add nuw nsw i32 %in, 1
  %arrayidx7 = getelementptr [3 x [9 x i32]], ptr @scarts, i32 0, i32 %out, i32 %add
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp8 = icmp eq i32 %7, -1
  br i1 %cmp8, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [3 x [9 x i32]], ptr @scarts, i32 0, i32 %out
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %9, -1
  %acb = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %acb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %acb, align 4
  %and = and i32 %11, %neg
  %or = or i32 %and, %7
  store i32 %or, ptr %acb, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %acb16 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %acb16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3936, ptr %acb16, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.end
  %13 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18 = icmp sgt i32 %13, 0
  br i1 %cmp18, label %do.end, label %do.body.do.end25_crit_edge

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %arrayidx21 = getelementptr [8 x ptr], ptr @scart_names, i32 0, i32 %in
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx21, align 4
  %acb22 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 27
  %16 = ptrtoint ptr %acb22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %acb22, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %15, i32 noundef %out, i32 noundef %17) #10
  br label %do.end25

do.end25:                                         ; preds = %do.end, %do.body.do.end25_crit_edge
  %acb26 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 27
  %18 = ptrtoint ptr %acb26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %acb26, align 4
  %call.i = tail call fastcc i32 @msp_write(ptr noundef %client, i32 noundef 18, i32 noundef 19, i32 noundef %19) #7
  %has_i2s_conf = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %has_i2s_conf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_i2s_conf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %do.end25.cleanup_crit_edge, label %if.then28

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  %i2s_mode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 29
  %22 = ptrtoint ptr %i2s_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i2s_mode, align 4
  %call.i53 = tail call fastcc i32 @msp_write(ptr noundef %client, i32 noundef 16, i32 noundef 64, i32 noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.end25.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp_sleep(ptr noundef %state, i32 noundef %timeout) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !292) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @default_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %wq = getelementptr inbounds %struct.msp_state, ptr %state, i32 0, i32 40
  call void @add_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #7
  %call2 = call zeroext i1 @kthread_should_stop() #7
  br i1 %call2, label %entry.if.end69_crit_edge, label %if.then

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp = icmp slt i32 %timeout, 0
  br i1 %cmp, label %__here, label %if.else.i

__here:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@msp_sleep, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %16, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !303
  call void @schedule() #7
  br label %if.end69

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #7
  %call67 = call i32 @schedule_timeout_interruptible(i32 noundef %call2.i) #7
  br label %if.end69

if.end69:                                         ; preds = %if.else.i, %__here, %entry.if.end69_crit_edge
  call void @remove_wait_queue(ptr noundef %wq, ptr noundef nonnull %wait) #7
  %18 = call i32 @llvm.read_register.i32(metadata !292) #7
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and.i77 = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end69.if.end.i78_crit_edge

if.end69.if.end.i78_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i78

if.then.i:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  call void @debug_check_no_locks_held() #7
  br label %if.end.i78

if.end.i78:                                       ; preds = %if.then.i, %if.end69.if.end.i78_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.35, i32 noundef 57) #7
  %24 = call i32 @llvm.read_register.i32(metadata !292) #7
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %28 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i, label %if.end.i78.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !304

if.end.i78.try_to_freeze.exit_crit_edge:          ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i78
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %27) #7
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !305

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %try_to_freeze.exit

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #7
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i78.try_to_freeze.exit_crit_edge
  %restart = getelementptr inbounds %struct.msp_state, ptr %state, i32 0, i32 41
  %29 = ptrtoint ptr %restart to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %restart, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret i32 %bf.cast
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msp_update_volume(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.msp_state, ptr %state, i32 0, i32 37
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %handler.i, align 8
  %lock.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #7
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur, align 8
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val3, align 4
  %muted = getelementptr inbounds %struct.msp_state, ptr %state, i32 0, i32 37, i32 1
  %12 = ptrtoint ptr %muted to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %muted, align 4
  %cur4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %cur4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur4, align 8
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %16 = ptrtoint ptr %val7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val7, align 4
  %17 = load ptr, ptr %0, align 4
  %call = tail call i32 @msp_s_ctrl(ptr noundef %17)
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %handler.i16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %handler.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handler.i16, align 8
  %lock.i17 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %lock.i17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock.i17, align 4
  tail call void @mutex_unlock(ptr noundef %23) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -44
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val2, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 9963781, label %sw.bb
    i32 9963783, label %sw.bb35
    i32 9963784, label %sw.bb45
    i32 9963786, label %sw.bb56
    i32 9963782, label %sw.bb65
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %muted = getelementptr i8, ptr %1, i32 292
  %9 = ptrtoint ptr %muted to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %muted, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val3, align 4
  %scan_in_progress = getelementptr i8, ptr %1, i32 296
  %13 = ptrtoint ptr %scan_in_progress to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_in_progress, align 4
  %or = or i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  %mul = mul i32 %5, 127
  %div = sdiv i32 %mul, 65535
  %shl = shl nsw i32 %div, 8
  %val.0 = select i1 %tobool.not, i32 %shl, i32 %5
  %15 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %do.end, label %sw.bb.do.end15_crit_edge

sw.bb.do.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %16 = getelementptr i8, ptr %1, i32 288
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  %cond = select i1 %tobool8.not, ptr @.str.39, ptr @.str.38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.41, ptr @.str.40
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val12, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond, ptr noundef nonnull %cond11, i32 noundef %20) #10
  br label %do.end15

do.end15:                                         ; preds = %do.end, %sw.bb.do.end15_crit_edge
  %call.i = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 0, i32 noundef %val.0) #7
  %or18 = or i32 %shl, 1
  %spec.select = select i1 %tobool.not, i32 %or18, i32 1
  %call.i123 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 7, i32 noundef %spec.select) #7
  %has_scart2_out_volume = getelementptr i8, ptr %1, i32 204
  %21 = ptrtoint ptr %has_scart2_out_volume to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %has_scart2_out_volume, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  br i1 %tobool21.not, label %do.end15.if.end30_crit_edge, label %if.then22

do.end15.if.end30_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then22:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call.i124 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 64, i32 noundef %spec.select) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then22, %do.end15.if.end30_crit_edge
  %has_headphones = getelementptr i8, ptr %1, i32 198
  %23 = ptrtoint ptr %has_headphones to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_headphones, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool31.not = icmp eq i8 %24, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.then32

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i125 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 6, i32 noundef %val.0) #7
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  %25 = mul i32 %5, 96
  %mul36 = add i32 %25, -3145728
  %div37 = sdiv i32 %mul36, 65535
  %shl38 = shl nsw i32 %div37, 8
  %call.i126 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 2, i32 noundef %shl38) #7
  %has_headphones40 = getelementptr i8, ptr %1, i32 198
  %26 = ptrtoint ptr %has_headphones40 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_headphones40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool41.not = icmp eq i8 %27, 0
  br i1 %tobool41.not, label %sw.bb35.cleanup_crit_edge, label %if.then42

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %call.i127 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 49, i32 noundef %shl38) #7
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  %28 = mul i32 %5, 96
  %mul47 = add i32 %28, -3145728
  %div48 = sdiv i32 %mul47, 65535
  %shl49 = shl nsw i32 %div48, 8
  %call.i128 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 3, i32 noundef %shl49) #7
  %has_headphones51 = getelementptr i8, ptr %1, i32 198
  %29 = ptrtoint ptr %has_headphones51 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_headphones51, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool52.not = icmp eq i8 %30, 0
  br i1 %tobool52.not, label %sw.bb45.cleanup_crit_edge, label %if.then53

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then53:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  %call.i129 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 50, i32 noundef %shl49) #7
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool57.not = icmp eq i32 %5, 0
  %cond58 = select i1 %tobool57.not, i32 0, i32 5120
  %call.i130 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 4, i32 noundef %cond58) #7
  %has_headphones60 = getelementptr i8, ptr %1, i32 198
  %31 = ptrtoint ptr %has_headphones60 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_headphones60, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool61.not = icmp eq i8 %32, 0
  br i1 %tobool61.not, label %sw.bb56.cleanup_crit_edge, label %if.then62

sw.bb56.cleanup_crit_edge:                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then62:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  %call.i131 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 51, i32 noundef %cond58) #7
  br label %cleanup

sw.bb65:                                          ; preds = %entry
  %div66 = sdiv i32 %5, 256
  %conv = shl nsw i32 %div66, 8
  %conv68 = and i32 %conv, 65280
  %shl69 = xor i32 %conv68, 32768
  %call.i132 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 1, i32 noundef %shl69) #7
  %has_headphones71 = getelementptr i8, ptr %1, i32 198
  %33 = ptrtoint ptr %has_headphones71 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_headphones71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool72.not = icmp eq i8 %34, 0
  br i1 %tobool72.not, label %sw.bb65.cleanup_crit_edge, label %if.then73

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then73:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  %call.i133 = tail call fastcc i32 @msp_write(ptr noundef %3, i32 noundef 18, i32 noundef 48, i32 noundef %shl69) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %sw.bb65.cleanup_crit_edge, %if.then62, %sw.bb56.cleanup_crit_edge, %if.then53, %sw.bb45.cleanup_crit_edge, %if.then42, %sw.bb35.cleanup_crit_edge, %if.then32, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %sw.bb65.cleanup_crit_edge ], [ 0, %if.then73 ], [ 0, %sw.bb56.cleanup_crit_edge ], [ 0, %if.then62 ], [ 0, %sw.bb45.cleanup_crit_edge ], [ 0, %if.then53 ], [ 0, %sw.bb35.cleanup_crit_edge ], [ 0, %if.then42 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @msp_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @msp_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @msp_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_probe(ptr noundef %client, ptr noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %id, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.42, i32 noundef 20) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call i32 @msp_reset(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %if.end
  %0 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev10, i32 noundef 624, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @msp_ops) #7
  %pads = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 42
  %flags = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 42, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %flags, align 4
  %sig_type = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 42, i32 0, i32 3
  %2 = ptrtoint ptr %sig_type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %sig_type, align 4
  %flags20 = getelementptr %struct.msp_state, ptr %call.i, i32 0, i32 42, i32 1, i32 4
  %3 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %flags20, align 4
  %sig_type23 = getelementptr %struct.msp_state, ptr %call.i, i32 0, i32 42, i32 1, i32 3
  %4 = ptrtoint ptr %sig_type23 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %sig_type23, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8194, ptr %function, align 4
  %call27 = tail call i32 @media_entity_pads_init(ptr noundef nonnull %call.i, i16 noundef zeroext 2, ptr noundef %pads) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end14.cleanup_crit_edge, label %if.end30

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end14
  %v4l2_std = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 24
  %6 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 45056, ptr %v4l2_std, align 8
  %detected_std = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 25
  %7 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 16777215, ptr %detected_std, align 8
  %audmode = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 35
  %8 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %audmode, align 4
  %input = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 32
  %9 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %input, align 8
  %i2s_mode = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 29
  %10 = ptrtoint ptr %i2s_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %i2s_mode, align 4
  %wq = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 40
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.45, ptr noundef nonnull @msp_probe.__key) #7
  %route_in = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 33
  %11 = ptrtoint ptr %route_in to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %route_in, align 4
  %route_out = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 34
  %12 = ptrtoint ptr %route_out to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 66, ptr %route_out, align 8
  %call.i409 = tail call fastcc i32 @msp_read(ptr noundef %client, i32 noundef 18, i32 noundef 30) #7
  %rev1 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %rev1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i409, ptr %rev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i409)
  %cmp36.not = icmp eq i32 %call.i409, -1
  br i1 %cmp36.not, label %if.end30.do.body40_crit_edge, label %if.then37

if.end30.do.body40_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body40

if.then37:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i410 = tail call fastcc i32 @msp_read(ptr noundef %client, i32 noundef 18, i32 noundef 31) #7
  %rev2 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %rev2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i410, ptr %rev2, align 8
  br label %do.body40

do.body40:                                        ; preds = %if.then37, %if.end30.do.body40_crit_edge
  %15 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp41 = icmp sgt i32 %15, 0
  br i1 %cmp41, label %do.end45, label %do.body40.do.end51_crit_edge

do.body40.do.end51_crit_edge:                     ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

do.end45:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %rev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rev1, align 4
  %rev248 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %rev248 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rev248, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev10, ptr noundef nonnull @.str.47, i32 noundef %17, i32 noundef %19) #10
  br label %do.end51

do.end51:                                         ; preds = %do.end45, %do.body40.do.end51_crit_edge
  %20 = ptrtoint ptr %rev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rev1, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %21, label %do.end51.if.end69_crit_edge [
    i32 -1, label %do.end51.do.body59_crit_edge
    i32 0, label %land.lhs.true
  ]

do.end51.do.body59_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

do.end51.if.end69_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true:                                    ; preds = %do.end51
  %rev256 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %rev256 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rev256, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp57 = icmp eq i32 %24, 0
  br i1 %cmp57, label %land.lhs.true.do.body59_crit_edge, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

land.lhs.true.do.body59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body59

do.body59:                                        ; preds = %land.lhs.true.do.body59_crit_edge, %do.end51.do.body59_crit_edge
  %25 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp60 = icmp sgt i32 %25, 0
  br i1 %cmp60, label %do.end64, label %do.body59.cleanup_crit_edge

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end64:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev10, ptr noundef nonnull @.str.50) #10
  br label %cleanup

if.end69:                                         ; preds = %land.lhs.true.if.end69_crit_edge, %do.end51.if.end69_crit_edge
  %26 = lshr i32 %21, 4
  %and = and i32 %26, 15
  %add = add nuw nsw i32 %and, 3
  %rev271 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %rev271 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rev271, align 8
  %29 = lshr i32 %28, 8
  %and73 = and i32 %29, 255
  %rem.lhs.trunc = trunc i32 %29 to i8
  %rem416 = urem i8 %rem.lhs.trunc, 10
  %and75 = and i32 %21, 15
  %add76 = or i32 %and75, 64
  %30 = lshr i32 %21, 8
  %and79 = and i32 %30, 255
  %add80 = add nuw nsw i32 %and79, 64
  %and82 = and i32 %28, 31
  %mul = mul nuw nsw i32 %add, 10000
  %mul84 = mul nuw nsw i32 %and73, 10
  %add85 = or i32 %and75, 4000
  %add86 = add nuw nsw i32 %add85, %mul
  %sub = add nuw nsw i32 %add86, %mul84
  %ident = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %ident to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub, ptr %ident, align 4
  %and73.off = add nsw i32 %and73, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and73.off)
  %32 = icmp ult i32 %and73.off, 10
  %and73.off404 = add nsw i32 %and73, -50
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and73.off404)
  %33 = icmp ult i32 %and73.off404, 10
  %34 = select i1 %32, i1 true, i1 %33
  %conv = zext i1 %34 to i8
  %has_nicam = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %has_nicam to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %has_nicam, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %add76)
  %cmp89 = icmp ugt i32 %add76, 70
  %conv91 = zext i1 %cmp89 to i8
  %has_radio = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %has_radio to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv91, ptr %has_radio, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %rem416)
  %cmp92 = icmp ult i8 %rem416, 5
  %conv94 = zext i1 %cmp92 to i8
  %has_headphones = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 7
  %37 = ptrtoint ptr %has_headphones to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv94, ptr %has_headphones, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp95.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %rem416)
  %cmp98 = icmp ult i8 %rem416, 7
  %not.cmp95.not = xor i1 %cmp95.not, true
  %38 = select i1 %not.cmp95.not, i1 true, i1 %cmp98
  %conv102 = zext i1 %38 to i8
  %has_scart2 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %has_scart2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv102, ptr %has_scart2, align 4
  %40 = select i1 %not.cmp95.not, i1 true, i1 %cmp92
  %conv110 = zext i1 %40 to i8
  %has_scart3 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 10
  %41 = ptrtoint ptr %has_scart3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv110, ptr %has_scart3, align 1
  br i1 %cmp95.not, label %lor.rhs113, label %if.end69.lor.end118_crit_edge

if.end69.lor.end118_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end118

lor.rhs113:                                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %add76)
  %cmp114 = icmp ugt i32 %add76, 67
  %spec.select = select i1 %cmp114, i1 %cmp92, i1 false
  br label %lor.end118

lor.end118:                                       ; preds = %lor.rhs113, %if.end69.lor.end118_crit_edge
  %42 = phi i1 [ %spec.select, %lor.rhs113 ], [ true, %if.end69.lor.end118_crit_edge ]
  %conv120 = zext i1 %42 to i8
  %has_scart4 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 11
  %43 = ptrtoint ptr %has_scart4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv120, ptr %has_scart4, align 2
  %has_scart2_out = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 12
  %44 = ptrtoint ptr %has_scart2_out to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv110, ptr %has_scart2_out, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %add76)
  %cmp129 = icmp ugt i32 %add76, 67
  %spec.select408 = select i1 %cmp129, i1 %40, i1 false
  %conv136 = zext i1 %spec.select408 to i8
  %has_scart2_out_volume = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 13
  %45 = ptrtoint ptr %has_scart2_out_volume to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv136, ptr %has_scart2_out_volume, align 8
  %spec.select407 = select i1 %cmp89, i1 %cmp98, i1 false
  %conv144 = zext i1 %spec.select407 to i8
  %has_i2s_conf = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 14
  %46 = ptrtoint ptr %has_i2s_conf to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv144, ptr %has_i2s_conf, align 1
  %47 = select i1 %cmp129, i1 %cmp92, i1 false
  %conv152 = zext i1 %47 to i8
  %has_subwoofer = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 15
  %48 = ptrtoint ptr %has_subwoofer to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv152, ptr %has_subwoofer, align 2
  %conv155 = zext i1 %cmp98 to i8
  %has_sound_processing = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 16
  %49 = ptrtoint ptr %has_sound_processing to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv155, ptr %has_sound_processing, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %add76)
  %cmp156 = icmp eq i32 %add76, 71
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rem416)
  %cmp159 = icmp eq i8 %rem416, 1
  %50 = select i1 %cmp156, i1 %cmp159, i1 false
  %conv163 = zext i1 %50 to i8
  %has_virtual_dolby_surround = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 17
  %51 = ptrtoint ptr %has_virtual_dolby_surround to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv163, ptr %has_virtual_dolby_surround, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %rem416)
  %cmp167 = icmp eq i8 %rem416, 2
  %52 = select i1 %cmp156, i1 %cmp167, i1 false
  %conv171 = zext i1 %52 to i8
  %has_dolby_pro_logic = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 18
  %53 = ptrtoint ptr %has_dolby_pro_logic to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv171, ptr %has_dolby_pro_logic, align 1
  %54 = select i1 %cmp95.not, i1 %cmp156, i1 false
  br i1 %54, label %land.rhs177, label %lor.end118.land.end180_crit_edge

lor.end118.land.end180_crit_edge:                 ; preds = %lor.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end180

land.rhs177:                                      ; preds = %lor.end118
  call void @__sanitizer_cov_trace_pc() #9
  %and73.off405 = add nsw i32 %and73, -30
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and73.off405)
  %55 = icmp ult i32 %and73.off405, 10
  br label %land.end180

land.end180:                                      ; preds = %land.rhs177, %lor.end118.land.end180_crit_edge
  %56 = phi i1 [ false, %lor.end118.land.end180_crit_edge ], [ %55, %land.rhs177 ]
  %conv182 = zext i1 %56 to i8
  %force_btsc = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 19
  %57 = ptrtoint ptr %force_btsc to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv182, ptr %force_btsc, align 2
  %58 = load i32, ptr @opmode, align 4
  %opmode = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %59 = icmp ugt i32 %58, 2
  %. = zext i1 %cmp129 to i32
  %.sink = select i1 %cmp89, i32 2, i32 %.
  %storemerge = select i1 %59, i32 %.sink, i32 %58
  %60 = ptrtoint ptr %opmode to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %storemerge, ptr %opmode, align 4
  %hdl204 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 1
  %call205 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl204, i32 noundef 6, ptr noundef nonnull @msp_probe._key, ptr noundef nonnull @.str.52) #7
  %61 = ptrtoint ptr %has_sound_processing to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %has_sound_processing, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool207.not = icmp eq i8 %62, 0
  br i1 %tobool207.not, label %land.end180.if.end212_crit_edge, label %if.then208

land.end180.if.end212_crit_edge:                  ; preds = %land.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

if.then208:                                       ; preds = %land.end180
  call void @__sanitizer_cov_trace_pc() #9
  %call209 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl204, ptr noundef nonnull @msp_ctrl_ops, i32 noundef 9963783, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 32768) #7
  %call210 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl204, ptr noundef nonnull @msp_ctrl_ops, i32 noundef 9963784, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 32768) #7
  %call211 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl204, ptr noundef nonnull @msp_ctrl_ops, i32 noundef 9963786, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %land.end180.if.end212_crit_edge
  %call213 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl204, ptr noundef nonnull @msp_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 58880) #7
  %63 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 37
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call213, ptr %63, align 4
  %call214 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl204, ptr noundef nonnull @msp_ctrl_ops, i32 noundef 9963782, i64 noundef 0, i64 noundef 65535, i64 noundef 655, i64 noundef 32768) #7
  %call215 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl204, ptr noundef nonnull @msp_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #7
  %muted = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 37, i32 1
  %65 = ptrtoint ptr %muted to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call215, ptr %muted, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %66 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %hdl204, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 1, i32 9
  %67 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool216.not = icmp eq i32 %68, 0
  br i1 %tobool216.not, label %if.end219, label %if.then217

if.then217:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl204) #7
  br label %cleanup

if.end219:                                        ; preds = %if.end212
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %63) #7
  %call221 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl204) #7
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %69 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adapter, align 8
  %name226 = getelementptr inbounds %struct.i2c_adapter, ptr %70, i32 0, i32 12
  %71 = ptrtoint ptr %has_nicam to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %has_nicam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool230.not = icmp eq i8 %72, 0
  %cond = select i1 %tobool230.not, ptr @.str.58, ptr @.str.57
  br i1 %tobool230.not, label %if.end219.land.end238_crit_edge, label %land.rhs234

if.end219.land.end238_crit_edge:                  ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end238

land.rhs234:                                      ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %has_radio to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %has_radio, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool237.not = icmp eq i8 %74, 0
  %phi.sel = select i1 %tobool237.not, ptr @.str.58, ptr @.str.59
  br label %land.end238

land.end238:                                      ; preds = %land.rhs234, %if.end219.land.end238_crit_edge
  %75 = phi ptr [ @.str.58, %if.end219.land.end238_crit_edge ], [ %phi.sel, %land.rhs234 ]
  %76 = ptrtoint ptr %has_radio to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %has_radio, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool243.not = icmp eq i8 %77, 0
  %cond244 = select i1 %tobool243.not, ptr @.str.58, ptr @.str.60
  %78 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %opmode, align 4
  %arrayidx246 = getelementptr [3 x ptr], ptr @opmode_str, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx246, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.54, i32 noundef %add, i32 noundef %and73, i32 noundef %add76, i32 noundef %add80, i32 noundef %and82, ptr noundef %name226, ptr noundef nonnull %cond, ptr noundef nonnull %75, ptr noundef nonnull %cond244, ptr noundef %81) #10
  %82 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %83)
  %84 = icmp ult i32 %83, 3
  br i1 %84, label %switch.lookup, label %land.end238.cleanup_crit_edge

land.end238.cleanup_crit_edge:                    ; preds = %land.end238
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %land.end238
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.msp_probe, i32 0, i32 %83
  %85 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %85)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %call252 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull %switch.load, ptr noundef %client, i32 noundef -1, ptr noundef nonnull @.str.61) #7
  %cmp.i = icmp ugt ptr %call252, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end263, label %if.end256

if.end256:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %call255 = tail call i32 @wake_up_process(ptr noundef %call252) #7
  %kthread = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 39
  %86 = ptrtoint ptr %kthread to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call252, ptr %kthread, align 8
  br label %if.end265

do.end263:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %kthread415 = getelementptr inbounds %struct.msp_state, ptr %call.i, i32 0, i32 39
  %87 = ptrtoint ptr %kthread415 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call252, ptr %kthread415, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10, ptr noundef nonnull @.str.63) #10
  br label %if.end265

if.end265:                                        ; preds = %do.end263, %if.end256
  tail call fastcc void @msp_wake_thread(ptr noundef %client)
  br label %cleanup

cleanup:                                          ; preds = %if.end265, %land.end238.cleanup_crit_edge, %if.then217, %do.end64, %do.body59.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %68, %if.then217 ], [ -19, %do.end ], [ -19, %do.body.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ %call27, %if.end14.cleanup_crit_edge ], [ -19, %do.end64 ], [ -19, %do.body59.cleanup_crit_edge ], [ 0, %if.end265 ], [ 0, %land.end238.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #7
  %kthread = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kthread, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %restart = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 41
  %4 = ptrtoint ptr %restart to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %restart, align 8
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %restart, align 8
  %call3 = tail call i32 @kthread_stop(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @msp_reset(ptr noundef %client)
  %hdl = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp3400c_thread(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp3410d_thread(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp34xxg_thread(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msp_wake_thread(ptr nocapture noundef readonly %client) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %kthread = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %kthread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kthread, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %watch_stereo = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 41
  %4 = ptrtoint ptr %watch_stereo to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %watch_stereo, align 8
  %bf.clear3 = and i8 %bf.load, 63
  %bf.set4 = or i8 %bf.clear3, -128
  store i8 %bf.set4, ptr %watch_stereo, align 8
  %wq = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_log_status(ptr noundef %sd) #0 align 64 {
entry:
  %prefix = alloca [52 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %prefix) #7
  %2 = call ptr @memset(ptr %prefix, i32 255, i32 52)
  %opmode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 21
  %3 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %if.then, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @msp_detect_stereo(ptr noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 2
  %rev1 = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 2
  %5 = ptrtoint ptr %rev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rev1, align 4
  %rev2 = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 3
  %7 = ptrtoint ptr %rev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rev2, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef %name, i32 noundef %6, i32 noundef %8) #10
  %name4 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prefix, i32 noundef 52, ptr noundef nonnull @.str.67, ptr noundef %name4)
  %hdl = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 1
  call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef nonnull %prefix) #7
  %mode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 23
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %10, label %sw.default [
    i32 0, label %do.end.if.else_crit_edge
    i32 2, label %sw.bb8
    i32 3, label %sw.bb9
    i32 4, label %sw.bb10
    i32 5, label %sw.bb11
    i32 6, label %sw.bb12
    i32 7, label %sw.bb13
    i32 8, label %sw.bb14
    i32 9, label %do.end21
  ]

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.76) #10
  br label %do.end60

if.else:                                          ; preds = %sw.default, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %do.end.if.else_crit_edge
  %p.0.ph = phi ptr [ @.str.68, %do.end.if.else_crit_edge ], [ @.str.69, %sw.bb8 ], [ @.str.70, %sw.bb9 ], [ @.str.71, %sw.bb10 ], [ @.str.72, %sw.bb11 ], [ @.str.73, %sw.bb12 ], [ @.str.74, %sw.bb13 ], [ @.str.75, %sw.bb14 ], [ @.str.77, %sw.default ]
  %12 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opmode, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %13, label %if.else.do.end45_crit_edge [
    i32 0, label %do.end28
    i32 1, label %do.end40
  ]

if.else.do.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rxsubchans = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 36
  %15 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rxsubchans, align 8
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.33, ptr @.str.84
  %and31 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.58, ptr @.str.85
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.82, ptr noundef nonnull %p.0.ph, ptr noundef nonnull %cond, ptr noundef nonnull %cond33) #10
  br label %do.end60

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef nonnull %p.0.ph) #10
  br label %do.end45

do.end45:                                         ; preds = %do.end40, %if.else.do.end45_crit_edge
  %std = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 22
  %17 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %std, align 8
  %call47 = call ptr @msp_standard_std_name(i32 noundef %18) #7
  %rxsubchans48 = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 36
  %19 = ptrtoint ptr %rxsubchans48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rxsubchans48, align 8
  %and49 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.33, ptr @.str.84
  %and53 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %cond55 = select i1 %tobool54.not, ptr @.str.58, ptr @.str.85
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.89, ptr noundef %call47, ptr noundef nonnull %cond51, ptr noundef nonnull %cond55) #10
  br label %do.end60

do.end60:                                         ; preds = %do.end45, %do.end28, %do.end21
  %audmode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 35
  %21 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %audmode, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %22) #10
  %route_in = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 33
  %23 = ptrtoint ptr %route_in to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %route_in, align 4
  %route_out = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 34
  %25 = ptrtoint ptr %route_out to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %route_out, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %24, i32 noundef %26) #10
  %acb = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 27
  %27 = ptrtoint ptr %acb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %acb, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.98, i32 noundef %28) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %prefix) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp_detect_stereo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msp_standard_std_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_s_radio(ptr nocapture noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %radio = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 20
  %2 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %radio, align 8
  %5 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.100) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %if.end.do.end7_crit_edge
  %watch_stereo = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 41
  %6 = ptrtoint ptr %watch_stereo to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %watch_stereo, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %watch_stereo, align 8
  %opmode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 21
  %7 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opmode, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %8, label %do.end7.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %do.end7.sw.bb8_crit_edge
    i32 2, label %do.end7.sw.bb8_crit_edge18
  ]

do.end7.sw.bb8_crit_edge18:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

do.end7.sw.bb8_crit_edge:                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msp3400c_set_mode(ptr noundef %1, i32 noundef 2) #7
  tail call void @msp3400c_set_carrier(ptr noundef %1, i32 noundef 9739378, i32 noundef 9739378) #7
  %10 = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 37
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %16, i32 noundef 0) #7
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %cur.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 23
  %19 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur.i, align 8
  %val3.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 22
  %21 = ptrtoint ptr %val3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val3.i, align 4
  %muted.i = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 37, i32 1
  %22 = ptrtoint ptr %muted.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %muted.i, align 4
  %cur4.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %cur4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur4.i, align 8
  %val7.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %26 = ptrtoint ptr %val7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val7.i, align 4
  %27 = load ptr, ptr %10, align 4
  %call.i = tail call i32 @msp_s_ctrl(ptr noundef %27) #7
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %10, align 4
  %handler.i16.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %handler.i16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handler.i16.i, align 8
  %lock.i17.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %lock.i17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock.i17.i, align 4
  tail call void @mutex_unlock(ptr noundef %33) #7
  br label %cleanup

sw.bb8:                                           ; preds = %do.end7.sw.bb8_crit_edge, %do.end7.sw.bb8_crit_edge18
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i, align 4
  %kthread.i = getelementptr inbounds %struct.msp_state, ptr %35, i32 0, i32 39
  %36 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %kthread.i, align 8
  %cmp.i = icmp eq ptr %37, null
  br i1 %cmp.i, label %sw.bb8.cleanup_crit_edge, label %if.end.i

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %watch_stereo.i = getelementptr inbounds %struct.msp_state, ptr %35, i32 0, i32 41
  %38 = ptrtoint ptr %watch_stereo.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load.i = load i8, ptr %watch_stereo.i, align 8
  %bf.clear3.i = and i8 %bf.load.i, 63
  %bf.set4.i = or i8 %bf.clear3.i, -128
  store i8 %bf.set4.i, ptr %watch_stereo.i, align 8
  %wq.i = getelementptr inbounds %struct.msp_state, ptr %35, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %sw.bb8.cleanup_crit_edge, %sw.bb, %do.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_s_frequency(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %kthread.i = getelementptr inbounds %struct.msp_state, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kthread.i, align 8
  %cmp.i = icmp eq ptr %5, null
  br i1 %cmp.i, label %entry.msp_wake_thread.exit_crit_edge, label %if.end.i

entry.msp_wake_thread.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %msp_wake_thread.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %watch_stereo.i = getelementptr inbounds %struct.msp_state, ptr %3, i32 0, i32 41
  %6 = ptrtoint ptr %watch_stereo.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %watch_stereo.i, align 8
  %bf.clear3.i = and i8 %bf.load.i, 63
  %bf.set4.i = or i8 %bf.clear3.i, -128
  store i8 %bf.set4.i, ptr %watch_stereo.i, align 8
  %wq.i = getelementptr inbounds %struct.msp_state, ptr %3, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %msp_wake_thread.exit

msp_wake_thread.exit:                             ; preds = %if.end.i, %entry.msp_wake_thread.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_g_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef %vt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %radio = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 20
  %4 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %opmode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 21
  %6 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then4, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @msp_detect_stereo(ptr noundef %1) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then2.if.end6_crit_edge
  %rxsubchans = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 36
  %8 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxsubchans, align 8
  %rxsubchans7 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %10 = ptrtoint ptr %rxsubchans7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rxsubchans7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %if.end.if.end8_crit_edge
  %audmode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 35
  %11 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %audmode, align 4
  %audmode9 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %13 = ptrtoint ptr %audmode9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %audmode9, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %14 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capability, align 4
  %or = or i32 %15, 112
  store i32 %or, ptr %capability, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_s_tuner(ptr nocapture noundef %sd, ptr nocapture noundef readonly %vt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %radio = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 20
  %2 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %audmode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 35
  %4 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode, align 4
  %audmode2 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %6 = ptrtoint ptr %audmode2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audmode2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %audmode, align 4
  tail call void @msp_set_audmode(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msp3400c_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msp3400c_set_carrier(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msp_set_audmode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_s_i2s_clock_freq(ptr nocapture noundef %sd, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.102, i32 noundef %freq) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %3 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %freq, label %do.end4.cleanup_crit_edge [
    i32 1024000, label %do.end4.cleanup.sink.split_crit_edge
    i32 2048000, label %sw.bb5
  ]

do.end4.cleanup.sink.split_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb5, %do.end4.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb5 ], [ 0, %do.end4.cleanup.sink.split_crit_edge ]
  %i2s_mode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 29
  %4 = ptrtoint ptr %i2s_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %i2s_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_s_routing(ptr nocapture noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %and2 = and i32 %input, 7
  %and3 = and i32 %output, 15
  %shr4 = lshr i32 %output, 4
  %and5 = and i32 %shr4, 15
  %route_in = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 33
  %2 = ptrtoint ptr %route_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %input)
  %cmp = icmp eq i32 %3, %input
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %route_out = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 34
  %4 = ptrtoint ptr %route_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %route_out, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %output)
  %cmp6 = icmp eq i32 %5, %output
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %route_in to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %input, ptr %route_in, align 4
  %route_out8 = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 34
  %7 = ptrtoint ptr %route_out8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %output, ptr %route_out8, align 8
  %8 = and i32 %input, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12 = icmp ne i32 %8, 0
  %9 = and i32 %input, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12.1 = icmp ne i32 %9, 0
  %narrow = and i1 %cmp12.1, %cmp12
  %10 = and i32 %input, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp12.2 = icmp ne i32 %10, 0
  %narrow59 = and i1 %cmp12.2, %narrow
  %11 = and i32 %input, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12.3 = icmp ne i32 %11, 0
  %narrow60 = and i1 %cmp12.3, %narrow59
  %12 = and i32 %input, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12.4 = icmp ne i32 %12, 0
  %narrow61 = and i1 %cmp12.4, %narrow60
  %cond = select i1 %narrow61, i32 9, i32 0
  %mode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 23
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %mode, align 4
  %rxsubchans = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 36
  %14 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %rxsubchans, align 8
  tail call void @msp_set_scart(ptr noundef %1, i32 noundef %and2, i32 noundef 0)
  tail call void @msp_set_scart(ptr noundef %1, i32 noundef %and3, i32 noundef 1)
  tail call void @msp_set_scart(ptr noundef %1, i32 noundef %and5, i32 noundef 2)
  tail call void @msp_set_audmode(ptr noundef %1) #7
  %opmode = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 21
  %15 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp15 = icmp eq i32 %16, 2
  %conv17 = select i1 %cmp15, i32 48, i32 187
  %call.i = tail call fastcc i32 @msp_read(ptr noundef %1, i32 noundef 16, i32 noundef %conv17) #7
  %and22 = and i32 %call.i, 65279
  %17 = shl i32 %input, 5
  %shl = and i32 %17, 256
  %or = or i32 %and22, %shl
  %call.i56 = tail call fastcc i32 @msp_write(ptr noundef %1, i32 noundef 16, i32 noundef %conv17, i32 noundef %or) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i, align 4
  %kthread.i = getelementptr inbounds %struct.msp_state, ptr %19, i32 0, i32 39
  %20 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %kthread.i, align 8
  %cmp.i = icmp eq ptr %21, null
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %watch_stereo.i = getelementptr inbounds %struct.msp_state, ptr %19, i32 0, i32 41
  %22 = ptrtoint ptr %watch_stereo.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %watch_stereo.i, align 8
  %bf.clear3.i = and i8 %bf.load.i, 63
  %bf.set4.i = or i8 %bf.clear3.i, -128
  store i8 %bf.set4.i, ptr %watch_stereo.i, align 8
  %wq.i = getelementptr inbounds %struct.msp_state, ptr %19, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_s_std(ptr nocapture noundef %sd, i64 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %radio = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 20
  %2 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %v4l2_std = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 24
  br i1 %tobool.not, label %lor.rhs, label %if.then.critedge

lor.rhs:                                          ; preds = %entry
  %4 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %v4l2_std, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %id)
  %cmp.not = icmp eq i64 %5, %id
  %6 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %id, ptr %v4l2_std, align 8
  %7 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %radio, align 8
  br i1 %cmp.not, label %lor.rhs.if.end_crit_edge, label %lor.rhs.if.then_crit_edge

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %id, ptr %v4l2_std, align 8
  %9 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %radio, align 8
  br label %if.then

if.then:                                          ; preds = %if.then.critedge, %lor.rhs.if.then_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %kthread.i = getelementptr inbounds %struct.msp_state, ptr %11, i32 0, i32 39
  %12 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kthread.i, align 8
  %cmp.i = icmp eq ptr %13, null
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %watch_stereo.i = getelementptr inbounds %struct.msp_state, ptr %11, i32 0, i32 41
  %14 = ptrtoint ptr %watch_stereo.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %watch_stereo.i, align 8
  %bf.clear3.i = and i8 %bf.load.i, 63
  %bf.set4.i = or i8 %bf.clear3.i, -128
  store i8 %bf.set4.i, ptr %watch_stereo.i, align 8
  %wq.i = getelementptr inbounds %struct.msp_state, ptr %11, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %lor.rhs.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_querystd(ptr nocapture noundef readonly %sd, ptr nocapture noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %detected_std = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 25
  %2 = ptrtoint ptr %detected_std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %detected_std, align 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  %and = and i64 %5, %3
  store i64 %and, ptr %id, align 8
  %6 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp sgt i32 %6, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %std = getelementptr inbounds %struct.msp_state, ptr %sd, i32 0, i32 22
  %7 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %std, align 8
  %call3 = tail call ptr @msp_standard_std_name(i32 noundef %8) #7
  %9 = ptrtoint ptr %detected_std to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %detected_std, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.104, ptr noundef %call3, i64 noundef %10) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.109) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @msp_reset(ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msp_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %dev, ptr noundef nonnull @.str.111) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %kthread.i = getelementptr inbounds %struct.msp_state, ptr %2, i32 0, i32 39
  %3 = ptrtoint ptr %kthread.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kthread.i, align 8
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %do.end4.msp_wake_thread.exit_crit_edge, label %if.end.i

do.end4.msp_wake_thread.exit_crit_edge:           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %msp_wake_thread.exit

if.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %watch_stereo.i = getelementptr inbounds %struct.msp_state, ptr %2, i32 0, i32 41
  %5 = ptrtoint ptr %watch_stereo.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %watch_stereo.i, align 8
  %bf.clear3.i = and i8 %bf.load.i, 63
  %bf.set4.i = or i8 %bf.clear3.i, -128
  store i8 %bf.set4.i, ptr %watch_stereo.i, align 8
  %wq.i = getelementptr inbounds %struct.msp_state, ptr %2, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %wq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %msp_wake_thread.exit

msp_wake_thread.exit:                             ; preds = %if.end.i, %do.end4.msp_wake_thread.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !74, !75, !77, !79, !81, !83, !84, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !144, !145, !146, !147, !148, !149, !151, !153, !155, !156, !157, !158, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !177, !178, !179, !180, !181, !183, !185, !186, !187, !189, !191, !193, !194, !195, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !221, !222, !224, !225, !226, !227, !228, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !251, !252, !253, !254, !256, !258, !259, !260, !261, !263, !265, !266, !267, !268, !270, !272, !274, !276, !278, !280, !282, !283, !284, !285, !287, !288, !289, !290}
!llvm.named.register.sp = !{!292}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 51, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 52, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 53, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @msp_standard, !8, !"msp_standard", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 61, i32 5}
!9 = !{ptr @msp_stereo_thresh, !10, !"msp_stereo_thresh", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 65, i32 5}
!11 = !{ptr @__param_opmode, !12, !"__param_opmode", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 69, i32 1}
!13 = !{ptr @__UNIQUE_ID_opmodetype296, !12, !"__UNIQUE_ID_opmodetype296", i1 false, i1 false}
!14 = !{ptr @__param_once, !15, !"__param_once", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 72, i32 1}
!16 = !{ptr @__UNIQUE_ID_oncetype297, !15, !"__UNIQUE_ID_oncetype297", i1 false, i1 false}
!17 = !{ptr @__param_debug, !18, !"__param_debug", i1 false, i1 false}
!18 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 73, i32 1}
!19 = !{ptr @__UNIQUE_ID_debugtype298, !18, !"__UNIQUE_ID_debugtype298", i1 false, i1 false}
!20 = !{ptr @__param_stereo_threshold, !21, !"__param_stereo_threshold", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 74, i32 1}
!22 = !{ptr @__UNIQUE_ID_stereo_thresholdtype299, !21, !"__UNIQUE_ID_stereo_thresholdtype299", i1 false, i1 false}
!23 = !{ptr @__param_standard, !24, !"__param_standard", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 75, i32 1}
!25 = !{ptr @__UNIQUE_ID_standardtype300, !24, !"__UNIQUE_ID_standardtype300", i1 false, i1 false}
!26 = !{ptr @__param_amsound, !27, !"__param_amsound", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 76, i32 1}
!28 = !{ptr @__UNIQUE_ID_amsoundtype301, !27, !"__UNIQUE_ID_amsoundtype301", i1 false, i1 false}
!29 = !{ptr @__param_dolby, !30, !"__param_dolby", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 77, i32 1}
!31 = !{ptr @__UNIQUE_ID_dolbytype302, !30, !"__UNIQUE_ID_dolbytype302", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_opmode303, !33, !"__UNIQUE_ID_opmode303", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 79, i32 1}
!34 = !{ptr @__UNIQUE_ID_once304, !35, !"__UNIQUE_ID_once304", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 80, i32 1}
!36 = !{ptr @__UNIQUE_ID_debug305, !37, !"__UNIQUE_ID_debug305", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 81, i32 1}
!38 = !{ptr @__UNIQUE_ID_stereo_threshold306, !39, !"__UNIQUE_ID_stereo_threshold306", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 82, i32 1}
!40 = !{ptr @__UNIQUE_ID_standard307, !41, !"__UNIQUE_ID_standard307", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 83, i32 1}
!42 = !{ptr @__UNIQUE_ID_amsound308, !43, !"__UNIQUE_ID_amsound308", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 84, i32 1}
!44 = !{ptr @__UNIQUE_ID_dolby309, !45, !"__UNIQUE_ID_dolby309", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 85, i32 1}
!46 = !{ptr @msp_reset.reset_off, !47, !"reset_off", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 103, i32 12}
!48 = !{ptr @msp_reset.reset_on, !49, !"reset_on", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 104, i32 12}
!50 = !{ptr @msp_reset.write, !51, !"write", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 105, i32 12}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 135, i32 2}
!54 = !{ptr @.str.1, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.2, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.3, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @msp_reset._entry, !53, !"_entry", i1 false, i1 false}
!59 = !{ptr @msp_reset._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.6, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 139, i32 3}
!62 = !{ptr @.str.7, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @msp_reset._entry.5, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @msp_reset._entry_ptr.8, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.9, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 290, i32 2}
!67 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @msp_set_scart._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @msp_set_scart._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 319, i32 4}
!72 = !{ptr @__initcall__kmod_msp3400__311_900_msp_driver_init6, !73, !"__initcall__kmod_msp3400__311_900_msp_driver_init6", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 900, i32 1}
!74 = !{ptr @__exitcall_msp_driver_exit, !73, !"__exitcall_msp_driver_exit", i1 false, i1 false}
!75 = !{ptr @msp_debug, !76, !"msp_debug", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 57, i32 5}
!77 = !{ptr @msp_once, !78, !"msp_once", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 58, i32 6}
!79 = !{ptr @msp_amsound, !80, !"msp_amsound", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 59, i32 6}
!81 = !{ptr @msp_dolby, !82, !"msp_dolby", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 63, i32 6}
!83 = !{ptr @__param_str_opmode, !12, !"__param_str_opmode", i1 false, i1 false}
!84 = !{ptr @opmode, !85, !"opmode", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 56, i32 12}
!86 = !{ptr @__param_str_once, !15, !"__param_str_once", i1 false, i1 false}
!87 = !{ptr @__param_str_debug, !18, !"__param_str_debug", i1 false, i1 false}
!88 = !{ptr @__param_str_stereo_threshold, !21, !"__param_str_stereo_threshold", i1 false, i1 false}
!89 = !{ptr @__param_str_standard, !24, !"__param_str_standard", i1 false, i1 false}
!90 = !{ptr @__param_str_amsound, !27, !"__param_str_amsound", i1 false, i1 false}
!91 = !{ptr @__param_str_dolby, !30, !"__param_str_dolby", i1 false, i1 false}
!92 = !{ptr @.str.11, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 171, i32 3}
!94 = !{ptr @.str.12, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.13, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @msp_read._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @msp_read._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.15, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 176, i32 3}
!100 = !{ptr @msp_read._entry.14, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @msp_read._entry_ptr.16, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.18, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 181, i32 2}
!104 = !{ptr @msp_read._entry.17, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @msp_read._entry_ptr.19, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.20, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 207, i32 2}
!108 = !{ptr @.str.21, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @msp_write._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @msp_write._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.23, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 212, i32 3}
!113 = !{ptr @msp_write._entry.22, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @msp_write._entry_ptr.24, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @msp_write._entry.25, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 217, i32 3}
!117 = !{ptr @msp_write._entry_ptr.26, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @scarts, !119, !"scarts", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 261, i32 12}
!120 = !{ptr @.str.27, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 272, i32 2}
!122 = !{ptr @.str.28, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 272, i32 9}
!124 = !{ptr @.str.29, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 272, i32 16}
!126 = !{ptr @.str.30, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 272, i32 23}
!128 = !{ptr @.str.31, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 272, i32 30}
!130 = !{ptr @.str.32, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 272, i32 40}
!132 = !{ptr @.str.33, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 272, i32 50}
!134 = !{ptr @.str.34, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 272, i32 58}
!136 = !{ptr @scart_names, !137, !"scart_names", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 271, i32 14}
!138 = !{ptr @.str.35, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!140 = !{ptr @.str.36, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 348, i32 3}
!142 = !{ptr @.str.37, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @msp_s_ctrl._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @msp_s_ctrl._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.38, !141, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.39, !141, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.40, !141, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.41, !141, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.42, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 892, i32 11}
!151 = !{ptr @msp_driver, !152, !"msp_driver", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 890, i32 26}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 685, i32 3}
!155 = !{ptr @.str.44, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @msp_probe._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @msp_probe._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @msp_probe.__key, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 714, i32 2}
!160 = !{ptr @.str.45, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.47, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 722, i32 2}
!163 = !{ptr @msp_probe._entry.46, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @msp_probe._entry_ptr.48, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.50, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 725, i32 3}
!167 = !{ptr @msp_probe._entry.49, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @msp_probe._entry_ptr.51, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @msp_probe._key, !170, !"_key", i1 false, i1 false}
!170 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 802, i32 2}
!171 = !{ptr @.str.52, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.54, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 828, i32 2}
!174 = !{ptr @.str.55, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @msp_probe._entry.53, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @msp_probe._entry_ptr.56, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.57, !173, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.58, !173, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.59, !173, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.60, !173, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 853, i32 20}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 856, i32 4}
!185 = !{ptr @msp_probe._entry.62, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @msp_probe._entry_ptr.64, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @msp_ops, !188, !"msp_ops", i1 false, i1 false}
!188 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 650, i32 37}
!189 = !{ptr @msp_core_ops, !190, !"msp_core_ops", i1 false, i1 false}
!190 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 629, i32 42}
!191 = !{ptr @.str.65, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 568, i32 2}
!193 = !{ptr @.str.66, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @msp_log_status._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @msp_log_status._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.67, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 570, i32 35}
!198 = !{ptr @.str.68, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 573, i32 32}
!200 = !{ptr @.str.69, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 574, i32 31}
!202 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 575, i32 31}
!204 = !{ptr @.str.71, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 576, i32 29}
!206 = !{ptr @.str.72, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 577, i32 32}
!208 = !{ptr @.str.73, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 578, i32 32}
!210 = !{ptr @.str.74, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 579, i32 31}
!212 = !{ptr @.str.75, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 580, i32 27}
!214 = !{ptr @.str.76, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 581, i32 29}
!216 = !{ptr @.str.77, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 582, i32 16}
!218 = !{ptr @.str.79, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 585, i32 3}
!220 = !{ptr @msp_log_status._entry.78, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @msp_log_status._entry_ptr.80, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.82, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 587, i32 3}
!224 = !{ptr @msp_log_status._entry.81, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @msp_log_status._entry_ptr.83, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.84, !223, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.85, !223, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @msp_log_status._entry.86, !229, !"_entry", i1 false, i1 false}
!229 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 592, i32 4}
!230 = !{ptr @msp_log_status._entry_ptr.87, !229, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.89, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 593, i32 3}
!233 = !{ptr @msp_log_status._entry.88, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @msp_log_status._entry_ptr.90, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.92, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 598, i32 2}
!237 = !{ptr @msp_log_status._entry.91, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @msp_log_status._entry_ptr.93, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.95, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 599, i32 2}
!241 = !{ptr @msp_log_status._entry.94, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @msp_log_status._entry_ptr.96, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.98, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 601, i32 2}
!245 = !{ptr @msp_log_status._entry.97, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @msp_log_status._entry_ptr.99, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @msp_tuner_ops, !248, !"msp_tuner_ops", i1 false, i1 false}
!248 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 638, i32 43}
!249 = !{ptr @.str.100, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 415, i32 2}
!251 = !{ptr @.str.101, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @msp_s_radio._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @msp_s_radio._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @msp_audio_ops, !255, !"msp_audio_ops", i1 false, i1 false}
!255 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 645, i32 43}
!256 = !{ptr @.str.102, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 544, i32 2}
!258 = !{ptr @.str.103, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @msp_s_i2s_clock_freq._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @msp_s_i2s_clock_freq._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @msp_video_ops, !262, !"msp_video_ops", i1 false, i1 false}
!262 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 633, i32 43}
!263 = !{ptr @.str.104, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 450, i32 2}
!265 = !{ptr @.str.105, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @msp_querystd._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @msp_querystd._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @msp_ctrl_ops, !269, !"msp_ctrl_ops", i1 false, i1 false}
!269 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 625, i32 35}
!270 = !{ptr @.str.106, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 661, i32 20}
!272 = !{ptr @.str.107, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 662, i32 24}
!274 = !{ptr @.str.108, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 663, i32 24}
!276 = !{ptr @opmode_str, !277, !"opmode_str", i1 false, i1 false}
!277 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 660, i32 27}
!278 = !{ptr @msp3400_pm_ops, !279, !"msp3400_pm_ops", i1 false, i1 false}
!279 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 880, i32 32}
!280 = !{ptr @.str.109, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 609, i32 2}
!282 = !{ptr @.str.110, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @msp_suspend._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @msp_suspend._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.111, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 617, i32 2}
!287 = !{ptr @.str.112, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @msp_resume._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @msp_resume._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @msp_id, !291, !"msp_id", i1 false, i1 false}
!291 = !{!"../drivers/media/i2c/msp3400-driver.c", i32 884, i32 35}
!292 = !{!"sp"}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"min_enum_size", i32 4}
!295 = !{i32 8, !"branch-target-enforcement", i32 0}
!296 = !{i32 8, !"sign-return-address", i32 0}
!297 = !{i32 8, !"sign-return-address-all", i32 0}
!298 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"uwtable", i32 1}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!302 = !{!"auto-init"}
!303 = !{i64 2156305973}
!304 = !{!"branch_weights", i32 2000, i32 1}
!305 = !{!"branch_weights", i32 1, i32 2000}
