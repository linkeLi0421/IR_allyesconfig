; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/i2c/tda9950.c_pt.bc'
source_filename = "../drivers/gpu/drm/i2c/tda9950.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tda9950_priv = type { ptr, ptr, ptr, ptr, i16, %struct.cec_msg, ptr, i8 }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.tda9950_glue = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.88 }
%union.anon.88 = type { [16 x i32] }

@__initcall__kmod_tda9950__290_506_tda9950_driver_init6 = internal global ptr @tda9950_driver_init, section ".initcall6.init", align 4
@tda9950_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tda9950_probe, ptr @tda9950_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda9950_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tda9950_driver_exit = internal global ptr @tda9950_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [57 x i8] c"tda9950.author=Russell King <rmk+kernel@armlinux.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [72 x i8] c"tda9950.description=TDA9950/TDA998x Consumer Electronics Control Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [41 x i8] c"tda9950.file=drivers/gpu/drm/i2c/tda9950\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"tda9950.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda9950\00", [24 x i8] zeroinitializer }, align 32
@tda9950_ids = internal global { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda9950\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tda9950_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"adapter does not support I2C functionality\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda9950_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/i2c/tda9950.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tda9950_probe._entry_ptr = internal global ptr @tda9950_probe._entry, section ".printk_index", align 4
@tda9950_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"driver requires an interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@tda9950_probe._entry_ptr.8 = internal global ptr @tda9950_probe._entry.6, section ".printk_index", align 4
@tda9950_cec_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @tda9950_cec_adap_enable, ptr null, ptr null, ptr @tda9950_cec_adap_log_addr, ptr @tda9950_cec_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tda9950_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 447, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"TDA9950 CEC interface, hardware version %u.%u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tda9950_probe._entry_ptr.12 = internal global ptr @tda9950_probe._entry.9, section ".printk_index", align 4
@tda9950_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 319, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"command processor failed to stop, irq%d may die (csr=0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda9950_release\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tda9950_release._entry_ptr = internal global ptr @tda9950_release._entry, section ".printk_index", align 4
@tda9950_write_range.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda9950_write_range\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wr 0x%02x: %*ph\0A\00", [47 x i8] zeroinitializer }, align 32
@tda9950_write_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error %d writing to cec:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@tda9950_write_range._entry_ptr = internal global ptr @tda9950_write_range._entry, section ".printk_index", align 4
@tda9950_read_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error %d reading from cec:0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda9950_read_range\00", [45 x i8] zeroinitializer }, align 32
@tda9950_read_range._entry_ptr = internal global ptr @tda9950_read_range._entry, section ".printk_index", align 4
@tda9950_read_range.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rd 0x%02x: %*ph\0A\00", [47 x i8] zeroinitializer }, align 32
@tda9950_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 161, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"interrupt pending, but no message?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tda9950_irq\00", [20 x i8] zeroinitializer }, align 32
@tda9950_irq._entry_ptr = internal global ptr @tda9950_irq._entry, section ".printk_index", align 4
@tda9950_irq._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CNF reply error 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@tda9950_irq._entry_ptr.26 = internal global ptr @tda9950_irq._entry.24, section ".printk_index", align 4
@tda9950_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 208, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown service id 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@tda9950_irq._entry_ptr.29 = internal global ptr @tda9950_irq._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 129]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 131, i64 133]
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"tda9950_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 497, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 501, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"tda9950_ids\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 491, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 393, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 400, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"tda9950_cec_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 336, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 445, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 318, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 90, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 94, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 119, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 121, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 161, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 184, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [33 x i8] c"../drivers/gpu/drm/i2c/tda9950.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 207, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_tda9950_driver_exit, ptr @__initcall__kmod_tda9950__290_506_tda9950_driver_init6, ptr @tda9950_driver_exit, ptr @tda9950_irq._entry, ptr @tda9950_irq._entry.24, ptr @tda9950_irq._entry.27, ptr @tda9950_irq._entry_ptr, ptr @tda9950_irq._entry_ptr.26, ptr @tda9950_irq._entry_ptr.29, ptr @tda9950_probe._entry, ptr @tda9950_probe._entry.6, ptr @tda9950_probe._entry.9, ptr @tda9950_probe._entry_ptr, ptr @tda9950_probe._entry_ptr.12, ptr @tda9950_probe._entry_ptr.8, ptr @tda9950_read_range._entry, ptr @tda9950_read_range._entry_ptr, ptr @tda9950_release._entry, ptr @tda9950_release._entry_ptr, ptr @tda9950_write_range._entry, ptr @tda9950_write_range._entry_ptr, ptr @tda9950_driver, ptr @.str, ptr @tda9950_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @tda9950_cec_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_cec_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_write_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_read_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_irq._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda9950_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9950_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tda9950_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tda9950_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @tda9950_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9950_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #6
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %call.i, align 8
  %glue15 = getelementptr inbounds %struct.tda9950_priv, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %glue15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %glue15, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %hdmi = getelementptr inbounds %struct.tda9950_priv, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %hdmi to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %hdmi, align 4
  %tobool16.not = icmp eq ptr %1, null
  br i1 %tobool16.not, label %if.end13.if.end21_crit_edge, label %land.lhs.true

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %land.lhs.true.if.end21_crit_edge, label %if.then18

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %hdmi to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %hdmi, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %land.lhs.true.if.end21_crit_edge, %if.end13.if.end21_crit_edge
  %call22 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @tda9950_cec_ops, ptr noundef nonnull %call.i, ptr noundef nonnull @.str, i32 noundef 286, i8 noundef zeroext 4) #6
  %adap = getelementptr inbounds %struct.tda9950_priv, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22, ptr %adap, align 8
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tda9950_cec_del, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 8
  tail call void @cec_delete_adapter(ptr noundef %20) #6
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  br i1 %tobool16.not, label %tda9950_devm_glue_init.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end33
  %init.i = getelementptr inbounds %struct.tda9950_glue, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init.i, align 4
  %tobool1.not.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %data.i = getelementptr inbounds %struct.tda9950_glue, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %call.i138 = tail call i32 %22(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool3.not.i = icmp eq i32 %call.i138, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %land.lhs.true.i.if.end5.i_crit_edge
  %call6.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tda9950_devm_glue_exit, ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end37_crit_edge, label %land.lhs.true.i.critedge.i

if.end5.i.if.end37_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true.i.critedge.i:                       ; preds = %if.end5.i
  %exit.i.i = getelementptr inbounds %struct.tda9950_glue, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %exit.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %exit.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %26, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.critedge.i.cleanup_crit_edge, label %if.then.i.i

land.lhs.true.i.critedge.i.cleanup_crit_edge:     ; preds = %land.lhs.true.i.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true.i.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %data3.i.i = getelementptr inbounds %struct.tda9950_glue, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data3.i.i, align 4
  tail call void %26(ptr noundef %28) #6
  br label %cleanup

tda9950_devm_glue_init.exit:                      ; preds = %if.end33
  %call618.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @tda9950_devm_glue_exit, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call618.i)
  %tobool35.not = icmp eq i32 %call618.i, 0
  br i1 %tobool35.not, label %tda9950_devm_glue_init.exit.if.end37_crit_edge, label %tda9950_devm_glue_init.exit.cleanup_crit_edge

tda9950_devm_glue_init.exit.cleanup_crit_edge:    ; preds = %tda9950_devm_glue_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tda9950_devm_glue_init.exit.if.end37_crit_edge:   ; preds = %tda9950_devm_glue_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %tda9950_devm_glue_init.exit.if.end37_crit_edge, %if.end5.i.if.end37_crit_edge
  %29 = ptrtoint ptr %glue15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %glue15, align 4
  %tobool.not.i139 = icmp eq ptr %30, null
  br i1 %tobool.not.i139, label %if.end37.tda9950_glue_open.exit.thread_crit_edge, label %land.lhs.true.i140

if.end37.tda9950_glue_open.exit.thread_crit_edge: ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_glue_open.exit.thread

land.lhs.true.i140:                               ; preds = %if.end37
  %open.i = getelementptr inbounds %struct.tda9950_glue, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %open.i, align 4
  %tobool2.not.i = icmp eq ptr %32, null
  br i1 %tobool2.not.i, label %land.lhs.true.i140.tda9950_glue_open.exit.thread_crit_edge, label %tda9950_glue_open.exit

land.lhs.true.i140.tda9950_glue_open.exit.thread_crit_edge: ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_glue_open.exit.thread

tda9950_glue_open.exit.thread:                    ; preds = %land.lhs.true.i140.tda9950_glue_open.exit.thread_crit_edge, %if.end37.tda9950_glue_open.exit.thread_crit_edge
  %open6.i159 = getelementptr inbounds %struct.tda9950_priv, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %open6.i159 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %open6.i159, align 4
  br label %if.end41

tda9950_glue_open.exit:                           ; preds = %land.lhs.true.i140
  %data.i141 = getelementptr inbounds %struct.tda9950_glue, ptr %30, i32 0, i32 2
  %34 = ptrtoint ptr %data.i141 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i141, align 4
  %call.i142 = tail call i32 %32(ptr noundef %35) #6
  %open6.i = getelementptr inbounds %struct.tda9950_priv, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %open6.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %open6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool39.not = icmp eq i32 %call.i142, 0
  br i1 %tobool39.not, label %tda9950_glue_open.exit.if.end41_crit_edge, label %tda9950_glue_open.exit.cleanup_crit_edge

tda9950_glue_open.exit.cleanup_crit_edge:         ; preds = %tda9950_glue_open.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tda9950_glue_open.exit.if.end41_crit_edge:        ; preds = %tda9950_glue_open.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %tda9950_glue_open.exit.if.end41_crit_edge, %tda9950_glue_open.exit.thread
  %open6.i161 = phi ptr [ %open6.i159, %tda9950_glue_open.exit.thread ], [ %open6.i, %tda9950_glue_open.exit.if.end41_crit_edge ]
  %call42 = tail call fastcc zeroext i8 @tda9950_read(ptr noundef %client, i8 noundef zeroext 2)
  %conv = zext i8 %call42 to i32
  %37 = lshr i32 %conv, 4
  %and = and i32 %conv, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %37, i32 noundef %and) #9
  %38 = ptrtoint ptr %open6.i161 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %open6.i161, align 4
  %39 = ptrtoint ptr %glue15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %glue15, align 4
  %tobool.not.i146 = icmp eq ptr %40, null
  br i1 %tobool.not.i146, label %if.end41.tda9950_glue_release.exit_crit_edge, label %land.lhs.true.i148

if.end41.tda9950_glue_release.exit_crit_edge:     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_glue_release.exit

land.lhs.true.i148:                               ; preds = %if.end41
  %release.i = getelementptr inbounds %struct.tda9950_glue, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %release.i, align 4
  %tobool2.not.i147 = icmp eq ptr %42, null
  br i1 %tobool2.not.i147, label %land.lhs.true.i148.tda9950_glue_release.exit_crit_edge, label %if.then.i150

land.lhs.true.i148.tda9950_glue_release.exit_crit_edge: ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_glue_release.exit

if.then.i150:                                     ; preds = %land.lhs.true.i148
  call void @__sanitizer_cov_trace_pc() #8
  %data.i149 = getelementptr inbounds %struct.tda9950_glue, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %data.i149 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i149, align 4
  tail call void %42(ptr noundef %44) #6
  br label %tda9950_glue_release.exit

tda9950_glue_release.exit:                        ; preds = %if.then.i150, %land.lhs.true.i148.tda9950_glue_release.exit_crit_edge, %if.end41.tda9950_glue_release.exit_crit_edge
  br i1 %tobool16.not, label %tda9950_glue_release.exit.if.end50_crit_edge, label %if.then49

tda9950_glue_release.exit.if.end50_crit_edge:     ; preds = %tda9950_glue_release.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then49:                                        ; preds = %tda9950_glue_release.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq_flags = getelementptr inbounds %struct.tda9950_glue, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq_flags, align 4
  %phi.bo137 = or i32 %46, 8320
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %tda9950_glue_release.exit.if.end50_crit_edge
  %irqflags.0 = phi i32 [ %phi.bo137, %if.then49 ], [ 8322, %tda9950_glue_release.exit.if.end50_crit_edge ]
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i151 = icmp eq ptr %50, null
  br i1 %tobool.not.i151, label %if.end.i, label %if.end50.dev_name.exit_crit_edge

if.end50.dev_name.exit_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end50.dev_name.exit_crit_edge
  %retval.0.i152 = phi ptr [ %52, %if.end.i ], [ %50, %if.end50.dev_name.exit_crit_edge ]
  %call55 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %48, ptr noundef null, ptr noundef nonnull @tda9950_irq, i32 noundef %irqflags.0, ptr noundef %retval.0.i152, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %dev_name.exit.cleanup_crit_edge, label %if.end59

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %dev_name.exit
  %53 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hdmi, align 4
  %55 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adap, align 8
  %call62 = tail call ptr @cec_notifier_cec_adap_register(ptr noundef %54, ptr noundef null, ptr noundef %56) #6
  %notify = getelementptr inbounds %struct.tda9950_priv, ptr %call.i, i32 0, i32 6
  %57 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call62, ptr %notify, align 8
  %tobool64.not = icmp eq ptr %call62, null
  br i1 %tobool64.not, label %if.end59.cleanup_crit_edge, label %if.end66

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %58 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adap, align 8
  %60 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hdmi, align 4
  %call69 = tail call i32 @cec_register_adapter(ptr noundef %59, ptr noundef %61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %notify, align 8
  %64 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adap, align 8
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %63, ptr noundef %65) #6
  br label %cleanup

if.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devm_remove_action(ptr noundef %dev, ptr noundef nonnull @tda9950_cec_del, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then72, %if.end59.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %tda9950_glue_open.exit.cleanup_crit_edge, %tda9950_devm_glue_init.exit.cleanup_crit_edge, %if.then.i.i, %land.lhs.true.i.critedge.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then31, %if.then25, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -6, %do.end7 ], [ %18, %if.then25 ], [ %call29, %if.then31 ], [ %call69, %if.then72 ], [ 0, %if.end75 ], [ -6, %do.end ], [ -12, %if.end9.cleanup_crit_edge ], [ %call618.i, %tda9950_devm_glue_init.exit.cleanup_crit_edge ], [ %call.i142, %tda9950_glue_open.exit.cleanup_crit_edge ], [ %call55, %dev_name.exit.cleanup_crit_edge ], [ -12, %if.end59.cleanup_crit_edge ], [ %call6.i, %if.then.i.i ], [ %call6.i, %land.lhs.true.i.critedge.i.cleanup_crit_edge ], [ %call.i138, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9950_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notify = getelementptr inbounds %struct.tda9950_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify, align 8
  %adap = getelementptr inbounds %struct.tda9950_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %3, ptr noundef %5) #6
  %6 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap, align 8
  tail call void @cec_unregister_adapter(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda9950_cec_del(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adap = getelementptr inbounds %struct.tda9950_priv, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  tail call void @cec_delete_adapter(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tda9950_read(ptr noundef %client, i8 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %1 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %addr, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1.i, align 2
  %6 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %addr.addr.i, ptr %buf.i, align 4
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %arrayidx7.i, align 4
  %flags10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags10.i, align 2
  %len12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len12.i, align 4
  %buf14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val, ptr %buf14.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.do.body17.i_crit_edge

entry.do.body17.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %16 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr.addr.i, align 1
  %conv16.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %call.i, i32 noundef %conv16.i) #9
  br label %do.body17.i

do.body17.i:                                      ; preds = %do.end.i, %entry.do.body17.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda9950_read_range.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda9950_read, %if.then21.i)) #6
          to label %tda9950_read_range.exit [label %if.then21.i], !srcloc !80

if.then21.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %18 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr.addr.i, align 1
  %conv23.i = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda9950_read_range.__UNIQUE_ID_ddebug289, ptr noundef %dev22.i, ptr noundef nonnull @.str.21, i32 noundef %conv23.i, i32 noundef 1, ptr noundef nonnull %val) #6
  br label %tda9950_read_range.exit

tda9950_read_range.exit:                          ; preds = %if.then21.i, %do.body17.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  br i1 %cmp.i, label %if.then, label %tda9950_read_range.exit.if.end_crit_edge

tda9950_read_range.exit.if.end_crit_edge:         ; preds = %tda9950_read_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %tda9950_read_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %val, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %tda9950_read_range.exit.if.end_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #6
  ret i8 %22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9950_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [19 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [19 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [19 x i8], ptr %buf, i32 0, i32 2
  %open = getelementptr inbounds %struct.tda9950_priv, ptr %data, i32 0, i32 7
  %2 = call ptr @memset(ptr %buf, i32 255, i32 19)
  %3 = ptrtoint ptr %open to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %open, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %call = tail call fastcc zeroext i8 @tda9950_read(ptr noundef %6, i8 noundef zeroext 0)
  %7 = and i8 %call, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %call5 = tail call fastcc zeroext i8 @tda9950_read(ptr noundef %9, i8 noundef zeroext 6)
  %10 = and i8 %call5, 7
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %13 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr1.i, align 2
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %14, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %addr.addr.i, ptr %buf.i, align 4
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %17, ptr %arrayidx7.i, align 4
  %flags10.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags10.i, align 2
  %len12.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 19, ptr %len12.i, align 4
  %buf14.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %buf14.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf, ptr %buf14.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %26 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end3.do.body17.i_crit_edge

if.end3.do.body17.i_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %28 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr.addr.i, align 1
  %conv16.i = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %call.i, i32 noundef %conv16.i) #9
  br label %do.body17.i

do.body17.i:                                      ; preds = %do.end.i, %if.end3.do.body17.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda9950_read_range.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda9950_irq, %if.then21.i)) #6
          to label %tda9950_read_range.exit [label %if.then21.i], !srcloc !80

if.then21.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %30 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr.addr.i, align 1
  %conv23.i = zext i8 %31 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda9950_read_range.__UNIQUE_ID_ddebug289, ptr noundef %dev22.i, ptr noundef nonnull @.str.21, i32 noundef %conv23.i, i32 noundef 19, ptr noundef nonnull %buf) #6
  br label %tda9950_read_range.exit

tda9950_read_range.exit:                          ; preds = %if.then21.i, %do.body17.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  %32 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buf, align 1
  %conv11 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp = icmp eq i8 %33, 0
  br i1 %cmp, label %do.end, label %if.end15

do.end:                                           ; preds = %tda9950_read_range.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end15:                                         ; preds = %tda9950_read_range.exit
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %0, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i8 %37, label %do.end56 [
    i8 1, label %sw.bb
    i8 -127, label %sw.bb35
  ]

sw.bb:                                            ; preds = %if.end15
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %1, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %40, label %do.end25 [
    i8 0, label %sw.bb.sw.epilog_crit_edge
    i8 -125, label %sw.bb.sw.epilog.thread_crit_edge
    i8 -123, label %sw.bb22
  ]

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb22:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

do.end25:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %conv19 = zext i8 %40 to i32
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 8
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.25, i32 noundef %conv19) #9
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %do.end25, %sw.bb22, %sw.bb.sw.epilog.thread_crit_edge
  %tx_status.0.ph = phi i8 [ 36, %sw.bb22 ], [ 48, %do.end25 ], [ 34, %sw.bb.sw.epilog.thread_crit_edge ]
  %arb_lost_cnt.0.ph = phi i8 [ 0, %sw.bb22 ], [ 0, %do.end25 ], [ %10, %sw.bb.sw.epilog.thread_crit_edge ]
  %nack_cnt.0.ph = phi i8 [ %10, %sw.bb22 ], [ 0, %do.end25 ], [ 0, %sw.bb.sw.epilog.thread_crit_edge ]
  %err_cnt.0.ph = phi i8 [ 0, %sw.bb22 ], [ %10, %do.end25 ], [ 0, %sw.bb.sw.epilog.thread_crit_edge ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.thread, %sw.bb.sw.epilog_crit_edge
  %err_cnt.097 = phi i8 [ %err_cnt.0.ph, %sw.epilog.thread ], [ %40, %sw.bb.sw.epilog_crit_edge ]
  %nack_cnt.096 = phi i8 [ %nack_cnt.0.ph, %sw.epilog.thread ], [ %40, %sw.bb.sw.epilog_crit_edge ]
  %arb_lost_cnt.095 = phi i8 [ %arb_lost_cnt.0.ph, %sw.epilog.thread ], [ %40, %sw.bb.sw.epilog_crit_edge ]
  %44 = phi i8 [ %tx_status.0.ph, %sw.epilog.thread ], [ 1, %sw.bb.sw.epilog_crit_edge ]
  %adap = getelementptr inbounds %struct.tda9950_priv, ptr %data, i32 0, i32 2
  %45 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adap, align 8
  %call.i88 = call i64 @ktime_get() #6
  call void @cec_transmit_done_ts(ptr noundef %46, i8 noundef zeroext %44, i8 noundef zeroext %arb_lost_cnt.095, i8 noundef zeroext %nack_cnt.096, i8 noundef zeroext 0, i8 noundef zeroext %err_cnt.097, i64 noundef %call.i88) #6
  br label %cleanup

sw.bb35:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %conv11, -2
  %rx_msg = getelementptr inbounds %struct.tda9950_priv, ptr %data, i32 0, i32 5
  %len = getelementptr inbounds %struct.tda9950_priv, ptr %data, i32 0, i32 5, i32 2
  %47 = call i32 @llvm.umin.i32(i32 %sub, i32 16)
  %48 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %len, align 8
  %msg = getelementptr inbounds %struct.tda9950_priv, ptr %data, i32 0, i32 5, i32 6
  %49 = call ptr @memcpy(ptr %msg, ptr %1, i32 %47)
  %adap51 = getelementptr inbounds %struct.tda9950_priv, ptr %data, i32 0, i32 2
  %50 = ptrtoint ptr %adap51 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adap51, align 8
  %call.i89 = call i64 @ktime_get() #6
  call void @cec_received_msg_ts(ptr noundef %51, ptr noundef %rx_msg, i64 noundef %call.i89) #6
  br label %cleanup

do.end56:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = zext i8 %37 to i32
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data, align 8
  %dev58 = getelementptr inbounds %struct.i2c_client, ptr %53, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev58, ptr noundef nonnull @.str.28, i32 noundef %conv17) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %sw.bb35, %sw.epilog, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %do.end56 ], [ 1, %sw.bb35 ], [ 1, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_cec_adap_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_remove_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9950_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  br i1 %enable, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tda9950_release(ptr noundef %1)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @tda9950_open(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.else ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9950_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %addr) #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [19 x i8], align 1
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %addr)
  %cmp = icmp eq i8 %addr, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %addresses3 = getelementptr inbounds %struct.tda9950_priv, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %addresses3 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %addresses3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %addr to i32
  %shl = shl nuw i32 1, %conv
  %addresses5 = getelementptr inbounds %struct.tda9950_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %addresses5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addresses5, align 8
  %6 = trunc i32 %shl to i16
  %conv7 = or i16 %5, %6
  store i16 %conv7, ptr %addresses5, align 8
  %extract.t = trunc i16 %conv7 to i8
  %7 = lshr i16 %conv7, 8
  %8 = trunc i16 %7 to i8
  %extract.t19 = and i8 %8, 127
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %addresses.0.off0 = phi i8 [ 0, %if.then ], [ %extract.t, %if.else ]
  %addresses.0.off8 = phi i8 [ 0, %if.then ], [ %extract.t19, %if.else ]
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %addresses.0.off8, ptr %buf, align 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %addresses.0.off0, ptr %2, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 262143, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %buf.i) #6
  %15 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %16 = getelementptr inbounds i8, ptr %buf.i, i32 3
  %17 = call ptr @memset(ptr %16, i32 255, i32 16)
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %buf.i, align 1
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %buf, align 2
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %15, align 1
  %addr22.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %22 = ptrtoint ptr %addr22.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr22.i, align 2
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i, align 2
  %buf25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf25.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i, ptr %buf25.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda9950_write_range.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda9950_cec_adap_log_addr, %if.then35.i)) #6
          to label %do.end39.i [label %if.then35.i], !srcloc !80

if.then35.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda9950_write_range.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %buf) #6
  br label %do.end39.i

do.end39.i:                                       ; preds = %if.then35.i, %if.end
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %call40.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %do.end46.i, label %do.end39.i.tda9950_write_range.exit_crit_edge

do.end39.i.tda9950_write_range.exit_crit_edge:    ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_write_range.exit

do.end46.i:                                       ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev47.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i, ptr noundef nonnull @.str.18, i32 noundef %call40.i, i32 noundef 4) #9
  br label %tda9950_write_range.exit

tda9950_write_range.exit:                         ; preds = %do.end46.i, %do.end39.i.tda9950_write_range.exit_crit_edge
  %29 = call i32 @llvm.smin.i32(i32 %call40.i, i32 0) #6
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda9950_cec_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [19 x i8], align 1
  %val.addr.i = alloca i8, align 1
  %buf = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %buf) #6
  %2 = getelementptr inbounds [18 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [18 x i8], ptr %buf, i32 0, i32 2
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %4 = getelementptr inbounds i8, ptr %buf, i32 2
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 8
  %8 = trunc i32 %7 to i8
  %conv = add i8 %8, 2
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %buf, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %msg3 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %11 = call ptr @memcpy(ptr %3, ptr %msg3, i32 %7)
  %12 = tail call i8 @llvm.umin.i8(i8 %attempts, i8 5)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %15 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %12, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %16 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196607, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %buf.i.i) #6
  %18 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %19 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %20 = call ptr @memset(ptr %19, i32 255, i32 17)
  %21 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 6, ptr %buf.i.i, align 1
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %12, ptr %18, align 1
  %addr22.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 1
  %23 = ptrtoint ptr %addr22.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %addr22.i.i, align 2
  %25 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i.i, align 2
  %buf25.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf25.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i.i, ptr %buf25.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda9950_write_range.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda9950_cec_transmit, %if.then35.i.i)) #6
          to label %do.end39.i.i [label %if.then35.i.i], !srcloc !80

if.then35.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda9950_write_range.__UNIQUE_ID_ddebug288, ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %val.addr.i) #6
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then35.i.i, %entry
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %28 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i.i, align 8
  %call40.i.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %cmp41.i.i = icmp slt i32 %call40.i.i, 0
  br i1 %cmp41.i.i, label %do.end46.i.i, label %do.end39.i.i.tda9950_write.exit_crit_edge

do.end39.i.i.tda9950_write.exit_crit_edge:        ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_write.exit

do.end46.i.i:                                     ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev47.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i.i, ptr noundef nonnull @.str.18, i32 noundef %call40.i.i, i32 noundef 6) #9
  br label %tda9950_write.exit

tda9950_write.exit:                               ; preds = %do.end46.i.i, %do.end39.i.i.tda9950_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 8
  %add11 = add i32 %33, 2
  %call = call fastcc i32 @tda9950_write_range(ptr noundef %31, i8 noundef zeroext 7, ptr noundef nonnull %buf, i32 noundef %add11)
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %buf) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda9950_release(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [19 x i8], align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %2 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 196607, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %buf.i.i) #6
  %5 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %6 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %7 = call ptr @memset(ptr %6, i32 255, i32 17)
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %buf.i.i, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 1
  %addr22.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %addr22.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr22.i.i, align 2
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %buf25.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf25.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i.i, ptr %buf25.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda9950_write_range.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda9950_release, %if.then35.i.i)) #6
          to label %do.end39.i.i [label %if.then35.i.i], !srcloc !80

if.then35.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda9950_write_range.__UNIQUE_ID_ddebug288, ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %val.addr.i) #6
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then35.i.i, %entry
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i.i, align 8
  %call40.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %cmp41.i.i = icmp slt i32 %call40.i.i, 0
  br i1 %cmp41.i.i, label %do.end46.i.i, label %do.end39.i.i.tda9950_write.exit_crit_edge

do.end39.i.i.tda9950_write.exit_crit_edge:        ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_write.exit

do.end46.i.i:                                     ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev47.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i.i, ptr noundef nonnull @.str.18, i32 noundef %call40.i.i, i32 noundef 3) #9
  br label %tda9950_write.exit

tda9950_write.exit:                               ; preds = %do.end46.i.i, %do.end39.i.i.tda9950_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %call19 = call fastcc zeroext i8 @tda9950_read(ptr noundef %1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call19)
  %tobool.not22 = icmp sgt i8 %call19, -1
  br i1 %tobool.not22, label %tda9950_write.exit.if.end11_crit_edge, label %tda9950_write.exit.if.end_crit_edge

tda9950_write.exit.if.end_crit_edge:              ; preds = %tda9950_write.exit
  br label %if.end

tda9950_write.exit.if.end11_crit_edge:            ; preds = %tda9950_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

lor.lhs.false:                                    ; preds = %if.end
  %dec = add nsw i32 %dec28, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.end9.critedge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %tda9950_write.exit.if.end_crit_edge
  %dec28 = phi i32 [ %dec, %lor.lhs.false.if.end_crit_edge ], [ 49, %tda9950_write.exit.if.end_crit_edge ]
  call void @msleep(i32 noundef 10) #6
  %call = call fastcc zeroext i8 @tda9950_read(ptr noundef %1, i8 noundef zeroext 0)
  %conv = zext i8 %call to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %lor.lhs.false

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end9.critedge:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %18, i32 noundef %conv) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end9.critedge, %if.end.if.end11_crit_edge, %tda9950_write.exit.if.end11_crit_edge
  %open.i = getelementptr inbounds %struct.tda9950_priv, ptr %priv, i32 0, i32 7
  %19 = ptrtoint ptr %open.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %open.i, align 4
  %glue.i = getelementptr inbounds %struct.tda9950_priv, ptr %priv, i32 0, i32 3
  %20 = ptrtoint ptr %glue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %glue.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end11.tda9950_glue_release.exit_crit_edge, label %land.lhs.true.i

if.end11.tda9950_glue_release.exit_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_glue_release.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %release.i = getelementptr inbounds %struct.tda9950_glue, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i, align 4
  %tobool2.not.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.tda9950_glue_release.exit_crit_edge, label %if.then.i

land.lhs.true.i.tda9950_glue_release.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_glue_release.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.tda9950_glue, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  call void %23(ptr noundef %25) #6
  br label %tda9950_glue_release.exit

tda9950_glue_release.exit:                        ; preds = %if.then.i, %land.lhs.true.i.tda9950_glue_release.exit_crit_edge, %if.end11.tda9950_glue_release.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda9950_open(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %msg.i.i8 = alloca %struct.i2c_msg, align 4
  %buf.i.i9 = alloca [19 x i8], align 1
  %val.addr.i10 = alloca i8, align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [19 x i8], align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %glue.i = getelementptr inbounds %struct.tda9950_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %glue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %glue.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.tda9950_glue_open.exit.thread_crit_edge, label %land.lhs.true.i

entry.tda9950_glue_open.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_glue_open.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %open.i = getelementptr inbounds %struct.tda9950_glue, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %open.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.tda9950_glue_open.exit.thread_crit_edge, label %tda9950_glue_open.exit

land.lhs.true.i.tda9950_glue_open.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_glue_open.exit.thread

tda9950_glue_open.exit.thread:                    ; preds = %land.lhs.true.i.tda9950_glue_open.exit.thread_crit_edge, %entry.tda9950_glue_open.exit.thread_crit_edge
  %open6.i24 = getelementptr inbounds %struct.tda9950_priv, ptr %priv, i32 0, i32 7
  %6 = ptrtoint ptr %open6.i24 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %open6.i24, align 4
  br label %if.end

tda9950_glue_open.exit:                           ; preds = %land.lhs.true.i
  %data.i = getelementptr inbounds %struct.tda9950_glue, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %call.i = tail call i32 %5(ptr noundef %8) #6
  %open6.i = getelementptr inbounds %struct.tda9950_priv, ptr %priv, i32 0, i32 7
  %9 = ptrtoint ptr %open6.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %open6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %tda9950_glue_open.exit.if.end_crit_edge, label %tda9950_glue_open.exit.cleanup_crit_edge

tda9950_glue_open.exit.cleanup_crit_edge:         ; preds = %tda9950_glue_open.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tda9950_glue_open.exit.if.end_crit_edge:          ; preds = %tda9950_glue_open.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %tda9950_glue_open.exit.if.end_crit_edge, %tda9950_glue_open.exit.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %10 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 196607, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %buf.i.i) #6
  %13 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %14 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %15 = call ptr @memset(ptr %14, i32 255, i32 17)
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %buf.i.i, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %13, align 1
  %addr22.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %addr22.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr22.i.i, align 2
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i.i, align 2
  %buf25.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf25.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf.i.i, ptr %buf25.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda9950_write_range.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda9950_open, %if.then35.i.i)) #6
          to label %do.end39.i.i [label %if.then35.i.i], !srcloc !80

if.then35.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda9950_write_range.__UNIQUE_ID_ddebug288, ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %val.addr.i) #6
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then35.i.i, %if.end
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i.i, align 8
  %call40.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %cmp41.i.i = icmp slt i32 %call40.i.i, 0
  br i1 %cmp41.i.i, label %do.end46.i.i, label %do.end39.i.i.tda9950_write.exit_crit_edge

do.end39.i.i.tda9950_write.exit_crit_edge:        ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_write.exit

do.end46.i.i:                                     ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev47.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i.i, ptr noundef nonnull @.str.18, i32 noundef %call40.i.i, i32 noundef 3) #9
  br label %tda9950_write.exit

tda9950_write.exit:                               ; preds = %do.end46.i.i, %do.end39.i.i.tda9950_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @msleep(i32 noundef 250) #6
  %adap = getelementptr inbounds %struct.tda9950_priv, ptr %priv, i32 0, i32 2
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 8
  %call2 = call i32 @tda9950_cec_adap_log_addr(ptr noundef %26, i8 noundef zeroext -1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i10)
  %27 = ptrtoint ptr %val.addr.i10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 64, ptr %val.addr.i10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i8) #6
  %28 = getelementptr inbounds i8, ptr %msg.i.i8, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %buf.i.i9) #6
  %30 = getelementptr inbounds i8, ptr %buf.i.i9, i32 1
  %31 = getelementptr inbounds i8, ptr %buf.i.i9, i32 2
  %32 = call ptr @memset(ptr %31, i32 255, i32 17)
  %33 = ptrtoint ptr %buf.i.i9 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %buf.i.i9, align 1
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 64, ptr %30, align 1
  %35 = ptrtoint ptr %addr22.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr22.i.i, align 2
  %37 = ptrtoint ptr %msg.i.i8 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %msg.i.i8, align 4
  %flags.i.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i8, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i.i12 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i.i12, align 2
  %buf25.i.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i8, i32 0, i32 3
  %39 = ptrtoint ptr %buf25.i.i13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i.i9, ptr %buf25.i.i13, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda9950_write_range.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda9950_open, %if.then35.i.i15)) #6
          to label %do.end39.i.i19 [label %if.then35.i.i15], !srcloc !80

if.then35.i.i15:                                  ; preds = %tda9950_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda9950_write_range.__UNIQUE_ID_ddebug288, ptr noundef %dev.i.i14, ptr noundef nonnull @.str.17, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %val.addr.i10) #6
  br label %do.end39.i.i19

do.end39.i.i19:                                   ; preds = %if.then35.i.i15, %tda9950_write.exit
  %40 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i.i, align 8
  %call40.i.i17 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i.i8, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i17)
  %cmp41.i.i18 = icmp slt i32 %call40.i.i17, 0
  br i1 %cmp41.i.i18, label %do.end46.i.i21, label %do.end39.i.i19.tda9950_write.exit22_crit_edge

do.end39.i.i19.tda9950_write.exit22_crit_edge:    ; preds = %do.end39.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda9950_write.exit22

do.end46.i.i21:                                   ; preds = %do.end39.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  %dev47.i.i20 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i.i20, ptr noundef nonnull @.str.18, i32 noundef %call40.i.i17, i32 noundef 3) #9
  br label %tda9950_write.exit22

tda9950_write.exit22:                             ; preds = %do.end46.i.i21, %do.end39.i.i19.tda9950_write.exit22_crit_edge
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %buf.i.i9) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i8) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i10)
  br label %cleanup

cleanup:                                          ; preds = %tda9950_write.exit22, %tda9950_glue_open.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tda9950_write.exit22 ], [ %call.i, %tda9950_glue_open.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda9950_write_range(ptr noundef %client, i8 noundef zeroext %addr, ptr noundef %p, i32 noundef %cnt) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  %buf = alloca [19 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %cnt)
  %cmp = icmp ugt i32 %cnt, 18
  %2 = getelementptr inbounds i8, ptr %buf, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 18)
  br i1 %cmp, label %do.end, label %if.end21, !prof !82

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 79, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %entry
  %4 = getelementptr inbounds [19 x i8], ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %addr, ptr %buf, align 1
  %6 = call ptr @memcpy(ptr %4, ptr %p, i32 %cnt)
  %addr22 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr22 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr22, align 2
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %11 = trunc i32 %cnt to i16
  %conv = add nuw nsw i16 %11, 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %len, align 4
  %buf25 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf, ptr %buf25, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda9950_write_range.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda9950_write_range, %if.then35)) #6
          to label %do.end39 [label %if.then35], !srcloc !80

if.then35:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv36 = zext i8 %addr to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda9950_write_range.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %conv36, i32 noundef %cnt, ptr noundef %p) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %if.end21
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %call40 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.end46, label %do.end39.if.end49_crit_edge

do.end39.if.end49_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.end46:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv48 = zext i8 %addr to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.18, i32 noundef %call40, i32 noundef %conv48) #9
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %do.end39.if.end49_crit_edge
  %16 = call i32 @llvm.smin.i32(i32 %call40, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %16, %if.end49 ]
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda9950_devm_glue_exit(ptr noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %exit = getelementptr inbounds %struct.tda9950_glue, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %exit, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %data3 = getelementptr inbounds %struct.tda9950_glue, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data3, align 4
  tail call void %1(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_tda9950__290_506_tda9950_driver_init6, !1, !"__initcall__kmod_tda9950__290_506_tda9950_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 506, i32 1}
!2 = !{ptr @__exitcall_tda9950_driver_exit, !1, !"__exitcall_tda9950_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 508, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 509, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 510, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 501, i32 11}
!12 = !{ptr @tda9950_driver, !13, !"tda9950_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 497, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 393, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tda9950_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tda9950_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 400, i32 3}
!24 = !{ptr @tda9950_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tda9950_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 445, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tda9950_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tda9950_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @tda9950_cec_ops, !32, !"tda9950_cec_ops", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 336, i32 34}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 318, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tda9950_release._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @tda9950_release._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 90, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tda9950_write_range.__UNIQUE_ID_ddebug288, !40, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 94, i32 3}
!45 = !{ptr @tda9950_write_range._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tda9950_write_range._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 119, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tda9950_read_range._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @tda9950_read_range._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 121, i32 2}
!54 = !{ptr @tda9950_read_range.__UNIQUE_ID_ddebug289, !53, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 161, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @tda9950_irq._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @tda9950_irq._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 184, i32 4}
!62 = !{ptr @tda9950_irq._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tda9950_irq._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 207, i32 3}
!66 = !{ptr @tda9950_irq._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tda9950_irq._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @tda9950_ids, !69, !"tda9950_ids", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/i2c/tda9950.c", i32 491, i32 29}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i64 2148766340, i64 2148766345, i64 2148766358, i64 2148766402, i64 2148766436, i64 2148766457}
!81 = !{i8 0, i8 2}
!82 = !{!"branch_weights", i32 1, i32 2000}
