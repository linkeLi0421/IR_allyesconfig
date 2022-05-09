; ModuleID = '/llk/IR_all_yes/drivers/media/cec/i2c/ch7322.c_pt.bc'
source_filename = "../drivers/media/cec/i2c/ch7322.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.ch7322 = type { ptr, ptr, ptr, %struct.mutex, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.88 }
%union.anon.88 = type { [16 x i32] }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }

@__initcall__kmod_ch7322__293_600_ch7322_i2c_driver_init6 = internal global ptr @ch7322_i2c_driver_init, section ".initcall6.init", align 4
@ch7322_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ch7322_remove, ptr @ch7322_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ch7322_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ch7322_i2c_driver_exit = internal global ptr @ch7322_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [57 x i8] c"ch7322.description=Chrontel CH7322 CEC Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [46 x i8] c"ch7322.author=Jeff Chase <jnchase@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [41 x i8] c"ch7322.file=drivers/media/cec/i2c/ch7322\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"ch7322.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ch7322\00", [25 x i8] zeroinitializer }, align 32
@ch7322_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chrontel,ch7322\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ch7322_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device unregistered\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ch7322_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/cec/i2c/ch7322.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ch7322_remove._entry_ptr = internal global ptr @ch7322_remove._entry, section ".printk_index", align 4
@ch7322_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ch7322_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ch7322:468:(&ch7322_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@ch7322_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ch7322->mutex\00", [17 x i8] zeroinitializer }, align 32
@ch7322_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @ch7322_cec_adap_enable, ptr null, ptr null, ptr @ch7322_cec_adap_log_addr, ptr @ch7322_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ch7322_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device registered\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch7322_probe\00", [19 x i8] zeroinitializer }, align 32
@ch7322_probe._entry_ptr = internal global ptr @ch7322_probe._entry, section ".printk_index", align 4
@ch7322_phys_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 301, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phys addr error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ch7322_phys_addr\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ch7322_phys_addr._entry_ptr = internal global ptr @ch7322_phys_addr._entry, section ".printk_index", align 4
@ch7322_irq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ch7322_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown error\0A\00", [17 x i8] zeroinitializer }, align 32
@ch7322_rx_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 280, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cec receive error: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ch7322_rx_done\00", [17 x i8] zeroinitializer }, align 32
@ch7322_rx_done._entry_ptr = internal global ptr @ch7322_rx_done._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"ch7322_i2c_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 591, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 593, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"ch7322_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 585, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 580, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"ch7322_regmap\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 158, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 468, i32 19 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 479, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"ch7322_cec_adap_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 366, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 554, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 301, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 329, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [34 x i8] c"../drivers/media/cec/i2c/ch7322.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 280, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_ch7322_i2c_driver_exit, ptr @__initcall__kmod_ch7322__293_600_ch7322_i2c_driver_init6, ptr @ch7322_i2c_driver_exit, ptr @ch7322_phys_addr._entry, ptr @ch7322_phys_addr._entry_ptr, ptr @ch7322_probe._entry, ptr @ch7322_probe._entry_ptr, ptr @ch7322_remove._entry, ptr @ch7322_remove._entry_ptr, ptr @ch7322_rx_done._entry, ptr @ch7322_rx_done._entry_ptr, ptr @ch7322_i2c_driver, ptr @.str, ptr @ch7322_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ch7322_probe._key, ptr @ch7322_regmap, ptr @.str.6, ptr @ch7322_probe.__key, ptr @.str.7, ptr @ch7322_cec_adap_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_phys_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7322_rx_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7322_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ch7322_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ch7322_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ch7322_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7322_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.ch7322, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.ch7322, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 27, i32 noundef 128) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %cec = getelementptr inbounds %struct.ch7322, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cec, align 4
  tail call void @cec_unregister_adapter(ptr noundef %5) #6
  tail call void @mutex_destroy(ptr noundef %mutex) #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7322_probe(ptr noundef %client) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !63
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ch7322_regmap, ptr noundef nonnull @ch7322_probe._key, ptr noundef nonnull @.str.6) #6
  %regmap = getelementptr inbounds %struct.ch7322, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call16 = call i32 @regmap_read(ptr noundef %call8, i32 noundef 81, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 91, i32 %4)
  %cmp.not = icmp eq i32 %4, 91
  br i1 %cmp.not, label %do.body, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end19
  %mutex = getelementptr inbounds %struct.ch7322, ptr %call.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @ch7322_probe.__key) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %call.i, align 4
  %tx_flags = getelementptr inbounds %struct.ch7322, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_flags, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_write(ptr noundef %9, i32 noundef 17, i32 noundef 181) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %do.body.err_mutex_crit_edge

do.body.err_mutex_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end26:                                         ; preds = %do.body
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i162 = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 49, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool29.not = icmp eq i32 %call.i162, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.err_mutex_crit_edge

if.end26.err_mutex_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end31:                                         ; preds = %if.end26
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.dev_name.exit_crit_edge

if.end31.dev_name.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end31.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end31.dev_name.exit_crit_edge ]
  %call34 = call ptr @cec_allocate_adapter(ptr noundef nonnull @ch7322_cec_adap_ops, ptr noundef nonnull %call.i, ptr noundef %retval.0.i, i32 noundef 30, i8 noundef zeroext 1) #6
  %cec = getelementptr inbounds %struct.ch7322, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %cec to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call34, ptr %cec, align 4
  %cmp.i163 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then37, label %if.end49

if.then37:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call34 to i32
  br label %err_mutex

if.end49:                                         ; preds = %dev_name.exit
  %adap_controls_phys_addr = getelementptr inbounds %struct.cec_adapter, ptr %call34, i32 0, i32 23
  %18 = ptrtoint ptr %adap_controls_phys_addr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %adap_controls_phys_addr, align 4
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call51 = call i32 @regmap_write(ptr noundef %20, i32 noundef 26, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.err_cec_crit_edge

if.end49.err_cec_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cec

if.end54:                                         ; preds = %if.end49
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call56 = call i32 @regmap_write(ptr noundef %22, i32 noundef 27, i32 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.err_cec_crit_edge

if.end54.err_cec_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cec

if.end59:                                         ; preds = %if.end54
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call61 = call i32 @regmap_write(ptr noundef %24, i32 noundef 62, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end59.err_cec_crit_edge

if.end59.err_cec_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cec

if.end64:                                         ; preds = %if.end59
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call66 = call i32 @regmap_read(ptr noundef %26, i32 noundef 61, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end64.err_cec_crit_edge

if.end64.err_cec_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cec

if.end69:                                         ; preds = %if.end64
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %and = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %if.end69.if.end72_crit_edge, label %if.then71

if.end69.if.end72_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ch7322_phys_addr(ptr noundef nonnull %call.i)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69.if.end72_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call74 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %30, ptr noundef null, ptr noundef nonnull @ch7322_irq, i32 noundef 8193, ptr noundef %name, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.err_cec_crit_edge

if.end72.err_cec_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cec

if.end77:                                         ; preds = %if.end72
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call80 = call i32 @regmap_write(ptr noundef %32, i32 noundef 27, i32 noundef 255) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool82.not = icmp eq i32 %call80, 0
  br i1 %tobool82.not, label %if.end84, label %if.end77.err_cec_crit_edge

if.end77.err_cec_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cec

if.end84:                                         ; preds = %if.end77
  %33 = ptrtoint ptr %cec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cec, align 4
  %call87 = call i32 @cec_register_adapter(ptr noundef %34, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.end93, label %if.end84.err_cec_crit_edge

if.end84.err_cec_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cec

do.end93:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

err_cec:                                          ; preds = %if.end84.err_cec_crit_edge, %if.end77.err_cec_crit_edge, %if.end72.err_cec_crit_edge, %if.end64.err_cec_crit_edge, %if.end59.err_cec_crit_edge, %if.end54.err_cec_crit_edge, %if.end49.err_cec_crit_edge
  %ret.0 = phi i32 [ %call51, %if.end49.err_cec_crit_edge ], [ %call56, %if.end54.err_cec_crit_edge ], [ %call61, %if.end59.err_cec_crit_edge ], [ %call66, %if.end64.err_cec_crit_edge ], [ %call74, %if.end72.err_cec_crit_edge ], [ %call80, %if.end77.err_cec_crit_edge ], [ %call87, %if.end84.err_cec_crit_edge ]
  %35 = ptrtoint ptr %cec to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cec, align 4
  call void @cec_delete_adapter(ptr noundef %36) #6
  br label %err_mutex

err_mutex:                                        ; preds = %err_cec, %if.then37, %if.end26.err_mutex_crit_edge, %do.body.err_mutex_crit_edge
  %ret.2 = phi i32 [ %call23, %do.body.err_mutex_crit_edge ], [ %call.i162, %if.end26.err_mutex_crit_edge ], [ %17, %if.then37 ], [ %ret.0, %err_cec ]
  call void @mutex_destroy(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %err_mutex, %do.end93, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then11 ], [ %ret.2, %err_mutex ], [ 0, %do.end93 ], [ -12, %entry.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ -95, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ch7322_phys_addr(ptr noundef %ch7322) unnamed_addr #2 align 64 {
entry:
  %pah = alloca i32, align 4
  %pal = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pah) #6
  %0 = ptrtoint ptr %pah to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pah, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pal) #6
  %1 = ptrtoint ptr %pal to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pal, align 4, !annotation !63
  %mutex = getelementptr inbounds %struct.ch7322, ptr %ch7322, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.ch7322, ptr %ch7322, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 83, ptr noundef nonnull %pah) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 84, ptr noundef nonnull %pal) #6
  %or3 = or i32 %call2, %call
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or3)
  %tobool.not = icmp eq i32 %or3, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ch7322 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ch7322, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cec = getelementptr inbounds %struct.ch7322, ptr %ch7322, i32 0, i32 2
  %8 = ptrtoint ptr %cec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cec, align 4
  %10 = ptrtoint ptr %pal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pal, align 4
  %12 = ptrtoint ptr %pah to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pah, align 4
  %shl = shl i32 %13, 8
  %or5 = or i32 %shl, %11
  %conv = trunc i32 %or5 to i16
  call void @cec_s_phys_addr(ptr noundef %9, i16 noundef zeroext %conv, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pal) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pah) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7322_irq(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %msg.i = alloca %struct.cec_msg, align 8
  %val.i = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %mutex = getelementptr inbounds %struct.ch7322, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.ch7322, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 62, ptr noundef nonnull %data) #6
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %call2 = call i32 @regmap_write(ptr noundef %4, i32 noundef 62, i32 noundef %6) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cec = getelementptr inbounds %struct.ch7322, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %cec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cec, align 4
  call void @cec_s_phys_addr(ptr noundef %10, i16 noundef zeroext -1, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %and4 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !63
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %val.i) #6
  %tx_flags.i = getelementptr inbounds %struct.ch7322, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_flags.i, align 4
  call void @mutex_unlock(ptr noundef %mutex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.ch7322_tx_done.exit_crit_edge

if.then6.ch7322_tx_done.exit_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %ch7322_tx_done.exit

if.else.i:                                        ; preds = %if.then6
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %and.i = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  %20 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool4.not.i = icmp eq i8 %20, 0
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %if.else6.i, label %if.else.i.ch7322_tx_done.exit_crit_edge

if.else.i.ch7322_tx_done.exit_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ch7322_tx_done.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.i = select i1 %tobool2.not.i, i1 %tobool4.not.i, i1 false
  %spec.select39.i = select i1 %spec.select.i, i8 4, i8 1
  %phi.bo.i = xor i1 %spec.select.i, true
  br label %ch7322_tx_done.exit

ch7322_tx_done.exit:                              ; preds = %if.else6.i, %if.else.i.ch7322_tx_done.exit_crit_edge, %if.then6.ch7322_tx_done.exit_crit_edge
  %cmp.i = phi i1 [ true, %if.then6.ch7322_tx_done.exit_crit_edge ], [ false, %if.else.i.ch7322_tx_done.exit_crit_edge ], [ %phi.bo.i, %if.else6.i ]
  %status.0.i = phi i8 [ 16, %if.then6.ch7322_tx_done.exit_crit_edge ], [ 4, %if.else.i.ch7322_tx_done.exit_crit_edge ], [ %spec.select39.i, %if.else6.i ]
  %21 = and i8 %17, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not.i = icmp eq i8 %21, 0
  %or.cond38.i = select i1 %cmp.i, i1 true, i1 %tobool24.not.i
  %status.1.i = select i1 %or.cond38.i, i8 %status.0.i, i8 36
  %cec.i = getelementptr inbounds %struct.ch7322, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %cec.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cec.i, align 4
  %call.i.i = call i64 @ktime_get() #6
  call void @cec_transmit_attempt_done_ts(ptr noundef %23, i8 noundef zeroext %status.1.i, i64 noundef %call.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end7

if.end7:                                          ; preds = %ch7322_tx_done.exit, %if.end.if.end7_crit_edge
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %and8 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %26 = call ptr @memset(ptr %msg.i, i32 255, i32 56)
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %27 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i.i, align 4, !annotation !63
  %call.i.i36 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #6
  br i1 %call.i.i36, label %if.then10.if.end.i.i_crit_edge, label %do.end.i.i, !prof !64

if.then10.if.end.i.i_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 214, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then10.if.end.i.i_crit_edge
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call20.i.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 64, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end23.i.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end23.i.i:                                     ; preds = %if.end.i.i
  %30 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end23.i.i.do.end.i_crit_edge, label %if.end26.i.i

if.end23.i.i.do.end.i_crit_edge:                  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %and27.i.i = and i32 %31, 15
  %add.i.i = add nuw nsw i32 %and27.i.i, 1
  %len.i.i = getelementptr inbounds %struct.cec_msg, ptr %msg.i, i32 0, i32 2
  %32 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i.i, ptr %len.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end33.i.i.for.body.i.i_crit_edge, %if.end26.i.i
  %i.047.i.i = phi i32 [ 0, %if.end26.i.i ], [ %inc.i.i, %if.end33.i.i.for.body.i.i_crit_edge ]
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %add29.i.i = add nuw nsw i32 %i.047.i.i, 65
  %call30.i.i = call i32 @regmap_read(ptr noundef %34, i32 noundef %add29.i.i, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end33.i.i, label %for.body.i.i.do.end.i_crit_edge

for.body.i.i.do.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end33.i.i:                                     ; preds = %for.body.i.i
  %35 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i.i, align 4
  %conv.i.i = trunc i32 %36 to i8
  %arrayidx.i.i = getelementptr %struct.cec_msg, ptr %msg.i, i32 0, i32 6, i32 %i.047.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.047.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %if.else.i38, label %if.end33.i.i.for.body.i.i_crit_edge

if.end33.i.i.for.body.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

do.end.i:                                         ; preds = %for.body.i.i.do.end.i_crit_edge, %if.end23.i.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %if.end23.i.i.do.end.i_crit_edge ], [ %call20.i.i, %if.end.i.i.do.end.i_crit_edge ], [ %call30.i.i, %for.body.i.i.do.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph.i) #9
  br label %ch7322_rx_done.exit

if.else.i38:                                      ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  %cec.i37 = getelementptr inbounds %struct.ch7322, ptr %dev, i32 0, i32 2
  %40 = ptrtoint ptr %cec.i37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cec.i37, align 4
  %call.i7.i = call i64 @ktime_get() #6
  call void @cec_received_msg_ts(ptr noundef %41, ptr noundef nonnull %msg.i, i64 noundef %call.i7.i) #6
  br label %ch7322_rx_done.exit

ch7322_rx_done.exit:                              ; preds = %if.else.i38, %do.end.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  br label %if.end11

if.end11:                                         ; preds = %ch7322_rx_done.exit, %if.end7.if.end11_crit_edge
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data, align 4
  %and12 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ch7322_phys_addr(ptr noundef %dev)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data, align 4
  %and16 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end26_crit_edge, label %do.body

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.body:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch7322_irq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch7322_irq, %if.then23)) #6
          to label %if.end26 [label %if.then23], !srcloc !65

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ch7322_irq.__UNIQUE_ID_ddebug292, ptr noundef %dev24, ptr noundef nonnull @.str.14) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %do.body, %if.end15.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ch7322_cec_adap_enable(ptr nocapture noundef readnone %adap, i1 noundef zeroext %enable) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7322_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %log_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %mutex = getelementptr inbounds %struct.ch7322, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.ch7322, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %log_addr to i32
  %shl = shl nuw nsw i32 %conv, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 52, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7322_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %mutex = getelementptr inbounds %struct.ch7322, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !63
  %len1.i = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1.i, align 8
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #6
  br i1 %call.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !64

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 172, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %5 = add i32 %4, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %5)
  %6 = icmp ult i32 %5, -16
  br i1 %6, label %if.end.i.ch7322_send_message.exit_crit_edge, label %if.end23.i

if.end.i.ch7322_send_message.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ch7322_send_message.exit

if.end23.i:                                       ; preds = %if.end.i
  %regmap.i = getelementptr inbounds %struct.ch7322, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call24.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end23.i.ch7322_send_message.exit_crit_edge

if.end23.i.ch7322_send_message.exit_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ch7322_send_message.exit

if.end27.i:                                       ; preds = %if.end23.i
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %and.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool28.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.ch7322_send_message.exit_crit_edge, label %if.end30.i

if.end27.i.ch7322_send_message.exit_crit_edge:    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ch7322_send_message.exit

if.end30.i:                                       ; preds = %if.end27.i
  %11 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.i = icmp ugt i32 %12, 1
  br i1 %cmp.i.i, label %if.end30.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end30.i.if.else.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end30.i
  %msg1.i.i = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %13 = ptrtoint ptr %msg1.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %msg1.i.i, align 8
  %15 = lshr i8 %14, 4
  %16 = and i8 %14, 15
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %16)
  %cmp36.i = icmp eq i8 %15, %16
  br i1 %cmp36.i, label %if.then38.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then38.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_flags.i = getelementptr inbounds %struct.ch7322, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %tx_flags.i, align 4
  br label %if.end46.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end30.i.if.else.i_crit_edge
  %msg1.i88.i = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  %18 = ptrtoint ptr %msg1.i88.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %msg1.i88.i, align 8
  %20 = and i8 %19, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %20)
  %cmp.i89.not.i = icmp eq i8 %20, 15
  %tx_flags42.i = getelementptr inbounds %struct.ch7322, ptr %1, i32 0, i32 4
  br i1 %cmp.i89.not.i, label %if.then41.i, label %if.else43.i

if.then41.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %tx_flags42.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %tx_flags42.i, align 4
  br label %if.end46.i

if.else43.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %tx_flags42.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %tx_flags42.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else43.i, %if.then41.i, %if.then38.i
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %sub.i = add nsw i32 %4, -1
  %call48.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 0, i32 noundef %sub.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end46.i.for.cond.i_crit_edge, label %if.end46.i.ch7322_send_message.exit_crit_edge

if.end46.i.ch7322_send_message.exit_crit_edge:    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ch7322_send_message.exit

if.end46.i.for.cond.i_crit_edge:                  ; preds = %if.end46.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end46.i.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %add.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %if.end46.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %4)
  %exitcond.not.i = icmp eq i32 %i.0.i, %4
  br i1 %exitcond.not.i, label %for.cond.i.ch7322_send_message.exit_crit_edge, label %for.body.i

for.cond.i.ch7322_send_message.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ch7322_send_message.exit

for.body.i:                                       ; preds = %for.cond.i
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %add.i = add i32 %i.0.i, 1
  %arrayidx.i = getelementptr %struct.cec_msg, ptr %msg, i32 0, i32 6, i32 %i.0.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i, align 1
  %conv56.i = zext i8 %28 to i32
  %call57.i = call i32 @regmap_write(ptr noundef %26, i32 noundef %add.i, i32 noundef %conv56.i) #6
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.ch7322_send_message.exit_crit_edge

for.body.i.ch7322_send_message.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ch7322_send_message.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

ch7322_send_message.exit:                         ; preds = %for.body.i.ch7322_send_message.exit_crit_edge, %for.cond.i.ch7322_send_message.exit_crit_edge, %if.end46.i.ch7322_send_message.exit_crit_edge, %if.end27.i.ch7322_send_message.exit_crit_edge, %if.end23.i.ch7322_send_message.exit_crit_edge, %if.end.i.ch7322_send_message.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.end.i.ch7322_send_message.exit_crit_edge ], [ %call24.i, %if.end23.i.ch7322_send_message.exit_crit_edge ], [ -16, %if.end27.i.ch7322_send_message.exit_crit_edge ], [ %call48.i, %if.end46.i.ch7322_send_message.exit_crit_edge ], [ %call57.i, %for.body.i.ch7322_send_message.exit_crit_edge ], [ 0, %for.cond.i.ch7322_send_message.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_s_phys_addr(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !32, !33, !35, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_ch7322__293_600_ch7322_i2c_driver_init6, !1, !"__initcall__kmod_ch7322__293_600_ch7322_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 600, i32 1}
!2 = !{ptr @__exitcall_ch7322_i2c_driver_exit, !1, !"__exitcall_ch7322_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 602, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 603, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 604, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 593, i32 11}
!12 = !{ptr @ch7322_i2c_driver, !13, !"ch7322_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 591, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 580, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ch7322_remove._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ch7322_remove._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ch7322_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 468, i32 19}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ch7322_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 479, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 554, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ch7322_probe._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ch7322_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ch7322_regmap, !34, !"ch7322_regmap", i1 false, i1 false}
!34 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 158, i32 35}
!35 = !{ptr @ch7322_cec_adap_ops, !36, !"ch7322_cec_adap_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 366, i32 34}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 301, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ch7322_phys_addr._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @ch7322_phys_addr._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 329, i32 3}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ch7322_irq.__UNIQUE_ID_ddebug292, !44, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 280, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ch7322_rx_done._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ch7322_rx_done._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ch7322_of_match, !53, !"ch7322_of_match", i1 false, i1 false}
!53 = !{!"../drivers/media/cec/i2c/ch7322.c", i32 585, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i64 2148402044, i64 2148402049, i64 2148402062, i64 2148402106, i64 2148402140, i64 2148402161}
