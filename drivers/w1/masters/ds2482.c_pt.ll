; ModuleID = '/llk/IR_all_yes/drivers/w1/masters/ds2482.c_pt.bc'
source_filename = "../drivers/w1/masters/ds2482.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ds2482_data = type { ptr, %struct.mutex, i32, [8 x %struct.ds2482_w1_chan], i8, i8, i8 }
%struct.ds2482_w1_chan = type { ptr, i8, %struct.w1_bus_master }
%struct.w1_bus_master = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_active_pullup = internal constant [21 x i8] c"ds2482.active_pullup\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ds2482_active_pullup = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_active_pullup = internal constant %struct.kernel_param { ptr @__param_str_active_pullup, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ds2482_active_pullup } }, section "__param", align 4
@__UNIQUE_ID_active_pulluptype288 = internal constant [34 x i8] c"ds2482.parmtype=active_pullup:int\00", section ".modinfo", align 1
@__UNIQUE_ID_active_pullup289 = internal constant [92 x i8] c"ds2482.parm=active_pullup:Active pullup (apply to all buses): 0-disable, 1-enable (default)\00", section ".modinfo", align 1
@__param_str_extra_config = internal constant [20 x i8] c"ds2482.extra_config\00", align 1
@extra_config = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_extra_config = internal constant %struct.kernel_param { ptr @__param_str_extra_config, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @extra_config } }, section "__param", align 4
@__UNIQUE_ID_extra_configtype290 = internal constant [33 x i8] c"ds2482.parmtype=extra_config:int\00", section ".modinfo", align 1
@__UNIQUE_ID_extra_config291 = internal constant [78 x i8] c"ds2482.parm=extra_config:Extra Configuration settings 1=APU,2=PPM,3=SPU,8=1WS\00", section ".modinfo", align 1
@__initcall__kmod_ds2482__292_561_ds2482_driver_init6 = internal global ptr @ds2482_driver_init, section ".initcall6.init", align 4
@ds2482_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ds2482_probe, ptr @ds2482_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ds2482_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ds2482_driver_exit = internal global ptr @ds2482_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [48 x i8] c"ds2482.author=Ben Gardner <bgardner@wabtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [33 x i8] c"ds2482.description=DS2482 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [38 x i8] c"ds2482.file=drivers/w1/masters/ds2482\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [19 x i8] c"ds2482.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds2482\00", [25 x i8] zeroinitializer }, align 32
@ds2482_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ds2482\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ds2482_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DS2482 reset failed.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds2482_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/w1/masters/ds2482.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds2482_probe._entry_ptr = internal global ptr @ds2482_probe._entry, section ".printk_index", align 4
@ds2482_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DS2482 reset status 0x%02X - not a DS2482\0A\00", [53 x i8] zeroinitializer }, align 32
@ds2482_probe._entry_ptr.8 = internal global ptr @ds2482_probe._entry.6, section ".printk_index", align 4
@ds2482_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->access_lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ds2482_chan_wr = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\F0\E1\D2\C3\B4\A5\96\87", [24 x i8] zeroinitializer }, align 32
@ds2482_chan_rd = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\B8\B1\AA\A3\9C\95\8E\87", [24 x i8] zeroinitializer }, align 32
@ds2482_wait_1wire_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: timeout on channel %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ds2482_wait_1wire_idle\00", [41 x i8] zeroinitializer }, align 32
@ds2482_wait_1wire_idle._entry_ptr = internal global ptr @ds2482_wait_1wire_idle._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [21 x i8] c"ds2482_active_pullup\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 32, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"extra_config\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 38, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"ds2482_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 553, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 555, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"ds2482_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 547, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 468, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 478, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 492, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"ds2482_chan_wr\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 81, i32 17 }
@___asan_gen_.60 = private unnamed_addr constant [15 x i8] c"ds2482_chan_rd\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 83, i32 17 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [31 x i8] c"../drivers/w1/masters/ds2482.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 226, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_active_pullup289, ptr @__UNIQUE_ID_active_pulluptype288, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_extra_config291, ptr @__UNIQUE_ID_extra_configtype290, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_ds2482_driver_exit, ptr @__initcall__kmod_ds2482__292_561_ds2482_driver_init6, ptr @__param_active_pullup, ptr @__param_extra_config, ptr @ds2482_driver_exit, ptr @ds2482_probe._entry, ptr @ds2482_probe._entry.6, ptr @ds2482_probe._entry_ptr, ptr @ds2482_probe._entry_ptr.8, ptr @ds2482_wait_1wire_idle._entry, ptr @ds2482_wait_1wire_idle._entry_ptr, ptr @ds2482_active_pullup, ptr @extra_config, ptr @ds2482_driver, ptr @.str, ptr @ds2482_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ds2482_probe.__key, ptr @.str.9, ptr @ds2482_chan_wr, ptr @ds2482_chan_rd, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2482_active_pullup to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @extra_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2482_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2482_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2482_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2482_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2482_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2482_chan_wr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2482_chan_rd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds2482_wait_1wire_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2482_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ds2482_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds2482_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ds2482_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2482_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1441792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1441792
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 584) #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i135 = icmp slt i32 %call.i, 0
  br i1 %cmp.i135, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %exit_free

if.end8:                                          ; preds = %if.end4
  %read_prt.i = getelementptr inbounds %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %read_prt.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -16, ptr %read_prt.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #5
  %call9 = tail call i32 @i2c_smbus_read_byte(ptr noundef %client) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 24
  br i1 %cmp10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev15, ptr noundef nonnull @.str.7, i32 noundef %call9) #9
  br label %exit_free

if.end16:                                         ; preds = %if.end8
  %w1_count = getelementptr inbounds %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %w1_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %w1_count, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %call.i136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext -61, i8 noundef zeroext -121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp.i137 = icmp slt i32 %call.i136, 0
  br i1 %cmp.i137, label %if.end16.if.end21_crit_edge, label %if.end.i139

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end.i139:                                      ; preds = %if.end16
  %14 = ptrtoint ptr %read_prt.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -46, ptr %read_prt.i, align 1
  %channel1.i = getelementptr inbounds %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %channel1.i, align 4
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %call3.i)
  %cmp6.i = icmp eq i32 %call3.i, 135
  br i1 %cmp6.i, label %if.then19, label %if.end.i139.if.end21_crit_edge

if.end.i139.if.end21_crit_edge:                   ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %channel1.i, align 4
  %19 = ptrtoint ptr %w1_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %w1_count, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end.i139.if.end21_crit_edge, %if.end16.if.end21_crit_edge
  %20 = load i32, ptr @extra_config, align 4
  %21 = trunc i32 %20 to i8
  %22 = load i32, ptr @ds2482_active_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp ne i32 %22, 0
  %23 = zext i1 %tobool.not.i to i8
  %spec.select.i = or i8 %23, %21
  %24 = xor i8 %spec.select.i, -1
  %shl.i = shl i8 %24, 4
  %or7.i = or i8 %shl.i, %spec.select.i
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %call.i141 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -46, i8 noundef zeroext %or7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp.i142 = icmp slt i32 %call.i141, 0
  br i1 %cmp.i142, label %if.end21.ds2482_send_cmd_data.exit_crit_edge, label %if.end.i144

if.end21.ds2482_send_cmd_data.exit_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_send_cmd_data.exit

if.end.i144:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %read_prt.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -61, ptr %read_prt.i, align 1
  br label %ds2482_send_cmd_data.exit

ds2482_send_cmd_data.exit:                        ; preds = %if.end.i144, %if.end21.ds2482_send_cmd_data.exit_crit_edge
  %access_lock = getelementptr inbounds %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %access_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ds2482_probe.__key) #5
  %28 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %w1_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp28150 = icmp sgt i32 %29, 0
  br i1 %cmp28150, label %ds2482_send_cmd_data.exit.for.body_crit_edge, label %ds2482_send_cmd_data.exit.cleanup_crit_edge

ds2482_send_cmd_data.exit.cleanup_crit_edge:      ; preds = %ds2482_send_cmd_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ds2482_send_cmd_data.exit.for.body_crit_edge:     ; preds = %ds2482_send_cmd_data.exit
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %idx.0151, 1
  %30 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %w1_count, align 8
  %cmp28 = icmp slt i32 %inc, %31
  br i1 %cmp28, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %ds2482_send_cmd_data.exit.for.body_crit_edge
  %idx.0151 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %ds2482_send_cmd_data.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0151
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %conv = trunc i32 %idx.0151 to i8
  %channel = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0151, i32 1
  %33 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %channel, align 4
  %w1_bm = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0151, i32 2
  %34 = ptrtoint ptr %w1_bm to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx, ptr %w1_bm, align 4
  %read_byte = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0151, i32 2, i32 4
  %35 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ds2482_w1_read_byte, ptr %read_byte, align 4
  %write_byte = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0151, i32 2, i32 5
  %36 = ptrtoint ptr %write_byte to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ds2482_w1_write_byte, ptr %write_byte, align 4
  %touch_bit = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0151, i32 2, i32 3
  %37 = ptrtoint ptr %touch_bit to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ds2482_w1_touch_bit, ptr %touch_bit, align 4
  %triplet = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0151, i32 2, i32 8
  %38 = ptrtoint ptr %triplet to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ds2482_w1_triplet, ptr %triplet, align 4
  %reset_bus = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0151, i32 2, i32 9
  %39 = ptrtoint ptr %reset_bus to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @ds2482_w1_reset_bus, ptr %reset_bus, align 4
  %set_pullup = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0151, i32 2, i32 10
  %40 = ptrtoint ptr %set_pullup to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @ds2482_w1_set_pullup, ptr %set_pullup, align 4
  %call57 = tail call i32 @w1_add_master_device(ptr noundef %w1_bm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %for.cond, label %if.then59

if.then59:                                        ; preds = %for.body
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx, align 4
  %42 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %w1_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp66152 = icmp sgt i32 %43, 0
  br i1 %cmp66152, label %if.then59.for.body68_crit_edge, label %if.then59.exit_free_crit_edge

if.then59.exit_free_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_free

if.then59.for.body68_crit_edge:                   ; preds = %if.then59
  br label %for.body68

for.body68:                                       ; preds = %for.inc79.for.body68_crit_edge, %if.then59.for.body68_crit_edge
  %idx.1153 = phi i32 [ %inc80, %for.inc79.for.body68_crit_edge ], [ 0, %if.then59.for.body68_crit_edge ]
  %arrayidx70 = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.1153
  %44 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx70, align 4
  %cmp72.not = icmp eq ptr %45, null
  br i1 %cmp72.not, label %for.body68.for.inc79_crit_edge, label %if.then74

for.body68.for.inc79_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79

if.then74:                                        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #7
  %w1_bm77 = getelementptr %struct.ds2482_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.1153, i32 2
  tail call void @w1_remove_master_device(ptr noundef %w1_bm77) #5
  br label %for.inc79

for.inc79:                                        ; preds = %if.then74, %for.body68.for.inc79_crit_edge
  %inc80 = add nuw nsw i32 %idx.1153, 1
  %46 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %w1_count, align 8
  %cmp66 = icmp slt i32 %inc80, %47
  br i1 %cmp66, label %for.inc79.for.body68_crit_edge, label %for.inc79.exit_free_crit_edge

for.inc79.exit_free_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_free

for.inc79.for.body68_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body68

exit_free:                                        ; preds = %for.inc79.exit_free_crit_edge, %if.then59.exit_free_crit_edge, %do.end14, %do.end
  %err.0 = phi i32 [ -19, %do.end ], [ -19, %do.end14 ], [ %call57, %if.then59.exit_free_crit_edge ], [ %call57, %for.inc79.exit_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %exit_free, %for.cond.cleanup_crit_edge, %ds2482_send_cmd_data.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %err.0, %exit_free ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %ds2482_send_cmd_data.exit.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds2482_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %w1_count = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %w1_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %idx.011 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ds2482_data, ptr %1, i32 0, i32 3, i32 %idx.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %5, null
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %w1_bm = getelementptr %struct.ds2482_data, ptr %1, i32 0, i32 3, i32 %idx.011, i32 2
  tail call void @w1_remove_master_device(ptr noundef %w1_bm) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.011, 1
  %6 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %w1_count, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds2482_w1_read_byte(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %access_lock = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #5
  %read_prt.i.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_prt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %3)
  %cmp.not.i.i = icmp eq i8 %3, -16
  br i1 %cmp.not.i.i, label %entry.do.body.i.preheader_crit_edge, label %if.then.i.i

entry.do.body.i.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -31, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge, label %if.end.i.i

if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end.i.i, %entry.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %do.body.i.preheader
  %retries.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  %9 = and i32 %call1.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %.not.i = icmp eq i32 %9, 1
  br i1 %.not.i, label %land.rhs.i, label %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge

do.body.i.ds2482_wait_1wire_idle.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

land.rhs.i:                                       ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %retries.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end8.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 4
  %conv.i = zext i8 %11 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #9
  br label %ds2482_wait_1wire_idle.exit

ds2482_wait_1wire_idle.exit:                      ; preds = %do.end8.i, %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge, %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge
  %w1_count = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %w1_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %if.then, label %ds2482_wait_1wire_idle.exit.if.end_crit_edge

ds2482_wait_1wire_idle.exit.if.end_crit_edge:     ; preds = %ds2482_wait_1wire_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %ds2482_wait_1wire_idle.exit
  %channel = getelementptr inbounds %struct.ds2482_w1_chan, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @ds2482_chan_wr, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -61, i8 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %20 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -46, ptr %read_prt.i.i, align 1
  %channel1.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %channel1.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %23) #5
  %arrayidx5.i = getelementptr [8 x i8], ptr @ds2482_chan_rd, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.i, align 1
  %conv.i17 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %conv.i17)
  %cmp6.i = icmp eq i32 %call3.i, %conv.i17
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %15, ptr %channel1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %ds2482_wait_1wire_idle.exit.if.end_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i18 = tail call i32 @i2c_smbus_write_byte(ptr noundef %28, i8 noundef zeroext -106) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp.i19 = icmp slt i32 %call.i18, 0
  br i1 %cmp.i19, label %ds2482_send_cmd.exit, label %if.end.ds2482_select_register.exit.i29.sink.split_crit_edge

if.end.ds2482_select_register.exit.i29.sink.split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_select_register.exit.i29.sink.split

ds2482_send_cmd.exit:                             ; preds = %if.end
  %29 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %read_prt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %.pr)
  %cmp.not.i.i24 = icmp eq i8 %.pr, -16
  br i1 %cmp.not.i.i24, label %ds2482_send_cmd.exit.do.body.i33.preheader_crit_edge, label %if.then.i.i27

ds2482_send_cmd.exit.do.body.i33.preheader_crit_edge: ; preds = %ds2482_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i33.preheader

if.then.i.i27:                                    ; preds = %ds2482_send_cmd.exit
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i.i25 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -31, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %cmp3.i.i26 = icmp slt i32 %call.i.i25, 0
  br i1 %cmp3.i.i26, label %if.then.i.i27.ds2482_wait_1wire_idle.exit42_crit_edge, label %if.then.i.i27.ds2482_select_register.exit.i29.sink.split_crit_edge

if.then.i.i27.ds2482_select_register.exit.i29.sink.split_crit_edge: ; preds = %if.then.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_select_register.exit.i29.sink.split

if.then.i.i27.ds2482_wait_1wire_idle.exit42_crit_edge: ; preds = %if.then.i.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit42

ds2482_select_register.exit.i29.sink.split:       ; preds = %if.then.i.i27.ds2482_select_register.exit.i29.sink.split_crit_edge, %if.end.ds2482_select_register.exit.i29.sink.split_crit_edge
  %32 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i33.preheader

do.body.i33.preheader:                            ; preds = %ds2482_select_register.exit.i29.sink.split, %ds2482_send_cmd.exit.do.body.i33.preheader_crit_edge
  br label %do.body.i33

do.body.i33:                                      ; preds = %land.rhs.i36.do.body.i33_crit_edge, %do.body.i33.preheader
  %retries.0.i30 = phi i32 [ %inc.i34, %land.rhs.i36.do.body.i33_crit_edge ], [ 0, %do.body.i33.preheader ]
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call1.i31 = tail call i32 @i2c_smbus_read_byte(ptr noundef %34) #5
  %35 = and i32 %call1.i31, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %.not.i32 = icmp eq i32 %35, 1
  br i1 %.not.i32, label %land.rhs.i36, label %do.body.i33.ds2482_wait_1wire_idle.exit42_crit_edge

do.body.i33.ds2482_wait_1wire_idle.exit42_crit_edge: ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit42

land.rhs.i36:                                     ; preds = %do.body.i33
  %inc.i34 = add nuw nsw i32 %retries.0.i30, 1
  %exitcond.not.i35 = icmp eq i32 %inc.i34, 100
  br i1 %exitcond.not.i35, label %do.end8.i40, label %land.rhs.i36.do.body.i33_crit_edge

land.rhs.i36.do.body.i33_crit_edge:               ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i33

do.end8.i40:                                      ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i37 = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %channel.i37 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %channel.i37, align 4
  %conv.i38 = zext i8 %37 to i32
  %call9.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i38) #9
  br label %ds2482_wait_1wire_idle.exit42

ds2482_wait_1wire_idle.exit42:                    ; preds = %do.end8.i40, %do.body.i33.ds2482_wait_1wire_idle.exit42_crit_edge, %if.then.i.i27.ds2482_wait_1wire_idle.exit42_crit_edge
  %38 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %read_prt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %39)
  %cmp.not.i = icmp eq i8 %39, -31
  br i1 %cmp.not.i, label %ds2482_wait_1wire_idle.exit42.ds2482_select_register.exit_crit_edge, label %if.then.i

ds2482_wait_1wire_idle.exit42.ds2482_select_register.exit_crit_edge: ; preds = %ds2482_wait_1wire_idle.exit42
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_select_register.exit

if.then.i:                                        ; preds = %ds2482_wait_1wire_idle.exit42
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i44 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext -31, i8 noundef zeroext -31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp3.i = icmp slt i32 %call.i44, 0
  br i1 %cmp3.i, label %if.then.i.ds2482_select_register.exit_crit_edge, label %if.end.i45

if.then.i.ds2482_select_register.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_select_register.exit

if.end.i45:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -31, ptr %read_prt.i.i, align 1
  br label %ds2482_select_register.exit

ds2482_select_register.exit:                      ; preds = %if.end.i45, %if.then.i.ds2482_select_register.exit_crit_edge, %ds2482_wait_1wire_idle.exit42.ds2482_select_register.exit_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call6 = tail call i32 @i2c_smbus_read_byte(ptr noundef %44) #5
  tail call void @mutex_unlock(ptr noundef %access_lock) #5
  %conv = trunc i32 %call6 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds2482_w1_write_byte(ptr nocapture noundef readonly %data, i8 noundef zeroext %byte) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %access_lock = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #5
  %read_prt.i.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_prt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %3)
  %cmp.not.i.i = icmp eq i8 %3, -16
  br i1 %cmp.not.i.i, label %entry.do.body.i.preheader_crit_edge, label %if.then.i.i

entry.do.body.i.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -31, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge, label %if.end.i.i

if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end.i.i, %entry.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %do.body.i.preheader
  %retries.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  %9 = and i32 %call1.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %.not.i = icmp eq i32 %9, 1
  br i1 %.not.i, label %land.rhs.i, label %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge

do.body.i.ds2482_wait_1wire_idle.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

land.rhs.i:                                       ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %retries.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end8.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 4
  %conv.i = zext i8 %11 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #9
  br label %ds2482_wait_1wire_idle.exit

ds2482_wait_1wire_idle.exit:                      ; preds = %do.end8.i, %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge, %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge
  %w1_count = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %w1_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %if.then, label %ds2482_wait_1wire_idle.exit.if.end_crit_edge

ds2482_wait_1wire_idle.exit.if.end_crit_edge:     ; preds = %ds2482_wait_1wire_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %ds2482_wait_1wire_idle.exit
  %channel = getelementptr inbounds %struct.ds2482_w1_chan, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @ds2482_chan_wr, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -61, i8 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %20 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -46, ptr %read_prt.i.i, align 1
  %channel1.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %channel1.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %23) #5
  %arrayidx5.i = getelementptr [8 x i8], ptr @ds2482_chan_rd, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.i, align 1
  %conv.i11 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %conv.i11)
  %cmp6.i = icmp eq i32 %call3.i, %conv.i11
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %15, ptr %channel1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %ds2482_wait_1wire_idle.exit.if.end_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext -91, i8 noundef zeroext %byte) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp.i13 = icmp slt i32 %call.i12, 0
  br i1 %cmp.i13, label %if.end.ds2482_send_cmd_data.exit_crit_edge, label %if.end.i15

if.end.ds2482_send_cmd_data.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_send_cmd_data.exit

if.end.i15:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %ds2482_send_cmd_data.exit

ds2482_send_cmd_data.exit:                        ; preds = %if.end.i15, %if.end.ds2482_send_cmd_data.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %access_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds2482_w1_touch_bit(ptr nocapture noundef readonly %data, i8 noundef zeroext %bit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %access_lock = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #5
  %read_prt.i.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_prt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %3)
  %cmp.not.i.i = icmp eq i8 %3, -16
  br i1 %cmp.not.i.i, label %entry.do.body.i.preheader_crit_edge, label %if.then.i.i

entry.do.body.i.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -31, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge, label %if.end.i.i

if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end.i.i, %entry.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %do.body.i.preheader
  %retries.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  %9 = and i32 %call1.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %.not.i = icmp eq i32 %9, 1
  br i1 %.not.i, label %land.rhs.i, label %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge

do.body.i.ds2482_wait_1wire_idle.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

land.rhs.i:                                       ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %retries.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end8.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 4
  %conv.i = zext i8 %11 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #9
  br label %ds2482_wait_1wire_idle.exit

ds2482_wait_1wire_idle.exit:                      ; preds = %do.end8.i, %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge, %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge
  %w1_count = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %w1_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %if.then, label %ds2482_wait_1wire_idle.exit.if.end_crit_edge

ds2482_wait_1wire_idle.exit.if.end_crit_edge:     ; preds = %ds2482_wait_1wire_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %ds2482_wait_1wire_idle.exit
  %channel = getelementptr inbounds %struct.ds2482_w1_chan, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @ds2482_chan_wr, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -61, i8 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %20 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -46, ptr %read_prt.i.i, align 1
  %channel1.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %channel1.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %23) #5
  %arrayidx5.i = getelementptr [8 x i8], ptr @ds2482_chan_rd, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.i, align 1
  %conv.i21 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %conv.i21)
  %cmp6.i = icmp eq i32 %call3.i, %conv.i21
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %15, ptr %channel1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %ds2482_wait_1wire_idle.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bit)
  %tobool.not = icmp ne i8 %bit, 0
  %conv3 = sext i1 %tobool.not to i8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext -121, i8 noundef zeroext %conv3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp.i23 = icmp slt i32 %call.i22, 0
  br i1 %cmp.i23, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %29 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i37

do.body.i37:                                      ; preds = %land.rhs.i40.do.body.i37_crit_edge, %if.then6
  %retries.0.i34 = phi i32 [ 0, %if.then6 ], [ %inc.i38, %land.rhs.i40.do.body.i37_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call1.i35 = tail call i32 @i2c_smbus_read_byte(ptr noundef %31) #5
  %32 = and i32 %call1.i35, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %.not.i36 = icmp eq i32 %32, 1
  br i1 %.not.i36, label %land.rhs.i40, label %do.body.i37.ds2482_wait_1wire_idle.exit46_crit_edge

do.body.i37.ds2482_wait_1wire_idle.exit46_crit_edge: ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit46

land.rhs.i40:                                     ; preds = %do.body.i37
  %inc.i38 = add nuw nsw i32 %retries.0.i34, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 100
  br i1 %exitcond.not.i39, label %do.end8.i44, label %land.rhs.i40.do.body.i37_crit_edge

land.rhs.i40.do.body.i37_crit_edge:               ; preds = %land.rhs.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i37

do.end8.i44:                                      ; preds = %land.rhs.i40
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i41 = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %channel.i41 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %channel.i41, align 4
  %conv.i42 = zext i8 %34 to i32
  %call9.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i42) #9
  br label %ds2482_wait_1wire_idle.exit46

ds2482_wait_1wire_idle.exit46:                    ; preds = %do.end8.i44, %do.body.i37.ds2482_wait_1wire_idle.exit46_crit_edge
  %phi.bo = and i32 %call1.i35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp ne i32 %phi.bo, 0
  br label %if.end8

if.end8:                                          ; preds = %ds2482_wait_1wire_idle.exit46, %if.end.if.end8_crit_edge
  %status.0 = phi i1 [ %phi.cmp, %ds2482_wait_1wire_idle.exit46 ], [ true, %if.end.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %access_lock) #5
  %conv12 = zext i1 %status.0 to i8
  ret i8 %conv12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds2482_w1_triplet(ptr nocapture noundef readonly %data, i8 noundef zeroext %dbit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %access_lock = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #5
  %read_prt.i.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_prt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %3)
  %cmp.not.i.i = icmp eq i8 %3, -16
  br i1 %cmp.not.i.i, label %entry.do.body.i.preheader_crit_edge, label %if.then.i.i

entry.do.body.i.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -31, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge, label %if.end.i.i

if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end.i.i, %entry.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %do.body.i.preheader
  %retries.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  %9 = and i32 %call1.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %.not.i = icmp eq i32 %9, 1
  br i1 %.not.i, label %land.rhs.i, label %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge

do.body.i.ds2482_wait_1wire_idle.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

land.rhs.i:                                       ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %retries.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end8.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 4
  %conv.i = zext i8 %11 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #9
  br label %ds2482_wait_1wire_idle.exit

ds2482_wait_1wire_idle.exit:                      ; preds = %do.end8.i, %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge, %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge
  %w1_count = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %w1_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %if.then, label %ds2482_wait_1wire_idle.exit.if.end_crit_edge

ds2482_wait_1wire_idle.exit.if.end_crit_edge:     ; preds = %ds2482_wait_1wire_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %ds2482_wait_1wire_idle.exit
  %channel = getelementptr inbounds %struct.ds2482_w1_chan, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @ds2482_chan_wr, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -61, i8 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %20 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -46, ptr %read_prt.i.i, align 1
  %channel1.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %channel1.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %23) #5
  %arrayidx5.i = getelementptr [8 x i8], ptr @ds2482_chan_rd, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.i, align 1
  %conv.i18 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %conv.i18)
  %cmp6.i = icmp eq i32 %call3.i, %conv.i18
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %15, ptr %channel1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %ds2482_wait_1wire_idle.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dbit)
  %tobool.not = icmp ne i8 %dbit, 0
  %conv3 = sext i1 %tobool.not to i8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 120, i8 noundef zeroext %conv3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp.i20 = icmp slt i32 %call.i19, 0
  br i1 %cmp.i20, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  %29 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i34

do.body.i34:                                      ; preds = %land.rhs.i37.do.body.i34_crit_edge, %if.then6
  %retries.0.i31 = phi i32 [ 0, %if.then6 ], [ %inc.i35, %land.rhs.i37.do.body.i34_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call1.i32 = tail call i32 @i2c_smbus_read_byte(ptr noundef %31) #5
  %32 = and i32 %call1.i32, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %.not.i33 = icmp eq i32 %32, 1
  br i1 %.not.i33, label %land.rhs.i37, label %do.body.i34.ds2482_wait_1wire_idle.exit43_crit_edge

do.body.i34.ds2482_wait_1wire_idle.exit43_crit_edge: ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit43

land.rhs.i37:                                     ; preds = %do.body.i34
  %inc.i35 = add nuw nsw i32 %retries.0.i31, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, 100
  br i1 %exitcond.not.i36, label %do.end8.i41, label %land.rhs.i37.do.body.i34_crit_edge

land.rhs.i37.do.body.i34_crit_edge:               ; preds = %land.rhs.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i34

do.end8.i41:                                      ; preds = %land.rhs.i37
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i38 = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %channel.i38 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %channel.i38, align 4
  %conv.i39 = zext i8 %34 to i32
  %call9.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i39) #9
  br label %ds2482_wait_1wire_idle.exit43

ds2482_wait_1wire_idle.exit43:                    ; preds = %do.end8.i41, %do.body.i34.ds2482_wait_1wire_idle.exit43_crit_edge
  %35 = lshr i32 %call1.i32, 5
  %phi.cast = trunc i32 %35 to i8
  br label %if.end8

if.end8:                                          ; preds = %ds2482_wait_1wire_idle.exit43, %if.end.if.end8_crit_edge
  %status.0 = phi i8 [ %phi.cast, %ds2482_wait_1wire_idle.exit43 ], [ 3, %if.end.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %access_lock) #5
  ret i8 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds2482_w1_reset_bus(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %access_lock = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #5
  %read_prt.i.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_prt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %3)
  %cmp.not.i.i = icmp eq i8 %3, -16
  br i1 %cmp.not.i.i, label %entry.do.body.i.preheader_crit_edge, label %if.then.i.i

entry.do.body.i.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -31, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge, label %if.end.i.i

if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end.i.i, %entry.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %do.body.i.preheader
  %retries.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  %9 = and i32 %call1.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %.not.i = icmp eq i32 %9, 1
  br i1 %.not.i, label %land.rhs.i, label %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge

do.body.i.ds2482_wait_1wire_idle.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

land.rhs.i:                                       ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %retries.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end8.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 4
  %conv.i = zext i8 %11 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #9
  br label %ds2482_wait_1wire_idle.exit

ds2482_wait_1wire_idle.exit:                      ; preds = %do.end8.i, %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge, %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge
  %w1_count = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %w1_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %w1_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %if.then, label %ds2482_wait_1wire_idle.exit.if.end_crit_edge

ds2482_wait_1wire_idle.exit.if.end_crit_edge:     ; preds = %ds2482_wait_1wire_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %ds2482_wait_1wire_idle.exit
  %channel = getelementptr inbounds %struct.ds2482_w1_chan, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %idxprom.i = zext i8 %15 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @ds2482_chan_wr, i32 0, i32 %idxprom.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -61, i8 noundef zeroext %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %20 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -46, ptr %read_prt.i.i, align 1
  %channel1.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %channel1.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call3.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %23) #5
  %arrayidx5.i = getelementptr [8 x i8], ptr @ds2482_chan_rd, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx5.i, align 1
  %conv.i26 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %conv.i26)
  %cmp6.i = icmp eq i32 %call3.i, %conv.i26
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %15, ptr %channel1.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %ds2482_wait_1wire_idle.exit.if.end_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i27 = tail call i32 @i2c_smbus_write_byte(ptr noundef %28, i8 noundef zeroext -76) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp.i28 = icmp slt i32 %call.i27, 0
  br i1 %cmp.i28, label %if.end.if.end14_crit_edge, label %if.then6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then6:                                         ; preds = %if.end
  %29 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i42

do.body.i42:                                      ; preds = %land.rhs.i45.do.body.i42_crit_edge, %if.then6
  %retries.0.i39 = phi i32 [ 0, %if.then6 ], [ %inc.i43, %land.rhs.i45.do.body.i42_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call1.i40 = tail call i32 @i2c_smbus_read_byte(ptr noundef %31) #5
  %32 = and i32 %call1.i40, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %.not.i41 = icmp eq i32 %32, 1
  br i1 %.not.i41, label %land.rhs.i45, label %do.body.i42.ds2482_wait_1wire_idle.exit51_crit_edge

do.body.i42.ds2482_wait_1wire_idle.exit51_crit_edge: ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit51

land.rhs.i45:                                     ; preds = %do.body.i42
  %inc.i43 = add nuw nsw i32 %retries.0.i39, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, 100
  br i1 %exitcond.not.i44, label %do.end8.i49, label %land.rhs.i45.do.body.i42_crit_edge

land.rhs.i45.do.body.i42_crit_edge:               ; preds = %land.rhs.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i42

do.end8.i49:                                      ; preds = %land.rhs.i45
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i46 = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %channel.i46 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %channel.i46, align 4
  %conv.i47 = zext i8 %34 to i32
  %call9.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i47) #9
  br label %ds2482_wait_1wire_idle.exit51

ds2482_wait_1wire_idle.exit51:                    ; preds = %do.end8.i49, %do.body.i42.ds2482_wait_1wire_idle.exit51_crit_edge
  %35 = trunc i32 %call1.i40 to i8
  %36 = lshr i8 %35, 1
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  %and8 = and i32 %call1.i40, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %ds2482_wait_1wire_idle.exit51.if.end14_crit_edge, label %if.then10

ds2482_wait_1wire_idle.exit51.if.end14_crit_edge: ; preds = %ds2482_wait_1wire_idle.exit51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %ds2482_wait_1wire_idle.exit51
  %39 = load i32, ptr @extra_config, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i32, ptr @ds2482_active_pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp ne i32 %41, 0
  %42 = zext i1 %tobool.not.i to i8
  %spec.select.i = or i8 %42, %40
  %43 = xor i8 %spec.select.i, -1
  %shl.i = shl i8 %43, 4
  %or7.i = or i8 %shl.i, %spec.select.i
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -46, i8 noundef zeroext %or7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.i53 = icmp slt i32 %call.i52, 0
  br i1 %cmp.i53, label %if.then10.if.end14_crit_edge, label %if.end.i55

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end.i55:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -61, ptr %read_prt.i.i, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.end.i55, %if.then10.if.end14_crit_edge, %ds2482_wait_1wire_idle.exit51.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %retval2.0 = phi i8 [ %38, %ds2482_wait_1wire_idle.exit51.if.end14_crit_edge ], [ 1, %if.end.if.end14_crit_edge ], [ %38, %if.then10.if.end14_crit_edge ], [ %38, %if.end.i55 ]
  tail call void @mutex_unlock(ptr noundef %access_lock) #5
  ret i8 %retval2.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds2482_w1_set_pullup(ptr nocapture noundef readonly %data, i32 noundef %delay) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %tobool.not = icmp eq i32 %delay, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %read_prt.i.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %read_prt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %3)
  %cmp.not.i.i = icmp eq i8 %3, -16
  br i1 %cmp.not.i.i, label %if.then.do.body.i.preheader_crit_edge, label %if.then.i.i

if.then.do.body.i.preheader_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

if.then.i.i:                                      ; preds = %if.then
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -31, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge, label %if.end.i.i

if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.end.i.i, %if.then.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %do.body.i.preheader
  %retries.0.i = phi i32 [ %inc.i, %land.rhs.i.do.body.i_crit_edge ], [ 0, %do.body.i.preheader ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %8) #5
  %9 = and i32 %call1.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %.not.i = icmp eq i32 %9, 1
  br i1 %.not.i, label %land.rhs.i, label %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge

do.body.i.ds2482_wait_1wire_idle.exit_crit_edge:  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_wait_1wire_idle.exit

land.rhs.i:                                       ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %retries.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end8.i, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel.i, align 4
  %conv.i = zext i8 %11 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i) #9
  br label %ds2482_wait_1wire_idle.exit

ds2482_wait_1wire_idle.exit:                      ; preds = %do.end8.i, %do.body.i.ds2482_wait_1wire_idle.exit_crit_edge, %if.then.i.i.ds2482_wait_1wire_idle.exit_crit_edge
  %12 = load i32, ptr @extra_config, align 4
  %13 = trunc i32 %12 to i8
  %conv1.i = or i8 %13, 5
  %14 = xor i8 %conv1.i, -1
  %shl.i = shl i8 %14, 4
  %or7.i = or i8 %shl.i, %conv1.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -46, i8 noundef zeroext %or7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ds2482_send_cmd_data.exit, label %ds2482_send_cmd_data.exit.thread

ds2482_send_cmd_data.exit.thread:                 ; preds = %ds2482_wait_1wire_idle.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -61, ptr %read_prt.i.i, align 1
  br label %if.then.i.i12

ds2482_send_cmd_data.exit:                        ; preds = %ds2482_wait_1wire_idle.exit
  %18 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %read_prt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %.pr)
  %cmp.not.i.i9 = icmp eq i8 %.pr, -16
  br i1 %cmp.not.i.i9, label %ds2482_send_cmd_data.exit.ds2482_select_register.exit.i14_crit_edge, label %ds2482_send_cmd_data.exit.if.then.i.i12_crit_edge

ds2482_send_cmd_data.exit.if.then.i.i12_crit_edge: ; preds = %ds2482_send_cmd_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i12

ds2482_send_cmd_data.exit.ds2482_select_register.exit.i14_crit_edge: ; preds = %ds2482_send_cmd_data.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ds2482_select_register.exit.i14

if.then.i.i12:                                    ; preds = %ds2482_send_cmd_data.exit.if.then.i.i12_crit_edge, %ds2482_send_cmd_data.exit.thread
  %conv32 = phi i8 [ 0, %ds2482_send_cmd_data.exit.thread ], [ -1, %ds2482_send_cmd_data.exit.if.then.i.i12_crit_edge ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -31, i8 noundef zeroext -16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %cmp3.i.i11 = icmp slt i32 %call.i.i10, 0
  br i1 %cmp3.i.i11, label %if.then.i.i12.if.end_crit_edge, label %if.end.i.i13

if.then.i.i12.if.end_crit_edge:                   ; preds = %if.then.i.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i13:                                     ; preds = %if.then.i.i12
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %read_prt.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -16, ptr %read_prt.i.i, align 1
  br label %ds2482_select_register.exit.i14

ds2482_select_register.exit.i14:                  ; preds = %if.end.i.i13, %ds2482_send_cmd_data.exit.ds2482_select_register.exit.i14_crit_edge
  %conv33 = phi i8 [ %conv32, %if.end.i.i13 ], [ -1, %ds2482_send_cmd_data.exit.ds2482_select_register.exit.i14_crit_edge ]
  br label %do.body.i18

do.body.i18:                                      ; preds = %land.rhs.i21.do.body.i18_crit_edge, %ds2482_select_register.exit.i14
  %retries.0.i15 = phi i32 [ 0, %ds2482_select_register.exit.i14 ], [ %inc.i19, %land.rhs.i21.do.body.i18_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call1.i16 = tail call i32 @i2c_smbus_read_byte(ptr noundef %23) #5
  %24 = and i32 %call1.i16, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %.not.i17 = icmp eq i32 %24, 1
  br i1 %.not.i17, label %land.rhs.i21, label %do.body.i18.if.end_crit_edge

do.body.i18.if.end_crit_edge:                     ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.i21:                                     ; preds = %do.body.i18
  %inc.i19 = add nuw nsw i32 %retries.0.i15, 1
  %exitcond.not.i20 = icmp eq i32 %inc.i19, 100
  br i1 %exitcond.not.i20, label %do.end8.i25, label %land.rhs.i21.do.body.i18_crit_edge

land.rhs.i21.do.body.i18_crit_edge:               ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i18

do.end8.i25:                                      ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #7
  %channel.i22 = getelementptr inbounds %struct.ds2482_data, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %channel.i22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %channel.i22, align 4
  %conv.i23 = zext i8 %26 to i32
  %call9.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %conv.i23) #9
  br label %if.end

if.end:                                           ; preds = %do.end8.i25, %do.body.i18.if.end_crit_edge, %if.then.i.i12.if.end_crit_edge, %entry.if.end_crit_edge
  %retval2.0 = phi i8 [ 1, %entry.if.end_crit_edge ], [ %conv32, %if.then.i.i12.if.end_crit_edge ], [ %conv33, %do.end8.i25 ], [ %conv33, %do.body.i18.if.end_crit_edge ]
  ret i8 %retval2.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_add_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_remove_master_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !25, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !51, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__param_active_pullup, !1, !"__param_active_pullup", i1 false, i1 false}
!1 = !{!"../drivers/w1/masters/ds2482.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_active_pulluptype288, !1, !"__UNIQUE_ID_active_pulluptype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_active_pullup289, !4, !"__UNIQUE_ID_active_pullup289", i1 false, i1 false}
!4 = !{!"../drivers/w1/masters/ds2482.c", i32 34, i32 1}
!5 = !{ptr @__param_extra_config, !6, !"__param_extra_config", i1 false, i1 false}
!6 = !{!"../drivers/w1/masters/ds2482.c", i32 39, i32 1}
!7 = !{ptr @__UNIQUE_ID_extra_configtype290, !6, !"__UNIQUE_ID_extra_configtype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_extra_config291, !9, !"__UNIQUE_ID_extra_config291", i1 false, i1 false}
!9 = !{!"../drivers/w1/masters/ds2482.c", i32 40, i32 1}
!10 = !{ptr @__initcall__kmod_ds2482__292_561_ds2482_driver_init6, !11, !"__initcall__kmod_ds2482__292_561_ds2482_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/w1/masters/ds2482.c", i32 561, i32 1}
!12 = !{ptr @__exitcall_ds2482_driver_exit, !11, !"__exitcall_ds2482_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author293, !14, !"__UNIQUE_ID_author293", i1 false, i1 false}
!14 = !{!"../drivers/w1/masters/ds2482.c", i32 563, i32 1}
!15 = !{ptr @__UNIQUE_ID_description294, !16, !"__UNIQUE_ID_description294", i1 false, i1 false}
!16 = !{!"../drivers/w1/masters/ds2482.c", i32 564, i32 1}
!17 = !{ptr @__UNIQUE_ID_file295, !18, !"__UNIQUE_ID_file295", i1 false, i1 false}
!18 = !{!"../drivers/w1/masters/ds2482.c", i32 566, i32 1}
!19 = !{ptr @__UNIQUE_ID_license296, !18, !"__UNIQUE_ID_license296", i1 false, i1 false}
!20 = !{ptr @extra_config, !21, !"extra_config", i1 false, i1 false}
!21 = !{!"../drivers/w1/masters/ds2482.c", i32 38, i32 12}
!22 = !{ptr @__param_str_active_pullup, !1, !"__param_str_active_pullup", i1 false, i1 false}
!23 = !{ptr @ds2482_active_pullup, !24, !"ds2482_active_pullup", i1 false, i1 false}
!24 = !{!"../drivers/w1/masters/ds2482.c", i32 32, i32 12}
!25 = !{ptr @__param_str_extra_config, !6, !"__param_str_extra_config", i1 false, i1 false}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/w1/masters/ds2482.c", i32 555, i32 11}
!28 = !{ptr @ds2482_driver, !29, !"ds2482_driver", i1 false, i1 false}
!29 = !{!"../drivers/w1/masters/ds2482.c", i32 553, i32 26}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/w1/masters/ds2482.c", i32 468, i32 3}
!32 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ds2482_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @ds2482_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/w1/masters/ds2482.c", i32 478, i32 3}
!40 = !{ptr @ds2482_probe._entry.6, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ds2482_probe._entry_ptr.8, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @ds2482_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/w1/masters/ds2482.c", i32 492, i32 2}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ds2482_chan_wr, !46, !"ds2482_chan_wr", i1 false, i1 false}
!46 = !{!"../drivers/w1/masters/ds2482.c", i32 81, i32 17}
!47 = !{ptr @ds2482_chan_rd, !48, !"ds2482_chan_rd", i1 false, i1 false}
!48 = !{!"../drivers/w1/masters/ds2482.c", i32 83, i32 17}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/w1/masters/ds2482.c", i32 226, i32 3}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ds2482_wait_1wire_idle._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ds2482_wait_1wire_idle._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @ds2482_id, !55, !"ds2482_id", i1 false, i1 false}
!55 = !{!"../drivers/w1/masters/ds2482.c", i32 547, i32 35}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
