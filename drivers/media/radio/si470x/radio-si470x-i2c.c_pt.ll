; ModuleID = '/llk/IR_all_yes/drivers/media/radio/si470x/radio-si470x-i2c.c_pt.bc'
source_filename = "../drivers/media/radio/si470x/radio-si470x-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.si470x_device = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, i32, [16 x i16], %struct.wait_queue_head, %struct.mutex, ptr, i32, i32, i32, %struct.completion, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }

@__param_str_radio_nr = internal constant [26 x i8] c"radio_si470x_i2c.radio_nr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@radio_nr = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_radio_nr = internal constant %struct.kernel_param { ptr @__param_str_radio_nr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @radio_nr } }, section "__param", align 4
@__UNIQUE_ID_radio_nrtype292 = internal constant [39 x i8] c"radio_si470x_i2c.parmtype=radio_nr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_radio_nr293 = internal constant [40 x i8] c"radio_si470x_i2c.parm=radio_nr:Radio Nr\00", section ".modinfo", align 1
@__param_str_rds_buf = internal constant [25 x i8] c"radio_si470x_i2c.rds_buf\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rds_buf = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_rds_buf = internal constant %struct.kernel_param { ptr @__param_str_rds_buf, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @rds_buf } }, section "__param", align 4
@__UNIQUE_ID_rds_buftype294 = internal constant [39 x i8] c"radio_si470x_i2c.parmtype=rds_buf:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rds_buf295 = internal constant [56 x i8] c"radio_si470x_i2c.parm=rds_buf:RDS buffer entries: *100*\00", section ".modinfo", align 1
@__param_str_max_rds_errors = internal constant [32 x i8] c"radio_si470x_i2c.max_rds_errors\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@max_rds_errors = internal global { i16, [30 x i8] } { i16 1, [30 x i8] zeroinitializer }, align 32
@__param_max_rds_errors = internal constant %struct.kernel_param { ptr @__param_str_max_rds_errors, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @max_rds_errors } }, section "__param", align 4
@__UNIQUE_ID_max_rds_errorstype296 = internal constant [48 x i8] c"radio_si470x_i2c.parmtype=max_rds_errors:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_max_rds_errors297 = internal constant [67 x i8] c"radio_si470x_i2c.parm=max_rds_errors:RDS maximum block errors: *1*\00", section ".modinfo", align 1
@__initcall__kmod_radio_si470x_i2c__298_541_si470x_i2c_driver_init6 = internal global ptr @si470x_i2c_driver_init, section ".initcall6.init", align 4
@si470x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @si470x_i2c_remove, ptr @si470x_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @si470x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si470x_i2c_pm, ptr null, ptr null }, ptr @si470x_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si470x_i2c_driver_exit = internal global ptr @si470x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file299 = internal constant [66 x i8] c"radio_si470x_i2c.file=drivers/media/radio/si470x/radio-si470x-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [29 x i8] c"radio_si470x_i2c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [65 x i8] c"radio_si470x_i2c.author=Joonyoung Shim <jy0922.shim@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [76 x i8] c"radio_si470x_i2c.description=I2C radio driver for Si470x FM Radio Receivers\00", section ".modinfo", align 1
@__UNIQUE_ID_version303 = internal constant [31 x i8] c"radio_si470x_i2c.version=1.0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radio_si470x_i2c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si470x\00", [25 x i8] zeroinitializer }, align 32
@si470x_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si470x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@si470x_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @si470x_i2c_suspend, ptr @si470x_i2c_resume, ptr @si470x_i2c_suspend, ptr @si470x_i2c_resume, ptr @si470x_i2c_suspend, ptr @si470x_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@si470x_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si470x\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@si470x_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&radio->lock\00", [19 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 358, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register v4l2_device\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si470x_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/radio/si470x/radio-si470x-i2c.c\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry_ptr = internal global ptr @si470x_i2c_probe._entry, section ".printk_index", align 4
@si470x_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"radio_si470x_i2c:362:(&radio->hdl)->_lock\00", [54 x i8] zeroinitializer }, align 32
@si470x_ctrl_ops = external dso_local constant %struct.v4l2_ctrl_ops, align 4
@si470x_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 369, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't register control\0A\00", [37 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry_ptr.13 = internal global ptr @si470x_i2c_probe._entry.11, section ".printk_index", align 4
@si470x_viddev_template = external dso_local local_unnamed_addr constant %struct.video_device, align 8
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 388, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request gpio: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry_ptr.17 = internal global ptr @si470x_i2c_probe._entry.15, section ".printk_index", align 4
@si470x_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 409, ptr @.str.20, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DeviceID=0x%4.4hx ChipID=0x%4.4hx\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry_ptr.21 = internal global ptr @si470x_i2c_probe._entry.18, section ".printk_index", align 4
@si470x_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.7, i32 415, ptr @.str.24, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [195 x i8], [61 x i8] } { [195 x i8] c"This driver is known to work with firmware version %u, but the device has firmware version %u.\0AIf you have some trouble using this driver, please report to V4L ML at linux-media@vger.kernel.org\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry_ptr.25 = internal global ptr @si470x_i2c_probe._entry.22, section ".printk_index", align 4
@si470x_i2c_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&radio->read_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"radio-si470x\00", [19 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.6, ptr @.str.7, i32 439, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry_ptr.31 = internal global ptr @si470x_i2c_probe._entry.29, section ".printk_index", align 4
@si470x_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.6, ptr @.str.7, i32 447, ptr @.str.24, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@si470x_i2c_probe._entry_ptr.34 = internal global ptr @si470x_i2c_probe._entry.32, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Silicon Labs Si470x FM Radio\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"radio_nr\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 43, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [8 x i8] c"rds_buf\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 48, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"max_rds_errors\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 53, i32 23 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"si470x_i2c_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 528, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 546, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 530, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"si470x_of_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 518, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"si470x_i2c_pm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 514, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"si470x_i2c_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 29, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 347, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 358, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 362, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 369, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 384, i32 60 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 388, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 408, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 411, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 432, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 437, i32 9 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 439, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 447, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 87, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [49 x i8] c"../drivers/media/radio/si470x/radio-si470x-i2c.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 225, i32 28 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_max_rds_errors297, ptr @__UNIQUE_ID_max_rds_errorstype296, ptr @__UNIQUE_ID_radio_nr293, ptr @__UNIQUE_ID_radio_nrtype292, ptr @__UNIQUE_ID_rds_buf295, ptr @__UNIQUE_ID_rds_buftype294, ptr @__UNIQUE_ID_version303, ptr @__exitcall_si470x_i2c_driver_exit, ptr @__initcall__kmod_radio_si470x_i2c__298_541_si470x_i2c_driver_init6, ptr @__modver_attr, ptr @__param_max_rds_errors, ptr @__param_radio_nr, ptr @__param_rds_buf, ptr @si470x_i2c_driver_exit, ptr @si470x_i2c_probe._entry, ptr @si470x_i2c_probe._entry.11, ptr @si470x_i2c_probe._entry.15, ptr @si470x_i2c_probe._entry.18, ptr @si470x_i2c_probe._entry.22, ptr @si470x_i2c_probe._entry.29, ptr @si470x_i2c_probe._entry.32, ptr @si470x_i2c_probe._entry_ptr, ptr @si470x_i2c_probe._entry_ptr.13, ptr @si470x_i2c_probe._entry_ptr.17, ptr @si470x_i2c_probe._entry_ptr.21, ptr @si470x_i2c_probe._entry_ptr.25, ptr @si470x_i2c_probe._entry_ptr.31, ptr @si470x_i2c_probe._entry_ptr.34, ptr @radio_nr, ptr @rds_buf, ptr @max_rds_errors, ptr @si470x_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @si470x_of_match, ptr @si470x_i2c_pm, ptr @si470x_i2c_id, ptr @si470x_i2c_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @si470x_i2c_probe._key, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @si470x_i2c_probe.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @init_completion.__key, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_buf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_rds_errors to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 195, i32 256, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si470x_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si470x_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si470x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @si470x_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %videodev = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %videodev) #6
  %gpio_reset = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_reset, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hdl = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  tail call void @v4l2_device_unregister(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_i2c_probe(ptr noundef %client) #2 align 64 {
entry:
  %buf.i189 = alloca [16 x i16], align 2
  %msgs.i190 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i = alloca [8 x i16], align 2
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1984, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %client2 = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 27
  %0 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client2, align 4
  %band = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %band to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %band, align 8
  %lock = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @si470x_i2c_probe.__key) #6
  %completion = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 11
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @init_completion.__key) #6
  %get_register = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %get_register to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @si470x_get_register, ptr %get_register, align 8
  %set_register = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 14
  %4 = ptrtoint ptr %set_register to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @si470x_set_register, ptr %set_register, align 4
  %fops_open = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 15
  %5 = ptrtoint ptr %fops_open to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @si470x_fops_open, ptr %fops_open, align 8
  %fops_release = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 16
  %6 = ptrtoint ptr %fops_release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @si470x_fops_release, ptr %fops_release, align 4
  %vidioc_querycap = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 17
  %7 = ptrtoint ptr %vidioc_querycap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @si470x_vidioc_querycap, ptr %vidioc_querycap, align 8
  %call4 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %hdl = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 2
  %call11 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 2, ptr noundef nonnull @si470x_i2c_probe._key, ptr noundef nonnull @.str.10) #6
  %call13 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @si470x_ctrl_ops, i32 noundef 9963785, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %call15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @si470x_ctrl_ops, i32 noundef 9963781, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 15) #6
  %error = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 2, i32 9
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.end25, label %if.then18

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %err_all

if.end25:                                         ; preds = %if.end10
  %videodev = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %videodev, ptr @si470x_viddev_template, i32 1352)
  %ctrl_handler = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %lock30 = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 1, i32 26
  %12 = ptrtoint ptr %lock30 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lock, ptr %lock30, align 8
  %v4l2_dev33 = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 1, i32 7
  %13 = ptrtoint ptr %v4l2_dev33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %v4l2_dev33, align 4
  %release = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 1, i32 23
  %14 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @video_device_release_empty, ptr %release, align 8
  %device_caps = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 17106176, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call38 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 3) #6
  %gpio_reset = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 28
  %17 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38, ptr %gpio_reset, align 8
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end48

if.then41:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %18) #9
  br label %err_all

if.end48:                                         ; preds = %if.end25
  %tobool50.not = icmp eq ptr %call38, null
  br i1 %tobool50.not, label %if.end48.if.end53_crit_edge, label %if.then51

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %call38, i32 noundef 1) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48.if.end53_crit_edge
  %registers = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4
  %arrayidx = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #6
  %20 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1114111, ptr %20, align 4
  %22 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client2, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr1.i, align 2
  %26 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i, ptr %buf2.i, align 4
  %29 = call ptr @memcpy(ptr %buf.i, ptr %arrayidx, i32 16)
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %30 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter.i, align 8
  %call.i188 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i188)
  %cmp6.not.i.not = icmp eq i32 %call.i188, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #6
  br i1 %cmp6.not.i.not, label %if.end57, label %if.end53.err_all_crit_edge

if.end53.err_all_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_all

if.end57:                                         ; preds = %if.end53
  call void @msleep(i32 noundef 110) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i189) #6
  %32 = call ptr @memset(ptr %buf.i189, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i190) #6
  %33 = getelementptr inbounds i8, ptr %msgs.i190, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2162687, ptr %33, align 4
  %35 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client2, align 4
  %addr1.i192 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %addr1.i192 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr1.i192, align 2
  %39 = ptrtoint ptr %msgs.i190 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %msgs.i190, align 4
  %flags.i193 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i190, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i193 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags.i193, align 2
  %buf2.i195 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i190, i32 0, i32 3
  %41 = ptrtoint ptr %buf2.i195 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i189, ptr %buf2.i195, align 4
  %adapter.i196 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 3
  %42 = ptrtoint ptr %adapter.i196 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i196, align 8
  %call.i197 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msgs.i190, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i197)
  %cmp.not.i = icmp eq i32 %call.i197, 1
  br i1 %cmp.not.i, label %do.end64, label %si470x_get_all_registers.exit.thread

si470x_get_all_registers.exit.thread:             ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i190) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i189) #6
  br label %err_all

do.end64:                                         ; preds = %if.end57
  %44 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 15
  %45 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 14
  %46 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 13
  %47 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 12
  %48 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 11
  %49 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 10
  %50 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 9
  %51 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 8
  %52 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 7
  %53 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 6
  %54 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 5
  %55 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 4
  %56 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 3
  %57 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 2
  %58 = getelementptr inbounds [16 x i16], ptr %buf.i189, i32 0, i32 1
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %53, align 2
  %61 = ptrtoint ptr %registers to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %registers, align 2
  %62 = ptrtoint ptr %52 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %52, align 2
  %arrayidx6.1.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %arrayidx6.1.i, align 2
  %65 = ptrtoint ptr %51 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %51, align 2
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %arrayidx, align 2
  %68 = ptrtoint ptr %50 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %50, align 2
  %arrayidx6.3.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 3
  %70 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %arrayidx6.3.i, align 2
  %71 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %49, align 2
  %arrayidx6.4.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 4
  %73 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %arrayidx6.4.i, align 2
  %74 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %48, align 2
  %arrayidx6.5.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 5
  %76 = ptrtoint ptr %arrayidx6.5.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %arrayidx6.5.i, align 2
  %77 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %47, align 2
  %arrayidx6.6.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 6
  %79 = ptrtoint ptr %arrayidx6.6.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %arrayidx6.6.i, align 2
  %80 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %46, align 2
  %arrayidx6.7.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 7
  %82 = ptrtoint ptr %arrayidx6.7.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %arrayidx6.7.i, align 2
  %83 = ptrtoint ptr %45 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %45, align 2
  %arrayidx6.8.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 8
  %85 = ptrtoint ptr %arrayidx6.8.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %arrayidx6.8.i, align 2
  %86 = ptrtoint ptr %44 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %44, align 2
  %arrayidx6.9.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 9
  %88 = ptrtoint ptr %arrayidx6.9.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %87, ptr %arrayidx6.9.i, align 2
  %89 = ptrtoint ptr %buf.i189 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %buf.i189, align 2
  %arrayidx6.10.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 10
  %91 = ptrtoint ptr %arrayidx6.10.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %arrayidx6.10.i, align 2
  %92 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %58, align 2
  %arrayidx6.11.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 11
  %94 = ptrtoint ptr %arrayidx6.11.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %arrayidx6.11.i, align 2
  %95 = ptrtoint ptr %57 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %57, align 2
  %arrayidx6.12.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 12
  %97 = ptrtoint ptr %arrayidx6.12.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %arrayidx6.12.i, align 2
  %98 = ptrtoint ptr %56 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %56, align 2
  %arrayidx6.13.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 13
  %100 = ptrtoint ptr %arrayidx6.13.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %arrayidx6.13.i, align 2
  %101 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %55, align 2
  %arrayidx6.14.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 14
  %103 = ptrtoint ptr %arrayidx6.14.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %arrayidx6.14.i, align 2
  %104 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %54, align 2
  %arrayidx6.15.i = getelementptr %struct.si470x_device, ptr %call.i, i32 0, i32 4, i32 15
  %106 = ptrtoint ptr %arrayidx6.15.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %arrayidx6.15.i, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i190) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i189) #6
  %conv = zext i16 %60 to i32
  %conv70 = zext i16 %63 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv70) #9
  %107 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx6.1.i, align 2
  %109 = and i16 %108, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %109)
  %cmp74 = icmp ult i16 %109, 12
  br i1 %cmp74, label %do.end79, label %do.end64.if.end85_crit_edge

do.end64.if.end85_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

do.end79:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #8
  %and = zext i16 %109 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef 12, i32 noundef %and) #9
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %do.end64.if.end85_crit_edge
  %call86 = call i32 @si470x_set_freq(ptr noundef nonnull %call.i, i32 noundef 1400000) #6
  %110 = load i32, ptr @rds_buf, align 4
  %mul = mul i32 %110, 3
  %buf_size = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 8
  %111 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %mul, ptr %buf_size, align 8
  %call89 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3264) #6
  %buffer = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 7
  %112 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call89, ptr %buffer, align 4
  %tobool91.not = icmp eq ptr %call89, null
  br i1 %tobool91.not, label %if.end85.err_all_crit_edge, label %if.end93

if.end85.err_all_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_all

if.end93:                                         ; preds = %if.end85
  %wr_index = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 10
  %113 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %wr_index, align 8
  %rd_index = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 9
  %114 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %rd_index, align 4
  %read_queue = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 5
  call void @__init_waitqueue_head(ptr noundef %read_queue, ptr noundef nonnull @.str.27, ptr noundef nonnull @si470x_i2c_probe.__key.26) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %115 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %irq, align 4
  %call98 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %116, ptr noundef null, ptr noundef nonnull @si470x_i2c_interrupt, i32 noundef 8194, ptr noundef nonnull @.str.28, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end105, label %do.end103

do.end103:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  br label %err_all

if.end105:                                        ; preds = %if.end93
  %117 = load i32, ptr @radio_nr, align 4
  %fops.i = getelementptr inbounds %struct.si470x_device, ptr %call.i, i32 0, i32 1, i32 3
  %118 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fops.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %call.i198 = call i32 @__video_register_device(ptr noundef %videodev, i32 noundef 2, i32 noundef %117, i32 noundef 1, ptr noundef %121) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool108.not = icmp eq i32 %call.i198, 0
  br i1 %tobool108.not, label %if.end114, label %do.end112

do.end112:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  br label %err_all

if.end114:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i199 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %122 = ptrtoint ptr %driver_data.i.i199 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i, ptr %driver_data.i.i199, align 4
  br label %cleanup

err_all:                                          ; preds = %do.end112, %do.end103, %if.end85.err_all_crit_edge, %si470x_get_all_registers.exit.thread, %if.end53.err_all_crit_edge, %if.then41, %if.then18
  %retval1.0 = phi i32 [ %9, %if.then18 ], [ %18, %if.then41 ], [ %call98, %do.end103 ], [ %call.i198, %do.end112 ], [ -5, %if.end53.err_all_crit_edge ], [ -5, %if.end85.err_all_crit_edge ], [ -5, %si470x_get_all_registers.exit.thread ]
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_all, %if.end114, %do.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end114 ], [ %call4, %do.end8 ], [ %retval1.0, %err_all ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_get_register(ptr nocapture noundef %radio, i32 noundef %regnr) #2 align 64 {
entry:
  %buf = alloca [16 x i16], align 2
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #6
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %client = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 27
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1, align 2
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 32, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf2, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msgs, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %regnr, 6
  %rem = srem i32 %sub, 16
  %arrayidx = getelementptr [16 x i16], ptr %buf, i32 0, i32 %rem
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %arrayidx5 = getelementptr %struct.si470x_device, ptr %radio, i32 0, i32 4, i32 %regnr
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx5, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_set_register(ptr nocapture noundef readonly %radio, i32 noundef %regnr) #2 align 64 {
entry:
  %buf = alloca [8 x i16], align 2
  %msgs = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs) #6
  %0 = getelementptr inbounds i8, ptr %msgs, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %client = getelementptr inbounds %struct.si470x_device, ptr %radio, i32 0, i32 27
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1, align 2
  %6 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 16, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %9 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf2, align 4
  %uglygep = getelementptr i8, ptr %radio, i32 1672
  %10 = call ptr @memcpy(ptr %buf, ptr %uglygep, i32 16)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msgs, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp6.not = icmp eq i32 %call, 1
  %. = select i1 %cmp6.not, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_fops_open(ptr noundef %file) #2 align 64 {
entry:
  %buf.i = alloca [8 x i16], align 2
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2 = tail call i32 @v4l2_fh_open(ptr noundef %file) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i43 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool4.not = icmp eq i32 %call.i43, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @si470x_start(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then5.if.then27_crit_edge, label %if.end8

if.then5.if.then27_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.end8:                                          ; preds = %if.then5
  %arrayidx = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %6 = and i16 %5, 16371
  %7 = or i16 %6, -16380
  store i16 %7, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #6
  %8 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1114111, ptr %8, align 4
  %client.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %addr1.i, align 2
  %14 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf2.i, align 4
  %uglygep.i = getelementptr i8, ptr %1, i32 1672
  %17 = call ptr @memcpy(ptr %buf.i, ptr %uglygep.i, i32 16)
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i44 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i44)
  %cmp6.not.i = icmp eq i32 %call.i44, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #6
  br i1 %cmp6.not.i, label %if.end8.cleanup_crit_edge, label %if.end8.if.then27_crit_edge

if.end8.if.then27_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.end8.if.then27_crit_edge, %if.then5.if.then27_crit_edge
  %retval1.0 = phi i32 [ %call6, %if.then5.if.then27_crit_edge ], [ -5, %if.end8.if.then27_crit_edge ]
  %call28 = call i32 @v4l2_fh_release(ptr noundef %file) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %retval1.0, %if.then27 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_fops_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #6
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i6 = tail call i32 @v4l2_fh_is_singular(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not = icmp eq i32 %call.i6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @si470x_stop(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @v4l2_fh_release(ptr noundef %file) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %capability) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %capability, ptr noundef nonnull @.str.28, i32 noundef 16) #6
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %capability, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.36, i32 noundef 32) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si470x_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_i2c_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %buf.i161 = alloca [16 x i16], align 2
  %msgs.i162 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i = alloca [16 x i16], align 2
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #6
  %0 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #6
  %1 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2162687, ptr %1, align 4
  %client.i = getelementptr inbounds %struct.si470x_device, ptr %dev_id, i32 0, i32 27
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1.i, align 2
  %7 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf.i, ptr %buf2.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end, label %si470x_get_register.exit.thread

si470x_get_register.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #6
  br label %end

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %buf.i, align 2
  %arrayidx5.i = getelementptr %struct.si470x_device, ptr %dev_id, i32 0, i32 4, i32 10
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayidx5.i, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #6
  %15 = and i16 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %completion = getelementptr inbounds %struct.si470x_device, ptr %dev_id, i32 0, i32 11
  call void @complete(ptr noundef %completion) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %arrayidx5 = getelementptr %struct.si470x_device, ptr %dev_id, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx5, align 4
  %18 = and i16 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp8 = icmp eq i16 %18, 0
  br i1 %cmp8, label %if.end3.end_crit_edge, label %for.cond.preheader

if.end3.end_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.cond.preheader:                               ; preds = %if.end3
  %19 = getelementptr inbounds i8, ptr %msgs.i162, i32 4
  %flags.i165 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i162, i32 0, i32 1
  %buf2.i167 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i162, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i161) #6
  %20 = call ptr @memset(ptr %buf.i161, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i162) #6
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %19, align 4
  %22 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i, align 4
  %addr1.i164 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %addr1.i164 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr1.i164, align 2
  %26 = ptrtoint ptr %msgs.i162 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %msgs.i162, align 4
  %27 = ptrtoint ptr %flags.i165 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags.i165, align 2
  store i16 32, ptr %19, align 4
  %28 = ptrtoint ptr %buf2.i167 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i161, ptr %buf2.i167, align 4
  %adapter.i168 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 3
  %29 = ptrtoint ptr %adapter.i168 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter.i168, align 8
  %call.i169 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msgs.i162, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i169)
  %cmp.not.i170 = icmp eq i32 %call.i169, 1
  br i1 %cmp.not.i170, label %for.inc, label %for.cond.preheader.si470x_get_register.exit174.thread_crit_edge

for.cond.preheader.si470x_get_register.exit174.thread_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %si470x_get_register.exit174.thread

si470x_get_register.exit174.thread:               ; preds = %for.inc.3.si470x_get_register.exit174.thread_crit_edge, %for.inc.2.si470x_get_register.exit174.thread_crit_edge, %for.inc.1.si470x_get_register.exit174.thread_crit_edge, %for.inc.si470x_get_register.exit174.thread_crit_edge, %for.cond.preheader.si470x_get_register.exit174.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i162) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i161) #6
  br label %end

for.inc:                                          ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr inbounds [16 x i16], ptr %buf.i161, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i, align 2
  %arrayidx5.i171 = getelementptr %struct.si470x_device, ptr %dev_id, i32 0, i32 4, i32 11
  %33 = ptrtoint ptr %arrayidx5.i171 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %arrayidx5.i171, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i162) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i161) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i161) #6
  %34 = call ptr @memset(ptr %buf.i161, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i162) #6
  %35 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %19, align 4
  %36 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client.i, align 4
  %addr1.i164.1 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %addr1.i164.1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr1.i164.1, align 2
  %40 = ptrtoint ptr %msgs.i162 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %msgs.i162, align 4
  %41 = ptrtoint ptr %flags.i165 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags.i165, align 2
  store i16 32, ptr %19, align 4
  %42 = ptrtoint ptr %buf2.i167 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf.i161, ptr %buf2.i167, align 4
  %adapter.i168.1 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 3
  %43 = ptrtoint ptr %adapter.i168.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %adapter.i168.1, align 8
  %call.i169.1 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msgs.i162, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i169.1)
  %cmp.not.i170.1 = icmp eq i32 %call.i169.1, 1
  br i1 %cmp.not.i170.1, label %for.inc.1, label %for.inc.si470x_get_register.exit174.thread_crit_edge

for.inc.si470x_get_register.exit174.thread_crit_edge: ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %si470x_get_register.exit174.thread

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.i.1 = getelementptr inbounds [16 x i16], ptr %buf.i161, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i.1, align 2
  %arrayidx5.i171.1 = getelementptr %struct.si470x_device, ptr %dev_id, i32 0, i32 4, i32 12
  %47 = ptrtoint ptr %arrayidx5.i171.1 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %arrayidx5.i171.1, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i162) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i161) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i161) #6
  %48 = call ptr @memset(ptr %buf.i161, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i162) #6
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %19, align 4
  %50 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client.i, align 4
  %addr1.i164.2 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %addr1.i164.2 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr1.i164.2, align 2
  %54 = ptrtoint ptr %msgs.i162 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %msgs.i162, align 4
  %55 = ptrtoint ptr %flags.i165 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %flags.i165, align 2
  store i16 32, ptr %19, align 4
  %56 = ptrtoint ptr %buf2.i167 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %buf.i161, ptr %buf2.i167, align 4
  %adapter.i168.2 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 3
  %57 = ptrtoint ptr %adapter.i168.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adapter.i168.2, align 8
  %call.i169.2 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msgs.i162, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i169.2)
  %cmp.not.i170.2 = icmp eq i32 %call.i169.2, 1
  br i1 %cmp.not.i170.2, label %for.inc.2, label %for.inc.1.si470x_get_register.exit174.thread_crit_edge

for.inc.1.si470x_get_register.exit174.thread_crit_edge: ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %si470x_get_register.exit174.thread

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.i.2 = getelementptr inbounds [16 x i16], ptr %buf.i161, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i.2, align 2
  %arrayidx5.i171.2 = getelementptr %struct.si470x_device, ptr %dev_id, i32 0, i32 4, i32 13
  %61 = ptrtoint ptr %arrayidx5.i171.2 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayidx5.i171.2, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i162) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i161) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i161) #6
  %62 = call ptr @memset(ptr %buf.i161, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i162) #6
  %63 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %19, align 4
  %64 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %client.i, align 4
  %addr1.i164.3 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %addr1.i164.3 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %addr1.i164.3, align 2
  %68 = ptrtoint ptr %msgs.i162 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %msgs.i162, align 4
  %69 = ptrtoint ptr %flags.i165 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %flags.i165, align 2
  store i16 32, ptr %19, align 4
  %70 = ptrtoint ptr %buf2.i167 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i161, ptr %buf2.i167, align 4
  %adapter.i168.3 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 3
  %71 = ptrtoint ptr %adapter.i168.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adapter.i168.3, align 8
  %call.i169.3 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msgs.i162, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i169.3)
  %cmp.not.i170.3 = icmp eq i32 %call.i169.3, 1
  br i1 %cmp.not.i170.3, label %for.inc.3, label %for.inc.2.si470x_get_register.exit174.thread_crit_edge

for.inc.2.si470x_get_register.exit174.thread_crit_edge: ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %si470x_get_register.exit174.thread

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.i.3 = getelementptr inbounds [16 x i16], ptr %buf.i161, i32 0, i32 4
  %73 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.i.3, align 2
  %arrayidx5.i171.3 = getelementptr %struct.si470x_device, ptr %dev_id, i32 0, i32 4, i32 14
  %75 = ptrtoint ptr %arrayidx5.i171.3 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %arrayidx5.i171.3, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i162) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i161) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i161) #6
  %76 = call ptr @memset(ptr %buf.i161, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i162) #6
  %77 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %19, align 4
  %78 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %client.i, align 4
  %addr1.i164.4 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %addr1.i164.4 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %addr1.i164.4, align 2
  %82 = ptrtoint ptr %msgs.i162 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %msgs.i162, align 4
  %83 = ptrtoint ptr %flags.i165 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %flags.i165, align 2
  store i16 32, ptr %19, align 4
  %84 = ptrtoint ptr %buf2.i167 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %buf.i161, ptr %buf2.i167, align 4
  %adapter.i168.4 = getelementptr inbounds %struct.i2c_client, ptr %79, i32 0, i32 3
  %85 = ptrtoint ptr %adapter.i168.4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adapter.i168.4, align 8
  %call.i169.4 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %msgs.i162, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i169.4)
  %cmp.not.i170.4 = icmp eq i32 %call.i169.4, 1
  br i1 %cmp.not.i170.4, label %for.inc.4, label %for.inc.3.si470x_get_register.exit174.thread_crit_edge

for.inc.3.si470x_get_register.exit174.thread_crit_edge: ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %si470x_get_register.exit174.thread

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.i.4 = getelementptr inbounds [16 x i16], ptr %buf.i161, i32 0, i32 5
  %87 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i.4, align 2
  %arrayidx5.i171.4 = getelementptr %struct.si470x_device, ptr %dev_id, i32 0, i32 4, i32 15
  %89 = ptrtoint ptr %arrayidx5.i171.4 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %arrayidx5.i171.4, align 2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i162) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i161) #6
  %90 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %91)
  %cmp25 = icmp sgt i16 %91, -1
  br i1 %cmp25, label %for.inc.4.end_crit_edge, label %sw.epilog

for.inc.4.end_crit_edge:                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

sw.epilog:                                        ; preds = %for.inc.4
  %buffer = getelementptr inbounds %struct.si470x_device, ptr %dev_id, i32 0, i32 7
  %wr_index = getelementptr inbounds %struct.si470x_device, ptr %dev_id, i32 0, i32 10
  %buf_size = getelementptr inbounds %struct.si470x_device, ptr %dev_id, i32 0, i32 8
  %rd_index = getelementptr inbounds %struct.si470x_device, ptr %dev_id, i32 0, i32 9
  %92 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx5.i, align 4
  %94 = lshr i16 %93, 9
  %95 = and i16 %94, 3
  %96 = ptrtoint ptr %arrayidx5.i171.1 to i32
  call void @__asan_load2_noabort(i32 %96)
  %rds.0 = load i16, ptr %arrayidx5.i171.1, align 2
  %97 = call i16 @llvm.bswap.i16(i16 %rds.0) #6
  %98 = load i16, ptr @max_rds_errors, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %98)
  %cmp75 = icmp ugt i16 %95, %98
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp83.not = icmp eq i16 %95, 0
  %spec.select = select i1 %cmp83.not, i8 0, i8 64
  %tmpbuf.sroa.6.0 = select i1 %cmp75, i8 -128, i8 %spec.select
  %99 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %buffer, align 4
  %101 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %wr_index, align 8
  %arrayidx92 = getelementptr i8, ptr %100, i32 %102
  %103 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 2)
  store i16 %97, ptr %arrayidx92, align 1
  %tmpbuf.sroa.6.0.arrayidx92.sroa_idx = getelementptr inbounds i8, ptr %arrayidx92, i32 2
  %104 = ptrtoint ptr %tmpbuf.sroa.6.0.arrayidx92.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %tmpbuf.sroa.6.0, ptr %tmpbuf.sroa.6.0.arrayidx92.sroa_idx, align 1
  %105 = load i32, ptr %wr_index, align 8
  %add94 = add i32 %105, 3
  %106 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add94, i32 %107)
  %cmp96.not = icmp ult i32 %add94, %107
  %spec.store.select = select i1 %cmp96.not, i32 %add94, i32 0
  %108 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %spec.store.select, ptr %wr_index, align 8
  %109 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %110)
  %cmp102 = icmp eq i32 %spec.store.select, %110
  br i1 %cmp102, label %if.then104, label %sw.epilog.sw.epilog.1_crit_edge

sw.epilog.sw.epilog.1_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.1

if.then104:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %add106 = add i32 %spec.store.select, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add106, i32 %107)
  %cmp109.not = icmp ult i32 %add106, %107
  %spec.store.select160 = select i1 %cmp109.not, i32 %add106, i32 0
  %111 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %spec.store.select160, ptr %rd_index, align 4
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %if.then104, %sw.epilog.sw.epilog.1_crit_edge
  %112 = ptrtoint ptr %arrayidx5.i171 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx5.i171, align 2
  %114 = lshr i16 %113, 14
  %115 = ptrtoint ptr %arrayidx5.i171.2 to i32
  call void @__asan_load2_noabort(i32 %115)
  %rds.0.1 = load i16, ptr %arrayidx5.i171.2, align 2
  %116 = call i16 @llvm.bswap.i16(i16 %rds.0.1) #6
  %117 = load i16, ptr @max_rds_errors, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %114, i16 %117)
  %cmp75.1 = icmp ugt i16 %114, %117
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %113)
  %cmp83.not.1 = icmp ult i16 %113, 16384
  %spec.select.1 = select i1 %cmp83.not.1, i8 9, i8 73
  %tmpbuf.sroa.6.0.1 = select i1 %cmp75.1, i8 -119, i8 %spec.select.1
  %118 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %buffer, align 4
  %120 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %wr_index, align 8
  %arrayidx92.1 = getelementptr i8, ptr %119, i32 %121
  %122 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 %116, ptr %arrayidx92.1, align 1
  %tmpbuf.sroa.6.0.arrayidx92.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx92.1, i32 2
  %123 = ptrtoint ptr %tmpbuf.sroa.6.0.arrayidx92.sroa_idx.1 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %tmpbuf.sroa.6.0.1, ptr %tmpbuf.sroa.6.0.arrayidx92.sroa_idx.1, align 1
  %124 = load i32, ptr %wr_index, align 8
  %add94.1 = add i32 %124, 3
  %125 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add94.1, i32 %126)
  %cmp96.not.1 = icmp ult i32 %add94.1, %126
  %spec.store.select.1 = select i1 %cmp96.not.1, i32 %add94.1, i32 0
  %127 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %spec.store.select.1, ptr %wr_index, align 8
  %128 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.1, i32 %129)
  %cmp102.1 = icmp eq i32 %spec.store.select.1, %129
  br i1 %cmp102.1, label %if.then104.1, label %sw.epilog.1.sw.epilog.2_crit_edge

sw.epilog.1.sw.epilog.2_crit_edge:                ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.2

if.then104.1:                                     ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #8
  %add106.1 = add i32 %spec.store.select.1, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add106.1, i32 %126)
  %cmp109.not.1 = icmp ult i32 %add106.1, %126
  %spec.store.select160.1 = select i1 %cmp109.not.1, i32 %add106.1, i32 0
  %130 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %spec.store.select160.1, ptr %rd_index, align 4
  br label %sw.epilog.2

sw.epilog.2:                                      ; preds = %if.then104.1, %sw.epilog.1.sw.epilog.2_crit_edge
  %131 = ptrtoint ptr %arrayidx5.i171 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %arrayidx5.i171, align 2
  %133 = lshr i16 %132, 12
  %134 = and i16 %133, 3
  %135 = ptrtoint ptr %arrayidx5.i171.3 to i32
  call void @__asan_load2_noabort(i32 %135)
  %rds.0.2 = load i16, ptr %arrayidx5.i171.3, align 2
  %136 = call i16 @llvm.bswap.i16(i16 %rds.0.2) #6
  %137 = load i16, ptr @max_rds_errors, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %134, i16 %137)
  %cmp75.2 = icmp ugt i16 %134, %137
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %cmp83.not.2 = icmp eq i16 %134, 0
  %spec.select.2 = select i1 %cmp83.not.2, i8 18, i8 82
  %tmpbuf.sroa.6.0.2 = select i1 %cmp75.2, i8 -110, i8 %spec.select.2
  %138 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %buffer, align 4
  %140 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %wr_index, align 8
  %arrayidx92.2 = getelementptr i8, ptr %139, i32 %141
  %142 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 2)
  store i16 %136, ptr %arrayidx92.2, align 1
  %tmpbuf.sroa.6.0.arrayidx92.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx92.2, i32 2
  %143 = ptrtoint ptr %tmpbuf.sroa.6.0.arrayidx92.sroa_idx.2 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %tmpbuf.sroa.6.0.2, ptr %tmpbuf.sroa.6.0.arrayidx92.sroa_idx.2, align 1
  %144 = load i32, ptr %wr_index, align 8
  %add94.2 = add i32 %144, 3
  %145 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add94.2, i32 %146)
  %cmp96.not.2 = icmp ult i32 %add94.2, %146
  %spec.store.select.2 = select i1 %cmp96.not.2, i32 %add94.2, i32 0
  %147 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %spec.store.select.2, ptr %wr_index, align 8
  %148 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.2, i32 %149)
  %cmp102.2 = icmp eq i32 %spec.store.select.2, %149
  br i1 %cmp102.2, label %if.then104.2, label %sw.epilog.2.sw.epilog.3_crit_edge

sw.epilog.2.sw.epilog.3_crit_edge:                ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.3

if.then104.2:                                     ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #8
  %add106.2 = add i32 %spec.store.select.2, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add106.2, i32 %146)
  %cmp109.not.2 = icmp ult i32 %add106.2, %146
  %spec.store.select160.2 = select i1 %cmp109.not.2, i32 %add106.2, i32 0
  %150 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %spec.store.select160.2, ptr %rd_index, align 4
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %if.then104.2, %sw.epilog.2.sw.epilog.3_crit_edge
  %151 = ptrtoint ptr %arrayidx5.i171 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %arrayidx5.i171, align 2
  %153 = lshr i16 %152, 10
  %154 = and i16 %153, 3
  %155 = ptrtoint ptr %arrayidx5.i171.4 to i32
  call void @__asan_load2_noabort(i32 %155)
  %rds.0.3 = load i16, ptr %arrayidx5.i171.4, align 2
  %156 = call i16 @llvm.bswap.i16(i16 %rds.0.3) #6
  %157 = load i16, ptr @max_rds_errors, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %154, i16 %157)
  %cmp75.3 = icmp ugt i16 %154, %157
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %cmp83.not.3 = icmp eq i16 %154, 0
  %spec.select.3 = select i1 %cmp83.not.3, i8 27, i8 91
  %tmpbuf.sroa.6.0.3 = select i1 %cmp75.3, i8 -101, i8 %spec.select.3
  %158 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %buffer, align 4
  %160 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %wr_index, align 8
  %arrayidx92.3 = getelementptr i8, ptr %159, i32 %161
  %162 = ptrtoint ptr %arrayidx92.3 to i32
  call void @__asan_storeN_noabort(i32 %162, i32 2)
  store i16 %156, ptr %arrayidx92.3, align 1
  %tmpbuf.sroa.6.0.arrayidx92.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx92.3, i32 2
  %163 = ptrtoint ptr %tmpbuf.sroa.6.0.arrayidx92.sroa_idx.3 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %tmpbuf.sroa.6.0.3, ptr %tmpbuf.sroa.6.0.arrayidx92.sroa_idx.3, align 1
  %164 = load i32, ptr %wr_index, align 8
  %add94.3 = add i32 %164, 3
  %165 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %buf_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add94.3, i32 %166)
  %cmp96.not.3 = icmp ult i32 %add94.3, %166
  %spec.store.select.3 = select i1 %cmp96.not.3, i32 %add94.3, i32 0
  %167 = ptrtoint ptr %wr_index to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %spec.store.select.3, ptr %wr_index, align 8
  %168 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.3, i32 %169)
  %cmp102.3 = icmp eq i32 %spec.store.select.3, %169
  br i1 %cmp102.3, label %if.then104.3, label %sw.epilog.3.for.inc115.3_crit_edge

sw.epilog.3.for.inc115.3_crit_edge:               ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc115.3

if.then104.3:                                     ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #8
  %add106.3 = add i32 %spec.store.select.3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add106.3, i32 %166)
  %cmp109.not.3 = icmp ult i32 %add106.3, %166
  %spec.store.select160.3 = select i1 %cmp109.not.3, i32 %add106.3, i32 0
  %170 = ptrtoint ptr %rd_index to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %spec.store.select160.3, ptr %rd_index, align 4
  br label %for.inc115.3

for.inc115.3:                                     ; preds = %if.then104.3, %sw.epilog.3.for.inc115.3_crit_edge
  %171 = ptrtoint ptr %wr_index to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %wr_index, align 8
  %173 = ptrtoint ptr %rd_index to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rd_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %174)
  %cmp120.not = icmp eq i32 %172, %174
  br i1 %cmp120.not, label %for.inc115.3.end_crit_edge, label %if.then122

for.inc115.3.end_crit_edge:                       ; preds = %for.inc115.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then122:                                       ; preds = %for.inc115.3
  call void @__sanitizer_cov_trace_pc() #8
  %read_queue = getelementptr inbounds %struct.si470x_device, ptr %dev_id, i32 0, i32 5
  call void @__wake_up(ptr noundef %read_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %end

end:                                              ; preds = %if.then122, %for.inc115.3.end_crit_edge, %for.inc.4.end_crit_edge, %si470x_get_register.exit174.thread, %if.end3.end_crit_edge, %si470x_get_register.exit.thread
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si470x_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_is_singular(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si470x_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i = alloca [8 x i16], align 2
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %4 = or i16 %3, 64
  store i16 %4, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1114111, ptr %5, align 4
  %client.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr1.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf2.i, align 4
  %14 = call ptr @memcpy(ptr %buf.i, ptr %arrayidx, i32 16)
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp6.not.i.not = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #6
  %. = select i1 %cmp6.not.i.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si470x_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %buf.i = alloca [8 x i16], align 2
  %msgs.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.si470x_device, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %4 = or i16 %3, 1
  store i16 %4, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1114111, ptr %5, align 4
  %client.i = getelementptr inbounds %struct.si470x_device, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr1.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf2.i, align 4
  %14 = call ptr @memcpy(ptr %buf.i, ptr %arrayidx, i32 16)
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msgs.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp6.not.i.not = icmp eq i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf.i) #6
  br i1 %cmp6.not.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 110) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !21, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !37, !38, !40, !42, !44, !46, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__param_radio_nr, !1, !"__param_radio_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 44, i32 1}
!2 = !{ptr @__UNIQUE_ID_radio_nrtype292, !1, !"__UNIQUE_ID_radio_nrtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_radio_nr293, !4, !"__UNIQUE_ID_radio_nr293", i1 false, i1 false}
!4 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 45, i32 1}
!5 = !{ptr @__param_rds_buf, !6, !"__param_rds_buf", i1 false, i1 false}
!6 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 49, i32 1}
!7 = !{ptr @__UNIQUE_ID_rds_buftype294, !6, !"__UNIQUE_ID_rds_buftype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_rds_buf295, !9, !"__UNIQUE_ID_rds_buf295", i1 false, i1 false}
!9 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 50, i32 1}
!10 = !{ptr @__param_max_rds_errors, !11, !"__param_max_rds_errors", i1 false, i1 false}
!11 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 58, i32 1}
!12 = !{ptr @__UNIQUE_ID_max_rds_errorstype296, !11, !"__UNIQUE_ID_max_rds_errorstype296", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_max_rds_errors297, !14, !"__UNIQUE_ID_max_rds_errors297", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 59, i32 1}
!15 = !{ptr @__initcall__kmod_radio_si470x_i2c__298_541_si470x_i2c_driver_init6, !16, !"__initcall__kmod_radio_si470x_i2c__298_541_si470x_i2c_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 541, i32 1}
!17 = !{ptr @__exitcall_si470x_i2c_driver_exit, !16, !"__exitcall_si470x_i2c_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_file299, !19, !"__UNIQUE_ID_file299", i1 false, i1 false}
!19 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 543, i32 1}
!20 = !{ptr @__UNIQUE_ID_license300, !19, !"__UNIQUE_ID_license300", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author301, !22, !"__UNIQUE_ID_author301", i1 false, i1 false}
!22 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 544, i32 1}
!23 = !{ptr @__UNIQUE_ID_description302, !24, !"__UNIQUE_ID_description302", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 545, i32 1}
!25 = !{ptr @__UNIQUE_ID_version303, !26, !"__UNIQUE_ID_version303", i1 false, i1 false}
!26 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 546, i32 1}
!27 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__modver_attr, !26, !"__modver_attr", i1 false, i1 false}
!31 = !{ptr @__param_str_radio_nr, !1, !"__param_str_radio_nr", i1 false, i1 false}
!32 = !{ptr @radio_nr, !33, !"radio_nr", i1 false, i1 false}
!33 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 43, i32 12}
!34 = !{ptr @__param_str_rds_buf, !6, !"__param_str_rds_buf", i1 false, i1 false}
!35 = !{ptr @rds_buf, !36, !"rds_buf", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 48, i32 21}
!37 = !{ptr @__param_str_max_rds_errors, !11, !"__param_str_max_rds_errors", i1 false, i1 false}
!38 = !{ptr @max_rds_errors, !39, !"max_rds_errors", i1 false, i1 false}
!39 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 53, i32 23}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 530, i32 12}
!42 = !{ptr @si470x_i2c_driver, !43, !"si470x_i2c_driver", i1 false, i1 false}
!43 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 528, i32 26}
!44 = !{ptr @si470x_i2c_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 347, i32 2}
!46 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.5, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 358, i32 3}
!49 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.7, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @si470x_i2c_probe._entry, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @si470x_i2c_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @si470x_i2c_probe._key, !56, !"_key", i1 false, i1 false}
!56 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 362, i32 2}
!57 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 369, i32 3}
!60 = !{ptr @si470x_i2c_probe._entry.11, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @si470x_i2c_probe._entry_ptr.13, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 384, i32 60}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 388, i32 3}
!66 = !{ptr @si470x_i2c_probe._entry.15, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @si470x_i2c_probe._entry_ptr.17, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 408, i32 2}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @si470x_i2c_probe._entry.18, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @si470x_i2c_probe._entry_ptr.21, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 411, i32 3}
!75 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @si470x_i2c_probe._entry.22, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @si470x_i2c_probe._entry_ptr.25, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @si470x_i2c_probe.__key.26, !79, !"__key", i1 false, i1 false}
!79 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 432, i32 2}
!80 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 437, i32 9}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 439, i32 3}
!85 = !{ptr @si470x_i2c_probe._entry.29, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @si470x_i2c_probe._entry_ptr.31, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 447, i32 3}
!89 = !{ptr @si470x_i2c_probe._entry.32, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @si470x_i2c_probe._entry_ptr.34, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @init_completion.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../include/linux/completion.h", i32 87, i32 2}
!93 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 225, i32 28}
!96 = !{ptr @si470x_of_match, !97, !"si470x_of_match", i1 false, i1 false}
!97 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 518, i32 34}
!98 = !{ptr @si470x_i2c_pm, !99, !"si470x_i2c_pm", i1 false, i1 false}
!99 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 514, i32 8}
!100 = !{ptr @si470x_i2c_id, !101, !"si470x_i2c_id", i1 false, i1 false}
!101 = !{!"../drivers/media/radio/si470x/radio-si470x-i2c.c", i32 29, i32 35}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
