; ModuleID = '/llk/IR_all_yes/drivers/staging/most/i2c/i2c.c_pt.bc'
source_filename = "../drivers/staging/most/i2c/i2c.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdm_i2c = type { %struct.most_interface, [2 x %struct.most_channel_capability], ptr, %struct.rx, [64 x i8] }
%struct.most_interface = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.most_channel_capability = type { i16, i16, i16, i16, i16, i16, ptr }
%struct.rx = type { %struct.delayed_work, %struct.list_head, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.most_channel_config = type { i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.mbo = type { ptr, ptr, %struct.list_head, ptr, ptr, i16, ptr, i32, i16, i16, i32, ptr }

@__param_str_polling_rate = internal constant [22 x i8] c"most_i2c.polling_rate\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@polling_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_polling_rate = internal constant %struct.kernel_param { ptr @__param_str_polling_rate, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @polling_rate } }, section "__param", align 4
@__UNIQUE_ID_polling_ratetype288 = internal constant [36 x i8] c"most_i2c.parmtype=polling_rate:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_polling_rate289 = internal constant [68 x i8] c"most_i2c.parm=polling_rate:Polling rate [Hz]. Default = 0 (use IRQ)\00", section ".modinfo", align 1
@__initcall__kmod_most_i2c__292_369_i2c_driver_init6 = internal global ptr @i2c_driver_init, section ".initcall6.init", align 4
@i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @i2c_probe, ptr @i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_i2c_driver_exit = internal global ptr @i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [57 x i8] c"most_i2c.author=Andrey Shvetsov <andrey.shvetsov@k2l.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [51 x i8] c"most_i2c.description=I2C Hardware Dependent Module\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [48 x i8] c"most_i2c.file=drivers/staging/most/i2c/most_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [21 x i8] c"most_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdm_i2c\00", [24 x i8] zeroinitializer }, align 32
@i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"most_i2c\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c-%d-%04x\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&dev->rx.dwork)->work)\00", [53 x i8] zeroinitializer }, align 32
@i2c_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&dev->rx.dwork)->timer\00", [39 x i8] zeroinitializer }, align 32
@i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013most_i2c: Failed to register i2c as a MOST interface\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/staging/most/i2c/i2c.c\00", [33 x i8] zeroinitializer }, align 32
@i2c_probe._entry_ptr = internal global ptr @i2c_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@configure_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.9, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013most_i2c: bad data type for channel %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"configure_channel\00", [46 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr = internal global ptr @configure_channel._entry, section ".printk_index", align 4
@configure_channel._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.9, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013most_i2c: bad direction for channel %d\0A\00", [54 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.14 = internal global ptr @configure_channel._entry.12, section ".printk_index", align 4
@configure_channel._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.9, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013most_i2c: bad irq: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.17 = internal global ptr @configure_channel._entry.15, section ".printk_index", align 4
@configure_channel._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.9, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013most_i2c: request_irq(%d) failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.20 = internal global ptr @configure_channel._entry.18, section ".printk_index", align 4
@configure_channel._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.9, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016most_i2c: polling rate is %u Hz\0A\00", [61 x i8] zeroinitializer }, align 32
@configure_channel._entry_ptr.23 = internal global ptr @configure_channel._entry.21, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@do_rx_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.9, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013most_i2c: Failed to receive PML\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_rx_work\00", [21 x i8] zeroinitializer }, align 32
@do_rx_work._entry_ptr = internal global ptr @do_rx_work._entry, section ".printk_index", align 4
@do_rx_work._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.9, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013most_i2c: Failed to receive a Port Message\0A\00", [50 x i8] zeroinitializer }, align 32
@do_rx_work._entry_ptr.28 = internal global ptr @do_rx_work._entry.26, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"polling_rate\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 30, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"i2c_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 360, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 362, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"i2c_id\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 353, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 297, i32 41 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 306, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 308, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 320, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 327, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 74, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 79, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 86, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 93, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 101, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 200, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [34 x i8] c"../drivers/staging/most/i2c/i2c.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 213, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_polling_rate289, ptr @__UNIQUE_ID_polling_ratetype288, ptr @__exitcall_i2c_driver_exit, ptr @__initcall__kmod_most_i2c__292_369_i2c_driver_init6, ptr @__param_polling_rate, ptr @configure_channel._entry, ptr @configure_channel._entry.12, ptr @configure_channel._entry.15, ptr @configure_channel._entry.18, ptr @configure_channel._entry.21, ptr @configure_channel._entry_ptr, ptr @configure_channel._entry_ptr.14, ptr @configure_channel._entry_ptr.17, ptr @configure_channel._entry_ptr.20, ptr @configure_channel._entry_ptr.23, ptr @do_rx_work._entry, ptr @do_rx_work._entry.26, ptr @do_rx_work._entry_ptr, ptr @do_rx_work._entry_ptr.28, ptr @i2c_driver_exit, ptr @i2c_probe._entry, ptr @i2c_probe._entry_ptr, ptr @polling_rate, ptr @i2c_driver, ptr @.str, ptr @i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @i2c_probe.__key, ptr @.str.4, ptr @i2c_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polling_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_channel._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_work._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 276) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %conv = zext i16 %6 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 64, ptr noundef nonnull @.str.1, i32 noundef %4, i32 noundef %conv)
  %data_type = getelementptr %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %data_type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %data_type, align 2
  %num_buffers_packet = getelementptr %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %num_buffers_packet to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 32, ptr %num_buffers_packet, align 8
  %buffer_size_packet = getelementptr %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %buffer_size_packet to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %buffer_size_packet, align 2
  %data_type.1 = getelementptr %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %data_type.1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %data_type.1, align 2
  %num_buffers_packet.1 = getelementptr %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 2
  %11 = ptrtoint ptr %num_buffers_packet.1 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 32, ptr %num_buffers_packet.1, align 8
  %buffer_size_packet.1 = getelementptr %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 3
  %12 = ptrtoint ptr %buffer_size_packet.1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 256, ptr %buffer_size_packet.1, align 2
  %capabilities7 = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %capabilities7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %capabilities7, align 4
  %name_suffix = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 6
  %14 = ptrtoint ptr %name_suffix to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.2, ptr %name_suffix, align 8
  %arrayidx12 = getelementptr %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %arrayidx12, align 4
  %name_suffix16 = getelementptr %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 6
  %16 = ptrtoint ptr %name_suffix16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.3, ptr %name_suffix16, align 8
  %interface = getelementptr inbounds %struct.most_interface, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %interface, align 4
  %description = getelementptr inbounds %struct.most_interface, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %description to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %name, ptr %description, align 8
  %num_channels = getelementptr inbounds %struct.most_interface, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %num_channels, align 4
  %channel_vector = getelementptr inbounds %struct.most_interface, ptr %call7.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %channel_vector to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %capabilities7, ptr %channel_vector, align 8
  %configure = getelementptr inbounds %struct.most_interface, ptr %call7.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %configure to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @configure_channel, ptr %configure, align 4
  %enqueue = getelementptr inbounds %struct.most_interface, ptr %call7.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %enqueue to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @enqueue, ptr %enqueue, align 8
  %poison_channel = getelementptr inbounds %struct.most_interface, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %poison_channel to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @poison_channel, ptr %poison_channel, align 4
  %rx = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 3
  %list = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list, ptr %prev.i, align 8
  tail call void @__init_work(ptr noundef %rx, i32 noundef 0) #8
  %26 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %rx, align 8
  %lockdep_map = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @i2c_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry38 = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i97 = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry38, ptr %prev.i97, align 8
  %func = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 2
  %29 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @pending_rx_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @i2c_probe.__key.5) #8
  %client49 = getelementptr inbounds %struct.hdm_i2c, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %client49 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %client, ptr %client49, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call51 = tail call i32 @most_register_interface(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end.cleanup_crit_edge, label %do.end56

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end56:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %do.end56 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @most_deregister_interface(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configure_channel(ptr noundef %most_iface, i32 noundef %ch_idx, ptr nocapture noundef readonly %channel_config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ch_idx)
  %0 = icmp ugt i32 %ch_idx, 1
  br i1 %0, label %do.body3, label %do.end8, !prof !80

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/i2c/i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

do.end8:                                          ; preds = %entry
  %data_type = getelementptr inbounds %struct.most_channel_config, ptr %channel_config, i32 0, i32 1
  %1 = ptrtoint ptr %data_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp9.not = icmp eq i32 %2, 1
  br i1 %cmp9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %ch_idx) #12
  br label %cleanup

if.end15:                                         ; preds = %do.end8
  %3 = ptrtoint ptr %channel_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel_config, align 4
  %arrayidx = getelementptr %struct.hdm_i2c, ptr %most_iface, i32 0, i32 1, i32 %ch_idx
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp17.not = icmp eq i32 %4, %conv
  br i1 %cmp17.not, label %if.end25, label %do.end22

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %ch_idx) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp27 = icmp eq i32 %4, 1
  br i1 %cmp27, label %if.then29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then29:                                        ; preds = %if.end25
  %7 = load i32, ptr @polling_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool30.not = icmp eq i32 %7, 0
  br i1 %tobool30.not, label %if.then31, label %if.else.i

if.then31:                                        ; preds = %if.then29
  %client = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 2
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp32 = icmp slt i32 %11, 1
  br i1 %cmp32, label %do.end37, label %if.end42

do.end37:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %11) #12
  br label %cleanup

if.end42:                                         ; preds = %if.then31
  %int_disabled = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %int_disabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %int_disabled, align 4
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 2
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %14, ptr noundef nonnull @most_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %name, ptr noundef %most_iface) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %if.end42.cleanup_crit_edge, label %do.end51

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %irq54 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %irq54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq54, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %18, i32 noundef %call.i) #12
  br label %cleanup

if.else.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 1000, %7
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool58.not = icmp eq i32 %call2.i, 0
  %spec.select95 = select i1 %tobool58.not, i32 1, i32 %call2.i
  %delay60 = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %delay60 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select95, ptr %delay60, align 4
  %call63 = tail call i32 @jiffies_to_msecs(i32 noundef %spec.select95) #8
  %div64 = udiv i32 1000, %call63
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %div64) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.end51, %if.end42.cleanup_crit_edge, %do.end37, %if.end25.cleanup_crit_edge, %do.end22, %do.end13
  %retval.0 = phi i32 [ -1, %do.end13 ], [ -1, %do.end22 ], [ -2, %do.end37 ], [ %call.i, %do.end51 ], [ 0, %if.else.i ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enqueue(ptr noundef %most_iface, i32 noundef %ch_idx, ptr noundef %mbo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ch_idx)
  %0 = icmp ugt i32 %ch_idx, 1
  br i1 %0, label %do.body3, label %do.end8, !prof !80

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/i2c/i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 125, 0\0A.popsection", ""() #8, !srcloc !82
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch_idx)
  %cmp9 = icmp eq i32 %ch_idx, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.end8
  %1 = load i32, ptr @polling_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool11.not = icmp eq i32 %1, 0
  br i1 %tobool11.not, label %if.then12, label %if.then10.if.end13_crit_edge

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10.if.end13_crit_edge
  %rx = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 3
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rx) #8
  %list = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2
  %list15 = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 3, i32 1
  %prev.i = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %7, ptr noundef %list15) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_add_tail.exit_crit_edge

if.end13.list_add_tail.exit_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list15, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end13.list_add_tail.exit_crit_edge
  %int_disabled = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %int_disabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %int_disabled, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %list_add_tail.exit.if.end22_crit_edge

list_add_tail.exit.if.end22_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

lor.lhs.false:                                    ; preds = %list_add_tail.exit
  %14 = load i32, ptr @polling_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool18.not = icmp eq i32 %14, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.then24_crit_edge, label %lor.lhs.false.if.end22_crit_edge

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end22:                                         ; preds = %lor.lhs.false.if.end22_crit_edge, %list_add_tail.exit.if.end22_crit_edge
  tail call void @pending_rx_work(ptr noundef %rx)
  %.pr = load i32, ptr @polling_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool23.not = icmp eq i32 %.pr, 0
  br i1 %tobool23.not, label %if.end22.if.then24_crit_edge, label %if.end22.if.end38_crit_edge

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %lor.lhs.false.if.then24_crit_edge
  %client25 = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 2
  %15 = ptrtoint ptr %client25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client25, align 4
  %irq26 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq26, align 4
  tail call void @enable_irq(i32 noundef %18) #8
  br label %if.end38

if.else:                                          ; preds = %do.end8
  %client28 = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 2
  %19 = ptrtoint ptr %client28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client28, align 4
  %virt_address = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 6
  %21 = ptrtoint ptr %virt_address to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt_address, align 4
  %buffer_length = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 8
  %23 = ptrtoint ptr %buffer_length to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %buffer_length, align 4
  %conv = zext i16 %24 to i32
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %20, ptr noundef %22, i32 noundef %conv, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp30 = icmp slt i32 %call.i, 1
  br i1 %cmp30, label %if.else.if.end37_crit_edge, label %if.else33

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %buffer_length to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %buffer_length, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %if.else.if.end37_crit_edge
  %.sink57 = phi i16 [ %26, %if.else33 ], [ 0, %if.else.if.end37_crit_edge ]
  %.sink = phi i32 [ 0, %if.else33 ], [ 1, %if.else.if.end37_crit_edge ]
  %27 = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 9
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %.sink57, ptr %27, align 2
  %29 = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 10
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %complete = getelementptr inbounds %struct.mbo, ptr %mbo, i32 0, i32 11
  %31 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %complete, align 4
  tail call void %32(ptr noundef %mbo) #8
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then24, %if.end22.if.end38_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @poison_channel(ptr noundef %most_iface, i32 noundef %ch_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ch_idx)
  %0 = icmp ugt i32 %ch_idx, 1
  br i1 %0, label %do.body3, label %do.end8, !prof !80

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/staging/most/i2c/i2c.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #8, !srcloc !84
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch_idx)
  %cmp9 = icmp eq i32 %ch_idx, 0
  br i1 %cmp9, label %if.then10, label %do.end8.if.end26_crit_edge

do.end8.if.end26_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then10:                                        ; preds = %do.end8
  %1 = load i32, ptr @polling_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool11.not = icmp eq i32 %1, 0
  br i1 %tobool11.not, label %if.then12, label %if.then10.if.end13_crit_edge

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %client = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 2
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %most_iface) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then10.if.end13_crit_edge
  %rx = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 3
  %call14 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rx) #8
  %list = getelementptr inbounds %struct.hdm_i2c, ptr %most_iface, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %list, align 4
  %cmp.i.not37 = icmp eq ptr %7, %list
  br i1 %cmp.i.not37, label %if.end13.if.end26_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  br label %while.body

if.end13.if.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %if.end13.while.body_crit_edge
  %8 = phi ptr [ %22, %list_del.exit.while.body_crit_edge ], [ %7, %if.end13.while.body_crit_edge ]
  %add.ptr24 = getelementptr i8, ptr %8, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %processed_length = getelementptr i8, ptr %8, i32 30
  %17 = ptrtoint ptr %processed_length to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %processed_length, align 2
  %status = getelementptr i8, ptr %8, i32 32
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %status, align 4
  %complete = getelementptr i8, ptr %8, i32 36
  %19 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %complete, align 4
  tail call void %20(ptr noundef %add.ptr24) #8
  %21 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %22, %list
  br i1 %cmp.i.not, label %list_del.exit.if.end26_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.if.end26_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %list_del.exit.if.end26_crit_edge, %if.end13.if.end26_crit_edge, %do.end8.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pending_rx_work(ptr noundef %work) #2 align 64 {
entry:
  %msg.i = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr %struct.rx, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg.i) #8
  %2 = call ptr @memset(ptr %msg.i, i32 255, i32 256)
  %client.i = getelementptr i8, ptr %work, i32 -4
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull %msg.i, i32 noundef 2, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i13 = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i13, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %do_rx_work.exit

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %msg.i, align 1
  %conv.i14 = zext i8 %6 to i16
  %shl.i = shl nuw i16 %conv.i14, 8
  %arrayidx2.i = getelementptr inbounds [256 x i8], ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %8 to i16
  %or.i = or i16 %shl.i, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %tobool.not.i = icmp eq i16 %or.i, 0
  br i1 %tobool.not.i, label %if.end.i.do_rx_work.exit_crit_edge, label %if.end6.i

if.end.i.do_rx_work.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_rx_work.exit

if.end6.i:                                        ; preds = %if.end.i
  %add.i = add i16 %or.i, 2
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 4
  %conv11.i = zext i16 %add.i to i32
  %call.i53.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %msg.i, i32 noundef %conv11.i, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i53.i)
  %cmp13.i = icmp slt i32 %call.i53.i, 1
  br i1 %cmp13.i, label %do.end18.i, label %if.end21.i

do.end18.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  br label %do_rx_work.exit

if.end21.i:                                       ; preds = %if.end6.i
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 -8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end21.i.list_del.exit.i_crit_edge

if.end21.i.list_del.exit.i_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end21.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %buffer_length.i = getelementptr i8, ptr %12, i32 28
  %21 = ptrtoint ptr %buffer_length.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %buffer_length.i, align 4
  %23 = call i16 @llvm.umin.i16(i16 %add.i, i16 %22) #8
  %processed_length.i = getelementptr i8, ptr %12, i32 30
  %24 = ptrtoint ptr %processed_length.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %processed_length.i, align 2
  %virt_address.i = getelementptr i8, ptr %12, i32 20
  %25 = ptrtoint ptr %virt_address.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt_address.i, align 4
  %conv34.i = zext i16 %23 to i32
  %27 = call ptr @memcpy(ptr %26, ptr %msg.i, i32 %conv34.i)
  %status.i = getelementptr i8, ptr %12, i32 32
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %status.i, align 4
  %complete.i = getelementptr i8, ptr %12, i32 36
  %29 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %complete.i, align 4
  call void %30(ptr noundef %add.ptr.i) #8
  br label %do_rx_work.exit

do_rx_work.exit:                                  ; preds = %list_del.exit.i, %do.end18.i, %if.end.i.do_rx_work.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg.i) #8
  %31 = load i32, ptr @polling_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool1.not = icmp eq i32 %31, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %do_rx_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  %delay = getelementptr inbounds %struct.rx, ptr %work, i32 0, i32 3
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i15 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %work, i32 noundef %33) #8
  br label %cleanup

if.else:                                          ; preds = %do_rx_work.exit
  call void @__sanitizer_cov_trace_pc() #10
  %int_disabled = getelementptr inbounds %struct.rx, ptr %work, i32 0, i32 2
  %35 = ptrtoint ptr %int_disabled to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %int_disabled, align 4
  %36 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %client.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %39) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @most_register_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @most_irq_handler(i32 noundef %irq, ptr noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #8
  %rx = getelementptr inbounds %struct.hdm_i2c, ptr %_dev, i32 0, i32 3
  %int_disabled = getelementptr inbounds %struct.hdm_i2c, ptr %_dev, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %int_disabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %int_disabled, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %rx, i32 noundef 0) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @most_deregister_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__param_polling_rate, !1, !"__param_polling_rate", i1 false, i1 false}
!1 = !{!"../drivers/staging/most/i2c/i2c.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_polling_ratetype288, !1, !"__UNIQUE_ID_polling_ratetype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_polling_rate289, !4, !"__UNIQUE_ID_polling_rate289", i1 false, i1 false}
!4 = !{!"../drivers/staging/most/i2c/i2c.c", i32 32, i32 1}
!5 = !{ptr @__initcall__kmod_most_i2c__292_369_i2c_driver_init6, !6, !"__initcall__kmod_most_i2c__292_369_i2c_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/staging/most/i2c/i2c.c", i32 369, i32 1}
!7 = !{ptr @__exitcall_i2c_driver_exit, !6, !"__exitcall_i2c_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author293, !9, !"__UNIQUE_ID_author293", i1 false, i1 false}
!9 = !{!"../drivers/staging/most/i2c/i2c.c", i32 371, i32 1}
!10 = !{ptr @__UNIQUE_ID_description294, !11, !"__UNIQUE_ID_description294", i1 false, i1 false}
!11 = !{!"../drivers/staging/most/i2c/i2c.c", i32 372, i32 1}
!12 = !{ptr @__UNIQUE_ID_file295, !13, !"__UNIQUE_ID_file295", i1 false, i1 false}
!13 = !{!"../drivers/staging/most/i2c/i2c.c", i32 373, i32 1}
!14 = !{ptr @__UNIQUE_ID_license296, !13, !"__UNIQUE_ID_license296", i1 false, i1 false}
!15 = !{ptr @polling_rate, !16, !"polling_rate", i1 false, i1 false}
!16 = !{!"../drivers/staging/most/i2c/i2c.c", i32 30, i32 21}
!17 = !{ptr @__param_str_polling_rate, !1, !"__param_str_polling_rate", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/most/i2c/i2c.c", i32 362, i32 11}
!20 = !{ptr @i2c_driver, !21, !"i2c_driver", i1 false, i1 false}
!21 = !{!"../drivers/staging/most/i2c/i2c.c", i32 360, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/most/i2c/i2c.c", i32 297, i32 41}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/most/i2c/i2c.c", i32 306, i32 41}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/most/i2c/i2c.c", i32 308, i32 41}
!28 = !{ptr @i2c_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/staging/most/i2c/i2c.c", i32 320, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @i2c_probe.__key.5, !29, !"__key", i1 false, i1 false}
!32 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/most/i2c/i2c.c", i32 327, i32 3}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @i2c_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @i2c_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/most/i2c/i2c.c", i32 74, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @configure_channel._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @configure_channel._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/most/i2c/i2c.c", i32 79, i32 3}
!46 = !{ptr @configure_channel._entry.12, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @configure_channel._entry_ptr.14, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/most/i2c/i2c.c", i32 86, i32 5}
!50 = !{ptr @configure_channel._entry.15, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @configure_channel._entry_ptr.17, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/most/i2c/i2c.c", i32 93, i32 5}
!54 = !{ptr @configure_channel._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @configure_channel._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/most/i2c/i2c.c", i32 101, i32 4}
!58 = !{ptr @configure_channel._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @configure_channel._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/most/i2c/i2c.c", i32 200, i32 3}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @do_rx_work._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @do_rx_work._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/most/i2c/i2c.c", i32 213, i32 3}
!67 = !{ptr @do_rx_work._entry.26, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @do_rx_work._entry_ptr.28, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @i2c_id, !70, !"i2c_id", i1 false, i1 false}
!70 = !{!"../drivers/staging/most/i2c/i2c.c", i32 353, i32 35}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2155534152, i64 2155534646, i64 2155534189, i64 2155534245, i64 2155534279, i64 2155534303, i64 2155534344, i64 2155534365, i64 2155534393, i64 2155534427}
!82 = !{i64 2155545550, i64 2155546045, i64 2155545587, i64 2155545643, i64 2155545677, i64 2155545701, i64 2155545742, i64 2155545763, i64 2155545791, i64 2155545825}
!83 = !{i8 0, i8 2}
!84 = !{i64 2155548514, i64 2155549009, i64 2155548551, i64 2155548607, i64 2155548641, i64 2155548665, i64 2155548706, i64 2155548727, i64 2155548755, i64 2155548789}
