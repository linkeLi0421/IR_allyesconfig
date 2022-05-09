; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/adv7393.c_pt.bc'
source_filename = "../drivers/media/i2c/adv7393.c"
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
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.adv7393_std_info = type { i32, i32, i64 }
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
%struct.adv7393_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i8, i8, i8, i8, i8, i8, i32, i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [49 x i8] c"adv7393.description=ADV7393 video encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"adv7393.file=drivers/media/i2c/adv7393\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [20 x i8] c"adv7393.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"adv7393.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype295 = internal constant [28 x i8] c"adv7393.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug296 = internal constant [35 x i8] c"adv7393.parm=debug:Debug level 0-1\00", section ".modinfo", align 1
@__initcall__kmod_adv7393__297_465_adv7393_driver_init6 = internal global ptr @adv7393_driver_init, section ".initcall6.init", align 4
@adv7393_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adv7393_probe, ptr @adv7393_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adv7393_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adv7393_driver_exit = internal global ptr @adv7393_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adv7393\00", [24 x i8] zeroinitializer }, align 32
@adv7393_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adv7393\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adv7393_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adv7393_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/adv7393.c\00", [36 x i8] zeroinitializer }, align 32
@adv7393_probe._entry_ptr = internal global ptr @adv7393_probe._entry, section ".printk_index", align 4
@adv7393_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @adv7393_core_ops, ptr null, ptr null, ptr @adv7393_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@adv7393_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"adv7393:412:(&state->hdl)->_lock\00", [63 x i8] zeroinitializer }, align 32
@adv7393_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @adv7393_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@adv7393_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @adv7393_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@adv7393_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @adv7393_s_routing, ptr null, ptr null, ptr null, ptr @adv7393_s_std_output, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@adv7393_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: Standard: %llx\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7393_log_status\00", [45 x i8] zeroinitializer }, align 32
@adv7393_log_status._entry_ptr = internal global ptr @adv7393_log_status._entry, section ".printk_index", align 4
@adv7393_log_status._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: Output: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@adv7393_log_status._entry_ptr.9 = internal global ptr @adv7393_log_status._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Component\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@adv7393_setoutput._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: Invalid output type or output type not supported:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adv7393_setoutput\00", [46 x i8] zeroinitializer }, align 32
@adv7393_setoutput._entry_ptr = internal global ptr @adv7393_setoutput._entry, section ".printk_index", align 4
@adv7393_setoutput._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Error setting output, write failed\0A\00", [54 x i8] zeroinitializer }, align 32
@adv7393_setoutput._entry_ptr.17 = internal global ptr @adv7393_setoutput._entry.15, section ".printk_index", align 4
@stdinfo = internal constant { [7 x %struct.adv7393_std_info], [48 x i8] } { [7 x %struct.adv7393_std_info] [%struct.adv7393_std_info { i32 0, i32 705268427, i64 16384 }, %struct.adv7393_std_info { i32 0, i32 569408542, i64 45056 }, %struct.adv7393_std_info { i32 2, i32 568782678, i64 256 }, %struct.adv7393_std_info { i32 3, i32 569807903, i64 1024 }, %struct.adv7393_std_info { i32 3, i32 705268427, i64 512 }, %struct.adv7393_std_info { i32 2, i32 705268427, i64 2048 }, %struct.adv7393_std_info { i32 1, i32 705268427, i64 255 }], [48 x i8] zeroinitializer }, align 32
@adv7393_setstd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: Invalid std or std is not supported: %llx\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adv7393_setstd\00", [17 x i8] zeroinitializer }, align 32
@adv7393_setstd._entry_ptr = internal global ptr @adv7393_setstd._entry, section ".printk_index", align 4
@adv7393_setstd._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Error setting std, write failed\0A\00", [57 x i8] zeroinitializer }, align 32
@adv7393_setstd._entry_ptr.22 = internal global ptr @adv7393_setstd._entry.20, section ".printk_index", align 4
@adv7393_init_reg_val = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\17\02\00\100<1\012\003\EC4\085\009\00\80\10\82\C9\83\00\84\00\86\02\87\8C\88\14\89\00\8A\0C\A0\80\99\10\A1\00", [54 x i8] zeroinitializer }, align 32
@adv7393_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: Error initializing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adv7393_initialize\00", [45 x i8] zeroinitializer }, align 32
@adv7393_initialize._entry_ptr = internal global ptr @adv7393_initialize._entry, section ".printk_index", align 4
@adv7393_initialize._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Error setting output during init\0A\00", [56 x i8] zeroinitializer }, align 32
@adv7393_initialize._entry_ptr.27 = internal global ptr @adv7393_initialize._entry.25, section ".printk_index", align 4
@adv7393_initialize._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error setting std during init\0A\00", [59 x i8] zeroinitializer }, align 32
@adv7393_initialize._entry_ptr.30 = internal global ptr @adv7393_initialize._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 9963776, i64 9963779, i64 9963795]
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 43, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"adv7393_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 457, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 459, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"adv7393_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 451, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 393, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"adv7393_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 347, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 412, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"adv7393_ctrl_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 303, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"adv7393_core_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 307, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"adv7393_video_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 342, i32 43 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 277, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 278, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 216, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 268, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [8 x i8] c"stdinfo\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 110, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 153, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 204, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [21 x i8] c"adv7393_init_reg_val\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 77, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 363, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 371, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [31 x i8] c"../drivers/media/i2c/adv7393.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 377, i32 3 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_debug296, ptr @__UNIQUE_ID_debugtype295, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_adv7393_driver_exit, ptr @__initcall__kmod_adv7393__297_465_adv7393_driver_init6, ptr @__param_debug, ptr @adv7393_driver_exit, ptr @adv7393_initialize._entry, ptr @adv7393_initialize._entry.25, ptr @adv7393_initialize._entry.28, ptr @adv7393_initialize._entry_ptr, ptr @adv7393_initialize._entry_ptr.27, ptr @adv7393_initialize._entry_ptr.30, ptr @adv7393_log_status._entry, ptr @adv7393_log_status._entry.7, ptr @adv7393_log_status._entry_ptr, ptr @adv7393_log_status._entry_ptr.9, ptr @adv7393_probe._entry, ptr @adv7393_probe._entry_ptr, ptr @adv7393_setoutput._entry, ptr @adv7393_setoutput._entry.15, ptr @adv7393_setoutput._entry_ptr, ptr @adv7393_setoutput._entry_ptr.17, ptr @adv7393_setstd._entry, ptr @adv7393_setstd._entry.20, ptr @adv7393_setstd._entry_ptr, ptr @adv7393_setstd._entry_ptr.22, ptr @debug, ptr @adv7393_driver, ptr @.str, ptr @adv7393_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @adv7393_ops, ptr @adv7393_probe._key, ptr @.str.4, ptr @adv7393_ctrl_ops, ptr @adv7393_core_ops, ptr @adv7393_video_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @stdinfo, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @adv7393_init_reg_val, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_log_status._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_setoutput._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_setoutput._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdinfo to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_setstd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_setstd._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_init_reg_val to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_initialize._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adv7393_initialize._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7393_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adv7393_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adv7393_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @adv7393_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7393_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv = zext i16 %15 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name6 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 400, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %reg00 = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %reg00 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 16, ptr %reg00, align 4
  %reg01 = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %reg01 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %reg01, align 1
  %reg02 = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %reg02 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %reg02, align 2
  %reg35 = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %reg35 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %reg35, align 1
  %reg80 = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %reg80 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %reg80, align 8
  %reg82 = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %reg82 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -55, ptr %reg82, align 1
  %output = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %output, align 4
  %std = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 9
  %23 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 45056, ptr %std, align 8
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @adv7393_ops) #4
  %hdl = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 1
  %call14 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 3, ptr noundef nonnull @adv7393_probe._key, ptr noundef nonnull @.str.4) #4
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @adv7393_ctrl_ops, i32 noundef 9963776, i64 noundef -64, i64 noundef 63, i64 noundef 1, i64 noundef 0) #4
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @adv7393_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #4
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @adv7393_ctrl_ops, i32 noundef 9963795, i64 noundef -64, i64 noundef 64, i64 noundef 1, i64 noundef 0) #4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %hdl, ptr %ctrl_handler, align 8
  %error = getelementptr inbounds %struct.adv7393_state, ptr %call.i, i32 0, i32 1, i32 9
  %25 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool24.not = icmp eq i32 %26, 0
  br i1 %tobool24.not, label %if.end30, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end30:                                         ; preds = %if.end12
  %call32 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #4
  %call34 = tail call fastcc i32 @adv7393_initialize(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end30.cleanup_crit_edge, label %if.end30.cleanup.sink.split_crit_edge

if.end30.cleanup.sink.split_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end30.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %26, %if.end12.cleanup.sink.split_crit_edge ], [ %call34, %if.end30.cleanup.sink.split_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end30.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7393_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #4
  %hdl = getelementptr inbounds %struct.adv7393_state, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7393_initialize(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add4 = add nuw nsw i32 %i.043, 2
  %cmp = icmp ult i32 %i.043, 40
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.043 = phi i32 [ 0, %entry ], [ %add4, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [42 x i8], ptr @adv7393_init_reg_val, i32 0, i32 %i.043
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %add = or i32 %i.043, 1
  %arrayidx1 = getelementptr [42 x i8], ptr @adv7393_init_reg_val, i32 0, i32 %add
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %1, i8 noundef zeroext %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  %output = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 8
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %output, align 4
  %call5 = tail call fastcc i32 @adv7393_setoutput(ptr noundef %sd, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %for.end.cleanup.sink.split_crit_edge, label %if.end15

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end15:                                         ; preds = %for.end
  %std = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 9
  %8 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %std, align 8
  %call16 = tail call fastcc i32 @adv7393_setstd(ptr noundef %sd, i64 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup.sink.split_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15.cleanup.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.26, %for.end.cleanup.sink.split_crit_edge ], [ @.str.29, %if.end15.cleanup.sink.split_crit_edge ], [ @.str.23, %for.body.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %for.end.cleanup.sink.split_crit_edge ], [ -22, %if.end15.cleanup.sink.split_crit_edge ], [ %call1.i, %for.body.cleanup.sink.split_crit_edge ]
  %name23 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.29.sink, ptr noundef %name23) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7393_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %std = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std, align 8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, i64 noundef %1) #7
  %output = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 8
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %output, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp9 = icmp eq i32 %3, 1
  %cond = select i1 %cmp9, ptr @.str.11, ptr @.str.12
  %cond10 = select i1 %cmp, ptr @.str.10, ptr %cond
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, ptr noundef nonnull %cond10) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7393_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %output1 = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %output)
  %cmp = icmp eq i32 %1, %output
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @adv7393_setoutput(ptr noundef %sd, i32 noundef %output)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %output1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %output, ptr %output1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7393_s_std_output(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %std1 = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 9
  %0 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %std)
  %cmp = icmp eq i64 %1, %std
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @adv7393_setstd(ptr noundef %sd, i64 noundef %std)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %std1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %std, ptr %std1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7393_setoutput(ptr noundef %sd, i32 noundef %output_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %output_type)
  %cmp = icmp ugt i32 %output_type, 2
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  %0 = load i8, ptr @debug, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %output_type) #7
  br label %cleanup

if.end8:                                          ; preds = %entry
  %reg00 = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 2
  %1 = ptrtoint ptr %reg00 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reg00, align 4
  %3 = and i8 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %output_type)
  %switch.selectcmp = icmp eq i32 %output_type, 1
  %switch.select = select i1 %switch.selectcmp, i8 28, i8 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %output_type)
  %switch.selectcmp125 = icmp eq i32 %output_type, 0
  %switch.select126 = select i1 %switch.selectcmp125, i8 16, i8 %switch.select
  %4 = or i8 %3, %switch.select126
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp29 = icmp slt i32 %call1.i, 0
  br i1 %cmp29, label %if.end8.do.end74_crit_edge, label %if.end32

if.end8.do.end74_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

if.end32:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %reg00 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %reg00, align 4
  %reg02 = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 4
  %8 = ptrtoint ptr %reg02 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg02, align 2
  %10 = or i8 %9, 32
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i117 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 2, i8 noundef zeroext %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i117)
  %cmp38 = icmp slt i32 %call1.i117, 0
  br i1 %cmp38, label %if.end32.do.end74_crit_edge, label %if.end41

if.end32.do.end74_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

if.end41:                                         ; preds = %if.end32
  %13 = ptrtoint ptr %reg02 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %reg02, align 2
  %reg82 = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 7
  %14 = ptrtoint ptr %reg82 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg82, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %output_type)
  %cmp43 = icmp eq i32 %output_type, 1
  %16 = and i8 %15, -3
  %masksel = select i1 %cmp43, i8 0, i8 2
  %val.1 = or i8 %16, %masksel
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i119 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -126, i8 noundef zeroext %val.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119)
  %cmp55 = icmp slt i32 %call1.i119, 0
  br i1 %cmp55, label %if.end41.do.end74_crit_edge, label %if.end58

if.end41.do.end74_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

if.end58:                                         ; preds = %if.end41
  %19 = ptrtoint ptr %reg82 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %val.1, ptr %reg82, align 1
  %reg35 = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 5
  %20 = ptrtoint ptr %reg35 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg35, align 1
  %22 = and i8 %21, -9
  %23 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 53, i8 noundef zeroext %22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %cmp64 = icmp slt i32 %call1.i121, 0
  br i1 %cmp64, label %if.end58.do.end74_crit_edge, label %setoutput_exit

if.end58.do.end74_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

setoutput_exit:                                   ; preds = %if.end58
  %25 = ptrtoint ptr %reg35 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %reg35, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %cmp69.not = icmp eq i32 %call1.i121, 0
  br i1 %cmp69.not, label %setoutput_exit.cleanup_crit_edge, label %setoutput_exit.do.end74_crit_edge

setoutput_exit.do.end74_crit_edge:                ; preds = %setoutput_exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end74

setoutput_exit.cleanup_crit_edge:                 ; preds = %setoutput_exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end74:                                         ; preds = %setoutput_exit.do.end74_crit_edge, %if.end58.do.end74_crit_edge, %if.end41.do.end74_crit_edge, %if.end32.do.end74_crit_edge, %if.end8.do.end74_crit_edge
  %err.0124 = phi i32 [ %call1.i121, %setoutput_exit.do.end74_crit_edge ], [ %call1.i121, %if.end58.do.end74_crit_edge ], [ %call1.i119, %if.end41.do.end74_crit_edge ], [ %call1.i117, %if.end32.do.end74_crit_edge ], [ %call1.i, %if.end8.do.end74_crit_edge ]
  %name76 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name76) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end74, %setoutput_exit.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %err.0124, %do.end74 ], [ 0, %setoutput_exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adv7393_setstd(ptr noundef %sd, i64 noundef %std) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %std, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.inc:                                          ; preds = %entry
  %and.1 = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.end12_crit_edge

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i64 %std, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2)
  %tobool.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.end12_crit_edge

for.inc.1.if.end12_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i64 %std, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3)
  %tobool.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.if.end12_crit_edge

for.inc.2.if.end12_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i64 %std, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4)
  %tobool.not.4 = icmp eq i64 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.if.end12_crit_edge

for.inc.3.if.end12_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i64 %std, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.5)
  %tobool.not.5 = icmp eq i64 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.if.end12_crit_edge

for.inc.4.if.end12_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.6)
  %tobool.not.6 = icmp eq i64 %and.6, 0
  br i1 %tobool.not.6, label %do.body, label %for.inc.5.if.end12_crit_edge

for.inc.5.if.end12_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

do.body:                                          ; preds = %for.inc.5
  %0 = load i8, ptr @debug, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool3.not = icmp eq i8 %0, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name, i64 noundef %std) #7
  br label %cleanup

if.end12:                                         ; preds = %for.inc.5.if.end12_crit_edge, %for.inc.4.if.end12_crit_edge, %for.inc.3.if.end12_crit_edge, %for.inc.2.if.end12_crit_edge, %for.inc.1.if.end12_crit_edge, %for.inc.if.end12_crit_edge, %entry.if.end12_crit_edge
  %i.0130.lcssa = phi i32 [ 0, %entry.if.end12_crit_edge ], [ 1, %for.inc.if.end12_crit_edge ], [ 2, %for.inc.1.if.end12_crit_edge ], [ 3, %for.inc.2.if.end12_crit_edge ], [ 4, %for.inc.3.if.end12_crit_edge ], [ 5, %for.inc.4.if.end12_crit_edge ], [ 6, %for.inc.5.if.end12_crit_edge ]
  %arrayidx13 = getelementptr [7 x %struct.adv7393_std_info], ptr @stdinfo, i32 0, i32 %i.0130.lcssa
  %reg80 = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 6
  %1 = ptrtoint ptr %reg80 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reg80, align 8
  %3 = and i8 %2, -4
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx13, align 8
  %6 = trunc i32 %5 to i8
  %conv16 = or i8 %3, %6
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -128, i8 noundef zeroext %conv16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp18 = icmp slt i32 %call1.i, 0
  br i1 %cmp18, label %if.end12.do.end69_crit_edge, label %if.end21

if.end12.do.end69_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

if.end21:                                         ; preds = %if.end12
  %9 = ptrtoint ptr %reg80 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv16, ptr %reg80, align 8
  %reg01 = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 3
  %10 = ptrtoint ptr %reg01 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg01, align 1
  %12 = and i8 %11, -113
  %13 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i119 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 1, i8 noundef zeroext %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119)
  %cmp29 = icmp slt i32 %call1.i119, 0
  br i1 %cmp29, label %if.end21.do.end69_crit_edge, label %if.end32

if.end21.do.end69_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

if.end32:                                         ; preds = %if.end21
  %15 = ptrtoint ptr %reg01 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %reg01, align 1
  %fsc_val = getelementptr [7 x %struct.adv7393_std_info], ptr @stdinfo, i32 0, i32 %i.0130.lcssa, i32 1
  %16 = ptrtoint ptr %fsc_val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fsc_val, align 4
  %conv40 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -116, i8 noundef zeroext %conv40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121)
  %cmp42 = icmp slt i32 %call1.i121, 0
  br i1 %cmp42, label %if.end32.do.end69_crit_edge, label %if.end45

if.end32.do.end69_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

if.end45:                                         ; preds = %if.end32
  %shr = lshr i32 %17, 8
  %conv40.1 = trunc i32 %shr to i8
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i121.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext -115, i8 noundef zeroext %conv40.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121.1)
  %cmp42.1 = icmp slt i32 %call1.i121.1, 0
  br i1 %cmp42.1, label %if.end45.do.end69_crit_edge, label %if.end45.1

if.end45.do.end69_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

if.end45.1:                                       ; preds = %if.end45
  %shr.1 = lshr i32 %17, 16
  %conv40.2 = trunc i32 %shr.1 to i8
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i121.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -114, i8 noundef zeroext %conv40.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121.2)
  %cmp42.2 = icmp slt i32 %call1.i121.2, 0
  br i1 %cmp42.2, label %if.end45.1.do.end69_crit_edge, label %if.end45.2

if.end45.1.do.end69_crit_edge:                    ; preds = %if.end45.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

if.end45.2:                                       ; preds = %if.end45.1
  %shr.2 = lshr i32 %17, 24
  %conv40.3 = trunc i32 %shr.2 to i8
  %24 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i121.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext -113, i8 noundef zeroext %conv40.3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i121.3)
  %cmp42.3 = icmp slt i32 %call1.i121.3, 0
  br i1 %cmp42.3, label %if.end45.2.do.end69_crit_edge, label %if.end45.3

if.end45.2.do.end69_crit_edge:                    ; preds = %if.end45.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

if.end45.3:                                       ; preds = %if.end45.2
  %reg82 = getelementptr inbounds %struct.adv7393_state, ptr %sd, i32 0, i32 7
  %26 = ptrtoint ptr %reg82 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg82, align 1
  %and50 = and i64 %std, 61440
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and50)
  %tobool51.not = icmp eq i64 %and50, 0
  %and54 = and i8 %27, -9
  %masksel = select i1 %tobool51.not, i8 0, i8 8
  %val.1 = or i8 %and54, %masksel
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i123 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -126, i8 noundef zeroext %val.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %cmp58 = icmp slt i32 %call1.i123, 0
  br i1 %cmp58, label %if.end45.3.do.end69_crit_edge, label %setstd_exit

if.end45.3.do.end69_crit_edge:                    ; preds = %if.end45.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

setstd_exit:                                      ; preds = %if.end45.3
  %30 = ptrtoint ptr %reg82 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %val.1, ptr %reg82, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i123)
  %cmp64.not = icmp eq i32 %call1.i123, 0
  br i1 %cmp64.not, label %setstd_exit.cleanup_crit_edge, label %setstd_exit.do.end69_crit_edge

setstd_exit.do.end69_crit_edge:                   ; preds = %setstd_exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end69

setstd_exit.cleanup_crit_edge:                    ; preds = %setstd_exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end69:                                         ; preds = %setstd_exit.do.end69_crit_edge, %if.end45.3.do.end69_crit_edge, %if.end45.2.do.end69_crit_edge, %if.end45.1.do.end69_crit_edge, %if.end45.do.end69_crit_edge, %if.end32.do.end69_crit_edge, %if.end21.do.end69_crit_edge, %if.end12.do.end69_crit_edge
  %err.0127 = phi i32 [ %call1.i123, %setstd_exit.do.end69_crit_edge ], [ %call1.i123, %if.end45.3.do.end69_crit_edge ], [ %call1.i119, %if.end21.do.end69_crit_edge ], [ %call1.i, %if.end12.do.end69_crit_edge ], [ %call1.i121, %if.end32.do.end69_crit_edge ], [ %call1.i121.1, %if.end45.do.end69_crit_edge ], [ %call1.i121.2, %if.end45.1.do.end69_crit_edge ], [ %call1.i121.3, %if.end45.2.do.end69_crit_edge ]
  %name71 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name71) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %setstd_exit.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ %err.0127, %do.end69 ], [ 0, %setstd_exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adv7393_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963779, label %sw.bb2
    i32 9963795, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = trunc i32 %6 to i8
  %conv = and i8 %7, 127
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -95, i8 noundef zeroext %conv) #4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val3, align 4
  %12 = trunc i32 %11 to i8
  %conv4 = xor i8 %12, -128
  %dev_priv.i.i16 = getelementptr i8, ptr %1, i32 -44
  %13 = ptrtoint ptr %dev_priv.i.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i16, align 4
  %call1.i17 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext -96, i8 noundef zeroext %conv4) #4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val7, align 4
  %conv8 = trunc i32 %16 to i8
  %dev_priv.i.i18 = getelementptr i8, ptr %1, i32 -44
  %17 = ptrtoint ptr %dev_priv.i.i18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i18, align 4
  %call1.i19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 11, i8 noundef zeroext %conv8) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb6, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i19, %sw.bb6 ], [ %call1.i17, %sw.bb2 ], [ %call1.i, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/adv7393.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_file293, !3, !"__UNIQUE_ID_file293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/adv7393.c", i32 41, i32 1}
!4 = !{ptr @__UNIQUE_ID_license294, !3, !"__UNIQUE_ID_license294", i1 false, i1 false}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/adv7393.c", i32 44, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype295, !6, !"__UNIQUE_ID_debugtype295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug296, !9, !"__UNIQUE_ID_debug296", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/adv7393.c", i32 45, i32 1}
!10 = !{ptr @__initcall__kmod_adv7393__297_465_adv7393_driver_init6, !11, !"__initcall__kmod_adv7393__297_465_adv7393_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/adv7393.c", i32 465, i32 1}
!12 = !{ptr @__exitcall_adv7393_driver_exit, !11, !"__exitcall_adv7393_driver_exit", i1 false, i1 false}
!13 = !{ptr @debug, !14, !"debug", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/adv7393.c", i32 43, i32 13}
!15 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/adv7393.c", i32 459, i32 11}
!18 = !{ptr @adv7393_driver, !19, !"adv7393_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/adv7393.c", i32 457, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/adv7393.c", i32 393, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @adv7393_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @adv7393_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @adv7393_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/adv7393.c", i32 412, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @adv7393_ops, !30, !"adv7393_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/adv7393.c", i32 347, i32 37}
!31 = !{ptr @adv7393_core_ops, !32, !"adv7393_core_ops", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/adv7393.c", i32 307, i32 42}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/adv7393.c", i32 277, i32 2}
!35 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @adv7393_log_status._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @adv7393_log_status._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/adv7393.c", i32 278, i32 2}
!40 = !{ptr @adv7393_log_status._entry.7, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @adv7393_log_status._entry_ptr.9, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @adv7393_video_ops, !46, !"adv7393_video_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/adv7393.c", i32 342, i32 43}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/adv7393.c", i32 216, i32 3}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @adv7393_setoutput._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @adv7393_setoutput._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/adv7393.c", i32 268, i32 3}
!54 = !{ptr @adv7393_setoutput._entry.15, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @adv7393_setoutput._entry_ptr.17, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/adv7393.c", i32 153, i32 3}
!58 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @adv7393_setstd._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @adv7393_setstd._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/adv7393.c", i32 204, i32 3}
!63 = !{ptr @adv7393_setstd._entry.20, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @adv7393_setstd._entry_ptr.22, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @stdinfo, !66, !"stdinfo", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/adv7393.c", i32 110, i32 38}
!67 = !{ptr @adv7393_ctrl_ops, !68, !"adv7393_ctrl_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/adv7393.c", i32 303, i32 35}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/i2c/adv7393.c", i32 363, i32 4}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @adv7393_initialize._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @adv7393_initialize._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/adv7393.c", i32 371, i32 3}
!76 = !{ptr @adv7393_initialize._entry.25, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @adv7393_initialize._entry_ptr.27, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/adv7393.c", i32 377, i32 3}
!80 = !{ptr @adv7393_initialize._entry.28, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @adv7393_initialize._entry_ptr.30, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @adv7393_init_reg_val, !83, !"adv7393_init_reg_val", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/adv7393.c", i32 77, i32 17}
!84 = !{ptr @adv7393_id, !85, !"adv7393_id", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/adv7393.c", i32 451, i32 35}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i8 0, i8 2}
