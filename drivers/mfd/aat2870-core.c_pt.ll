; ModuleID = '/llk/IR_all_yes/drivers/mfd/aat2870-core.c_pt.bc'
source_filename = "../drivers/mfd/aat2870-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.aat2870_register = type { i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.aat2870_data = type { ptr, ptr, %struct.mutex, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aat2870_platform_data = type { i32, ptr, i32, ptr, ptr }
%struct.aat2870_subdev_info = type { i32, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_aat2870_core__292_465_aat2870_init4 = internal global ptr @aat2870_init, section ".initcall4.init", align 4
@aat2870_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @aat2870_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aat2870_pm_ops, ptr null, ptr null }, ptr @aat2870_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aat2870\00", [24 x i8] zeroinitializer }, align 32
@aat2870_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @aat2870_i2c_suspend, ptr @aat2870_i2c_resume, ptr @aat2870_i2c_suspend, ptr @aat2870_i2c_resume, ptr @aat2870_i2c_suspend, ptr @aat2870_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@aat2870_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"aat2870\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@aat2870_regs = internal global { [39 x %struct.aat2870_register], [43 x i8] } { [39 x %struct.aat2870_register] [%struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 22 }, %struct.aat2870_register { i8 0, i8 1, i8 22 }, %struct.aat2870_register { i8 0, i8 1, i8 86 }, %struct.aat2870_register { i8 0, i8 1, i8 86 }, %struct.aat2870_register { i8 0, i8 1, i8 86 }, %struct.aat2870_register { i8 0, i8 1, i8 86 }, %struct.aat2870_register { i8 0, i8 1, i8 86 }, %struct.aat2870_register { i8 0, i8 1, i8 86 }, %struct.aat2870_register { i8 0, i8 1, i8 86 }, %struct.aat2870_register { i8 0, i8 1, i8 86 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 3 }, %struct.aat2870_register { i8 0, i8 1, i8 3 }, %struct.aat2870_register { i8 0, i8 1, i8 16 }, %struct.aat2870_register { i8 0, i8 1, i8 6 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 1, i8 0, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }, %struct.aat2870_register { i8 0, i8 1, i8 0 }], [43 x i8] zeroinitializer }, align 32
@aat2870_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&aat2870->io_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aat2870-en\00", [21 x i8] zeroinitializer }, align 32
@aat2870_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 377, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request GPIO %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aat2870_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mfd/aat2870-core.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aat2870_i2c_probe._entry_ptr = internal global ptr @aat2870_i2c_probe._entry, section ".printk_index", align 4
@aat2870_devs = internal global { [5 x %struct.mfd_cell], [104 x i8] } { [5 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 12, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 228, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 2, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 228, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 3, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 228, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 4, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 228, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [104 x i8] zeroinitializer }, align 32
@aat2870_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 399, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to add subdev: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@aat2870_i2c_probe._entry_ptr.10 = internal global ptr @aat2870_i2c_probe._entry.8, section ".printk_index", align 4
@__aat2870_read._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 97, ptr @.str.6, ptr @.str.7 }, align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid address, 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__aat2870_read\00", [17 x i8] zeroinitializer }, align 32
@__aat2870_read._entry_ptr = internal global ptr @__aat2870_read._entry, section ".printk_index", align 4
@__aat2870_read.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.12, ptr @.str.5, ptr @.str.14, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aat2870_core\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"read: addr=0x%02x, val=0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@__aat2870_write._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.15, ptr @.str.5, i32 129, ptr @.str.6, ptr @.str.7 }, align 1
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__aat2870_write\00", [16 x i8] zeroinitializer }, align 32
@__aat2870_write._entry_ptr = internal global ptr @__aat2870_write._entry, section ".printk_index", align 4
@__aat2870_write._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.5, i32 135, ptr @.str.6, ptr @.str.7 }, align 1
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Address 0x%02x is not writeable\0A\00", [63 x i8] zeroinitializer }, align 32
@__aat2870_write._entry_ptr.18 = internal global ptr @__aat2870_write._entry.16, section ".printk_index", align 4
@__aat2870_write.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.15, ptr @.str.5, ptr @.str.19, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"write: addr=0x%02x, val=0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aat2870-backlight\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aat2870-regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"regs\00", [27 x i8] zeroinitializer }, align 32
@aat2870_reg_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @aat2870_reg_read_file, ptr @aat2870_reg_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aat2870 registers\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0x%02x: \00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%02x\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"<read fail: %d>\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@aat2870_reg_write_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 284, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to copy from user\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aat2870_reg_write_file\00", [41 x i8] zeroinitializer }, align 32
@aat2870_reg_write_file._entry_ptr = internal global ptr @aat2870_reg_write_file._entry, section ".printk_index", align 4
@aat2870_reg_write_file._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 297, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid address, 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@aat2870_reg_write_file._entry_ptr.32 = internal global ptr @aat2870_reg_write_file._entry.30, section ".printk_index", align 4
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"aat2870_i2c_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 451, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 453, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"aat2870_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 443, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"aat2870_i2c_id_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 446, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"aat2870_regs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 21, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 367, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 374, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 376, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [13 x i8] c"aat2870_devs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 64, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 399, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 97, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 119, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 129, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 134, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 149, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 66, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 71, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 325, i32 22 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"aat2870_reg_fops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 315, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 222, i32 24 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 224, i32 53 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 231, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 234, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 239, i32 53 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 284, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private constant [30 x i8] c"../drivers/mfd/aat2870-core.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 297, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 156, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__aat2870_read._entry, ptr @__aat2870_read._entry_ptr, ptr @__aat2870_write._entry, ptr @__aat2870_write._entry.16, ptr @__aat2870_write._entry_ptr, ptr @__aat2870_write._entry_ptr.18, ptr @__initcall__kmod_aat2870_core__292_465_aat2870_init4, ptr @aat2870_i2c_probe._entry, ptr @aat2870_i2c_probe._entry.8, ptr @aat2870_i2c_probe._entry_ptr, ptr @aat2870_i2c_probe._entry_ptr.10, ptr @aat2870_reg_write_file._entry, ptr @aat2870_reg_write_file._entry.30, ptr @aat2870_reg_write_file._entry_ptr, ptr @aat2870_reg_write_file._entry_ptr.32, ptr @aat2870_i2c_driver, ptr @.str, ptr @aat2870_pm_ops, ptr @aat2870_i2c_id_table, ptr @aat2870_regs, ptr @aat2870_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @aat2870_devs, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @aat2870_reg_fops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.35], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_regs to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_devs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_reg_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_reg_write_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aat2870_reg_write_file._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @aat2870_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %client6 = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %client6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %client6, align 4
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %reg_cache = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %reg_cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aat2870_regs, ptr %reg_cache, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = call i32 @llvm.smax.i32(i32 %7, i32 -1)
  %9 = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %9, align 4
  %init = getelementptr inbounds %struct.aat2870_platform_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init, align 4
  %init12 = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %init12, align 4
  %uninit = getelementptr inbounds %struct.aat2870_platform_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %uninit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %uninit, align 4
  %uninit13 = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %uninit13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %uninit13, align 4
  %read = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @aat2870_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 9
  %18 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @aat2870_write, ptr %write, align 4
  %update = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @aat2870_update, ptr %update, align 4
  %io_lock = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @aat2870_i2c_probe.__key) #10
  %20 = ptrtoint ptr %init12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init12, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %if.end.if.end19_crit_edge, label %if.then16

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 %21(ptr noundef nonnull %call.i) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end.if.end19_crit_edge
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp21 = icmp sgt i32 %23, -1
  br i1 %cmp21, label %if.then22, label %if.end19.aat2870_enable.exit_crit_edge

if.end19.aat2870_enable.exit_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %aat2870_enable.exit

if.then22:                                        ; preds = %if.end19
  %call25 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %23, i32 noundef 2, ptr noundef nonnull @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %9, align 4
  br i1 %cmp26, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %25) #13
  br label %cleanup

if.end34:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i = icmp sgt i32 %25, -1
  br i1 %cmp.i, label %if.then.i, label %if.end34.aat2870_enable.exit_crit_edge

if.end34.aat2870_enable.exit_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %aat2870_enable.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %25) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #10
  br label %aat2870_enable.exit

aat2870_enable.exit:                              ; preds = %if.then.i, %if.end34.aat2870_enable.exit_crit_edge, %if.end19.aat2870_enable.exit_crit_edge
  %is_enable.i = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %is_enable.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %is_enable.i, align 4
  %num_subdevs = getelementptr inbounds %struct.aat2870_platform_data, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %num_subdevs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_subdevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp35133 = icmp sgt i32 %28, 0
  br i1 %cmp35133, label %for.cond36.preheader.lr.ph, label %aat2870_enable.exit.for.end57_crit_edge

aat2870_enable.exit.for.end57_crit_edge:          ; preds = %aat2870_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

for.cond36.preheader.lr.ph:                       ; preds = %aat2870_enable.exit
  %subdevs = getelementptr inbounds %struct.aat2870_platform_data, ptr %1, i32 0, i32 1
  %29 = load i32, ptr getelementptr inbounds ([5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 0, i32 1), align 4
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.inc55.for.cond36.preheader_crit_edge, %for.cond36.preheader.lr.ph
  %i.0134 = phi i32 [ 0, %for.cond36.preheader.lr.ph ], [ %inc56, %for.inc55.for.cond36.preheader_crit_edge ]
  %30 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %subdevs, align 4
  %arrayidx = getelementptr %struct.aat2870_subdev_info, ptr %31, i32 %i.0134
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %name = getelementptr %struct.aat2870_subdev_info, ptr %31, i32 %i.0134, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %29)
  %cmp42 = icmp eq i32 %33, %29
  br i1 %cmp42, label %land.lhs.true, label %for.cond36.preheader.for.inc_crit_edge

for.cond36.preheader.for.inc_crit_edge:           ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond36.preheader
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %36 = load ptr, ptr @aat2870_devs, align 8
  %call47 = tail call i32 @strcmp(ptr noundef %35, ptr noundef %36) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true.if.then49_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true.if.then49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

if.then49:                                        ; preds = %land.lhs.true.4.if.then49_crit_edge, %land.lhs.true.3.if.then49_crit_edge, %land.lhs.true.2.if.then49_crit_edge, %land.lhs.true.1.if.then49_crit_edge, %land.lhs.true.if.then49_crit_edge
  %j.0131.lcssa = phi i32 [ 0, %land.lhs.true.if.then49_crit_edge ], [ 1, %land.lhs.true.1.if.then49_crit_edge ], [ 2, %land.lhs.true.2.if.then49_crit_edge ], [ 3, %land.lhs.true.3.if.then49_crit_edge ], [ 4, %land.lhs.true.4.if.then49_crit_edge ]
  %platform_data = getelementptr %struct.aat2870_subdev_info, ptr %31, i32 %i.0134, i32 2
  %37 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %platform_data, align 4
  %platform_data53 = getelementptr [5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 %j.0131.lcssa, i32 7
  %39 = ptrtoint ptr %platform_data53 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %platform_data53, align 4
  br label %for.inc55

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.cond36.preheader.for.inc_crit_edge
  %40 = load i32, ptr getelementptr inbounds ([5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %40)
  %cmp42.1 = icmp eq i32 %33, %40
  br i1 %cmp42.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %41 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name, align 4
  %43 = load ptr, ptr getelementptr inbounds ([5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 1), align 8
  %call47.1 = tail call i32 @strcmp(ptr noundef %42, ptr noundef %43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.1)
  %tobool48.not.1 = icmp eq i32 %call47.1, 0
  br i1 %tobool48.not.1, label %land.lhs.true.1.if.then49_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

land.lhs.true.1.if.then49_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %44 = load i32, ptr getelementptr inbounds ([5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %44)
  %cmp42.2 = icmp eq i32 %33, %44
  br i1 %cmp42.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 4
  %47 = load ptr, ptr getelementptr inbounds ([5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 2), align 8
  %call47.2 = tail call i32 @strcmp(ptr noundef %46, ptr noundef %47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.2)
  %tobool48.not.2 = icmp eq i32 %call47.2, 0
  br i1 %tobool48.not.2, label %land.lhs.true.2.if.then49_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

land.lhs.true.2.if.then49_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %48 = load i32, ptr getelementptr inbounds ([5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %48)
  %cmp42.3 = icmp eq i32 %33, %48
  br i1 %cmp42.3, label %land.lhs.true.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %49 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name, align 4
  %51 = load ptr, ptr getelementptr inbounds ([5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 3), align 8
  %call47.3 = tail call i32 @strcmp(ptr noundef %50, ptr noundef %51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.3)
  %tobool48.not.3 = icmp eq i32 %call47.3, 0
  br i1 %tobool48.not.3, label %land.lhs.true.3.if.then49_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

land.lhs.true.3.if.then49_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %52 = load i32, ptr getelementptr inbounds ([5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %52)
  %cmp42.4 = icmp eq i32 %33, %52
  br i1 %cmp42.4, label %land.lhs.true.4, label %for.inc.3.for.inc55_crit_edge

for.inc.3.for.inc55_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

land.lhs.true.4:                                  ; preds = %for.inc.3
  %53 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name, align 4
  %55 = load ptr, ptr getelementptr inbounds ([5 x %struct.mfd_cell], ptr @aat2870_devs, i32 0, i32 4), align 8
  %call47.4 = tail call i32 @strcmp(ptr noundef %54, ptr noundef %55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.4)
  %tobool48.not.4 = icmp eq i32 %call47.4, 0
  br i1 %tobool48.not.4, label %land.lhs.true.4.if.then49_crit_edge, label %land.lhs.true.4.for.inc55_crit_edge

land.lhs.true.4.for.inc55_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc55

land.lhs.true.4.if.then49_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

for.inc55:                                        ; preds = %land.lhs.true.4.for.inc55_crit_edge, %for.inc.3.for.inc55_crit_edge, %if.then49
  %inc56 = add nuw nsw i32 %i.0134, 1
  %56 = ptrtoint ptr %num_subdevs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_subdevs, align 4
  %cmp35 = icmp slt i32 %inc56, %57
  br i1 %cmp35, label %for.inc55.for.cond36.preheader_crit_edge, label %for.inc55.for.end57_crit_edge

for.inc55.for.end57_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end57

for.inc55.for.cond36.preheader_crit_edge:         ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond36.preheader

for.end57:                                        ; preds = %for.inc55.for.end57_crit_edge, %aat2870_enable.exit.for.end57_crit_edge
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %call59 = tail call i32 @mfd_add_devices(ptr noundef %59, i32 noundef 0, ptr noundef nonnull @aat2870_devs, i32 noundef 5, ptr noundef null, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60.not = icmp eq i32 %call59, 0
  br i1 %cmp60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %for.end57
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.9, i32 noundef %call59) #13
  %62 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %cmp.i124 = icmp sgt i32 %63, -1
  br i1 %cmp.i124, label %if.then.i126, label %do.end64.aat2870_disable.exit_crit_edge

do.end64.aat2870_disable.exit_crit_edge:          ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %aat2870_disable.exit

if.then.i126:                                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i125 = tail call ptr @gpio_to_desc(i32 noundef %63) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i125, i32 noundef 0) #10
  br label %aat2870_disable.exit

aat2870_disable.exit:                             ; preds = %if.then.i126, %do.end64.aat2870_disable.exit_crit_edge
  %64 = ptrtoint ptr %is_enable.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %is_enable.i, align 4
  br label %cleanup

if.end66:                                         ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #12
  %call.i128 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #10
  %dentry_root.i = getelementptr inbounds %struct.aat2870_data, ptr %call.i, i32 0, i32 11
  %65 = ptrtoint ptr %dentry_root.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i128, ptr %dentry_root.i, align 4
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 420, ptr noundef %call.i128, ptr noundef nonnull %call.i, ptr noundef nonnull @aat2870_reg_fops) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %aat2870_disable.exit, %do.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end30 ], [ %call59, %aat2870_disable.exit ], [ 0, %if.end66 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_read(ptr noundef %aat2870, i8 noundef zeroext %addr, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lock = getelementptr inbounds %struct.aat2870_data, ptr %aat2870, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #10
  %call = tail call fastcc i32 @__aat2870_read(ptr noundef %aat2870, i8 noundef zeroext %addr, ptr noundef %val)
  tail call void @mutex_unlock(ptr noundef %io_lock) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_write(ptr noundef %aat2870, i8 noundef zeroext %addr, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lock = getelementptr inbounds %struct.aat2870_data, ptr %aat2870, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #10
  %call = tail call fastcc i32 @__aat2870_write(ptr noundef %aat2870, i8 noundef zeroext %addr, i8 noundef zeroext %val)
  tail call void @mutex_unlock(ptr noundef %io_lock) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_update(ptr noundef %aat2870, i8 noundef zeroext %addr, i8 noundef zeroext %mask, i8 noundef zeroext %val) #2 align 64 {
entry:
  %old_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old_val) #10
  %0 = ptrtoint ptr %old_val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %old_val, align 1, !annotation !95
  %io_lock = getelementptr inbounds %struct.aat2870_data, ptr %aat2870, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %io_lock, i32 noundef 0) #10
  %call = call fastcc i32 @__aat2870_read(ptr noundef %aat2870, i8 noundef zeroext %addr, ptr noundef nonnull %old_val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %old_val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %old_val, align 1
  %neg = xor i8 %mask, -1
  %and = and i8 %2, %neg
  %and421 = and i8 %val, %mask
  %or = or i8 %and, %and421
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %or)
  %cmp.not = icmp eq i8 %2, %or
  br i1 %cmp.not, label %if.end.out_unlock_crit_edge, label %if.then10

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = call fastcc i32 @__aat2870_write(ptr noundef %aat2870, i8 noundef zeroext %addr, i8 noundef zeroext %or)
  br label %out_unlock

out_unlock:                                       ; preds = %if.then10, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_unlock_crit_edge ], [ %call11, %if.then10 ], [ 0, %if.end.out_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %io_lock) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old_val) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__aat2870_read(ptr nocapture noundef readonly %aat2870, i8 noundef zeroext %addr, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  %addr.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %addr, ptr %addr.addr, align 1
  %conv = zext i8 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %addr)
  %cmp = icmp ugt i8 %addr, 38
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %aat2870 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aat2870, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %conv) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_cache = getelementptr inbounds %struct.aat2870_data, ptr %aat2870, i32 0, i32 3
  %3 = ptrtoint ptr %reg_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_cache, align 4
  %arrayidx = getelementptr %struct.aat2870_register, ptr %4, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %value = getelementptr %struct.aat2870_register, ptr %4, i32 %conv, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %value, align 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %val, align 1
  br label %do.body26

if.end7:                                          ; preds = %if.end
  %client = getelementptr inbounds %struct.aat2870_data, ptr %aat2870, i32 0, i32 1
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %11, ptr noundef nonnull %addr.addr, i32 noundef 1, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp12.not = icmp eq i32 %call.i, 1
  br i1 %cmp12.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %call.i50 = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef %val, i32 noundef 1, i16 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp18 = icmp slt i32 %call.i50, 0
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i50)
  %cmp22.not = icmp eq i32 %call.i50, 1
  br i1 %cmp22.not, label %if.end21.do.body26_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21.do.body26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26

do.body26:                                        ; preds = %if.end21.do.body26_crit_edge, %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__aat2870_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__aat2870_read, %if.then31)) #10
          to label %cleanup [label %if.then31], !srcloc !97

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %aat2870 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %aat2870, align 4
  %16 = ptrtoint ptr %addr.addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr.addr, align 1
  %conv33 = zext i8 %17 to i32
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 1
  %conv34 = zext i8 %19 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__aat2870_read.__UNIQUE_ID_ddebug288, ptr noundef %15, ptr noundef nonnull @.str.14, i32 noundef %conv33, i32 noundef %conv34) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body26, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -5, %if.end11.cleanup_crit_edge ], [ %call.i50, %if.end15.cleanup_crit_edge ], [ -5, %if.end21.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %do.body26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__aat2870_write(ptr nocapture noundef readonly %aat2870, i8 noundef zeroext %addr, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg) #10
  %0 = getelementptr inbounds [2 x i8], ptr %msg, i32 0, i32 1
  %conv = zext i8 %addr to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %addr)
  %cmp = icmp ugt i8 %addr, 38
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %aat2870 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aat2870, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %conv) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_cache = getelementptr inbounds %struct.aat2870_data, ptr %aat2870, i32 0, i32 3
  %3 = ptrtoint ptr %reg_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_cache, align 4
  %writeable = getelementptr %struct.aat2870_register, ptr %4, i32 %conv, i32 1
  %5 = ptrtoint ptr %writeable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %writeable, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %aat2870 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aat2870, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef %conv) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %addr, ptr %msg, align 1
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %val, ptr %0, align 1
  %client = getelementptr inbounds %struct.aat2870_data, ptr %aat2870, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef 2, i16 noundef zeroext 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp16.not = icmp eq i32 %call.i, 2
  br i1 %cmp16.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %reg_cache to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_cache, align 4
  %value = getelementptr %struct.aat2870_register, ptr %14, i32 %conv, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %val, ptr %value, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__aat2870_write.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__aat2870_write, %if.then28)) #10
          to label %cleanup [label %if.then28], !srcloc !97

if.then28:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %aat2870 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aat2870, align 4
  %conv31 = zext i8 %val to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__aat2870_write.__UNIQUE_ID_ddebug289, ptr noundef %17, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv31) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end19, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ %call.i, %if.end9.cleanup_crit_edge ], [ -5, %if.end15.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_reg_read_file(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 4096) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #10
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val.i, align 1, !annotation !95
  %4 = call ptr @memcpy(ptr %call7.i, ptr @.str.23, i32 19)
  %read.i = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end24.i.for.body.i_crit_edge, %if.end
  %indvars.iv.i = phi i32 [ 0, %if.end ], [ %indvars.iv.next.i, %if.end24.i.for.body.i_crit_edge ]
  %count.064.i = phi i32 [ 18, %if.end ], [ %add28.i, %if.end24.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 %count.064.i
  %sub.i = sub nuw nsw i32 4096, %count.064.i
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef nonnull @.str.24, i32 noundef %indvars.iv.i) #10
  %add4.i = add i32 %call3.i, %count.064.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %add4.i)
  %cmp5.i = icmp ugt i32 %add4.i, 4094
  br i1 %cmp5.i, label %for.body.i.aat2870_dump_reg.exit_crit_edge, label %if.end.i

for.body.i.aat2870_dump_reg.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aat2870_dump_reg.exit

if.end.i:                                         ; preds = %for.body.i
  %5 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i, align 4
  %7 = trunc i32 %indvars.iv.i to i8
  %call7.i12 = call i32 %6(ptr noundef %1, i8 noundef zeroext %7, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i12)
  %cmp8.i = icmp eq i32 %call7.i12, 0
  %add.ptr11.i = getelementptr i8, ptr %call7.i, i32 %add4.i
  %sub12.i = sub nuw nsw i32 4096, %add4.i
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i, align 1
  %conv13.i = zext i8 %9 to i32
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr11.i, i32 noundef %sub12.i, ptr noundef nonnull @.str.25, i32 noundef %conv13.i) #10
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call18.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr11.i, i32 noundef %sub12.i, ptr noundef nonnull @.str.26, i32 noundef %call7.i12) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then10.i
  %call14.pn.i = phi i32 [ %call14.i, %if.then10.i ], [ %call18.i, %if.else.i ]
  %count.1.i = add i32 %call14.pn.i, %add4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %count.1.i)
  %cmp21.i = icmp ugt i32 %count.1.i, 4094
  br i1 %cmp21.i, label %if.end20.i.aat2870_dump_reg.exit_crit_edge, label %if.end24.i

if.end20.i.aat2870_dump_reg.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aat2870_dump_reg.exit

if.end24.i:                                       ; preds = %if.end20.i
  %add.ptr25.i = getelementptr i8, ptr %call7.i, i32 %count.1.i
  %sub26.i = sub nuw nsw i32 4096, %count.1.i
  %call27.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr25.i, i32 noundef %sub26.i, ptr noundef nonnull @.str.27) #10
  %add28.i = add i32 %call27.i, %count.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4094, i32 %add28.i)
  %cmp29.i = icmp ugt i32 %add28.i, 4094
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %indvars.iv.next.i)
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 39
  %or.cond.i = select i1 %cmp29.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %if.end24.i.aat2870_dump_reg.exit_crit_edge, label %if.end24.i.for.body.i_crit_edge

if.end24.i.for.body.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end24.i.aat2870_dump_reg.exit_crit_edge:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aat2870_dump_reg.exit

aat2870_dump_reg.exit:                            ; preds = %if.end24.i.aat2870_dump_reg.exit_crit_edge, %if.end20.i.aat2870_dump_reg.exit_crit_edge, %for.body.i.aat2870_dump_reg.exit_crit_edge
  %count.2.i = phi i32 [ %add4.i, %for.body.i.aat2870_dump_reg.exit_crit_edge ], [ %count.1.i, %if.end20.i.aat2870_dump_reg.exit_crit_edge ], [ %add28.i, %if.end24.i.aat2870_dump_reg.exit_crit_edge ]
  %10 = call i32 @llvm.umin.i32(i32 %count.2.i, i32 4095) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #10
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %user_buf, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %call7.i, i32 noundef %10) #10
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %aat2870_dump_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %aat2870_dump_reg.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_reg_write_file(ptr nocapture noundef readonly %file, ptr noundef %user_buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %addr = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #10
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %addr, align 4, !annotation !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !95
  %5 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %5, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.35, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buf, i32 %5, i32 -1226833920) #16, !srcloc !98
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !99

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %5) #10
  %7 = call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !100
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !102
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %user_buf, i32 noundef %5) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #10, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !102
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %5, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %5, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !99

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %5, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.28) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %5
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %start.0 = phi ptr [ %buf, %if.end ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %14 = ptrtoint ptr %start.0 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %start.0, align 1
  %cmp2 = icmp eq i8 %15, 32
  %incdec.ptr = getelementptr i8, ptr %start.0, i32 1
  br i1 %cmp2, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call.i = call i32 @_kstrtoul(ptr noundef %start.0, i32 noundef 16, ptr noundef nonnull %addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %while.end
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %17)
  %cmp8 = icmp ugt i32 %17, 38
  br i1 %cmp8, label %do.end13, label %if.end7.while.cond16_crit_edge

if.end7.while.cond16_crit_edge:                   ; preds = %if.end7
  br label %while.cond16

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.31, i32 noundef %17) #13
  br label %cleanup

while.cond16:                                     ; preds = %while.cond16.while.cond16_crit_edge, %if.end7.while.cond16_crit_edge
  %start.1 = phi ptr [ %incdec.ptr21, %while.cond16.while.cond16_crit_edge ], [ %start.0, %if.end7.while.cond16_crit_edge ]
  %20 = ptrtoint ptr %start.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %start.1, align 1
  %cmp18 = icmp eq i8 %21, 32
  %incdec.ptr21 = getelementptr i8, ptr %start.1, i32 1
  br i1 %cmp18, label %while.cond16.while.cond16_crit_edge, label %while.end22

while.cond16.while.cond16_crit_edge:              ; preds = %while.cond16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond16

while.end22:                                      ; preds = %while.cond16
  %call.i56 = call i32 @_kstrtoul(ptr noundef %start.1, i32 noundef 16, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool24.not = icmp eq i32 %call.i56, 0
  br i1 %tobool24.not, label %if.end26, label %while.end22.cleanup_crit_edge

while.end22.cleanup_crit_edge:                    ; preds = %while.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %while.end22
  call void @__sanitizer_cov_trace_pc() #12
  %write = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr, align 4
  %conv27 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %conv28 = trunc i32 %27 to i8
  %call29 = call i32 %23(ptr noundef %1, i8 noundef zeroext %conv27, i8 noundef zeroext %conv28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %count..call29 = select i1 %tobool30.not, i32 %5, i32 %call29
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %while.end22.cleanup_crit_edge, %do.end13, %while.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -22, %do.end13 ], [ %call.i, %while.end.cleanup_crit_edge ], [ %call.i56, %while.end22.cleanup_crit_edge ], [ %count..call29, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_i2c_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %en_pin.i = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %en_pin.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %en_pin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %entry.aat2870_disable.exit_crit_edge

entry.aat2870_disable.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %aat2870_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %3) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #10
  br label %aat2870_disable.exit

aat2870_disable.exit:                             ; preds = %if.then.i, %entry.aat2870_disable.exit_crit_edge
  %is_enable.i = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %is_enable.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_enable.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aat2870_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %en_pin.i = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %en_pin.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %en_pin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %entry.aat2870_enable.exit_crit_edge

entry.aat2870_enable.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %aat2870_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %3) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #10
  br label %aat2870_enable.exit

aat2870_enable.exit:                              ; preds = %if.then.i, %entry.aat2870_enable.exit_crit_edge
  %is_enable.i = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %is_enable.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_enable.i, align 4
  %reg_cache = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 3
  %write = getelementptr inbounds %struct.aat2870_data, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %aat2870_enable.exit
  %i.09 = phi i32 [ 0, %aat2870_enable.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %reg_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_cache, align 4
  %writeable = getelementptr %struct.aat2870_register, ptr %6, i32 %i.09, i32 1
  %7 = ptrtoint ptr %writeable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %writeable, align 1, !range !96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  %conv = trunc i32 %i.09 to i8
  %value = getelementptr %struct.aat2870_register, ptr %6, i32 %i.09, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value, align 1
  %call1 = tail call i32 %10(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %12) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 39
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !81, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_aat2870_core__292_465_aat2870_init4, !1, !"__initcall__kmod_aat2870_core__292_465_aat2870_init4", i1 false, i1 false}
!1 = !{!"../drivers/mfd/aat2870-core.c", i32 465, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/aat2870-core.c", i32 453, i32 13}
!4 = !{ptr @aat2870_i2c_driver, !5, !"aat2870_i2c_driver", i1 false, i1 false}
!5 = !{!"../drivers/mfd/aat2870-core.c", i32 451, i32 26}
!6 = !{ptr @aat2870_i2c_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/mfd/aat2870-core.c", i32 367, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mfd/aat2870-core.c", i32 374, i32 27}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/aat2870-core.c", i32 376, i32 4}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @aat2870_i2c_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @aat2870_i2c_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/aat2870-core.c", i32 399, i32 3}
!21 = !{ptr @aat2870_i2c_probe._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @aat2870_i2c_probe._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @aat2870_regs, !24, !"aat2870_regs", i1 false, i1 false}
!24 = !{!"../drivers/mfd/aat2870-core.c", i32 21, i32 32}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/aat2870-core.c", i32 97, i32 3}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__aat2870_read._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @__aat2870_read._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/aat2870-core.c", i32 119, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__aat2870_read.__UNIQUE_ID_ddebug288, !31, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/aat2870-core.c", i32 129, i32 3}
!36 = !{ptr @__aat2870_write._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @__aat2870_write._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/aat2870-core.c", i32 134, i32 3}
!40 = !{ptr @__aat2870_write._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @__aat2870_write._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/aat2870-core.c", i32 149, i32 2}
!44 = !{ptr @__aat2870_write.__UNIQUE_ID_ddebug289, !43, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/aat2870-core.c", i32 66, i32 11}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/aat2870-core.c", i32 71, i32 11}
!49 = !{ptr @aat2870_devs, !50, !"aat2870_devs", i1 false, i1 false}
!50 = !{!"../drivers/mfd/aat2870-core.c", i32 64, i32 24}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mfd/aat2870-core.c", i32 325, i32 22}
!53 = !{ptr @aat2870_reg_fops, !54, !"aat2870_reg_fops", i1 false, i1 false}
!54 = !{!"../drivers/mfd/aat2870-core.c", i32 315, i32 37}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/aat2870-core.c", i32 222, i32 24}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/aat2870-core.c", i32 224, i32 53}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mfd/aat2870-core.c", i32 231, i32 8}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/aat2870-core.c", i32 234, i32 8}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/aat2870-core.c", i32 239, i32 53}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/aat2870-core.c", i32 284, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @aat2870_reg_write_file._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @aat2870_reg_write_file._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mfd/aat2870-core.c", i32 297, i32 3}
!72 = !{ptr @aat2870_reg_write_file._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @aat2870_reg_write_file._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!76 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!81 = !{ptr @aat2870_pm_ops, !82, !"aat2870_pm_ops", i1 false, i1 false}
!82 = !{!"../drivers/mfd/aat2870-core.c", i32 443, i32 8}
!83 = !{ptr @aat2870_i2c_id_table, !84, !"aat2870_i2c_id_table", i1 false, i1 false}
!84 = !{!"../drivers/mfd/aat2870-core.c", i32 446, i32 35}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"auto-init"}
!96 = !{i8 0, i8 2}
!97 = !{i64 2148700379, i64 2148700384, i64 2148700397, i64 2148700441, i64 2148700475, i64 2148700496}
!98 = !{i64 2152185064, i64 2152185089}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 4680619}
!101 = !{i64 4680816}
!102 = !{i64 2152166049}
