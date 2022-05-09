; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/st1232.c_pt.bc'
source_filename = "../drivers/input/touchscreen/st1232.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.st_chip_info = type { i8, i16, i16 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.st1232_ts_data = type { ptr, ptr, %struct.touchscreen_properties, %struct.dev_pm_qos_request, ptr, ptr, i32, ptr }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.dev_pm_qos_request = type { i32, %union.anon.78, ptr }
%union.anon.78 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_mt_pos = type { i16, i16 }

@__initcall__kmod_st1232__288_397_st1232_ts_driver_init6 = internal global ptr @st1232_ts_driver_init, section ".initcall6.init", align 4
@st1232_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @st1232_ts_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @st1232_ts_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st1232_ts_pm_ops, ptr null, ptr null }, ptr @st1232_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_st1232_ts_driver_exit = internal global ptr @st1232_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [53 x i8] c"st1232.author=Tony SIM <chinyeow.sim.xt@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [66 x i8] c"st1232.author=Martin Kepplinger <martin.kepplinger@ginzinger.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [65 x i8] c"st1232.description=SITRONIX ST1232 Touchscreen Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [45 x i8] c"st1232.file=drivers/input/touchscreen/st1232\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [22 x i8] c"st1232.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st1232-ts\00", [22 x i8] zeroinitializer }, align 32
@st1232_ts_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sitronix,st1232\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st1232_chip_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sitronix,st1633\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st1633_chip_info }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@st1232_ts_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st1232_ts_suspend, ptr @st1232_ts_resume, ptr @st1232_ts_suspend, ptr @st1232_ts_resume, ptr @st1232_ts_suspend, ptr @st1232_ts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@st1232_ts_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"st1232-ts\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @st1232_chip_info to i32) }, %struct.i2c_device_id { [20 x i8] c"st1633-ts\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @st1633_chip_info to i32) }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown device model\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st1232_ts_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/touchscreen/st1232.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry_ptr = internal global ptr @st1232_ts_probe._entry, section ".printk_index", align 4
@st1232_ts_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"need I2C_FUNC_I2C\0A\00", [45 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry_ptr.8 = internal global ptr @st1232_ts_probe._entry.6, section ".printk_index", align 4
@st1232_ts_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no IRQ?\0A\00", [23 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry_ptr.11 = internal global ptr @st1232_ts_probe._entry.9, section ".printk_index", align 4
@st1232_ts_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to request GPIO pin: %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry_ptr.14 = internal global ptr @st1232_ts_probe._entry.12, section ".printk_index", align 4
@st1232_ts_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to install power off action: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry_ptr.17 = internal global ptr @st1232_ts_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st1232-touchscreen\00", [45 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read resolution: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry_ptr.21 = internal global ptr @st1232_ts_probe._entry.19, section ".printk_index", align 4
@st1232_ts_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to initialize MT slots\0A\00", [33 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry_ptr.24 = internal global ptr @st1232_ts_probe._entry.22, section ".printk_index", align 4
@st1232_ts_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry_ptr.27 = internal global ptr @st1232_ts_probe._entry.25, section ".printk_index", align 4
@st1232_ts_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to register %s input device\0A\00", [60 x i8] zeroinitializer }, align 32
@st1232_ts_probe._entry_ptr.30 = internal global ptr @st1232_ts_probe._entry.28, section ".printk_index", align 4
@st1232_chip_info = internal constant { %struct.st_chip_info, [26 x i8] } { %struct.st_chip_info { i8 1, i16 255, i16 2 }, [26 x i8] zeroinitializer }, align 32
@st1633_chip_info = internal constant { %struct.st_chip_info, [26 x i8] } { %struct.st_chip_info { i8 0, i16 0, i16 5 }, [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"st1232_ts_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 386, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 390, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"st1232_ts_dt_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 379, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"st1232_ts_pm_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 369, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"st1232_ts_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 372, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 236, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 241, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 246, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 273, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 282, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 287, i32 20 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 298, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 318, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 327, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 333, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"st1232_chip_info\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 211, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"st1633_chip_info\00", align 1
@___asan_gen_.119 = private constant [38 x i8] c"../drivers/input/touchscreen/st1232.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 217, i32 34 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_st1232_ts_driver_exit, ptr @__initcall__kmod_st1232__288_397_st1232_ts_driver_init6, ptr @st1232_ts_driver_exit, ptr @st1232_ts_probe._entry, ptr @st1232_ts_probe._entry.12, ptr @st1232_ts_probe._entry.15, ptr @st1232_ts_probe._entry.19, ptr @st1232_ts_probe._entry.22, ptr @st1232_ts_probe._entry.25, ptr @st1232_ts_probe._entry.28, ptr @st1232_ts_probe._entry.6, ptr @st1232_ts_probe._entry.9, ptr @st1232_ts_probe._entry_ptr, ptr @st1232_ts_probe._entry_ptr.11, ptr @st1232_ts_probe._entry_ptr.14, ptr @st1232_ts_probe._entry_ptr.17, ptr @st1232_ts_probe._entry_ptr.21, ptr @st1232_ts_probe._entry_ptr.24, ptr @st1232_ts_probe._entry_ptr.27, ptr @st1232_ts_probe._entry_ptr.30, ptr @st1232_ts_probe._entry_ptr.8, ptr @st1232_ts_driver, ptr @.str, ptr @st1232_ts_dt_ids, ptr @st1232_ts_pm_ops, ptr @st1232_ts_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @st1232_chip_info, ptr @st1633_chip_info], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_ts_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1232_chip_info to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st1633_chip_info to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st1232_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @st1232_ts_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st1232_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @st1232_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st1232_ts_probe(ptr noundef %client, ptr noundef readonly %id) #2 align 64 {
entry:
  %reg.addr.i.i197 = alloca i8, align 1
  %msg.i.i198 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @device_get_match_data(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %tobool1.not = icmp eq ptr %id, null
  br i1 %tobool1.not, label %land.lhs.true.do.end_crit_edge, label %if.end

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %land.lhs.true
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %match.0218 = phi ptr [ %2, %if.end.if.end5_crit_edge ], [ %call, %entry.if.end5_crit_edge ]
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %4) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #5
  %tobool23.not = icmp eq ptr %call.i, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %chip_info = getelementptr inbounds %struct.st1232_ts_data, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %match.0218, ptr %chip_info, align 4
  %max_fingers = getelementptr inbounds %struct.st_chip_info, ptr %match.0218, i32 0, i32 2
  %12 = ptrtoint ptr %max_fingers to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_fingers, align 2
  %conv = zext i16 %13 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %read_buf_len = getelementptr inbounds %struct.st1232_ts_data, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %read_buf_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %read_buf_len, align 4
  %call.i190 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #5
  %read_buf = getelementptr inbounds %struct.st1232_ts_data, ptr %call.i, i32 0, i32 7
  %15 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i190, ptr %read_buf, align 4
  %tobool31.not = icmp eq ptr %call.i190, null
  br i1 %tobool31.not, label %if.end25.cleanup_crit_edge, label %if.end33

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  %call35 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %client, ptr %call.i, align 4
  %input_dev40 = getelementptr inbounds %struct.st1232_ts_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %input_dev40 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call35, ptr %input_dev40, align 4
  %call42 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef null, i32 noundef 7) #5
  %reset_gpio = getelementptr inbounds %struct.st1232_ts_data, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call42, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %if.end52

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call42 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %19) #8
  br label %cleanup

if.end52:                                         ; preds = %if.end38
  %tobool.not.i = icmp eq ptr %call42, null
  br i1 %tobool.not.i, label %if.end52.st1232_ts_power.exit_crit_edge, label %if.then.i

if.end52.st1232_ts_power.exit_crit_edge:          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %st1232_ts_power.exit

if.then.i:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call42, i32 noundef 0) #5
  br label %st1232_ts_power.exit

st1232_ts_power.exit:                             ; preds = %if.then.i, %if.end52.st1232_ts_power.exit_crit_edge
  %call.i191 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @st1232_ts_power_off, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool.not.i192 = icmp eq i32 %call.i191, 0
  br i1 %tobool.not.i192, label %if.end61, label %if.then.i193

if.then.i193:                                     ; preds = %st1232_ts_power.exit
  %20 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset_gpio, align 4
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %if.then.i193.do.end59_crit_edge, label %if.then.i.i.i

if.then.i193.do.end59_crit_edge:                  ; preds = %if.then.i193
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end59

if.then.i.i.i:                                    ; preds = %if.then.i193
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %21, i32 noundef 1) #5
  br label %do.end59

do.end59:                                         ; preds = %if.then.i.i.i, %if.then.i193.do.end59_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i191) #8
  br label %cleanup

if.end61:                                         ; preds = %st1232_ts_power.exit
  %22 = ptrtoint ptr %call35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.18, ptr %call35, align 8
  %id62 = getelementptr inbounds %struct.input_dev, ptr %call35, i32 0, i32 3
  %23 = ptrtoint ptr %id62 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 24, ptr %id62, align 4
  %24 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end61
  %retries.07.i = phi i32 [ 100, %if.end61 ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  %25 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %reg.addr.i.i, align 1
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #5
  %28 = call ptr @memset(ptr %24, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr2.i.i, align 2
  %31 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %msg.i.i, align 4
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i.i, align 2
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %24, align 4
  %34 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %35 = load i16, ptr %addr2.i.i, align 2
  %36 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayinit.element.i.i, align 4
  %37 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 513, ptr %flags5.i.i, align 2
  %38 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len6.i.i, align 4
  %39 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read_buf, align 4
  %41 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %buf7.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 3
  %42 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i194 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i194)
  %cmp.not.i.i = icmp eq i32 %call.i.i194, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #5
  br i1 %cmp.not.i.i, label %if.then.i195, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i195:                                     ; preds = %for.body.i
  %44 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_buf, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %if.then.i195.if.end.i_crit_edge [
    i8 0, label %if.then.i195.if.end66_crit_edge
    i8 4, label %if.then.i195.if.end66_crit_edge227
  ]

if.then.i195.if.end66_crit_edge227:               ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then.i195.if.end66_crit_edge:                  ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then.i195.if.end.i_crit_edge:                  ; preds = %if.then.i195
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i195.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %dec.i = add nsw i32 %retries.07.i, -1
  %tobool.not.i196 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i196, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end66:                                         ; preds = %if.then.i195.if.end66_crit_edge, %if.then.i195.if.end66_crit_edge227
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i197) #5
  %49 = ptrtoint ptr %reg.addr.i.i197 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 4, ptr %reg.addr.i.i197, align 1
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i198) #5
  %52 = getelementptr inbounds i8, ptr %msg.i.i198, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 16)
  %addr2.i.i199 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %addr2.i.i199 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr2.i.i199, align 2
  %56 = ptrtoint ptr %msg.i.i198 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %msg.i.i198, align 4
  %flags.i.i200 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i198, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i.i200 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i.i200, align 2
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %52, align 4
  %buf.i.i201 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i198, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i.i201 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %reg.addr.i.i197, ptr %buf.i.i201, align 4
  %arrayinit.element.i.i202 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i198, i32 1
  %60 = load i16, ptr %addr2.i.i199, align 2
  %61 = ptrtoint ptr %arrayinit.element.i.i202 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayinit.element.i.i202, align 4
  %flags5.i.i203 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i198, i32 1, i32 1
  %62 = ptrtoint ptr %flags5.i.i203 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 513, ptr %flags5.i.i203, align 2
  %len6.i.i204 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i198, i32 1, i32 2
  %63 = ptrtoint ptr %len6.i.i204 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 3, ptr %len6.i.i204, align 4
  %buf7.i.i205 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i198, i32 1, i32 3
  %64 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read_buf, align 4
  %66 = ptrtoint ptr %buf7.i.i205 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %buf7.i.i205, align 4
  %adapter.i.i207 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 3
  %67 = ptrtoint ptr %adapter.i.i207 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter.i.i207, align 8
  %call.i.i208 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i.i198, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i208)
  %cmp.not.i.i209 = icmp eq i32 %call.i.i208, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i198) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i197) #5
  br i1 %cmp.not.i.i209, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i208)
  %cmp9.i.i = icmp slt i32 %call.i.i208, 0
  %spec.select.i.i = select i1 %cmp9.i.i, i32 %call.i.i208, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %spec.select.i.i) #8
  br label %cleanup

if.end74:                                         ; preds = %if.end66
  %69 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read_buf, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 1
  %73 = and i8 %72, 112
  %and.i210 = zext i8 %73 to i32
  %shl.i = shl nuw nsw i32 %and.i210, 4
  %arrayidx1.i = getelementptr i8, ptr %70, i32 1
  %74 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %75 to i32
  %or.i = add nuw nsw i32 %conv2.i, 65535
  %sub.i = add nuw nsw i32 %or.i, %shl.i
  %76 = and i8 %72, 7
  %and6.i = zext i8 %76 to i32
  %shl7.i = shl nuw nsw i32 %and6.i, 8
  %arrayidx8.i = getelementptr i8, ptr %70, i32 2
  %77 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %78 to i32
  %or10.i = add nuw nsw i32 %conv9.i, 65535
  %sub11.i = add nuw nsw i32 %or10.i, %shl7.i
  %79 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chip_info, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool76.not = icmp eq i8 %82, 0
  br i1 %tobool76.not, label %if.end74.if.end80_crit_edge, label %if.then77

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %max_area = getelementptr inbounds %struct.st_chip_info, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %max_area to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %max_area, align 2
  %conv79 = zext i16 %84 to i32
  call void @input_set_abs_params(ptr noundef nonnull %call35, i32 noundef 48, i32 noundef 0, i32 noundef %conv79, i32 noundef 0, i32 noundef 0) #5
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end74.if.end80_crit_edge
  %conv81 = and i32 %sub.i, 65535
  call void @input_set_abs_params(ptr noundef nonnull %call35, i32 noundef 53, i32 noundef 0, i32 noundef %conv81, i32 noundef 0, i32 noundef 0) #5
  %conv82 = and i32 %sub11.i, 65535
  call void @input_set_abs_params(ptr noundef nonnull %call35, i32 noundef 54, i32 noundef 0, i32 noundef %conv82, i32 noundef 0, i32 noundef 0) #5
  %prop = getelementptr inbounds %struct.st1232_ts_data, ptr %call.i, i32 0, i32 2
  call void @touchscreen_parse_properties(ptr noundef nonnull %call35, i1 noundef zeroext true, ptr noundef %prop) #5
  %85 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chip_info, align 4
  %max_fingers84 = getelementptr inbounds %struct.st_chip_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %max_fingers84 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %max_fingers84, align 2
  %conv85 = zext i16 %88 to i32
  %call86 = call i32 @input_mt_init_slots(ptr noundef nonnull %call35, i32 noundef %conv85, i32 noundef 14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end93:                                         ; preds = %if.end80
  %89 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %irq, align 4
  %name96 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call97 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %90, ptr noundef null, ptr noundef nonnull @st1232_ts_irq_handler, i32 noundef 8192, ptr noundef %name96, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end104, label %do.end102

do.end102:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end104:                                        ; preds = %if.end93
  %91 = ptrtoint ptr %input_dev40 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %input_dev40, align 4
  %call106 = call i32 @input_register_device(ptr noundef %92) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end114, label %do.end111

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call35, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef %94) #8
  br label %cleanup

if.end114:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %95 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %do.end111, %do.end102, %do.end91, %do.end72, %if.end.i.cleanup_crit_edge, %do.end59, %if.then45, %if.end33.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end18, %do.end11, %do.end
  %retval.0 = phi i32 [ %19, %if.then45 ], [ %call.i191, %do.end59 ], [ %spec.select.i.i, %do.end72 ], [ %call86, %do.end91 ], [ %call97, %do.end102 ], [ %call106, %do.end111 ], [ 0, %if.end114 ], [ -22, %do.end18 ], [ -5, %do.end11 ], [ -19, %do.end ], [ -12, %if.end20.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ -12, %if.end33.cleanup_crit_edge ], [ -6, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st1232_ts_power_off(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_gpio.i = getelementptr inbounds %struct.st1232_ts_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.st1232_ts_power.exit_crit_edge, label %if.then.i

entry.st1232_ts_power.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %st1232_ts_power.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 1) #5
  br label %st1232_ts_power.exit

st1232_ts_power.exit:                             ; preds = %if.then.i, %entry.st1232_ts_power.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st1232_ts_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %pos.i = alloca [10 x %struct.input_mt_pos], align 2
  %z.i = alloca [10 x i8], align 1
  %slots.i = alloca [10 x i32], align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_buf_len = getelementptr inbounds %struct.st1232_ts_data, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %read_buf_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %read_buf_len, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 18, ptr %reg.addr.i, align 1
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr2.i, align 2
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = load i16, ptr %addr2.i, align 2
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 513, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %conv.i = trunc i32 %1 to i16
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %read_buf.i = getelementptr inbounds %struct.st1232_ts_data, ptr %dev_id, i32 0, i32 7
  %17 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_buf.i, align 4
  %19 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br i1 %cmp.not.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %input_dev.i = getelementptr inbounds %struct.st1232_ts_data, ptr %dev_id, i32 0, i32 1
  %22 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pos.i) #5
  %24 = call ptr @memset(ptr %pos.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %z.i) #5
  %25 = call ptr @memset(ptr %z.i, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %slots.i) #5
  %26 = call ptr @memset(ptr %slots.i, i32 255, i32 40)
  %chip_info.i = getelementptr inbounds %struct.st1232_ts_data, ptr %dev_id, i32 0, i32 5
  %27 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip_info.i, align 4
  %max_fingers79.i = getelementptr inbounds %struct.st_chip_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %max_fingers79.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max_fingers79.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp81.not.i = icmp eq i16 %30, 0
  br i1 %cmp81.not.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call91.i = call i32 @input_mt_assign_slots(ptr noundef %23, ptr noundef nonnull %slots.i, ptr noundef nonnull %pos.i, i32 noundef 0, i32 noundef 0) #5
  br label %st1232_ts_parse_and_report.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %prop.i = getelementptr inbounds %struct.st1232_ts_data, ptr %dev_id, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n_contacts.085.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %n_contacts.1.i, %if.end23.i.for.body.i_crit_edge ]
  %i.082.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc24.i, %if.end23.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read_buf.i, align 4
  %mul.i = shl i32 %i.082.i, 2
  %arrayidx.i = getelementptr i8, ptr %32, i32 %mul.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %conv3.i = zext i8 %34 to i32
  %and.i = and i32 %conv3.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end23.i_crit_edge, label %if.then.i

for.body.i.if.end23.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then.i:                                        ; preds = %for.body.i
  %and6.i = shl nuw nsw i32 %conv3.i, 4
  %shl.i = and i32 %and6.i, 1792
  %arrayidx7.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %35 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %36 to i32
  %or.i = or i32 %shl.i, %conv8.i
  %and11.i = shl nuw nsw i32 %conv3.i, 8
  %shl12.i = and i32 %and11.i, 1792
  %arrayidx13.i = getelementptr i8, ptr %arrayidx.i, i32 2
  %37 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %38 to i32
  %or15.i = or i32 %shl12.i, %conv14.i
  %arrayidx16.i = getelementptr [10 x %struct.input_mt_pos], ptr %pos.i, i32 0, i32 %n_contacts.085.i
  call void @touchscreen_set_mt_pos(ptr noundef %arrayidx16.i, ptr noundef %prop.i, i32 noundef %or.i, i32 noundef %or15.i) #5
  %39 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_info.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool18.not.i = icmp eq i8 %42, 0
  br i1 %tobool18.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then19.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then19.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read_buf.i, align 4
  %add.i = add nuw nsw i32 %i.082.i, 6
  %arrayidx21.i = getelementptr i8, ptr %44, i32 %add.i
  %45 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr [10 x i8], ptr %z.i, i32 0, i32 %n_contacts.085.i
  %47 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx22.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then19.i, %if.then.i.if.end.i_crit_edge
  %inc.i = add i32 %n_contacts.085.i, 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end.i, %for.body.i.if.end23.i_crit_edge
  %n_contacts.1.i = phi i32 [ %inc.i, %if.end.i ], [ %n_contacts.085.i, %for.body.i.if.end23.i_crit_edge ]
  %inc24.i = add nuw nsw i32 %i.082.i, 1
  %48 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chip_info.i, align 4
  %max_fingers.i = getelementptr inbounds %struct.st_chip_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %max_fingers.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %max_fingers.i, align 2
  %conv.i29 = zext i16 %51 to i32
  %cmp.i = icmp ult i32 %inc24.i, %conv.i29
  br i1 %cmp.i, label %if.end23.i.for.body.i_crit_edge, label %for.end.i

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end23.i
  %call.i30 = call i32 @input_mt_assign_slots(ptr noundef %23, ptr noundef nonnull %slots.i, ptr noundef nonnull %pos.i, i32 noundef %n_contacts.1.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_contacts.1.i)
  %cmp2787.i = icmp sgt i32 %n_contacts.1.i, 0
  br i1 %cmp2787.i, label %for.end.i.for.body29.i_crit_edge, label %for.end.i.st1232_ts_parse_and_report.exit_crit_edge

for.end.i.st1232_ts_parse_and_report.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st1232_ts_parse_and_report.exit

for.end.i.for.body29.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.inc45.i.for.body29.i_crit_edge, %for.end.i.for.body29.i_crit_edge
  %i.188.i = phi i32 [ %inc46.i, %for.inc45.i.for.body29.i_crit_edge ], [ 0, %for.end.i.for.body29.i_crit_edge ]
  %arrayidx30.i = getelementptr [10 x i32], ptr %slots.i, i32 0, i32 %i.188.i
  %52 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx30.i, align 4
  call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 47, i32 noundef %53) #5
  %call31.i = call zeroext i1 @input_mt_report_slot_state(ptr noundef %23, i32 noundef 0, i1 noundef zeroext true) #5
  %arrayidx32.i = getelementptr [10 x %struct.input_mt_pos], ptr %pos.i, i32 0, i32 %i.188.i
  %54 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx32.i, align 2
  %conv34.i = sext i16 %55 to i32
  call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 53, i32 noundef %conv34.i) #5
  %y36.i = getelementptr [10 x %struct.input_mt_pos], ptr %pos.i, i32 0, i32 %i.188.i, i32 1
  %56 = ptrtoint ptr %y36.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %y36.i, align 2
  %conv37.i = sext i16 %57 to i32
  call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 54, i32 noundef %conv37.i) #5
  %58 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip_info.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool40.not.i = icmp eq i8 %61, 0
  br i1 %tobool40.not.i, label %for.body29.i.for.inc45.i_crit_edge, label %if.then41.i

for.body29.i.for.inc45.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc45.i

if.then41.i:                                      ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx42.i = getelementptr [10 x i8], ptr %z.i, i32 0, i32 %i.188.i
  %62 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %63 to i32
  call void @input_event(ptr noundef %23, i32 noundef 3, i32 noundef 48, i32 noundef %conv43.i) #5
  br label %for.inc45.i

for.inc45.i:                                      ; preds = %if.then41.i, %for.body29.i.for.inc45.i_crit_edge
  %inc46.i = add nuw nsw i32 %i.188.i, 1
  %exitcond.not.i = icmp eq i32 %inc46.i, %n_contacts.1.i
  br i1 %exitcond.not.i, label %for.inc45.i.st1232_ts_parse_and_report.exit_crit_edge, label %for.inc45.i.for.body29.i_crit_edge

for.inc45.i.for.body29.i_crit_edge:               ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.i

for.inc45.i.st1232_ts_parse_and_report.exit_crit_edge: ; preds = %for.inc45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st1232_ts_parse_and_report.exit

st1232_ts_parse_and_report.exit:                  ; preds = %for.inc45.i.st1232_ts_parse_and_report.exit_crit_edge, %for.end.i.st1232_ts_parse_and_report.exit_crit_edge, %for.end.thread.i
  %n_contacts.0.lcssa93.i = phi i32 [ 0, %for.end.thread.i ], [ %n_contacts.1.i, %for.end.i.st1232_ts_parse_and_report.exit_crit_edge ], [ 1, %for.inc45.i.st1232_ts_parse_and_report.exit_crit_edge ]
  call void @input_mt_sync_frame(ptr noundef %23) #5
  call void @input_event(ptr noundef %23, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %slots.i) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %z.i) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pos.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_contacts.0.lcssa93.i)
  %tobool2.not = icmp eq i32 %n_contacts.0.lcssa93.i, 0
  %dev = getelementptr inbounds %struct.st1232_ts_data, ptr %dev_id, i32 0, i32 3, i32 2
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  %tobool4.not = icmp eq ptr %65, null
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %st1232_ts_parse_and_report.exit
  br i1 %tobool4.not, label %if.then3.out_crit_edge, label %if.then5

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %low_latency_req = getelementptr inbounds %struct.st1232_ts_data, ptr %dev_id, i32 0, i32 3
  %call7 = call i32 @dev_pm_qos_remove_request(ptr noundef %low_latency_req) #5
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %dev, align 4
  br label %out

if.else:                                          ; preds = %st1232_ts_parse_and_report.exit
  br i1 %tobool4.not, label %if.then14, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %low_latency_req11 = getelementptr inbounds %struct.st1232_ts_data, ptr %dev_id, i32 0, i32 3
  %67 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_id, align 4
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4
  %call17 = call i32 @dev_pm_qos_add_ancestor_request(ptr noundef %dev15, ptr noundef %low_latency_req11, i32 noundef 1, i32 noundef 100) #5
  br label %out

out:                                              ; preds = %if.then14, %if.else.out_crit_edge, %if.then5, %if.then3.out_crit_edge, %entry.out_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_ancestor_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_set_mt_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st1232_ts_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #5
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %reset_gpio.i = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i5 = icmp eq ptr %8, null
  br i1 %tobool.not.i5, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %8, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st1232_ts_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %device_may_wakeup.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.then_crit_edge, label %device_may_wakeup.exit.if.end_crit_edge

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

device_may_wakeup.exit.if.then_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %device_may_wakeup.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %reset_gpio.i = getelementptr inbounds %struct.st1232_ts_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset_gpio.i, align 4
  %tobool.not.i5 = icmp eq ptr %6, null
  br i1 %tobool.not.i5, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %6, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge
  %irq = getelementptr i8, ptr %dev, i32 932
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %8) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_st1232__288_397_st1232_ts_driver_init6, !1, !"__initcall__kmod_st1232__288_397_st1232_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/st1232.c", i32 397, i32 1}
!2 = !{ptr @__exitcall_st1232_ts_driver_exit, !1, !"__exitcall_st1232_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/st1232.c", i32 399, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/st1232.c", i32 400, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/st1232.c", i32 401, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/input/touchscreen/st1232.c", i32 402, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/st1232.c", i32 390, i32 11}
!14 = !{ptr @st1232_ts_driver, !15, !"st1232_ts_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/st1232.c", i32 386, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/st1232.c", i32 236, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @st1232_ts_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @st1232_ts_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/st1232.c", i32 241, i32 3}
!26 = !{ptr @st1232_ts_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @st1232_ts_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/st1232.c", i32 246, i32 3}
!30 = !{ptr @st1232_ts_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @st1232_ts_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/touchscreen/st1232.c", i32 273, i32 3}
!34 = !{ptr @st1232_ts_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @st1232_ts_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/touchscreen/st1232.c", i32 282, i32 3}
!38 = !{ptr @st1232_ts_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @st1232_ts_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/touchscreen/st1232.c", i32 287, i32 20}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/st1232.c", i32 298, i32 3}
!44 = !{ptr @st1232_ts_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @st1232_ts_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/touchscreen/st1232.c", i32 318, i32 3}
!48 = !{ptr @st1232_ts_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @st1232_ts_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/st1232.c", i32 327, i32 3}
!52 = !{ptr @st1232_ts_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @st1232_ts_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/touchscreen/st1232.c", i32 333, i32 3}
!56 = !{ptr @st1232_ts_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @st1232_ts_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @st1232_ts_dt_ids, !59, !"st1232_ts_dt_ids", i1 false, i1 false}
!59 = !{!"../drivers/input/touchscreen/st1232.c", i32 379, i32 34}
!60 = !{ptr @st1232_chip_info, !61, !"st1232_chip_info", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/st1232.c", i32 211, i32 34}
!62 = !{ptr @st1633_chip_info, !63, !"st1633_chip_info", i1 false, i1 false}
!63 = !{!"../drivers/input/touchscreen/st1232.c", i32 217, i32 34}
!64 = !{ptr @st1232_ts_pm_ops, !65, !"st1232_ts_pm_ops", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/st1232.c", i32 369, i32 8}
!66 = !{ptr @st1232_ts_id, !67, !"st1232_ts_id", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/st1232.c", i32 372, i32 35}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
