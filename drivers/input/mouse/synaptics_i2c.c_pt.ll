; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/synaptics_i2c.c_pt.bc'
source_filename = "../drivers/input/mouse/synaptics_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.synaptics_i2c = type { ptr, ptr, %struct.delayed_work, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__param_str_no_decel = internal constant [23 x i8] c"synaptics_i2c.no_decel\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@no_decel = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_no_decel = internal constant %struct.kernel_param { ptr @__param_str_no_decel, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @no_decel } }, section "__param", align 4
@__UNIQUE_ID_no_deceltype288 = internal constant [37 x i8] c"synaptics_i2c.parmtype=no_decel:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_decel289 = internal constant [62 x i8] c"synaptics_i2c.parm=no_decel:No Deceleration. Default = 1 (on)\00", section ".modinfo", align 1
@__param_str_reduce_report = internal constant [28 x i8] c"synaptics_i2c.reduce_report\00", align 1
@reduce_report = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reduce_report = internal constant %struct.kernel_param { ptr @__param_str_reduce_report, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @reduce_report } }, section "__param", align 4
@__UNIQUE_ID_reduce_reporttype290 = internal constant [42 x i8] c"synaptics_i2c.parmtype=reduce_report:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reduce_report291 = internal constant [70 x i8] c"synaptics_i2c.parm=reduce_report:Reduced Reporting. Default = 0 (off)\00", section ".modinfo", align 1
@__param_str_no_filter = internal constant [24 x i8] c"synaptics_i2c.no_filter\00", align 1
@no_filter = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_no_filter = internal constant %struct.kernel_param { ptr @__param_str_no_filter, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @no_filter } }, section "__param", align 4
@__UNIQUE_ID_no_filtertype292 = internal constant [38 x i8] c"synaptics_i2c.parmtype=no_filter:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_filter293 = internal constant [58 x i8] c"synaptics_i2c.parm=no_filter:No Filter. Default = 0 (off)\00", section ".modinfo", align 1
@__param_str_polling_req = internal constant [26 x i8] c"synaptics_i2c.polling_req\00", align 1
@polling_req = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_polling_req = internal constant %struct.kernel_param { ptr @__param_str_polling_req, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @polling_req } }, section "__param", align 4
@__UNIQUE_ID_polling_reqtype294 = internal constant [40 x i8] c"synaptics_i2c.parmtype=polling_req:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_polling_req295 = internal constant [70 x i8] c"synaptics_i2c.parm=polling_req:Request Polling. Default = 0 (use irq)\00", section ".modinfo", align 1
@__param_str_scan_rate = internal constant [24 x i8] c"synaptics_i2c.scan_rate\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@scan_rate = internal global { i32, [28 x i8] } { i32 80, [28 x i8] zeroinitializer }, align 32
@__param_scan_rate = internal constant %struct.kernel_param { ptr @__param_str_scan_rate, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @scan_rate } }, section "__param", align 4
@__UNIQUE_ID_scan_ratetype296 = internal constant [37 x i8] c"synaptics_i2c.parmtype=scan_rate:int\00", section ".modinfo", align 1
@__UNIQUE_ID_scan_rate297 = internal constant [69 x i8] c"synaptics_i2c.parm=scan_rate:Polling rate in times/sec. Default = 80\00", section ".modinfo", align 1
@__initcall__kmod_synaptics_i2c__300_662_synaptics_i2c_driver_init6 = internal global ptr @synaptics_i2c_driver_init, section ".initcall6.init", align 4
@synaptics_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @synaptics_i2c_probe, ptr @synaptics_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @synaptics_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @synaptics_i2c_pm, ptr null, ptr null }, ptr @synaptics_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_synaptics_i2c_driver_exit = internal global ptr @synaptics_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description301 = internal constant [56 x i8] c"synaptics_i2c.description=Synaptics I2C touchpad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [60 x i8] c"synaptics_i2c.author=Mike Rapoport, Igor Grinberg, Compulab\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [53 x i8] c"synaptics_i2c.file=drivers/input/mouse/synaptics_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [26 x i8] c"synaptics_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"synaptics_i2c\00", [18 x i8] zeroinitializer }, align 32
@synaptics_i2c_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"synaptics,synaptics_i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@synaptics_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @synaptics_i2c_suspend, ptr @synaptics_i2c_resume, ptr @synaptics_i2c_suspend, ptr @synaptics_i2c_resume, ptr @synaptics_i2c_suspend, ptr @synaptics_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@synaptics_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"synaptics_i2c\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@synaptics_i2c_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"synaptics_i2c_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/mouse/synaptics_i2c.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Requesting IRQ: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@synaptics_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 559, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"IRQ request failed: %d, falling back to polling\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@synaptics_i2c_probe._entry_ptr = internal global ptr @synaptics_i2c_probe._entry, section ".printk_index", align 4
@synaptics_i2c_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Using polling at rate: %d times/sec\0A\00", [59 x i8] zeroinitializer }, align 32
@synaptics_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 574, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Input device register failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@synaptics_i2c_probe._entry_ptr.11 = internal global ptr @synaptics_i2c_probe._entry.8, section ".printk_index", align 4
@synaptics_i2c_touch_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&touch->dwork)->work)\00", [54 x i8] zeroinitializer }, align 32
@synaptics_i2c_touch_create.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&touch->dwork)->timer\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@synaptics_i2c_reset_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 311, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to reset device\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"synaptics_i2c_reset_config\00", [37 x i8] zeroinitializer }, align 32
@synaptics_i2c_reset_config._entry_ptr = internal global ptr @synaptics_i2c_reset_config._entry, section ".printk_index", align 4
@synaptics_i2c_reset_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 316, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to config device\0A\00", [39 x i8] zeroinitializer }, align 32
@synaptics_i2c_reset_config._entry_ptr.19 = internal global ptr @synaptics_i2c_reset_config._entry.17, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"no_decel\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 188, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"reduce_report\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 193, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"no_filter\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 198, i32 13 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"polling_req\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 208, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"scan_rate\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 213, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"synaptics_i2c_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 649, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 651, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"synaptics_i2c_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 642, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"synaptics_i2c_pm\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 632, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"synaptics_i2c_id_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 635, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 550, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 557, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 567, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 573, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 519, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 311, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [39 x i8] c"../drivers/input/mouse/synaptics_i2c.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 316, i32 4 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_no_decel289, ptr @__UNIQUE_ID_no_deceltype288, ptr @__UNIQUE_ID_no_filter293, ptr @__UNIQUE_ID_no_filtertype292, ptr @__UNIQUE_ID_polling_req295, ptr @__UNIQUE_ID_polling_reqtype294, ptr @__UNIQUE_ID_reduce_report291, ptr @__UNIQUE_ID_reduce_reporttype290, ptr @__UNIQUE_ID_scan_rate297, ptr @__UNIQUE_ID_scan_ratetype296, ptr @__exitcall_synaptics_i2c_driver_exit, ptr @__initcall__kmod_synaptics_i2c__300_662_synaptics_i2c_driver_init6, ptr @__param_no_decel, ptr @__param_no_filter, ptr @__param_polling_req, ptr @__param_reduce_report, ptr @__param_scan_rate, ptr @synaptics_i2c_driver_exit, ptr @synaptics_i2c_probe._entry, ptr @synaptics_i2c_probe._entry.8, ptr @synaptics_i2c_probe._entry_ptr, ptr @synaptics_i2c_probe._entry_ptr.11, ptr @synaptics_i2c_reset_config._entry, ptr @synaptics_i2c_reset_config._entry.17, ptr @synaptics_i2c_reset_config._entry_ptr, ptr @synaptics_i2c_reset_config._entry_ptr.19, ptr @no_decel, ptr @reduce_report, ptr @no_filter, ptr @polling_req, ptr @scan_rate, ptr @synaptics_i2c_driver, ptr @.str, ptr @synaptics_i2c_of_match, ptr @synaptics_i2c_pm, ptr @synaptics_i2c_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @synaptics_i2c_touch_create.__key, ptr @.str.12, ptr @synaptics_i2c_touch_create.__key.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_decel to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reduce_report to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_filter to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polling_req to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_touch_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_touch_create.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_reset_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synaptics_i2c_reset_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @synaptics_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synaptics_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @synaptics_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 132) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call7.i.i.i, align 8
  %2 = load i8, ptr @no_decel, align 1, !range !102
  %3 = zext i8 %2 to i32
  %no_decel_param.i = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %no_decel_param.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %no_decel_param.i, align 8
  %5 = load i32, ptr @scan_rate, align 4
  %scan_rate_param.i = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 7
  %div.i.i = sdiv i32 1000, %5
  %scan_ms.i.i = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %scan_ms.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div.i.i, ptr %scan_ms.i.i, align 8
  %7 = ptrtoint ptr %scan_rate_param.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %scan_rate_param.i, align 4
  %dwork.i = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %dwork.i, i32 noundef 0) #5
  %8 = ptrtoint ptr %dwork.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %dwork.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @synaptics_i2c_touch_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry10.i = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry10.i, ptr %entry10.i, align 4
  %prev.i.i = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry10.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 2, i32 0, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @synaptics_i2c_work_handler, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @synaptics_i2c_touch_create.__key.13) #5
  %call1 = tail call fastcc i32 @synaptics_i2c_reset_config(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_mem_free_crit_edge

if.end.err_mem_free_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_mem_free

if.end4:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp slt i32 %13, 1
  br i1 %cmp, label %if.then5, label %if.end4.if.end6_crit_edge

if.end4.if.end6_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr @polling_req, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4.if.end6_crit_edge
  %call7 = tail call ptr @input_allocate_device() #5
  %input = getelementptr inbounds %struct.synaptics_i2c, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %input, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.err_mem_free_crit_edge, label %if.end11

if.end6.err_mem_free_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_mem_free

if.end11:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i.i, align 8
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %name.i, ptr %call7, align 8
  %18 = load ptr, ptr %call7.i.i.i, align 8
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %name4.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 12
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 1
  %21 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %name4.i, ptr %phys.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 3
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 24, ptr %id.i, align 4
  %23 = load ptr, ptr %call7.i.i.i, align 8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -1, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end11.synaptics_i2c_set_input_params.exit_crit_edge

if.end11.synaptics_i2c_set_input_params.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %synaptics_i2c_set_input_params.exit

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %23, i8 noundef zeroext 4) #5
  br label %synaptics_i2c_set_input_params.exit

synaptics_i2c_set_input_params.exit:              ; preds = %if.then.i.i, %if.end11.synaptics_i2c_set_input_params.exit_crit_edge
  %ret.0.i.i = phi i32 [ %call5.i.i, %if.then.i.i ], [ %call.i.i, %if.end11.synaptics_i2c_set_input_params.exit_crit_edge ]
  %conv.i = trunc i32 %ret.0.i.i to i16
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %version.i, align 2
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 40, i32 1
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev.i, ptr %parent.i, align 8
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 31
  %28 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @synaptics_i2c_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 32
  %29 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @synaptics_i2c_close, ptr %close.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 40, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 5
  %31 = ptrtoint ptr %evbit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %evbit.i, align 4
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %call7, i32 0, i32 7
  %33 = ptrtoint ptr %relbit.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %relbit.i, align 4
  %or.i35.i = or i32 %34, 3
  store i32 %or.i35.i, ptr %relbit.i, align 4
  %or.i36.i = or i32 %32, 6
  store i32 %or.i36.i, ptr %evbit.i, align 4
  %add.ptr.i.i = getelementptr %struct.input_dev, ptr %call7, i32 0, i32 6, i32 8
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i.i, align 4
  %or.i37.i = or i32 %36, 65536
  store i32 %or.i37.i, ptr %add.ptr.i.i, align 4
  %37 = load i8, ptr @polling_req, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool12.not = icmp eq i8 %37, 0
  br i1 %tobool12.not, label %do.body, label %synaptics_i2c_set_input_params.exit.do.body39_crit_edge

synaptics_i2c_set_input_params.exit.do.body39_crit_edge: ; preds = %synaptics_i2c_set_input_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

do.body:                                          ; preds = %synaptics_i2c_set_input_params.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synaptics_i2c_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@synaptics_i2c_probe, %if.then18)) #5
          to label %do.end [label %if.then18], !srcloc !103

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i.i, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  %irq21 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %irq21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synaptics_i2c_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %41) #5
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %42 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i.i, align 8
  %irq24 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %irq24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq24, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %45, ptr noundef nonnull @synaptics_i2c_irq, ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %do.end.if.end36_crit_edge, label %do.end30

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

do.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i.i, align 8
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev32, ptr noundef nonnull @.str.4, i32 noundef %call.i) #9
  store i8 1, ptr @polling_req, align 1
  %48 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i.i, align 8
  %call34 = tail call fastcc i32 @synaptics_i2c_reg_set(ptr noundef %49, i16 noundef zeroext 1, i8 noundef zeroext 0)
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %do.end.if.end36_crit_edge
  %.pr = load i8, ptr @polling_req, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool37.not = icmp eq i8 %.pr, 0
  br i1 %tobool37.not, label %if.end36.if.end57_crit_edge, label %if.end36.do.body39_crit_edge

if.end36.do.body39_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

if.end36.if.end57_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

do.body39:                                        ; preds = %if.end36.do.body39_crit_edge, %synaptics_i2c_set_input_params.exit.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @synaptics_i2c_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@synaptics_i2c_probe, %if.then51)) #5
          to label %if.end57 [label %if.then51], !srcloc !103

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i.i, align 8
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  %52 = load i32, ptr @scan_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @synaptics_i2c_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev53, ptr noundef nonnull @.str.7, i32 noundef %52) #5
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %do.body39, %if.end36.if.end57_crit_edge
  %53 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %input, align 4
  %call59 = tail call i32 @input_register_device(ptr noundef %54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %dev65 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.9, i32 noundef %call59) #9
  %55 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input, align 4
  tail call void @input_free_device(ptr noundef %56) #5
  br label %err_mem_free

if.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_mem_free:                                     ; preds = %do.end64, %if.end6.err_mem_free_crit_edge, %if.end.err_mem_free_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_mem_free_crit_edge ], [ %call59, %do.end64 ], [ -12, %if.end6.err_mem_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_mem_free, %if.end66, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_mem_free ], [ 0, %if.end66 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i8, ptr @polling_req, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %4, ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %input = getelementptr inbounds %struct.synaptics_i2c, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %6) #5
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_i2c_reset_config(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %synaptics_i2c_reg_set.exit, label %entry.if.end8.sink.split_crit_edge

entry.if.end8.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split

synaptics_i2c_reg_set.exit:                       ; preds = %entry
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %if.else, label %synaptics_i2c_reg_set.exit.if.end8.sink.split_crit_edge

synaptics_i2c_reg_set.exit.if.end8.sink.split_crit_edge: ; preds = %synaptics_i2c_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split

if.else:                                          ; preds = %synaptics_i2c_reg_set.exit
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3100, i32 noundef 2) #5
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %synaptics_i2c_reg_set.exit.i, label %if.else.if.end8.sink.split_crit_edge

if.else.if.end8.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split

synaptics_i2c_reg_set.exit.i:                     ; preds = %if.else
  %call5.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext -63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %synaptics_i2c_reg_set.exit.i.if.end8.sink.split_crit_edge

synaptics_i2c_reg_set.exit.i.if.end8.sink.split_crit_edge: ; preds = %synaptics_i2c_reg_set.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split

if.end.i:                                         ; preds = %synaptics_i2c_reg_set.exit.i
  %0 = load i8, ptr @polling_req, align 1, !range !102
  %call.i36.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp.i37.i = icmp eq i32 %call.i36.i, 0
  br i1 %cmp.i37.i, label %synaptics_i2c_reg_set.exit41.i, label %if.end.i.if.end8.sink.split_crit_edge

if.end.i.if.end8.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split

synaptics_i2c_reg_set.exit41.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not.i = icmp eq i8 %0, 0
  %conv.i = select i1 %tobool1.not.i, i8 3, i8 0
  %call5.i38.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i38.i)
  %tobool3.not.i = icmp eq i32 %call5.i38.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %synaptics_i2c_reg_set.exit41.i.if.end8.sink.split_crit_edge

synaptics_i2c_reg_set.exit41.i.if.end8.sink.split_crit_edge: ; preds = %synaptics_i2c_reg_set.exit41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split

if.end5.i:                                        ; preds = %synaptics_i2c_reg_set.exit41.i
  %call.i42.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %cmp.i43.i = icmp eq i32 %call.i42.i, 0
  br i1 %cmp.i43.i, label %if.then.i45.i, label %if.end5.i.synaptics_i2c_reg_get.exit.i_crit_edge

if.end5.i.synaptics_i2c_reg_get.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synaptics_i2c_reg_get.exit.i

if.then.i45.i:                                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i44.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 65) #5
  br label %synaptics_i2c_reg_get.exit.i

synaptics_i2c_reg_get.exit.i:                     ; preds = %if.then.i45.i, %if.end5.i.synaptics_i2c_reg_get.exit.i_crit_edge
  %ret.0.i46.i = phi i32 [ %call5.i44.i, %if.then.i45.i ], [ %call.i42.i, %if.end5.i.synaptics_i2c_reg_get.exit.i_crit_edge ]
  %1 = load i8, ptr @no_decel, align 1, !range !102
  %2 = load i8, ptr @reduce_report, align 1, !range !102
  %3 = load i8, ptr @no_filter, align 1, !range !102
  %call.i47.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %cmp.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %cmp.i48.i, label %synaptics_i2c_config.exit, label %synaptics_i2c_reg_get.exit.i.if.end8.sink.split_crit_edge

synaptics_i2c_reg_get.exit.i.if.end8.sink.split_crit_edge: ; preds = %synaptics_i2c_reg_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split

synaptics_i2c_config.exit:                        ; preds = %synaptics_i2c_reg_get.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool7.not.i = icmp eq i8 %1, 0
  %cond9.i = select i1 %tobool7.not.i, i32 0, i32 2
  %or.i = or i32 %cond9.i, %ret.0.i46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool10.not.i = icmp eq i8 %2, 0
  %cond12.i = select i1 %tobool10.not.i, i32 0, i32 8
  %or13.i = or i32 %or.i, %cond12.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool14.not.i = icmp eq i8 %3, 0
  %cond16.i = select i1 %tobool14.not.i, i32 0, i32 32
  %or17.i = or i32 %or13.i, %cond16.i
  %conv18.i = trunc i32 %or17.i to i8
  %call5.i49.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 65, i8 noundef zeroext %conv18.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i49.i)
  %tobool2.not = icmp eq i32 %call5.i49.i, 0
  br i1 %tobool2.not, label %synaptics_i2c_config.exit.if.end8_crit_edge, label %synaptics_i2c_config.exit.if.end8.sink.split_crit_edge

synaptics_i2c_config.exit.if.end8.sink.split_crit_edge: ; preds = %synaptics_i2c_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split

synaptics_i2c_config.exit.if.end8_crit_edge:      ; preds = %synaptics_i2c_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8.sink.split:                               ; preds = %synaptics_i2c_config.exit.if.end8.sink.split_crit_edge, %synaptics_i2c_reg_get.exit.i.if.end8.sink.split_crit_edge, %synaptics_i2c_reg_set.exit41.i.if.end8.sink.split_crit_edge, %if.end.i.if.end8.sink.split_crit_edge, %synaptics_i2c_reg_set.exit.i.if.end8.sink.split_crit_edge, %if.else.if.end8.sink.split_crit_edge, %synaptics_i2c_reg_set.exit.if.end8.sink.split_crit_edge, %entry.if.end8.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.15, %entry.if.end8.sink.split_crit_edge ], [ @.str.15, %synaptics_i2c_reg_set.exit.if.end8.sink.split_crit_edge ], [ @.str.18, %synaptics_i2c_reg_get.exit.i.if.end8.sink.split_crit_edge ], [ @.str.18, %if.end.i.if.end8.sink.split_crit_edge ], [ @.str.18, %if.else.if.end8.sink.split_crit_edge ], [ @.str.18, %synaptics_i2c_reg_set.exit41.i.if.end8.sink.split_crit_edge ], [ @.str.18, %synaptics_i2c_reg_set.exit.i.if.end8.sink.split_crit_edge ], [ @.str.18, %synaptics_i2c_config.exit.if.end8.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i, %entry.if.end8.sink.split_crit_edge ], [ %call5.i, %synaptics_i2c_reg_set.exit.if.end8.sink.split_crit_edge ], [ %call.i47.i, %synaptics_i2c_reg_get.exit.i.if.end8.sink.split_crit_edge ], [ %call.i36.i, %if.end.i.if.end8.sink.split_crit_edge ], [ %call.i.i, %if.else.if.end8.sink.split_crit_edge ], [ %call5.i38.i, %synaptics_i2c_reg_set.exit41.i.if.end8.sink.split_crit_edge ], [ %call5.i.i, %synaptics_i2c_reg_set.exit.i.if.end8.sink.split_crit_edge ], [ %call5.i49.i, %synaptics_i2c_config.exit.if.end8.sink.split_crit_edge ]
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull %.str.18.sink) #9
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %synaptics_i2c_config.exit.if.end8_crit_edge
  %ret.0 = phi i32 [ 0, %synaptics_i2c_config.exit.if.end8_crit_edge ], [ %ret.0.ph, %if.end8.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_i2c_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %dwork = getelementptr inbounds %struct.synaptics_i2c, ptr %dev_id, i32 0, i32 2
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %dwork, i32 noundef 0) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_i2c_reg_set(ptr noundef %client, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %reg, 8
  %conv1 = trunc i16 %0 to i8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -1, i8 noundef zeroext %conv1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv4 = trunc i16 %reg to i8
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv4, i8 noundef zeroext %val) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synaptics_i2c_work_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %0 = load i32, ptr @scan_rate, align 4
  %scan_rate_param.i = getelementptr i8, ptr %work, i32 116
  %1 = ptrtoint ptr %scan_rate_param.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %scan_rate_param.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %cmp.not.i = icmp eq i32 %0, %2
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div.i.i = sdiv i32 1000, %0
  %scan_ms.i.i = getelementptr i8, ptr %work, i32 120
  %3 = ptrtoint ptr %scan_ms.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div.i.i, ptr %scan_ms.i.i, align 4
  %4 = ptrtoint ptr %scan_rate_param.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %0, ptr %scan_rate_param.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %5 = load i8, ptr @no_decel, align 1, !range !102
  %6 = zext i8 %5 to i32
  %no_decel_param.i = getelementptr i8, ptr %work, i32 104
  %7 = ptrtoint ptr %no_decel_param.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %no_decel_param.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp1.not.i = icmp eq i32 %8, %6
  br i1 %cmp1.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %no_decel_param.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %no_decel_param.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %10 = load i8, ptr @no_filter, align 1, !range !102
  %11 = zext i8 %10 to i32
  %no_filter_param.i = getelementptr i8, ptr %work, i32 112
  %12 = ptrtoint ptr %no_filter_param.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %no_filter_param.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp10.not.i = icmp eq i32 %13, %11
  br i1 %cmp10.not.i, label %if.end16.i, label %if.end16.thread.i

if.end16.i:                                       ; preds = %if.end7.i
  %14 = load i8, ptr @reduce_report, align 1, !range !102
  %15 = zext i8 %14 to i32
  %reduce_report_param.i = getelementptr i8, ptr %work, i32 108
  %16 = ptrtoint ptr %reduce_report_param.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reduce_report_param.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp19.not.i = icmp eq i32 %17, %15
  br i1 %cmp19.not.i, label %if.end25.i, label %if.end16.i.if.then21.i_crit_edge

if.end16.i.if.then21.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21.i

if.end16.thread.i:                                ; preds = %if.end7.i
  %18 = ptrtoint ptr %no_filter_param.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %no_filter_param.i, align 4
  %19 = load i8, ptr @reduce_report, align 1, !range !102
  %20 = zext i8 %19 to i32
  %reduce_report_param39.i = getelementptr i8, ptr %work, i32 108
  %21 = ptrtoint ptr %reduce_report_param39.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reduce_report_param39.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp19.not40.i = icmp eq i32 %22, %20
  br i1 %cmp19.not40.i, label %if.end16.thread.i.if.then27.i_crit_edge, label %if.end16.thread.i.if.then21.i_crit_edge

if.end16.thread.i.if.then21.i_crit_edge:          ; preds = %if.end16.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21.i

if.end16.thread.i.if.then27.i_crit_edge:          ; preds = %if.end16.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

if.then21.i:                                      ; preds = %if.end16.thread.i.if.then21.i_crit_edge, %if.end16.i.if.then21.i_crit_edge
  %reduce_report_param42.i = phi ptr [ %reduce_report_param39.i, %if.end16.thread.i.if.then21.i_crit_edge ], [ %reduce_report_param.i, %if.end16.i.if.then21.i_crit_edge ]
  %23 = phi i32 [ %20, %if.end16.thread.i.if.then21.i_crit_edge ], [ %15, %if.end16.i.if.then21.i_crit_edge ]
  %24 = ptrtoint ptr %reduce_report_param42.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %reduce_report_param42.i, align 4
  br label %if.then27.i

if.end25.i:                                       ; preds = %if.end16.i
  br i1 %cmp1.not.i, label %if.end25.i.synaptics_i2c_check_params.exit_crit_edge, label %if.end25.i.if.then27.i_crit_edge

if.end25.i.if.then27.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

if.end25.i.synaptics_i2c_check_params.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synaptics_i2c_check_params.exit

if.then27.i:                                      ; preds = %if.end25.i.if.then27.i_crit_edge, %if.then21.i, %if.end16.thread.i.if.then27.i_crit_edge
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call fastcc i32 @synaptics_i2c_reset_config(ptr noundef %26) #5
  br label %synaptics_i2c_check_params.exit

synaptics_i2c_check_params.exit:                  ; preds = %if.then27.i, %if.end25.i.synaptics_i2c_check_params.exit_crit_edge
  %input1.i = getelementptr i8, ptr %work, i32 -4
  %27 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input1.i, align 4
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %30, i8 noundef zeroext 9) #5
  %and.i.i = and i32 %call.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 64
  br i1 %cmp.not.i.i, label %synaptics_i2c_check_params.exit.if.end.i6_crit_edge, label %synaptics_i2c_check_error.exit.i

synaptics_i2c_check_params.exit.if.end.i6_crit_edge: ; preds = %synaptics_i2c_check_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i6

synaptics_i2c_check_error.exit.i:                 ; preds = %synaptics_i2c_check_params.exit
  %call1.i.i = tail call fastcc i32 @synaptics_i2c_reset_config(ptr noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %synaptics_i2c_check_error.exit.i.if.end.i6_crit_edge, label %synaptics_i2c_get_input.exit.thread

synaptics_i2c_check_error.exit.i.if.end.i6_crit_edge: ; preds = %synaptics_i2c_check_error.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i6

if.end.i6:                                        ; preds = %synaptics_i2c_check_error.exit.i.if.end.i6_crit_edge, %synaptics_i2c_check_params.exit.if.end.i6_crit_edge
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %call.i31.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -1, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp.i.i = icmp eq i32 %call.i31.i, 0
  br i1 %cmp.i.i, label %if.then.i32.i, label %if.end.i6.synaptics_i2c_reg_get.exit.i_crit_edge

if.end.i6.synaptics_i2c_reg_get.exit.i_crit_edge: ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #7
  br label %synaptics_i2c_reg_get.exit.i

if.then.i32.i:                                    ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 0) #5
  br label %synaptics_i2c_reg_get.exit.i

synaptics_i2c_reg_get.exit.i:                     ; preds = %if.then.i32.i, %if.end.i6.synaptics_i2c_reg_get.exit.i_crit_edge
  %ret.0.i33.i = phi i32 [ %call5.i.i, %if.then.i32.i ], [ %call.i31.i, %if.end.i6.synaptics_i2c_reg_get.exit.i_crit_edge ]
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %call.i34.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext -1, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %cmp.i35.i = icmp eq i32 %call.i34.i, 0
  br i1 %cmp.i35.i, label %if.then.i37.i, label %synaptics_i2c_reg_get.exit.i.synaptics_i2c_get_input.exit_crit_edge

synaptics_i2c_reg_get.exit.i.synaptics_i2c_get_input.exit_crit_edge: ; preds = %synaptics_i2c_reg_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %synaptics_i2c_get_input.exit

if.then.i37.i:                                    ; preds = %synaptics_i2c_reg_get.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i36.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %34, i8 noundef zeroext 6) #5
  br label %synaptics_i2c_get_input.exit

synaptics_i2c_get_input.exit:                     ; preds = %if.then.i37.i, %synaptics_i2c_reg_get.exit.i.synaptics_i2c_get_input.exit_crit_edge
  %ret.0.i38.i = phi i32 [ %call5.i36.i, %if.then.i37.i ], [ %call.i34.i, %synaptics_i2c_reg_get.exit.i.synaptics_i2c_get_input.exit_crit_edge ]
  %35 = and i32 %ret.0.i33.i, 8
  %.lobit.i = lshr exact i32 %35, 3
  tail call void @input_event(ptr noundef %28, i32 noundef 1, i32 noundef 272, i32 noundef %.lobit.i) #5
  %sext.i = shl i32 %ret.0.i38.i, 24
  %conv11.i = ashr exact i32 %sext.i, 24
  tail call void @input_event(ptr noundef %28, i32 noundef 2, i32 noundef 0, i32 noundef %conv11.i) #5
  %36 = shl i32 %ret.0.i38.i, 16
  %conv12.i = ashr i32 %36, 24
  %sub.i = sub nsw i32 0, %conv12.i
  tail call void @input_event(ptr noundef %28, i32 noundef 2, i32 noundef 1, i32 noundef %sub.i) #5
  tail call void @input_event(ptr noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %37 = load i8, ptr @polling_req, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i7 = icmp eq i8 %37, 0
  br i1 %tobool.not.i7, label %synaptics_i2c_get_input.exit.if.else9.i_crit_edge, label %if.then.i8

synaptics_i2c_get_input.exit.if.else9.i_crit_edge: ; preds = %synaptics_i2c_get_input.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else9.i

synaptics_i2c_get_input.exit.thread:              ; preds = %synaptics_i2c_check_error.exit.i
  %38 = load i8, ptr @polling_req, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i713 = icmp eq i8 %38, 0
  br i1 %tobool.not.i713, label %synaptics_i2c_get_input.exit.thread.if.else9.i_crit_edge, label %if.then.i8.thread

synaptics_i2c_get_input.exit.thread.if.else9.i_crit_edge: ; preds = %synaptics_i2c_get_input.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else9.i

if.then.i8.thread:                                ; preds = %synaptics_i2c_get_input.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %scan_ms.i16 = getelementptr i8, ptr %work, i32 120
  %39 = ptrtoint ptr %scan_ms.i16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scan_ms.i16, align 4
  br label %if.else.i

if.then.i8:                                       ; preds = %synaptics_i2c_get_input.exit
  %and6.i = and i32 %ret.0.i38.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool13.not.i = icmp ne i32 %and6.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.i = icmp ne i32 %35, 0
  %spec.select.i = select i1 %tobool13.not.i, i1 true, i1 %tobool.i.i
  %scan_ms.i = getelementptr i8, ptr %work, i32 120
  %41 = ptrtoint ptr %scan_ms.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scan_ms.i, align 4
  br i1 %spec.select.i, label %if.then2.i, label %if.then.i8.if.else.i_crit_edge

if.then.i8.if.else.i_crit_edge:                   ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then2.i:                                       ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #7
  %no_data_count.i = getelementptr i8, ptr %work, i32 100
  %43 = ptrtoint ptr %no_data_count.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %no_data_count.i, align 4
  br label %if.else.i.i

if.else.i:                                        ; preds = %if.then.i8.if.else.i_crit_edge, %if.then.i8.thread
  %44 = phi i32 [ %40, %if.then.i8.thread ], [ %42, %if.then.i8.if.else.i_crit_edge ]
  %div.i = sdiv i32 1000, %44
  %no_data_count4.i = getelementptr i8, ptr %work, i32 100
  %45 = ptrtoint ptr %no_data_count4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %no_data_count4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %div.i)
  %cmp.i = icmp ult i32 %46, %div.i
  br i1 %cmp.i, label %if.then5.i, label %if.else.i.if.else.i.i_crit_edge

if.else.i.if.else.i.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i = add nuw i32 %46, 1
  %47 = ptrtoint ptr %no_data_count4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc.i, ptr %no_data_count4.i, align 4
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %if.then5.i, %if.else.i.if.else.i.i_crit_edge, %if.then2.i
  %delay.0.i = phi i32 [ %42, %if.then2.i ], [ %44, %if.then5.i ], [ 250, %if.else.i.if.else.i.i_crit_edge ]
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %delay.0.i) #5
  br label %synaptics_i2c_adjust_delay.exit

if.else9.i:                                       ; preds = %synaptics_i2c_get_input.exit.thread.if.else9.i_crit_edge, %synaptics_i2c_get_input.exit.if.else9.i_crit_edge
  %call11.i = tail call i32 @round_jiffies_relative(i32 noundef 200) #5
  br label %synaptics_i2c_adjust_delay.exit

synaptics_i2c_adjust_delay.exit:                  ; preds = %if.else9.i, %if.else.i.i
  %retval.0.i10 = phi i32 [ %call11.i, %if.else9.i ], [ %call2.i.i, %if.else.i.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i11 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %work, i32 noundef %retval.0.i10) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_i2c_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call fastcc i32 @synaptics_i2c_reset_config(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i8, ptr @polling_req, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %dwork = getelementptr inbounds %struct.synaptics_i2c, ptr %1, i32 0, i32 2
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %dwork, i32 noundef 25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @synaptics_i2c_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i8, ptr @polling_req, align 1, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %dwork = getelementptr inbounds %struct.synaptics_i2c, ptr %1, i32 0, i32 2
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #5
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp.i8 = icmp eq i32 %call.i7, 0
  br i1 %cmp.i8, label %if.then.i10, label %if.end.synaptics_i2c_reg_set.exit12_crit_edge

if.end.synaptics_i2c_reg_set.exit12_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %synaptics_i2c_reg_set.exit12

if.then.i10:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 6) #5
  br label %synaptics_i2c_reg_set.exit12

synaptics_i2c_reg_set.exit12:                     ; preds = %if.then.i10, %if.end.synaptics_i2c_reg_set.exit12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dwork = getelementptr inbounds %struct.synaptics_i2c, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -1, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.synaptics_i2c_reg_set.exit_crit_edge

entry.synaptics_i2c_reg_set.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %synaptics_i2c_reg_set.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 6) #5
  br label %synaptics_i2c_reg_set.exit

synaptics_i2c_reg_set.exit:                       ; preds = %if.then.i, %entry.synaptics_i2c_reg_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synaptics_i2c_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @synaptics_i2c_reset_config(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %dwork = getelementptr inbounds %struct.synaptics_i2c, ptr %1, i32 0, i32 2
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %dwork, i32 noundef 25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !35, !37, !39, !41, !42, !44, !45, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__param_no_decel, !1, !"__param_no_decel", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 189, i32 1}
!2 = !{ptr @__UNIQUE_ID_no_deceltype288, !1, !"__UNIQUE_ID_no_deceltype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_no_decel289, !4, !"__UNIQUE_ID_no_decel289", i1 false, i1 false}
!4 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 190, i32 1}
!5 = !{ptr @__param_reduce_report, !6, !"__param_reduce_report", i1 false, i1 false}
!6 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 194, i32 1}
!7 = !{ptr @__UNIQUE_ID_reduce_reporttype290, !6, !"__UNIQUE_ID_reduce_reporttype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_reduce_report291, !9, !"__UNIQUE_ID_reduce_report291", i1 false, i1 false}
!9 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 195, i32 1}
!10 = !{ptr @__param_no_filter, !11, !"__param_no_filter", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 199, i32 1}
!12 = !{ptr @__UNIQUE_ID_no_filtertype292, !11, !"__UNIQUE_ID_no_filtertype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_no_filter293, !14, !"__UNIQUE_ID_no_filter293", i1 false, i1 false}
!14 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 200, i32 1}
!15 = !{ptr @__param_polling_req, !16, !"__param_polling_req", i1 false, i1 false}
!16 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 209, i32 1}
!17 = !{ptr @__UNIQUE_ID_polling_reqtype294, !16, !"__UNIQUE_ID_polling_reqtype294", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_polling_req295, !19, !"__UNIQUE_ID_polling_req295", i1 false, i1 false}
!19 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 210, i32 1}
!20 = !{ptr @__param_scan_rate, !21, !"__param_scan_rate", i1 false, i1 false}
!21 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 214, i32 1}
!22 = !{ptr @__UNIQUE_ID_scan_ratetype296, !21, !"__UNIQUE_ID_scan_ratetype296", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_scan_rate297, !24, !"__UNIQUE_ID_scan_rate297", i1 false, i1 false}
!24 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 215, i32 1}
!25 = !{ptr @__initcall__kmod_synaptics_i2c__300_662_synaptics_i2c_driver_init6, !26, !"__initcall__kmod_synaptics_i2c__300_662_synaptics_i2c_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 662, i32 1}
!27 = !{ptr @__exitcall_synaptics_i2c_driver_exit, !26, !"__exitcall_synaptics_i2c_driver_exit", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_description301, !29, !"__UNIQUE_ID_description301", i1 false, i1 false}
!29 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 664, i32 1}
!30 = !{ptr @__UNIQUE_ID_author302, !31, !"__UNIQUE_ID_author302", i1 false, i1 false}
!31 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 665, i32 1}
!32 = !{ptr @__UNIQUE_ID_file303, !33, !"__UNIQUE_ID_file303", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 666, i32 1}
!34 = !{ptr @__UNIQUE_ID_license304, !33, !"__UNIQUE_ID_license304", i1 false, i1 false}
!35 = !{ptr @reduce_report, !36, !"reduce_report", i1 false, i1 false}
!36 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 193, i32 13}
!37 = !{ptr @no_filter, !38, !"no_filter", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 198, i32 13}
!39 = !{ptr @polling_req, !40, !"polling_req", i1 false, i1 false}
!40 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 208, i32 13}
!41 = !{ptr @__param_str_no_decel, !1, !"__param_str_no_decel", i1 false, i1 false}
!42 = !{ptr @no_decel, !43, !"no_decel", i1 false, i1 false}
!43 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 188, i32 13}
!44 = !{ptr @__param_str_reduce_report, !6, !"__param_str_reduce_report", i1 false, i1 false}
!45 = !{ptr @__param_str_no_filter, !11, !"__param_str_no_filter", i1 false, i1 false}
!46 = !{ptr @__param_str_polling_req, !16, !"__param_str_polling_req", i1 false, i1 false}
!47 = !{ptr @__param_str_scan_rate, !21, !"__param_str_scan_rate", i1 false, i1 false}
!48 = !{ptr @scan_rate, !49, !"scan_rate", i1 false, i1 false}
!49 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 213, i32 12}
!50 = !{ptr @.str, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 651, i32 11}
!52 = !{ptr @synaptics_i2c_driver, !53, !"synaptics_i2c_driver", i1 false, i1 false}
!53 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 649, i32 26}
!54 = !{ptr @.str.1, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 550, i32 3}
!56 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.3, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @synaptics_i2c_probe.__UNIQUE_ID_ddebug298, !55, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!59 = !{ptr @.str.4, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 557, i32 4}
!61 = !{ptr @.str.5, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.6, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @synaptics_i2c_probe._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @synaptics_i2c_probe._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 567, i32 3}
!67 = !{ptr @synaptics_i2c_probe.__UNIQUE_ID_ddebug299, !66, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!68 = !{ptr @.str.9, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 573, i32 3}
!70 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @synaptics_i2c_probe._entry.8, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @synaptics_i2c_probe._entry_ptr.11, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @synaptics_i2c_touch_create.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 519, i32 2}
!75 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @synaptics_i2c_touch_create.__key.13, !74, !"__key", i1 false, i1 false}
!77 = !{ptr @.str.14, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 311, i32 3}
!80 = !{ptr @.str.16, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @synaptics_i2c_reset_config._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @synaptics_i2c_reset_config._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 316, i32 4}
!85 = !{ptr @synaptics_i2c_reset_config._entry.17, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @synaptics_i2c_reset_config._entry_ptr.19, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @synaptics_i2c_of_match, !88, !"synaptics_i2c_of_match", i1 false, i1 false}
!88 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 642, i32 34}
!89 = !{ptr @synaptics_i2c_pm, !90, !"synaptics_i2c_pm", i1 false, i1 false}
!90 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 632, i32 8}
!91 = !{ptr @synaptics_i2c_id_table, !92, !"synaptics_i2c_id_table", i1 false, i1 false}
!92 = !{!"../drivers/input/mouse/synaptics_i2c.c", i32 635, i32 35}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i8 0, i8 2}
!103 = !{i64 2148968963, i64 2148968968, i64 2148968981, i64 2148969025, i64 2148969059, i64 2148969080}
