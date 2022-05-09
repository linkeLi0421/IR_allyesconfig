; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-mcp2221.c_pt.bc'
source_filename = "../drivers/hid/hid-mcp2221.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mcp2221 = type { ptr, %struct.i2c_adapter, %struct.mutex, %struct.completion, ptr, [64 x i8], i32, i32, i8, ptr, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_hid_mcp2221__288_937_mcp2221_driver_init6 = internal global ptr @mcp2221_driver_init, section ".initcall6.init", align 4
@mcp2221_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @mcp2221_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @mcp2221_probe, ptr @mcp2221_remove, ptr null, ptr @mcp2221_raw_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mcp2221_driver_exit = internal global ptr @mcp2221_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"hid_mcp2221.author=Rishi Gupta <gupt21@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [71 x i8] c"hid_mcp2221.description=MCP2221 Microchip HID USB to I2C master bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"hid_mcp2221.file=drivers/hid/hid-mcp2221\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"hid_mcp2221.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_mcp2221\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcp2221\00", [24 x i8] zeroinitializer }, align 32
@mcp2221_devices = internal constant { [2 x %struct.hid_device_id], [32 x i8] } { [2 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1240, i32 221, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@mcp2221_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't parse reports\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcp2221_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hid/hid-mcp2221.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp2221_probe._entry_ptr = internal global ptr @mcp2221_probe._entry, section ".printk_index", align 4
@mcp2221_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 842, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't start hardware\0A\00", [42 x i8] zeroinitializer }, align 32
@mcp2221_probe._entry_ptr.9 = internal global ptr @mcp2221_probe._entry.7, section ".printk_index", align 4
@mcp2221_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 848, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't open device\0A\00", [45 x i8] zeroinitializer }, align 32
@mcp2221_probe._entry_ptr.12 = internal global ptr @mcp2221_probe._entry.10, section ".printk_index", align 4
@mcp2221_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mcp->lock\00", [21 x i8] zeroinitializer }, align 32
@mcp_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @mcp_i2c_xfer, ptr null, ptr @mcp_smbus_xfer, ptr null, ptr @mcp_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MCP2221 usb-i2c bridge on hidraw%d\00", [61 x i8] zeroinitializer }, align 32
@mcp2221_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 875, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't add usb-i2c adapter: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mcp2221_probe._entry_ptr.17 = internal global ptr @mcp2221_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcp2221_gpio\00", [19 x i8] zeroinitializer }, align 32
@mcp2221_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mcp2221_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mcp_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported multi-msg i2c transaction\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcp_i2c_xfer\00", [19 x i8] zeroinitializer }, align 32
@mcp_i2c_xfer._entry_ptr = internal global ptr @mcp_i2c_xfer._entry, section ".printk_index", align 4
@mcp_i2c_xfer._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 352, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mcp_i2c_xfer._entry_ptr.23 = internal global ptr @mcp_i2c_xfer._entry.22, section ".printk_index", align 4
@mcp_smbus_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 543, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unsupported smbus transaction size:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcp_smbus_xfer\00", [17 x i8] zeroinitializer }, align 32
@mcp_smbus_xfer._entry_ptr = internal global ptr @mcp_smbus_xfer._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 16, i64 64, i64 80, i64 81, i64 144, i64 145, i64 147, i64 148]
@__sancov_gen_cov_switch_values.26 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 18, i64 33, i64 35, i64 37, i64 68, i64 98]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 37]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 18, i64 33, i64 35, i64 37, i64 68, i64 98]
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"mcp2221_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 928, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 937, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 929, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"mcp2221_devices\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 922, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 836, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 842, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 848, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 852, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"mcp_i2c_algo\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 561, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 870, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 875, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 887, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 898, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 87, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 346, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 351, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [29 x i8] c"../drivers/hid/hid-mcp2221.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 542, i32 3 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mcp2221_driver_exit, ptr @__initcall__kmod_hid_mcp2221__288_937_mcp2221_driver_init6, ptr @mcp2221_driver_exit, ptr @mcp2221_probe._entry, ptr @mcp2221_probe._entry.10, ptr @mcp2221_probe._entry.15, ptr @mcp2221_probe._entry.7, ptr @mcp2221_probe._entry_ptr, ptr @mcp2221_probe._entry_ptr.12, ptr @mcp2221_probe._entry_ptr.17, ptr @mcp2221_probe._entry_ptr.9, ptr @mcp_i2c_xfer._entry, ptr @mcp_i2c_xfer._entry.22, ptr @mcp_i2c_xfer._entry_ptr, ptr @mcp_i2c_xfer._entry_ptr.23, ptr @mcp_smbus_xfer._entry, ptr @mcp_smbus_xfer._entry_ptr, ptr @mcp2221_driver, ptr @.str, ptr @.str.1, ptr @mcp2221_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @mcp2221_probe.__key, ptr @.str.13, ptr @mcp_i2c_algo, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @mcp2221_probe.lock_key, ptr @mcp2221_probe.request_key, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp2221_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp2221_devices to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp2221_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp2221_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp2221_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp2221_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp2221_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp2221_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp2221_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_i2c_xfer._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_smbus_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp2221_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @mcp2221_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcp2221_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @mcp2221_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp2221_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1608, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i130 = tail call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool2.not = icmp eq i32 %call.i130, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call i32 @hid_hw_open(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %err_hstop

do.body22:                                        ; preds = %if.end13
  %lock = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mcp2221_probe.__key) #8
  %wait_in_report = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %wait_in_report to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wait_in_report, align 4
  %wait.i = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #8
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %hdev, ptr %call.i, align 8
  %cur_i2c_clk_div = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %cur_i2c_clk_div to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 27, ptr %cur_i2c_clk_div, align 8
  %adapter = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %class, align 4
  %algo = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mcp_i2c_algo, ptr %algo, align 8
  %retries = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 1, i32 8
  %7 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %retries, align 8
  %parent = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 1, i32 9, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 8
  %name = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 1, i32 12
  %hidraw = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 38
  %9 = ptrtoint ptr %hidraw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hidraw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call38 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.14, i32 noundef %12)
  %call40 = tail call i32 @i2c_add_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call40) #11
  br label %err_i2c

if.end47:                                         ; preds = %do.body22
  %driver_data.i.i131 = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 1, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i131 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i131, align 4
  %call.i132 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 348, i32 noundef 3520) #8
  %gc = getelementptr inbounds %struct.mcp2221, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i132, ptr %gc, align 4
  %tobool52.not = icmp eq ptr %call.i132, null
  br i1 %tobool52.not, label %if.end47.err_gc_crit_edge, label %if.end54

if.end47.err_gc_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_gc

if.end54:                                         ; preds = %if.end47
  %15 = ptrtoint ptr %call.i132 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.18, ptr %call.i132, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i132, i32 0, i32 8
  %16 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mcp_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i132, i32 0, i32 9
  %17 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mcp_gpio_direction_output, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i132, i32 0, i32 7
  %18 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mcp_gpio_get_direction, ptr %get_direction, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i132, i32 0, i32 12
  %19 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mcp_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i132, i32 0, i32 10
  %20 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mcp_gpio_get, ptr %get, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i132, i32 0, i32 20
  %21 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 4, ptr %ngpio, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i132, i32 0, i32 19
  %22 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %base, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i132, i32 0, i32 23
  %23 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %can_sleep, align 4
  %parent66 = getelementptr inbounds %struct.gpio_chip, ptr %call.i132, i32 0, i32 2
  %24 = ptrtoint ptr %parent66 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %parent66, align 4
  %call69 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i132, ptr noundef nonnull %call.i, ptr noundef nonnull @mcp2221_probe.lock_key, ptr noundef nonnull @mcp2221_probe.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end54.cleanup_crit_edge, label %if.end54.err_gc_crit_edge

if.end54.err_gc_crit_edge:                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_gc

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_gc:                                           ; preds = %if.end54.err_gc_crit_edge, %if.end47.err_gc_crit_edge
  %ret.0 = phi i32 [ %call69, %if.end54.err_gc_crit_edge ], [ -12, %if.end47.err_gc_crit_edge ]
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  br label %err_i2c

err_i2c:                                          ; preds = %err_gc, %do.end45
  %ret.1 = phi i32 [ %call40, %do.end45 ], [ %ret.0, %err_gc ]
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  tail call void @hid_hw_close(ptr noundef %26) #8
  br label %err_hstop

err_hstop:                                        ; preds = %err_i2c, %do.end19
  %ret.2 = phi i32 [ %call14, %do.end19 ], [ %ret.1, %err_i2c ]
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 8
  tail call void @hid_hw_stop(ptr noundef %28) #8
  br label %cleanup

cleanup:                                          ; preds = %err_hstop, %if.end54.cleanup_crit_edge, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i130, %do.end ], [ %call6, %do.end11 ], [ %ret.2, %err_hstop ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp2221_remove(ptr nocapture noundef readonly %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @hid_hw_close(ptr noundef %3) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @hid_hw_stop(ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp2221_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr nocapture noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default135 [
    i8 -112, label %entry.sw.bb_crit_edge
    i8 -108, label %entry.sw.bb_crit_edge226
    i8 -111, label %entry.sw.bb_crit_edge227
    i8 -109, label %entry.sw.bb_crit_edge228
    i8 16, label %sw.bb6
    i8 64, label %sw.bb29
    i8 81, label %sw.bb77
    i8 80, label %sw.bb109
  ]

entry.sw.bb_crit_edge228:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge227:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge226:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge226, %entry.sw.bb_crit_edge227, %entry.sw.bb_crit_edge228
  %arrayidx1 = getelementptr i8, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cond142 = icmp eq i8 %6, 0
  br i1 %cond142, label %sw.bb.sw.epilog_crit_edge, label %sw.default

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %arrayidx.i = getelementptr i8, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %8, label %sw.default.i [
    i8 37, label %sw.default.sw.epilog_crit_edge
    i8 33, label %sw.default.sw.epilog_crit_edge229
    i8 18, label %sw.default.sw.bb1.i_crit_edge
    i8 98, label %sw.default.sw.bb1.i_crit_edge230
    i8 35, label %sw.default.sw.bb1.i_crit_edge231
    i8 68, label %sw.default.sw.bb1.i_crit_edge232
    i8 1, label %sw.bb2.i
    i8 0, label %sw.bb3.i
  ]

sw.default.sw.bb1.i_crit_edge232:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

sw.default.sw.bb1.i_crit_edge231:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

sw.default.sw.bb1.i_crit_edge230:                 ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

sw.default.sw.bb1.i_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

sw.default.sw.epilog_crit_edge229:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.default.sw.bb1.i_crit_edge, %sw.default.sw.bb1.i_crit_edge230, %sw.default.sw.bb1.i_crit_edge231, %sw.default.sw.bb1.i_crit_edge232
  br label %sw.epilog

sw.bb2.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default.i:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.default.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge229, %sw.bb.sw.epilog_crit_edge
  %ret.0.i.sink = phi i32 [ 0, %sw.bb.sw.epilog_crit_edge ], [ -5, %sw.default.i ], [ 0, %sw.bb3.i ], [ -11, %sw.bb2.i ], [ -110, %sw.bb1.i ], [ -6, %sw.default.sw.epilog_crit_edge ], [ -6, %sw.default.sw.epilog_crit_edge229 ]
  %status5 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %status5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ret.0.i.sink, ptr %status5, align 4
  br label %sw.epilog138

sw.bb6:                                           ; preds = %entry
  %arrayidx7 = getelementptr i8, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cond141 = icmp eq i8 %12, 0
  br i1 %cond141, label %sw.bb9, label %sw.bb6.sw.epilog27_crit_edge

sw.bb6.sw.epilog27_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog27

sw.bb9:                                           ; preds = %sw.bb6
  %arrayidx10 = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp = icmp eq i8 %14, 32
  br i1 %cmp, label %land.lhs.true, label %sw.bb9.if.end_crit_edge

sw.bb9.if.end_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb9
  %arrayidx13 = getelementptr i8, ptr %data, i32 3
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %16)
  %cmp15.not = icmp eq i8 %16, 32
  br i1 %cmp15.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.sw.epilog27_crit_edge

land.lhs.true.sw.epilog27_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog27

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.bb9.if.end_crit_edge
  %arrayidx18 = getelementptr i8, ptr %data, i32 20
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  %19 = and i8 %18, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end22, label %if.end.sw.epilog27_crit_edge

if.end.sw.epilog27_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog27

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call fastcc i32 @mcp_get_i2c_eng_state(ptr noundef %data, i8 noundef zeroext 8)
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %if.end22, %if.end.sw.epilog27_crit_edge, %land.lhs.true.sw.epilog27_crit_edge, %sw.bb6.sw.epilog27_crit_edge
  %.sink = phi i32 [ %call23, %if.end22 ], [ -11, %land.lhs.true.sw.epilog27_crit_edge ], [ -6, %if.end.sw.epilog27_crit_edge ], [ -5, %sw.bb6.sw.epilog27_crit_edge ]
  %status26 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %status26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %status26, align 4
  br label %sw.epilog138

sw.bb29:                                          ; preds = %entry
  %arrayidx30 = getelementptr i8, ptr %data, i32 1
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cond140 = icmp eq i8 %22, 0
  br i1 %cond140, label %sw.bb32, label %sw.bb29.sw.epilog75_crit_edge

sw.bb29.sw.epilog75_crit_edge:                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog75

sw.bb32:                                          ; preds = %sw.bb29
  %arrayidx33 = getelementptr i8, ptr %data, i32 2
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx33, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %24, label %if.end49 [
    i8 37, label %sw.bb32.sw.epilog75_crit_edge
    i8 0, label %land.lhs.true42
  ]

sw.bb32.sw.epilog75_crit_edge:                    ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog75

land.lhs.true42:                                  ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx43 = getelementptr i8, ptr %data, i32 3
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp45 = icmp eq i8 %27, 0
  %spec.select225 = select i1 %cmp45, i32 0, i32 -5
  br label %sw.epilog75

if.end49:                                         ; preds = %sw.bb32
  %arrayidx50 = getelementptr i8, ptr %data, i32 3
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %29)
  %cmp52 = icmp ne i8 %29, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %24)
  %cmp59 = icmp eq i8 %24, 85
  %or.cond = select i1 %cmp52, i1 %cmp59, i1 false
  br i1 %or.cond, label %if.then61, label %if.end49.sw.epilog75_crit_edge

if.end49.sw.epilog75_crit_edge:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog75

if.then61:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %conv51 = zext i8 %29 to i32
  %rxbuf = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rxbuf, align 4
  %rxbuf_idx = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %rxbuf_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rxbuf_idx, align 8
  %arrayidx62 = getelementptr i8, ptr %31, i32 %33
  %arrayidx63 = getelementptr i8, ptr %data, i32 4
  %34 = call ptr @memcpy(ptr %arrayidx62, ptr %arrayidx63, i32 %conv51)
  %35 = load i32, ptr %rxbuf_idx, align 8
  %36 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx50, align 1
  %conv68 = zext i8 %37 to i32
  %add = add i32 %35, %conv68
  store i32 %add, ptr %rxbuf_idx, align 8
  br label %sw.epilog75

sw.epilog75:                                      ; preds = %if.then61, %if.end49.sw.epilog75_crit_edge, %land.lhs.true42, %sw.bb32.sw.epilog75_crit_edge, %sw.bb29.sw.epilog75_crit_edge
  %.sink223 = phi i32 [ 0, %if.then61 ], [ -6, %sw.bb32.sw.epilog75_crit_edge ], [ -5, %if.end49.sw.epilog75_crit_edge ], [ -5, %sw.bb29.sw.epilog75_crit_edge ], [ %spec.select225, %land.lhs.true42 ]
  %status74 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %status74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink223, ptr %status74, align 4
  br label %sw.epilog138

sw.bb77:                                          ; preds = %entry
  %arrayidx78 = getelementptr i8, ptr %data, i32 1
  %39 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cond139 = icmp eq i8 %40, 0
  br i1 %cond139, label %sw.bb80, label %sw.default105

sw.bb80:                                          ; preds = %sw.bb77
  %gp_idx = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %gp_idx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %gp_idx, align 8
  %idxprom = zext i8 %42 to i32
  %arrayidx81 = getelementptr i8, ptr %data, i32 %idxprom
  %43 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx81, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %44)
  %cmp83 = icmp eq i8 %44, -18
  br i1 %cmp83, label %sw.bb80.if.then92_crit_edge, label %lor.lhs.false

sw.bb80.if.then92_crit_edge:                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

lor.lhs.false:                                    ; preds = %sw.bb80
  %add87 = add nuw nsw i32 %idxprom, 1
  %arrayidx88 = getelementptr i8, ptr %data, i32 %add87
  %45 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %46)
  %cmp90 = icmp eq i8 %46, -17
  br i1 %cmp90, label %lor.lhs.false.if.then92_crit_edge, label %if.else

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %sw.bb80.if.then92_crit_edge
  %status93 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %status93 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -2, ptr %status93, align 4
  br label %sw.epilog138

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool97 = icmp ne i8 %44, 0
  %lnot.ext = zext i1 %tobool97 to i32
  %status99 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %48 = ptrtoint ptr %status99 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %lnot.ext, ptr %status99, align 4
  %49 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx88, align 1
  %gpio_dir = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 11
  %51 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %gpio_dir, align 1
  br label %sw.epilog138

sw.default105:                                    ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #10
  %status106 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %status106 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -11, ptr %status106, align 4
  br label %sw.epilog138

sw.bb109:                                         ; preds = %entry
  %arrayidx110 = getelementptr i8, ptr %data, i32 1
  %53 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cond = icmp eq i8 %54, 0
  br i1 %cond, label %sw.bb112, label %sw.bb109.sw.epilog133_crit_edge

sw.bb109.sw.epilog133_crit_edge:                  ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog133

sw.bb112:                                         ; preds = %sw.bb109
  %gp_idx113 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 10
  %55 = ptrtoint ptr %gp_idx113 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %gp_idx113, align 8
  %idxprom114 = zext i8 %56 to i32
  %arrayidx115 = getelementptr i8, ptr %data, i32 %idxprom114
  %57 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %58)
  %cmp117 = icmp eq i8 %58, -18
  br i1 %cmp117, label %sw.bb112.sw.epilog133_crit_edge, label %lor.lhs.false119

sw.bb112.sw.epilog133_crit_edge:                  ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog133

lor.lhs.false119:                                 ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %idxprom114, -1
  %arrayidx122 = getelementptr i8, ptr %data, i32 %sub
  %59 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %60)
  %cmp124 = icmp eq i8 %60, -18
  %spec.select = select i1 %cmp124, i32 -2, i32 0
  br label %sw.epilog133

sw.epilog133:                                     ; preds = %lor.lhs.false119, %sw.bb112.sw.epilog133_crit_edge, %sw.bb109.sw.epilog133_crit_edge
  %.sink224 = phi i32 [ -2, %sw.bb112.sw.epilog133_crit_edge ], [ -11, %sw.bb109.sw.epilog133_crit_edge ], [ %spec.select, %lor.lhs.false119 ]
  %status127 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %61 = ptrtoint ptr %status127 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink224, ptr %status127, align 4
  br label %sw.epilog138

sw.default135:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status136 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %62 = ptrtoint ptr %status136 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -5, ptr %status136, align 4
  br label %sw.epilog138

sw.epilog138:                                     ; preds = %sw.default135, %sw.epilog133, %sw.default105, %if.else, %if.then92, %sw.epilog75, %sw.epilog27, %sw.epilog
  %wait_in_report137 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %wait_in_report137) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call1 = tail call fastcc i32 @mcp_gpio_dir_set(ptr noundef %call, i32 noundef %offset, i8 noundef zeroext 1)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %lock = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call1 = tail call fastcc i32 @mcp_gpio_dir_set(ptr noundef %call, i32 noundef %offset, i8 noundef zeroext 0)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mcp_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp_gpio_get_direction(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %txbuf = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 81, ptr %txbuf, align 8
  %offset.tr = trunc i32 %offset to i8
  %1 = shl i8 %offset.tr, 1
  %conv = add i8 %1, 2
  %gp_idx = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %gp_idx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %gp_idx, align 8
  %lock = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %wait_in_report.i = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 1, i32 noundef 3264) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.mcp_send_data_req_status.exit.thread_crit_edge, label %mcp_send_report.exit.i

entry.mcp_send_data_req_status.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit.thread

mcp_send_report.exit.i:                           ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 8
  %call1.i.i = tail call i32 @hid_hw_output_report(ptr noundef %5, ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i) #8
  %6 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge

mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end.i:                                         ; preds = %mcp_send_report.exit.i
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.mcp_send_data_req_status.exit.thread_crit_edge, label %if.end6.i

if.end.i.mcp_send_data_req_status.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  br label %mcp_send_data_req_status.exit

mcp_send_data_req_status.exit.thread:             ; preds = %if.end.i.mcp_send_data_req_status.exit.thread_crit_edge, %entry.mcp_send_data_req_status.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %entry.mcp_send_data_req_status.exit.thread_crit_edge ], [ -110, %if.end.i.mcp_send_data_req_status.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

mcp_send_data_req_status.exit:                    ; preds = %if.end6.i, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end6.i ], [ %6, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %mcp_send_data_req_status.exit.cleanup_crit_edge

mcp_send_data_req_status.exit.cleanup_crit_edge:  ; preds = %mcp_send_data_req_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mcp_send_data_req_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  %gpio_dir = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 11
  %9 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gpio_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp eq i8 %10, 1
  %. = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mcp_send_data_req_status.exit.cleanup_crit_edge, %mcp_send_data_req_status.exit.thread
  %retval.0 = phi i32 [ %retval.0.i, %mcp_send_data_req_status.exit.cleanup_crit_edge ], [ %., %if.end ], [ %retval.0.i.ph, %mcp_send_data_req_status.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %txbuf = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 5
  %0 = call ptr @memset(ptr %txbuf, i32 0, i32 18)
  %1 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 80, ptr %txbuf, align 8
  %offset.tr = trunc i32 %offset to i8
  %2 = shl i8 %offset.tr, 2
  %conv = or i8 %2, 3
  %gp_idx = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 10
  %3 = ptrtoint ptr %gp_idx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %gp_idx, align 8
  %conv4 = zext i8 %conv to i32
  %sub = add nsw i32 %conv4, -1
  %arrayidx5 = getelementptr %struct.mcp2221, ptr %call, i32 0, i32 5, i32 %sub
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %conv7 = zext i1 %tobool to i8
  %5 = ptrtoint ptr %gp_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gp_idx, align 8
  %idxprom = zext i8 %6 to i32
  %arrayidx10 = getelementptr %struct.mcp2221, ptr %call, i32 0, i32 5, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %arrayidx10, align 1
  %lock = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %wait_in_report.i = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 18, i32 noundef 3264) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.mcp_send_data_req_status.exit_crit_edge, label %mcp_send_report.exit.i

entry.mcp_send_data_req_status.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

mcp_send_report.exit.i:                           ; preds = %entry
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 8
  %call1.i.i = tail call i32 @hid_hw_output_report(ptr noundef %10, ptr noundef nonnull %call.i.i, i32 noundef 18) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge

mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end.i:                                         ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  br label %mcp_send_data_req_status.exit

mcp_send_data_req_status.exit:                    ; preds = %if.end.i, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge, %entry.mcp_send_data_req_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %txbuf = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 81, ptr %txbuf, align 8
  %offset.tr = trunc i32 %offset to i8
  %1 = shl i8 %offset.tr, 1
  %conv = add i8 %1, 3
  %gp_idx = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %gp_idx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %gp_idx, align 8
  %lock = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %wait_in_report.i = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 1, i32 noundef 3264) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.mcp_send_data_req_status.exit_crit_edge, label %mcp_send_report.exit.i

entry.mcp_send_data_req_status.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

mcp_send_report.exit.i:                           ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 8
  %call1.i.i = tail call i32 @hid_hw_output_report(ptr noundef %5, ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i) #8
  %6 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge

mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end.i:                                         ; preds = %mcp_send_report.exit.i
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.mcp_send_data_req_status.exit_crit_edge, label %if.end6.i

if.end.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr inbounds %struct.mcp2221, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status.i, align 4
  br label %mcp_send_data_req_status.exit

mcp_send_data_req_status.exit:                    ; preds = %if.end6.i, %if.end.i.mcp_send_data_req_status.exit_crit_edge, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge, %entry.mcp_send_data_req_status.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end6.i ], [ %6, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge ], [ -110, %if.end.i.mcp_send_data_req_status.exit_crit_edge ], [ -12, %entry.mcp_send_data_req_status.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp_i2c_xfer(ptr noundef %adapter, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.hid_hw_power.exit_crit_edge, label %cond.true.i

entry.hid_hw_power.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hid_hw_power.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 32) #8
  br label %hid_hw_power.exit

hid_hw_power.exit:                                ; preds = %cond.true.i, %entry.hid_hw_power.exit_crit_edge
  %lock = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  tail call fastcc void @mcp_set_i2c_speed(ptr noundef %1)
  %8 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %num, label %do.end49 [
    i32 1, label %if.then3
    i32 2, label %if.then15
  ]

if.then3:                                         ; preds = %hid_hw_power.exit
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool4.not = icmp eq i16 %11, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call fastcc i32 @mcp_i2c_smbus_read(ptr noundef %1, ptr noundef %msgs, i32 noundef 145, i16 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
  br label %if.end8

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @mcp_i2c_write(ptr noundef %1, ptr noundef %msgs, i32 noundef 144, i8 noundef zeroext 1)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %ret.0 = phi i32 [ %call6, %if.then5 ], [ %call7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool9.not, i32 1, i32 %ret.0
  br label %exit

if.then15:                                        ; preds = %hid_hw_power.exit
  %12 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msgs, align 4
  %arrayidx17 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp20 = icmp eq i16 %13, %15
  br i1 %cmp20, label %land.lhs.true, label %if.then15.do.end_crit_edge

if.then15.do.end_crit_edge:                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %if.then15
  %flags23 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %16 = ptrtoint ptr %flags23 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags23, align 2
  %18 = and i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool26.not = icmp eq i16 %18, 0
  br i1 %tobool26.not, label %land.lhs.true27, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true27:                                  ; preds = %land.lhs.true
  %flags29 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %19 = ptrtoint ptr %flags29 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags29, align 2
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool32.not = icmp eq i16 %21, 0
  br i1 %tobool32.not, label %land.lhs.true27.do.end_crit_edge, label %if.then33

land.lhs.true27.do.end_crit_edge:                 ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then33:                                        ; preds = %land.lhs.true27
  %call35 = tail call fastcc i32 @mcp_i2c_write(ptr noundef %1, ptr noundef %msgs, i32 noundef 148, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then33.exit_crit_edge

if.then33.exit_crit_edge:                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end38:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call fastcc i32 @mcp_i2c_smbus_read(ptr noundef %1, ptr noundef %arrayidx17, i32 noundef 147, i16 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  %spec.select81 = select i1 %tobool41.not, i32 2, i32 %call40
  br label %exit

do.end:                                           ; preds = %land.lhs.true27.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.then15.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  br label %exit

do.end49:                                         ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.20) #11
  br label %exit

exit:                                             ; preds = %do.end49, %do.end, %if.end38, %if.then33.exit_crit_edge, %if.end8
  %ret.1 = phi i32 [ -95, %do.end ], [ %call35, %if.then33.exit_crit_edge ], [ -95, %do.end49 ], [ %spec.select, %if.end8 ], [ %spec.select81, %if.end38 ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %ll_driver.i82 = getelementptr inbounds %struct.hid_device, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %ll_driver.i82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ll_driver.i82, align 4
  %power.i83 = getelementptr inbounds %struct.hid_ll_driver, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %power.i83 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %power.i83, align 4
  %tobool.not.i84 = icmp eq ptr %27, null
  br i1 %tobool.not.i84, label %exit.hid_hw_power.exit87_crit_edge, label %cond.true.i86

exit.hid_hw_power.exit87_crit_edge:               ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hid_hw_power.exit87

cond.true.i86:                                    ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i85 = tail call i32 %27(ptr noundef %23, i32 noundef 2) #8
  br label %hid_hw_power.exit87

hid_hw_power.exit87:                              ; preds = %cond.true.i86, %exit.hid_hw_power.exit87_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp_smbus_xfer(ptr nocapture noundef readonly %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ll_driver.i = getelementptr inbounds %struct.hid_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %ll_driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ll_driver.i, align 4
  %power.i = getelementptr inbounds %struct.hid_ll_driver, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %power.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %power.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.hid_hw_power.exit_crit_edge, label %cond.true.i

entry.hid_hw_power.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hid_hw_power.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 32) #8
  br label %hid_hw_power.exit

hid_hw_power.exit:                                ; preds = %cond.true.i, %entry.hid_hw_power.exit_crit_edge
  %lock = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  tail call fastcc void @mcp_set_i2c_speed(ptr noundef %1)
  %8 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %size, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb17
    i32 3, label %sw.bb30
    i32 5, label %sw.bb43
    i32 8, label %sw.bb69
    i32 4, label %sw.bb98
    i32 7, label %sw.bb104
  ]

sw.bb:                                            ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call fastcc i32 @mcp_i2c_smbus_read(ptr noundef %1, ptr noundef null, i32 noundef 145, i16 noundef zeroext %addr, i8 noundef zeroext 0, ptr noundef %data)
  br label %exit

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call fastcc i32 @mcp_smbus_write(ptr noundef %1, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr noundef null, i8 noundef zeroext 0, i32 noundef 144, i8 noundef zeroext 1)
  br label %exit

sw.bb8:                                           ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp10 = icmp eq i8 %read_write, 1
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call fastcc i32 @mcp_i2c_smbus_read(ptr noundef %1, ptr noundef null, i32 noundef 145, i16 noundef zeroext %addr, i8 noundef zeroext 1, ptr noundef %data)
  br label %exit

if.else14:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call fastcc i32 @mcp_smbus_write(ptr noundef %1, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr noundef null, i8 noundef zeroext 0, i32 noundef 144, i8 noundef zeroext 1)
  br label %exit

sw.bb17:                                          ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp19 = icmp eq i8 %read_write, 1
  br i1 %cmp19, label %if.then21, label %if.else27

if.then21:                                        ; preds = %sw.bb17
  %txbuf.i = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -108, ptr %txbuf.i, align 8
  %arrayidx4.i = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx6.i, align 2
  %conv7.i = trunc i16 %addr to i8
  %shl.i = shl i8 %conv7.i, 1
  %arrayidx10.i = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %shl.i, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %command, ptr %arrayidx12.i, align 4
  %wait_in_report.i.i = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %wait_in_report.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wait_in_report.i.i, align 4
  %call.i.i.i = tail call ptr @kmemdup(ptr noundef %txbuf.i, i32 noundef 5, i32 noundef 3264) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then21.exit_crit_edge, label %mcp_send_report.exit.i.i

if.then21.exit_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

mcp_send_report.exit.i.i:                         ; preds = %if.then21
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %call1.i.i.i = tail call i32 @hid_hw_output_report(ptr noundef %16, ptr noundef nonnull %call.i.i.i, i32 noundef 5) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #8
  %17 = tail call i32 @llvm.smin.i32(i32 %call1.i.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call1.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %mcp_send_report.exit.i.i.mcp_send_data_req_status.exit.i_crit_edge

mcp_send_report.exit.i.i.mcp_send_data_req_status.exit.i_crit_edge: ; preds = %mcp_send_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit.i

if.end.i.i:                                       ; preds = %mcp_send_report.exit.i.i
  %call3.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.exit_crit_edge, label %if.end6.i.i

if.end.i.i.exit_crit_edge:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i.i = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status.i.i, align 4
  br label %mcp_send_data_req_status.exit.i

mcp_send_data_req_status.exit.i:                  ; preds = %if.end6.i.i, %mcp_send_report.exit.i.i.mcp_send_data_req_status.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %19, %if.end6.i.i ], [ %17, %mcp_send_report.exit.i.i.mcp_send_data_req_status.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i213 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i213, label %if.end25, label %mcp_send_data_req_status.exit.i.exit_crit_edge

mcp_send_data_req_status.exit.i.exit_crit_edge:   ; preds = %mcp_send_data_req_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end25:                                         ; preds = %mcp_send_data_req_status.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call fastcc i32 @mcp_i2c_smbus_read(ptr noundef %1, ptr noundef null, i32 noundef 147, i16 noundef zeroext %addr, i8 noundef zeroext 1, ptr noundef %data)
  br label %exit

if.else27:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call fastcc i32 @mcp_smbus_write(ptr noundef %1, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr noundef %data, i8 noundef zeroext 1, i32 noundef 144, i8 noundef zeroext 1)
  br label %exit

sw.bb30:                                          ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp32 = icmp eq i8 %read_write, 1
  br i1 %cmp32, label %if.then34, label %if.else40

if.then34:                                        ; preds = %sw.bb30
  %txbuf.i214 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %txbuf.i214 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -108, ptr %txbuf.i214, align 8
  %arrayidx4.i215 = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx4.i215 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx4.i215, align 1
  %arrayidx6.i216 = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx6.i216 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx6.i216, align 2
  %conv7.i217 = trunc i16 %addr to i8
  %shl.i218 = shl i8 %conv7.i217, 1
  %arrayidx10.i219 = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %arrayidx10.i219 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %shl.i218, ptr %arrayidx10.i219, align 1
  %arrayidx12.i220 = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %arrayidx12.i220 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %command, ptr %arrayidx12.i220, align 4
  %wait_in_report.i.i221 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %wait_in_report.i.i221 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wait_in_report.i.i221, align 4
  %call.i.i.i222 = tail call ptr @kmemdup(ptr noundef %txbuf.i214, i32 noundef 5, i32 noundef 3264) #8
  %tobool.not.i.i.i223 = icmp eq ptr %call.i.i.i222, null
  br i1 %tobool.not.i.i.i223, label %if.then34.exit_crit_edge, label %mcp_send_report.exit.i.i226

if.then34.exit_crit_edge:                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

mcp_send_report.exit.i.i226:                      ; preds = %if.then34
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %call1.i.i.i224 = tail call i32 @hid_hw_output_report(ptr noundef %27, ptr noundef nonnull %call.i.i.i222, i32 noundef 5) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i.i222) #8
  %28 = tail call i32 @llvm.smin.i32(i32 %call1.i.i.i224, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i224)
  %tobool.not.i.i225 = icmp sgt i32 %call1.i.i.i224, -1
  br i1 %tobool.not.i.i225, label %if.end.i.i229, label %mcp_send_report.exit.i.i226.mcp_send_data_req_status.exit.i234_crit_edge

mcp_send_report.exit.i.i226.mcp_send_data_req_status.exit.i234_crit_edge: ; preds = %mcp_send_report.exit.i.i226
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit.i234

if.end.i.i229:                                    ; preds = %mcp_send_report.exit.i.i226
  %call3.i.i227 = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i.i221, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i227)
  %tobool4.not.i.i228 = icmp eq i32 %call3.i.i227, 0
  br i1 %tobool4.not.i.i228, label %if.end.i.i229.exit_crit_edge, label %if.end6.i.i231

if.end.i.i229.exit_crit_edge:                     ; preds = %if.end.i.i229
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end6.i.i231:                                   ; preds = %if.end.i.i229
  call void @__sanitizer_cov_trace_pc() #10
  %status.i.i230 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %29 = ptrtoint ptr %status.i.i230 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status.i.i230, align 4
  br label %mcp_send_data_req_status.exit.i234

mcp_send_data_req_status.exit.i234:               ; preds = %if.end6.i.i231, %mcp_send_report.exit.i.i226.mcp_send_data_req_status.exit.i234_crit_edge
  %retval.0.i.i232 = phi i32 [ %30, %if.end6.i.i231 ], [ %28, %mcp_send_report.exit.i.i226.mcp_send_data_req_status.exit.i234_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i232)
  %tobool.not.i233 = icmp eq i32 %retval.0.i.i232, 0
  br i1 %tobool.not.i233, label %if.end38, label %mcp_send_data_req_status.exit.i234.exit_crit_edge

mcp_send_data_req_status.exit.i234.exit_crit_edge: ; preds = %mcp_send_data_req_status.exit.i234
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end38:                                         ; preds = %mcp_send_data_req_status.exit.i234
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call fastcc i32 @mcp_i2c_smbus_read(ptr noundef %1, ptr noundef null, i32 noundef 147, i16 noundef zeroext %addr, i8 noundef zeroext 2, ptr noundef %data)
  br label %exit

if.else40:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call fastcc i32 @mcp_smbus_write(ptr noundef %1, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr noundef %data, i8 noundef zeroext 2, i32 noundef 144, i8 noundef zeroext 1)
  br label %exit

sw.bb43:                                          ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp45 = icmp eq i8 %read_write, 1
  br i1 %cmp45, label %if.then47, label %if.else58

if.then47:                                        ; preds = %sw.bb43
  %call48 = tail call fastcc i32 @mcp_smbus_write(ptr noundef %1, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr noundef null, i8 noundef zeroext 0, i32 noundef 148, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then47.exit_crit_edge

if.then47.exit_crit_edge:                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end51:                                         ; preds = %if.then47
  %rxbuf_idx = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %rxbuf_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %rxbuf_idx, align 8
  %rxbuf = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %rxbuf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data, ptr %rxbuf, align 4
  %txbuf = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 64, ptr %txbuf, align 8
  %wait_in_report.i = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 1, i32 noundef 3264) #8
  %tobool.not.i.i238 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i238, label %if.end51.exit_crit_edge, label %mcp_send_report.exit.i

if.end51.exit_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

mcp_send_report.exit.i:                           ; preds = %if.end51
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %call1.i.i = tail call i32 @hid_hw_output_report(ptr noundef %36, ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i) #8
  %37 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i239 = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i239, label %if.end.i240, label %mcp_send_report.exit.i.exit_crit_edge

mcp_send_report.exit.i.exit_crit_edge:            ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end.i240:                                      ; preds = %mcp_send_report.exit.i
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i240.exit_crit_edge, label %if.end6.i

if.end.i240.exit_crit_edge:                       ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end6.i:                                        ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status.i, align 4
  br label %exit

if.else58:                                        ; preds = %sw.bb43
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool60.not = icmp eq i8 %41, 0
  br i1 %tobool60.not, label %if.else58.exit_crit_edge, label %if.end62

if.else58.exit_crit_edge:                         ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end62:                                         ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i8 %41, 1
  %call67 = tail call fastcc i32 @mcp_smbus_write(ptr noundef %1, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr noundef %data, i8 noundef zeroext %add, i32 noundef 144, i8 noundef zeroext 1)
  br label %exit

sw.bb69:                                          ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp71 = icmp eq i8 %read_write, 1
  br i1 %cmp71, label %if.then73, label %if.else89

if.then73:                                        ; preds = %sw.bb69
  %call74 = tail call fastcc i32 @mcp_smbus_write(ptr noundef %1, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr noundef null, i8 noundef zeroext 0, i32 noundef 148, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then73.exit_crit_edge

if.then73.exit_crit_edge:                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end77:                                         ; preds = %if.then73
  %rxbuf_idx78 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 6
  %42 = ptrtoint ptr %rxbuf_idx78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rxbuf_idx78, align 8
  %rxbuf80 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %rxbuf80 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %data, ptr %rxbuf80, align 4
  %txbuf81 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %txbuf81 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 64, ptr %txbuf81, align 8
  %wait_in_report.i242 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %wait_in_report.i242 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %wait_in_report.i242, align 4
  %call.i.i243 = tail call ptr @kmemdup(ptr noundef %txbuf81, i32 noundef 1, i32 noundef 3264) #8
  %tobool.not.i.i244 = icmp eq ptr %call.i.i243, null
  br i1 %tobool.not.i.i244, label %if.end77.exit_crit_edge, label %mcp_send_report.exit.i247

if.end77.exit_crit_edge:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

mcp_send_report.exit.i247:                        ; preds = %if.end77
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %call1.i.i245 = tail call i32 @hid_hw_output_report(ptr noundef %47, ptr noundef nonnull %call.i.i243, i32 noundef 1) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i243) #8
  %48 = tail call i32 @llvm.smin.i32(i32 %call1.i.i245, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i245)
  %tobool.not.i246 = icmp sgt i32 %call1.i.i245, -1
  br i1 %tobool.not.i246, label %if.end.i250, label %mcp_send_report.exit.i247.exit_crit_edge

mcp_send_report.exit.i247.exit_crit_edge:         ; preds = %mcp_send_report.exit.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end.i250:                                      ; preds = %mcp_send_report.exit.i247
  %call3.i248 = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i242, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i248)
  %tobool4.not.i249 = icmp eq i32 %call3.i248, 0
  br i1 %tobool4.not.i249, label %if.end.i250.exit_crit_edge, label %if.end6.i252

if.end.i250.exit_crit_edge:                       ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end6.i252:                                     ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #10
  %status.i251 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %49 = ptrtoint ptr %status.i251 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status.i251, align 4
  br label %exit

if.else89:                                        ; preds = %sw.bb69
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool91.not = icmp eq i8 %52, 0
  br i1 %tobool91.not, label %if.else89.exit_crit_edge, label %if.end93

if.else89.exit_crit_edge:                         ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end93:                                         ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx94 = getelementptr [34 x i8], ptr %data, i32 0, i32 1
  %call96 = tail call fastcc i32 @mcp_smbus_write(ptr noundef %1, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr noundef %arrayidx94, i8 noundef zeroext %52, i32 noundef 144, i8 noundef zeroext 1)
  br label %exit

sw.bb98:                                          ; preds = %hid_hw_power.exit
  %txbuf.i255 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %txbuf.i255 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -108, ptr %txbuf.i255, align 8
  %arrayidx4.i256 = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 1
  %54 = ptrtoint ptr %arrayidx4.i256 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %arrayidx4.i256, align 1
  %arrayidx6.i257 = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 2
  %55 = ptrtoint ptr %arrayidx6.i257 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx6.i257, align 2
  %conv7.i258 = trunc i16 %addr to i8
  %shl.i259 = shl i8 %conv7.i258, 1
  %arrayidx10.i260 = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %arrayidx10.i260 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %shl.i259, ptr %arrayidx10.i260, align 1
  %arrayidx12.i261 = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 4
  %57 = ptrtoint ptr %arrayidx12.i261 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %command, ptr %arrayidx12.i261, align 4
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data, align 1
  %arrayidx21.i = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 5
  %60 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %data, i32 1
  %61 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx22.i, align 1
  %arrayidx24.i = getelementptr %struct.mcp2221, ptr %1, i32 0, i32 5, i32 6
  %63 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx24.i, align 2
  %wait_in_report.i.i262 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %wait_in_report.i.i262 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %wait_in_report.i.i262, align 4
  %call.i.i.i263 = tail call ptr @kmemdup(ptr noundef %txbuf.i255, i32 noundef 7, i32 noundef 3264) #8
  %tobool.not.i.i.i264 = icmp eq ptr %call.i.i.i263, null
  br i1 %tobool.not.i.i.i264, label %sw.bb98.exit_crit_edge, label %mcp_send_report.exit.i.i267

sw.bb98.exit_crit_edge:                           ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

mcp_send_report.exit.i.i267:                      ; preds = %sw.bb98
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %call1.i.i.i265 = tail call i32 @hid_hw_output_report(ptr noundef %66, ptr noundef nonnull %call.i.i.i263, i32 noundef 7) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i.i263) #8
  %67 = tail call i32 @llvm.smin.i32(i32 %call1.i.i.i265, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i265)
  %tobool.not.i.i266 = icmp sgt i32 %call1.i.i.i265, -1
  br i1 %tobool.not.i.i266, label %if.end.i.i270, label %mcp_send_report.exit.i.i267.mcp_send_data_req_status.exit.i275_crit_edge

mcp_send_report.exit.i.i267.mcp_send_data_req_status.exit.i275_crit_edge: ; preds = %mcp_send_report.exit.i.i267
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit.i275

if.end.i.i270:                                    ; preds = %mcp_send_report.exit.i.i267
  %call3.i.i268 = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i.i262, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i268)
  %tobool4.not.i.i269 = icmp eq i32 %call3.i.i268, 0
  br i1 %tobool4.not.i.i269, label %if.end.i.i270.exit_crit_edge, label %if.end6.i.i272

if.end.i.i270.exit_crit_edge:                     ; preds = %if.end.i.i270
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end6.i.i272:                                   ; preds = %if.end.i.i270
  call void @__sanitizer_cov_trace_pc() #10
  %status.i.i271 = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 7
  %68 = ptrtoint ptr %status.i.i271 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %status.i.i271, align 4
  br label %mcp_send_data_req_status.exit.i275

mcp_send_data_req_status.exit.i275:               ; preds = %if.end6.i.i272, %mcp_send_report.exit.i.i267.mcp_send_data_req_status.exit.i275_crit_edge
  %retval.0.i.i273 = phi i32 [ %69, %if.end6.i.i272 ], [ %67, %mcp_send_report.exit.i.i267.mcp_send_data_req_status.exit.i275_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i273)
  %tobool.not.i274 = icmp eq i32 %retval.0.i.i273, 0
  br i1 %tobool.not.i274, label %if.end102, label %mcp_send_data_req_status.exit.i275.exit_crit_edge

mcp_send_data_req_status.exit.i275.exit_crit_edge: ; preds = %mcp_send_data_req_status.exit.i275
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end102:                                        ; preds = %mcp_send_data_req_status.exit.i275
  call void @__sanitizer_cov_trace_pc() #10
  %call103 = tail call fastcc i32 @mcp_i2c_smbus_read(ptr noundef %1, ptr noundef null, i32 noundef 147, i16 noundef zeroext %addr, i8 noundef zeroext 2, ptr noundef %data)
  br label %exit

sw.bb104:                                         ; preds = %hid_hw_power.exit
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data, align 2
  %add108 = add i8 %71, 1
  %call110 = tail call fastcc i32 @mcp_smbus_write(ptr noundef %1, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr noundef %data, i8 noundef zeroext %add108, i32 noundef 148, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %sw.bb104.exit_crit_edge

sw.bb104.exit_crit_edge:                          ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end113:                                        ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #10
  %call115 = tail call fastcc i32 @mcp_i2c_smbus_read(ptr noundef %1, ptr noundef null, i32 noundef 147, i16 noundef zeroext %addr, i8 noundef zeroext 32, ptr noundef %data)
  br label %exit

do.end:                                           ; preds = %hid_hw_power.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mcp2221, ptr %1, i32 0, i32 1, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %size) #11
  br label %exit

exit:                                             ; preds = %do.end, %if.end113, %sw.bb104.exit_crit_edge, %if.end102, %mcp_send_data_req_status.exit.i275.exit_crit_edge, %if.end.i.i270.exit_crit_edge, %sw.bb98.exit_crit_edge, %if.end93, %if.else89.exit_crit_edge, %if.end6.i252, %if.end.i250.exit_crit_edge, %mcp_send_report.exit.i247.exit_crit_edge, %if.end77.exit_crit_edge, %if.then73.exit_crit_edge, %if.end62, %if.else58.exit_crit_edge, %if.end6.i, %if.end.i240.exit_crit_edge, %mcp_send_report.exit.i.exit_crit_edge, %if.end51.exit_crit_edge, %if.then47.exit_crit_edge, %if.else40, %if.end38, %mcp_send_data_req_status.exit.i234.exit_crit_edge, %if.end.i.i229.exit_crit_edge, %if.then34.exit_crit_edge, %if.else27, %if.end25, %mcp_send_data_req_status.exit.i.exit_crit_edge, %if.end.i.i.exit_crit_edge, %if.then21.exit_crit_edge, %if.else14, %if.then12, %if.else, %if.then4
  %ret.0 = phi i32 [ -95, %do.end ], [ %call110, %sw.bb104.exit_crit_edge ], [ %call115, %if.end113 ], [ %call103, %if.end102 ], [ %call74, %if.then73.exit_crit_edge ], [ %call96, %if.end93 ], [ %call48, %if.then47.exit_crit_edge ], [ %call67, %if.end62 ], [ %call39, %if.end38 ], [ %call41, %if.else40 ], [ %call26, %if.end25 ], [ %call28, %if.else27 ], [ %call13, %if.then12 ], [ %call15, %if.else14 ], [ %call5, %if.then4 ], [ %call6, %if.else ], [ -22, %if.else58.exit_crit_edge ], [ -22, %if.else89.exit_crit_edge ], [ %39, %if.end6.i ], [ %37, %mcp_send_report.exit.i.exit_crit_edge ], [ -110, %if.end.i240.exit_crit_edge ], [ -12, %if.end51.exit_crit_edge ], [ %50, %if.end6.i252 ], [ %48, %mcp_send_report.exit.i247.exit_crit_edge ], [ -110, %if.end.i250.exit_crit_edge ], [ -12, %if.end77.exit_crit_edge ], [ -110, %if.end.i.i.exit_crit_edge ], [ -12, %if.then21.exit_crit_edge ], [ %retval.0.i.i, %mcp_send_data_req_status.exit.i.exit_crit_edge ], [ -110, %if.end.i.i229.exit_crit_edge ], [ -12, %if.then34.exit_crit_edge ], [ %retval.0.i.i232, %mcp_send_data_req_status.exit.i234.exit_crit_edge ], [ -110, %if.end.i.i270.exit_crit_edge ], [ -12, %sw.bb98.exit_crit_edge ], [ %retval.0.i.i273, %mcp_send_data_req_status.exit.i275.exit_crit_edge ]
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %ll_driver.i279 = getelementptr inbounds %struct.hid_device, ptr %73, i32 0, i32 20
  %74 = ptrtoint ptr %ll_driver.i279 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ll_driver.i279, align 4
  %power.i280 = getelementptr inbounds %struct.hid_ll_driver, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %power.i280 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %power.i280, align 4
  %tobool.not.i281 = icmp eq ptr %77, null
  br i1 %tobool.not.i281, label %exit.hid_hw_power.exit284_crit_edge, label %cond.true.i283

exit.hid_hw_power.exit284_crit_edge:              ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %hid_hw_power.exit284

cond.true.i283:                                   ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i282 = tail call i32 %77(ptr noundef %73, i32 noundef 2) #8
  br label %hid_hw_power.exit284

hid_hw_power.exit284:                             ; preds = %cond.true.i283, %exit.hid_hw_power.exit284_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcp_i2c_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268402689
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcp_set_i2c_speed(ptr noundef %mcp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %txbuf = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 5
  %0 = ptrtoint ptr %txbuf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 1152921642045800448, ptr %txbuf, align 8
  %cur_i2c_clk_div = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 8
  %1 = ptrtoint ptr %cur_i2c_clk_div to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cur_i2c_clk_div, align 8
  %arrayidx5 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 4
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %arrayidx5, align 4
  %wait_in_report.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 3
  %4 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 8, i32 noundef 3264) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.if.then_crit_edge, label %mcp_send_report.exit.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

mcp_send_report.exit.i:                           ; preds = %entry
  %5 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mcp, align 8
  %call1.i.i = tail call i32 @hid_hw_output_report(ptr noundef %6, ptr noundef nonnull %call.i.i, i32 noundef 8) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i) #8
  %7 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge

mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end.i:                                         ; preds = %mcp_send_report.exit.i
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.then_crit_edge, label %if.end6.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 7
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status.i, align 4
  br label %mcp_send_data_req_status.exit

mcp_send_data_req_status.exit:                    ; preds = %if.end6.i, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.end6.i ], [ %7, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %mcp_send_data_req_status.exit.if.end_crit_edge, label %mcp_send_data_req_status.exit.if.then_crit_edge

mcp_send_data_req_status.exit.if.then_crit_edge:  ; preds = %mcp_send_data_req_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

mcp_send_data_req_status.exit.if.end_crit_edge:   ; preds = %mcp_send_data_req_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %mcp_send_data_req_status.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @usleep_range_state(i32 noundef 980, i32 noundef 1000, i32 noundef 2) #8
  %10 = ptrtoint ptr %txbuf to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1152939096792891392, ptr %txbuf, align 8
  %11 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 8, i32 noundef 3264) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.if.end_crit_edge, label %mcp_send_report.exit.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mcp_send_report.exit.i.i:                         ; preds = %if.then
  %12 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcp, align 8
  %call1.i.i.i = tail call i32 @hid_hw_output_report(ptr noundef %13, ptr noundef nonnull %call.i.i.i, i32 noundef 8) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %tobool.not.i.i1 = icmp sgt i32 %call1.i.i.i, -1
  br i1 %tobool.not.i.i1, label %if.end.i.i, label %mcp_send_report.exit.i.i.if.end_crit_edge

mcp_send_report.exit.i.i.if.end_crit_edge:        ; preds = %mcp_send_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i:                                       ; preds = %mcp_send_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %mcp_send_report.exit.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %mcp_send_data_req_status.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp_i2c_smbus_read(ptr noundef %mcp, ptr noundef readonly %msg, i32 noundef %type, i16 noundef zeroext %smbus_addr, i8 noundef zeroext %smbus_len, ptr noundef %smbus_buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %type to i8
  %txbuf = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 5
  %0 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %txbuf, align 8
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %len, align 4
  %conv2 = trunc i16 %2 to i8
  %arrayidx4 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %arrayidx4, align 1
  %4 = load i16, ptr %len, align 4
  %5 = lshr i16 %4, 8
  %conv7 = trunc i16 %5 to i8
  %arrayidx9 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7, ptr %arrayidx9, align 2
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %msg, align 4
  %conv10 = trunc i16 %8 to i8
  %shl = shl i8 %conv10, 1
  %arrayidx13 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %shl, ptr %arrayidx13, align 1
  %10 = load i16, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %smbus_len, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx18, align 2
  %conv19 = trunc i16 %smbus_addr to i8
  %shl20 = shl i8 %conv19, 1
  %arrayidx23 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %shl20, ptr %arrayidx23, align 1
  %conv24 = zext i8 %smbus_len to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi ptr [ %smbus_buf, %if.else ], [ %12, %if.then ]
  %total_len.0 = phi i16 [ %conv24, %if.else ], [ %10, %if.then ]
  %16 = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.sink, ptr %16, align 4
  %wait_in_report.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 3
  %18 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 4, i32 noundef 3264) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %mcp_send_report.exit.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp_send_report.exit.i:                           ; preds = %if.end
  %19 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mcp, align 8
  %call1.i.i = tail call i32 @hid_hw_output_report(ptr noundef %20, ptr noundef nonnull %call.i.i, i32 noundef 4) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i) #8
  %21 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge

mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end.i:                                         ; preds = %mcp_send_report.exit.i
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 7
  %22 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status.i, align 4
  br label %mcp_send_data_req_status.exit

mcp_send_data_req_status.exit:                    ; preds = %if.end6.i, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge
  %retval.0.i = phi i32 [ %23, %if.end6.i ], [ %21, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool27.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool27.not, label %if.end29, label %mcp_send_data_req_status.exit.cleanup_crit_edge

mcp_send_data_req_status.exit.cleanup_crit_edge:  ; preds = %mcp_send_data_req_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %mcp_send_data_req_status.exit
  %rxbuf_idx = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 6
  %24 = ptrtoint ptr %rxbuf_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rxbuf_idx, align 8
  %status.i86 = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 7
  %conv45 = zext i16 %total_len.0 to i32
  br label %do.body

do.body:                                          ; preds = %if.end43.do.body_crit_edge, %if.end29
  %25 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1073741824, ptr %txbuf, align 8
  %26 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i78 = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 1, i32 noundef 3264) #8
  %tobool.not.i.i79 = icmp eq ptr %call.i.i78, null
  br i1 %tobool.not.i.i79, label %do.body.cleanup_crit_edge, label %mcp_send_report.exit.i82

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp_send_report.exit.i82:                         ; preds = %do.body
  %27 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mcp, align 8
  %call1.i.i80 = tail call i32 @hid_hw_output_report(ptr noundef %28, ptr noundef nonnull %call.i.i78, i32 noundef 1) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i78) #8
  %29 = tail call i32 @llvm.smin.i32(i32 %call1.i.i80, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i80)
  %tobool.not.i81 = icmp sgt i32 %call1.i.i80, -1
  br i1 %tobool.not.i81, label %if.end.i85, label %mcp_send_report.exit.i82.mcp_send_data_req_status.exit89_crit_edge

mcp_send_report.exit.i82.mcp_send_data_req_status.exit89_crit_edge: ; preds = %mcp_send_report.exit.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit89

if.end.i85:                                       ; preds = %mcp_send_report.exit.i82
  %call3.i83 = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i83)
  %tobool4.not.i84 = icmp eq i32 %call3.i83, 0
  br i1 %tobool4.not.i84, label %if.end.i85.cleanup_crit_edge, label %if.end6.i87

if.end.i85.cleanup_crit_edge:                     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i87:                                      ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %status.i86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status.i86, align 4
  br label %mcp_send_data_req_status.exit89

mcp_send_data_req_status.exit89:                  ; preds = %if.end6.i87, %mcp_send_report.exit.i82.mcp_send_data_req_status.exit89_crit_edge
  %retval.0.i88 = phi i32 [ %31, %if.end6.i87 ], [ %29, %mcp_send_report.exit.i82.mcp_send_data_req_status.exit89_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i88)
  %tobool37.not = icmp eq i32 %retval.0.i88, 0
  br i1 %tobool37.not, label %if.end39, label %mcp_send_data_req_status.exit89.cleanup_crit_edge

mcp_send_data_req_status.exit89.cleanup_crit_edge: ; preds = %mcp_send_data_req_status.exit89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %mcp_send_data_req_status.exit89
  %32 = ptrtoint ptr %txbuf to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1152921504606846976, ptr %txbuf, align 8
  %33 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 8, i32 noundef 3264) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end39.cleanup_crit_edge, label %mcp_send_report.exit.i.i

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp_send_report.exit.i.i:                         ; preds = %if.end39
  %34 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mcp, align 8
  %call1.i.i.i = tail call i32 @hid_hw_output_report(ptr noundef %35, ptr noundef nonnull %call.i.i.i, i32 noundef 8) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #8
  %36 = tail call i32 @llvm.smin.i32(i32 %call1.i.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %tobool.not.i.i90 = icmp sgt i32 %call1.i.i.i, -1
  br i1 %tobool.not.i.i90, label %if.end.i.i, label %mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge

mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_chk_last_cmd_status.exit

if.end.i.i:                                       ; preds = %mcp_send_report.exit.i.i
  %call3.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end6.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %status.i86 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status.i86, align 4
  br label %mcp_chk_last_cmd_status.exit

mcp_chk_last_cmd_status.exit:                     ; preds = %if.end6.i.i, %mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ %38, %if.end6.i.i ], [ %36, %mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool41.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool41.not, label %if.end43, label %mcp_chk_last_cmd_status.exit.cleanup_crit_edge

mcp_chk_last_cmd_status.exit.cleanup_crit_edge:   ; preds = %mcp_chk_last_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %mcp_chk_last_cmd_status.exit
  tail call void @usleep_range_state(i32 noundef 980, i32 noundef 1000, i32 noundef 2) #8
  %39 = ptrtoint ptr %rxbuf_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rxbuf_idx, align 8
  %cmp = icmp slt i32 %40, %conv45
  br i1 %cmp, label %if.end43.do.body_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43.do.body_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup:                                          ; preds = %if.end43.cleanup_crit_edge, %mcp_chk_last_cmd_status.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %mcp_send_data_req_status.exit89.cleanup_crit_edge, %if.end.i85.cleanup_crit_edge, %do.body.cleanup_crit_edge, %mcp_send_data_req_status.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mcp_send_data_req_status.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ], [ -110, %if.end.i.i.cleanup_crit_edge ], [ -12, %if.end39.cleanup_crit_edge ], [ -110, %if.end.i85.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ %retval.0.i.i, %mcp_chk_last_cmd_status.exit.cleanup_crit_edge ], [ %retval.0.i88, %mcp_send_data_req_status.exit89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp_i2c_write(ptr noundef %mcp, ptr nocapture noundef readonly %msg, i32 noundef %type, i8 noundef zeroext %last_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len1, align 4
  %2 = tail call i16 @llvm.umin.i16(i16 %1, i16 60)
  %len.0 = zext i16 %2 to i32
  %conv5 = trunc i32 %type to i8
  %txbuf = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 5
  %arrayidx10 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 1
  %arrayidx15 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 2
  %arrayidx19 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 3
  %arrayidx21 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %wait_in_report.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 3
  %status.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %last_status)
  %tobool26.not = icmp eq i8 %last_status, 0
  br label %do.body

do.body:                                          ; preds = %if.end39.do.body_crit_edge, %entry
  %len.1 = phi i32 [ %len.0, %entry ], [ %31, %if.end39.do.body_crit_edge ]
  %idx.0 = phi i32 [ 0, %entry ], [ %add40, %if.end39.do.body_crit_edge ]
  %sent.0 = phi i32 [ 0, %entry ], [ %add33, %if.end39.do.body_crit_edge ]
  %3 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv5, ptr %txbuf, align 8
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len1, align 4
  %conv8 = trunc i16 %5 to i8
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv8, ptr %arrayidx10, align 1
  %7 = load i16, ptr %len1, align 4
  %8 = lshr i16 %7, 8
  %conv13 = trunc i16 %8 to i8
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv13, ptr %arrayidx15, align 2
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg, align 4
  %conv16 = trunc i16 %11 to i8
  %shl = shl i8 %conv16, 1
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %shl, ptr %arrayidx19, align 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buf, align 4
  %arrayidx22 = getelementptr i8, ptr %14, i32 %idx.0
  %15 = call ptr @memcpy(ptr %arrayidx21, ptr %arrayidx22, i32 %len.1)
  %add = add nuw nsw i32 %len.1, 4
  %16 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef %add, i32 noundef 3264) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body.cleanup_crit_edge, label %mcp_send_report.exit.i

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp_send_report.exit.i:                           ; preds = %do.body
  %17 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mcp, align 8
  %call1.i.i = tail call i32 @hid_hw_output_report(ptr noundef %18, ptr noundef nonnull %call.i.i, i32 noundef %add) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i) #8
  %19 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge

mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end.i:                                         ; preds = %mcp_send_report.exit.i
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  br label %mcp_send_data_req_status.exit

mcp_send_data_req_status.exit:                    ; preds = %if.end6.i, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge
  %retval.0.i = phi i32 [ %21, %if.end6.i ], [ %19, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end25, label %mcp_send_data_req_status.exit.cleanup_crit_edge

mcp_send_data_req_status.exit.cleanup_crit_edge:  ; preds = %mcp_send_data_req_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %mcp_send_data_req_status.exit
  tail call void @usleep_range_state(i32 noundef 980, i32 noundef 1000, i32 noundef 2) #8
  br i1 %tobool26.not, label %if.end25.if.end32_crit_edge, label %if.then27

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then27:                                        ; preds = %if.end25
  %22 = ptrtoint ptr %txbuf to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %txbuf, align 8
  %23 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 8, i32 noundef 3264) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then27.cleanup_crit_edge, label %mcp_send_report.exit.i.i

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp_send_report.exit.i.i:                         ; preds = %if.then27
  %24 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mcp, align 8
  %call1.i.i.i = tail call i32 @hid_hw_output_report(ptr noundef %25, ptr noundef nonnull %call.i.i.i, i32 noundef 8) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #8
  %26 = tail call i32 @llvm.smin.i32(i32 %call1.i.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %tobool.not.i.i83 = icmp sgt i32 %call1.i.i.i, -1
  br i1 %tobool.not.i.i83, label %if.end.i.i, label %mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge

mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_chk_last_cmd_status.exit

if.end.i.i:                                       ; preds = %mcp_send_report.exit.i.i
  %call3.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end6.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i, align 4
  br label %mcp_chk_last_cmd_status.exit

mcp_chk_last_cmd_status.exit:                     ; preds = %if.end6.i.i, %mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ %28, %if.end6.i.i ], [ %26, %mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool29.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool29.not, label %mcp_chk_last_cmd_status.exit.if.end32_crit_edge, label %mcp_chk_last_cmd_status.exit.cleanup_crit_edge

mcp_chk_last_cmd_status.exit.cleanup_crit_edge:   ; preds = %mcp_chk_last_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp_chk_last_cmd_status.exit.if.end32_crit_edge:  ; preds = %mcp_chk_last_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.end32:                                         ; preds = %mcp_chk_last_cmd_status.exit.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %add33 = add i32 %sent.0, %len.1
  %29 = ptrtoint ptr %len1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len1, align 4
  %conv35 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %conv35)
  %cmp36.not = icmp slt i32 %add33, %conv35
  br i1 %cmp36.not, label %if.end39, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %add40 = add i32 %idx.0, %len.1
  %sub = sub i32 %conv35, %add33
  %31 = tail call i32 @llvm.smin.i32(i32 %sub, i32 60)
  tail call void @usleep_range_state(i32 noundef 980, i32 noundef 1000, i32 noundef 2) #8
  %cmp51 = icmp sgt i32 %sub, 0
  br i1 %cmp51, label %if.end39.do.body_crit_edge, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup:                                          ; preds = %if.end39.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %mcp_chk_last_cmd_status.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %mcp_send_data_req_status.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mcp_send_data_req_status.exit.cleanup_crit_edge ], [ %retval.0.i.i, %mcp_chk_last_cmd_status.exit.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ], [ -12, %if.then27.cleanup_crit_edge ], [ -110, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_output_report(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp_smbus_write(ptr noundef %mcp, i16 noundef zeroext %addr, i8 noundef zeroext %command, ptr nocapture noundef readonly %buf, i8 noundef zeroext %len, i32 noundef %type, i8 noundef zeroext %last_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %type to i8
  %txbuf = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 5
  %0 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %txbuf, align 8
  %add = add i8 %len, 1
  %arrayidx4 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %add, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx6, align 2
  %conv7 = trunc i16 %addr to i8
  %shl = shl i8 %conv7, 1
  %arrayidx10 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 3
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %shl, ptr %arrayidx10, align 1
  %arrayidx12 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %command, ptr %arrayidx12, align 4
  %5 = zext i8 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %len, label %sw.default [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb14
    i8 2, label %sw.bb18
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %arrayidx17 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 5
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx17, align 1
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf, align 1
  %arrayidx21 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 5
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr i8, ptr %buf, i32 1
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx22, align 1
  %arrayidx24 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 6
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx24, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv1 = zext i8 %len to i32
  %arrayidx26 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 5
  %15 = call ptr @memcpy(ptr %arrayidx26, ptr %buf, i32 %conv1)
  %add29 = add nuw nsw i32 %conv1, 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb14, %entry.sw.epilog_crit_edge
  %data_len.0 = phi i32 [ %add29, %sw.default ], [ 7, %sw.bb18 ], [ 6, %sw.bb14 ], [ 5, %entry.sw.epilog_crit_edge ]
  %wait_in_report.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 3
  %16 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef %data_len.0, i32 noundef 3264) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.epilog.cleanup_crit_edge, label %mcp_send_report.exit.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp_send_report.exit.i:                           ; preds = %sw.epilog
  %17 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mcp, align 8
  %call1.i.i = tail call i32 @hid_hw_output_report(ptr noundef %18, ptr noundef nonnull %call.i.i, i32 noundef %data_len.0) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i) #8
  %19 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge

mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end.i:                                         ; preds = %mcp_send_report.exit.i
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 7
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  br label %mcp_send_data_req_status.exit

mcp_send_data_req_status.exit:                    ; preds = %if.end6.i, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge
  %retval.0.i = phi i32 [ %21, %if.end6.i ], [ %19, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %if.end, label %mcp_send_data_req_status.exit.cleanup_crit_edge

mcp_send_data_req_status.exit.cleanup_crit_edge:  ; preds = %mcp_send_data_req_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mcp_send_data_req_status.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %last_status)
  %tobool31.not = icmp eq i8 %last_status, 0
  br i1 %tobool31.not, label %if.end.if.end37_crit_edge, label %if.then32

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then32:                                        ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 980, i32 noundef 1000, i32 noundef 2) #8
  %22 = ptrtoint ptr %txbuf to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 1152921504606846976, ptr %txbuf, align 8
  %23 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 8, i32 noundef 3264) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then32.cleanup_crit_edge, label %mcp_send_report.exit.i.i

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp_send_report.exit.i.i:                         ; preds = %if.then32
  %24 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mcp, align 8
  %call1.i.i.i = tail call i32 @hid_hw_output_report(ptr noundef %25, ptr noundef nonnull %call.i.i.i, i32 noundef 8) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #8
  %26 = tail call i32 @llvm.smin.i32(i32 %call1.i.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %tobool.not.i.i60 = icmp sgt i32 %call1.i.i.i, -1
  br i1 %tobool.not.i.i60, label %if.end.i.i, label %mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge

mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_chk_last_cmd_status.exit

if.end.i.i:                                       ; preds = %mcp_send_report.exit.i.i
  %call3.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end6.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 7
  %27 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i.i, align 4
  br label %mcp_chk_last_cmd_status.exit

mcp_chk_last_cmd_status.exit:                     ; preds = %if.end6.i.i, %mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ %28, %if.end6.i.i ], [ %26, %mcp_send_report.exit.i.i.mcp_chk_last_cmd_status.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool34.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool34.not, label %mcp_chk_last_cmd_status.exit.if.end37_crit_edge, label %mcp_chk_last_cmd_status.exit.cleanup_crit_edge

mcp_chk_last_cmd_status.exit.cleanup_crit_edge:   ; preds = %mcp_chk_last_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mcp_chk_last_cmd_status.exit.if.end37_crit_edge:  ; preds = %mcp_chk_last_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end37:                                         ; preds = %mcp_chk_last_cmd_status.exit.if.end37_crit_edge, %if.end.if.end37_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %mcp_chk_last_cmd_status.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.then32.cleanup_crit_edge, %mcp_send_data_req_status.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %retval.0.i, %mcp_send_data_req_status.exit.cleanup_crit_edge ], [ %retval.0.i.i, %mcp_chk_last_cmd_status.exit.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ], [ -12, %if.then32.cleanup_crit_edge ], [ -110, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp_gpio_dir_set(ptr noundef %mcp, i32 noundef %offset, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %txbuf = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 5
  %0 = call ptr @memset(ptr %txbuf, i32 0, i32 18)
  %1 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 80, ptr %txbuf, align 8
  %offset.tr = trunc i32 %offset to i8
  %2 = shl i8 %offset.tr, 2
  %conv = add i8 %2, 5
  %gp_idx = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 10
  %3 = ptrtoint ptr %gp_idx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %gp_idx, align 8
  %conv4 = zext i8 %conv to i32
  %sub = add nsw i32 %conv4, -1
  %arrayidx5 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 %sub
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx5, align 1
  %5 = load i8, ptr %gp_idx, align 8
  %idxprom = zext i8 %5 to i32
  %arrayidx8 = getelementptr %struct.mcp2221, ptr %mcp, i32 0, i32 5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %val, ptr %arrayidx8, align 1
  %wait_in_report.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 3
  %7 = ptrtoint ptr %wait_in_report.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait_in_report.i, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %txbuf, i32 noundef 18, i32 noundef 3264) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.mcp_send_data_req_status.exit_crit_edge, label %mcp_send_report.exit.i

entry.mcp_send_data_req_status.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

mcp_send_report.exit.i:                           ; preds = %entry
  %8 = ptrtoint ptr %mcp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mcp, align 8
  %call1.i.i = tail call i32 @hid_hw_output_report(ptr noundef %9, ptr noundef nonnull %call.i.i, i32 noundef 18) #8
  tail call void @kfree(ptr noundef nonnull %call.i.i) #8
  %10 = tail call i32 @llvm.smin.i32(i32 %call1.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %tobool.not.i = icmp sgt i32 %call1.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge

mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %mcp_send_report.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end.i:                                         ; preds = %mcp_send_report.exit.i
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wait_in_report.i, i32 noundef 400) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.mcp_send_data_req_status.exit_crit_edge, label %if.end6.i

if.end.i.mcp_send_data_req_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp_send_data_req_status.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr inbounds %struct.mcp2221, ptr %mcp, i32 0, i32 7
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status.i, align 4
  br label %mcp_send_data_req_status.exit

mcp_send_data_req_status.exit:                    ; preds = %if.end6.i, %if.end.i.mcp_send_data_req_status.exit_crit_edge, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge, %entry.mcp_send_data_req_status.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.end6.i ], [ %10, %mcp_send_report.exit.i.mcp_send_data_req_status.exit_crit_edge ], [ -110, %if.end.i.mcp_send_data_req_status.exit_crit_edge ], [ -12, %entry.mcp_send_data_req_status.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mcp_get_i2c_eng_state(ptr nocapture noundef readonly %data, i8 noundef zeroext %idx) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %idx to i32
  %arrayidx = getelementptr i8, ptr %data, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %1, label %sw.default [
    i8 37, label %entry.sw.epilog_crit_edge
    i8 33, label %entry.sw.epilog_crit_edge1
    i8 18, label %entry.sw.bb1_crit_edge
    i8 98, label %entry.sw.bb1_crit_edge2
    i8 35, label %entry.sw.bb1_crit_edge3
    i8 68, label %entry.sw.bb1_crit_edge4
    i8 1, label %sw.bb2
    i8 0, label %sw.bb3
  ]

entry.sw.bb1_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.epilog_crit_edge1:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge2, %entry.sw.bb1_crit_edge3, %entry.sw.bb1_crit_edge4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge1
  %ret.0 = phi i32 [ -5, %sw.default ], [ 0, %sw.bb3 ], [ -11, %sw.bb2 ], [ -110, %sw.bb1 ], [ -6, %entry.sw.epilog_crit_edge ], [ -6, %entry.sw.epilog_crit_edge1 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !40, !41, !42, !44, !46, !47, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_hid_mcp2221__288_937_mcp2221_driver_init6, !1, !"__initcall__kmod_hid_mcp2221__288_937_mcp2221_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-mcp2221.c", i32 937, i32 1}
!2 = !{ptr @__exitcall_mcp2221_driver_exit, !1, !"__exitcall_mcp2221_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-mcp2221.c", i32 939, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-mcp2221.c", i32 940, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-mcp2221.c", i32 941, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-mcp2221.c", i32 929, i32 11}
!13 = !{ptr @mcp2221_driver, !14, !"mcp2221_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-mcp2221.c", i32 928, i32 26}
!15 = !{ptr @mcp2221_devices, !16, !"mcp2221_devices", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-mcp2221.c", i32 922, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-mcp2221.c", i32 836, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mcp2221_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mcp2221_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-mcp2221.c", i32 842, i32 3}
!27 = !{ptr @mcp2221_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mcp2221_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-mcp2221.c", i32 848, i32 3}
!31 = !{ptr @mcp2221_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mcp2221_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mcp2221_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-mcp2221.c", i32 852, i32 2}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-mcp2221.c", i32 870, i32 4}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-mcp2221.c", i32 875, i32 3}
!40 = !{ptr @mcp2221_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mcp2221_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-mcp2221.c", i32 887, i32 19}
!44 = !{ptr @mcp2221_probe.lock_key, !45, !"lock_key", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-mcp2221.c", i32 898, i32 8}
!46 = !{ptr @mcp2221_probe.request_key, !45, !"request_key", i1 false, i1 false}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"i2c_clk_freq", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-mcp2221.c", i32 106, i32 13}
!52 = !{ptr @mcp_i2c_algo, !53, !"mcp_i2c_algo", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-mcp2221.c", i32 561, i32 35}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-mcp2221.c", i32 346, i32 4}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mcp_i2c_xfer._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mcp_i2c_xfer._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @mcp_i2c_xfer._entry.22, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-mcp2221.c", i32 351, i32 3}
!61 = !{ptr @mcp_i2c_xfer._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-mcp2221.c", i32 542, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mcp_smbus_xfer._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @mcp_smbus_xfer._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
