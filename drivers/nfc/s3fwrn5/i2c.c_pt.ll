; ModuleID = '/llk/IR_all_yes/drivers/nfc/s3fwrn5/i2c.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3fwrn5_phy_ops = type { ptr, ptr, ptr, ptr }
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
%struct.phy_common = type { ptr, i32, i32, %struct.mutex, i32 }
%struct.s3fwrn5_i2c_phy = type { %struct.phy_common, ptr, ptr, i8 }
%struct.sk_buff = type { %union.anon.89, %union.anon.92, %union.anon.93, [48 x i8], %union.anon.94, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.96, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr, %union.anon.91 }
%union.anon.91 = type { ptr }
%union.anon.92 = type { ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { i32, ptr }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.98, i32, i32, i32, i16, i16, %union.anon.100, i32, %union.anon.101, %union.anon.102, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.98 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { i16 }

@__initcall__kmod_s3fwrn5_i2c__315_281_s3fwrn5_i2c_driver_init6 = internal global ptr @s3fwrn5_i2c_driver_init, section ".initcall6.init", align 4
@s3fwrn5_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @s3fwrn5_i2c_probe, ptr @s3fwrn5_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_s3fwrn5_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s3fwrn5_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_s3fwrn5_i2c_driver_exit = internal global ptr @s3fwrn5_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file316 = internal constant [49 x i8] c"s3fwrn5_i2c.file=drivers/nfc/s3fwrn5/s3fwrn5_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [24 x i8] c"s3fwrn5_i2c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description318 = internal constant [55 x i8] c"s3fwrn5_i2c.description=I2C driver for Samsung S3FWRN5\00", section ".modinfo", align 1
@__UNIQUE_ID_author319 = internal constant [58 x i8] c"s3fwrn5_i2c.author=Robert Baldyga <r.baldyga@samsung.com>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3fwrn5_i2c\00", [20 x i8] zeroinitializer }, align 32
@of_s3fwrn5_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3fwrn5-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s3fwrn5_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"s3fwrn5_i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s3fwrn5_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&phy->common.mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s3fwrn5_en\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3fwrn5_fw_wake\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@s3fwrn5_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 225, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3fwrn5_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nfc/s3fwrn5/i2c.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3fwrn5_i2c_probe._entry_ptr = internal global ptr @s3fwrn5_i2c_probe._entry, section ".printk_index", align 4
@i2c_phy_ops = internal constant { %struct.s3fwrn5_phy_ops, [16 x i8] } { %struct.s3fwrn5_phy_ops { ptr @s3fwrn5_phy_set_wake, ptr @s3fwrn5_i2c_set_mode, ptr @s3fwrn5_phy_get_mode, ptr @s3fwrn5_i2c_write }, [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"en-gpios\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3fwrn5,en-gpios\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wake-gpios\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s3fwrn5,fw-gpios\00", [47 x i8] zeroinitializer }, align 32
@s3fwrn5_i2c_irq_thread_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"s3fwrn5_i2c_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 271, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 273, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"of_s3fwrn5_i2c_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 265, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"s3fwrn5_i2c_id_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 259, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 190, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 202, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 208, i32 29 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 215, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 225, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"i2c_phy_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 73, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 157, i32 46 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 161, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 167, i32 51 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [29 x i8] c"../drivers/nfc/s3fwrn5/i2c.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 171, i32 13 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description318, ptr @__UNIQUE_ID_file316, ptr @__UNIQUE_ID_license317, ptr @__exitcall_s3fwrn5_i2c_driver_exit, ptr @__initcall__kmod_s3fwrn5_i2c__315_281_s3fwrn5_i2c_driver_init6, ptr @s3fwrn5_i2c_driver_exit, ptr @s3fwrn5_i2c_probe._entry, ptr @s3fwrn5_i2c_probe._entry_ptr, ptr @s3fwrn5_i2c_driver, ptr @.str, ptr @of_s3fwrn5_i2c_match, ptr @s3fwrn5_i2c_id_table, ptr @s3fwrn5_i2c_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @i2c_phy_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_s3fwrn5_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_phy_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @s3fwrn5_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s3fwrn5_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @s3fwrn5_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.phy_common, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @s3fwrn5_i2c_probe.__key) #5
  %mode = getelementptr inbounds %struct.phy_common, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mode, align 4
  %irq_skip = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %irq_skip to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %irq_skip, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %irq_skip, align 4
  %i2c_dev = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %i2c_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.cleanup_crit_edge, label %if.end.i

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %do.body
  %call.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %5, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef null) #5
  %gpio_en.i = getelementptr inbounds %struct.phy_common, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %gpio_en.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %gpio_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i)
  %7 = icmp ult i32 %call.i.i, 2048
  br i1 %7, label %if.end.i.if.end14.i_crit_edge, label %if.then5.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then5.i:                                       ; preds = %if.end.i
  %call.i43.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %5, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef null) #5
  %8 = ptrtoint ptr %gpio_en.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.i43.i, ptr %gpio_en.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i43.i)
  %9 = icmp ult i32 %call.i43.i, 2048
  br i1 %9, label %if.then5.i.if.end14.i_crit_edge, label %if.then5.i.cleanup_crit_edge

if.then5.i.cleanup_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i.if.end14.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then5.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %call.i44.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %5, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef null) #5
  %gpio_fw_wake.i = getelementptr inbounds %struct.phy_common, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %gpio_fw_wake.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i44.i, ptr %gpio_fw_wake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i44.i)
  %11 = icmp ult i32 %call.i44.i, 2048
  br i1 %11, label %if.end14.i.if.end4_crit_edge, label %if.then20.i

if.end14.i.if.end4_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then20.i:                                      ; preds = %if.end14.i
  %call.i45.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %5, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef null) #5
  %12 = ptrtoint ptr %gpio_fw_wake.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i45.i, ptr %gpio_fw_wake.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i45.i)
  %13 = icmp ult i32 %call.i45.i, 2048
  br i1 %13, label %if.then20.i.if.end4_crit_edge, label %if.then20.i.cleanup_crit_edge

if.then20.i.cleanup_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20.i.if.end4_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end4:                                          ; preds = %if.then20.i.if.end4_crit_edge, %if.end14.i.if.end4_crit_edge
  %14 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_dev, align 4
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %gpio_en.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_en.i, align 4
  %call8 = tail call i32 @devm_gpio_request_one(ptr noundef %dev6, i32 noundef %17, i32 noundef 2, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %18 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_dev, align 4
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %gpio_fw_wake.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gpio_fw_wake.i, align 4
  %call15 = tail call i32 @devm_gpio_request_one(ptr noundef %dev13, i32 noundef %21, i32 noundef 0, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end11.cleanup_crit_edge, label %if.end18

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call20 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call20, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end28

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call20 to i32
  %call27 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %23, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call.i93 = tail call i32 @clk_prepare(ptr noundef %call20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end.i95, label %if.end28.clk_prepare_enable.exit_crit_edge

if.end28.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i95:                                       ; preds = %if.end28
  %call1.i = tail call i32 @clk_enable(ptr noundef %call20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i95.if.end37_crit_edge, label %if.then3.i

if.end.i95.if.end37_crit_edge:                    ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then3.i:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call20) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end28.clk_prepare_enable.exit_crit_edge
  %retval.0.i96 = phi i32 [ %call.i93, %if.end28.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i96)
  %cmp31 = icmp slt i32 %retval.0.i96, 0
  br i1 %cmp31, label %do.end35, label %clk_prepare_enable.exit.if.end37_crit_edge

clk_prepare_enable.exit.if.end37_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.end35:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i96) #8
  br label %cleanup

if.end37:                                         ; preds = %clk_prepare_enable.exit.if.end37_crit_edge, %if.end.i95.if.end37_crit_edge
  %24 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c_dev, align 4
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %call41 = tail call i32 @s3fwrn5_probe(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef %dev40, ptr noundef nonnull @i2c_phy_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end37.disable_clk_crit_edge, label %if.end44

if.end37.disable_clk_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_clk

if.end44:                                         ; preds = %if.end37
  %26 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_dev, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %call47 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %29, ptr noundef null, ptr noundef nonnull @s3fwrn5_i2c_irq_thread_fn, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end44.cleanup_crit_edge, label %s3fwrn5_remove

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

s3fwrn5_remove:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  tail call void @s3fwrn5_remove(ptr noundef %31) #5
  br label %disable_clk

disable_clk:                                      ; preds = %s3fwrn5_remove, %if.end37.disable_clk_crit_edge
  %ret.0 = phi i32 [ %call41, %if.end37.disable_clk_crit_edge ], [ %call47, %s3fwrn5_remove ]
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %33) #5
  tail call void @clk_unprepare(ptr noundef %33) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.end44.cleanup_crit_edge, %do.end35, %if.then23, %if.end11.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then20.i.cleanup_crit_edge, %if.then5.i.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then23 ], [ %retval.0.i96, %do.end35 ], [ %ret.0, %disable_clk ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.end4.cleanup_crit_edge ], [ %call15, %if.end11.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ -19, %do.body.cleanup_crit_edge ], [ -19, %if.then5.i.cleanup_crit_edge ], [ -19, %if.then20.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @s3fwrn5_remove(ptr noundef %3) #5
  %clk = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_i2c_irq_thread_fn(i32 noundef %irq, ptr noundef %phy_id) #2 align 64 {
entry:
  %hdr.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy_id, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %lor.lhs.false

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.land.end_crit_edge, label %if.end36

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false.land.end_crit_edge, %entry.land.end_crit_edge
  %.b52 = load i1, ptr @s3fwrn5_i2c_irq_thread_fn.__already_done, align 1
  br i1 %.b52, label %land.end.cleanup_crit_edge, label %if.then7, !prof !56

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @s3fwrn5_i2c_irq_thread_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 125, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  %mutex = getelementptr inbounds %struct.phy_common, ptr %phy_id, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %irq_skip = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %phy_id, i32 0, i32 3
  %2 = ptrtoint ptr %irq_skip to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %irq_skip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool38.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool38.not, label %if.end40, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end40:                                         ; preds = %if.end36
  %mode = getelementptr inbounds %struct.phy_common, ptr %phy_id, i32 0, i32 4
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %.off = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end40.out_crit_edge

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr.i) #5
  %5 = getelementptr inbounds [4 x i8], ptr %hdr.i, i32 0, i32 2
  %6 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %hdr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  %cond.i = select i1 %cmp.i, i32 3, i32 4
  %i2c_dev.i = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %phy_id, i32 0, i32 1
  %7 = ptrtoint ptr %i2c_dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_dev.i, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %hdr.i, i32 noundef %cond.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %cond.i)
  %cmp2.i = icmp ult i32 %call.i.i, %cond.i
  %or.cond.i = or i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %sw.bb.s3fwrn5_i2c_read.exit_crit_edge, label %if.end4.i

sw.bb.s3fwrn5_i2c_read.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %s3fwrn5_i2c_read.exit

if.end4.i:                                        ; preds = %sw.bb
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp7.i = icmp eq i32 %10, 1
  br i1 %cmp7.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %5, align 2
  %conv.i = zext i8 %12 to i32
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %5, align 2
  %conv10.i = zext i16 %14 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond11.i = phi i32 [ %conv.i, %cond.true.i ], [ %conv10.i, %cond.false.i ]
  %add.i = add nuw nsw i32 %cond11.i, %cond.i
  %call.i1.i = call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #5
  %tobool.not.i = icmp eq ptr %call.i1.i, null
  br i1 %tobool.not.i, label %cond.end.i.s3fwrn5_i2c_read.exit_crit_edge, label %if.end14.i

cond.end.i.s3fwrn5_i2c_read.exit_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s3fwrn5_i2c_read.exit

if.end14.i:                                       ; preds = %cond.end.i
  %call.i2.i = call ptr @skb_put(ptr noundef nonnull %call.i1.i, i32 noundef %cond.i) #5
  %15 = call ptr @memcpy(ptr %call.i2.i, ptr %hdr.i, i32 %cond.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond11.i)
  %cmp17.i = icmp eq i32 %cond11.i, 0
  br i1 %cmp17.i, label %if.end14.i.out.i_crit_edge, label %if.end20.i

if.end14.i.out.i_crit_edge:                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.end20.i:                                       ; preds = %if.end14.i
  %16 = ptrtoint ptr %i2c_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c_dev.i, align 4
  %call22.i = call ptr @skb_put(ptr noundef nonnull %call.i1.i, i32 noundef %cond11.i) #5
  %call.i3.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef %call22.i, i32 noundef %cond11.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i3.i, i32 %cond11.i)
  %cmp24.not.i = icmp eq i32 %call.i3.i, %cond11.i
  br i1 %cmp24.not.i, label %if.end20.i.out.i_crit_edge, label %if.then26.i

if.end20.i.out.i_crit_edge:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.i

if.then26.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree_skb_reason(ptr noundef nonnull %call.i1.i, i32 noundef 0) #5
  br label %s3fwrn5_i2c_read.exit

out.i:                                            ; preds = %if.end20.i.out.i_crit_edge, %if.end14.i.out.i_crit_edge
  %18 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_id, align 4
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  %call31.i = call i32 @s3fwrn5_recv_frame(ptr noundef %19, ptr noundef nonnull %call.i1.i, i32 noundef %21) #5
  br label %s3fwrn5_i2c_read.exit

s3fwrn5_i2c_read.exit:                            ; preds = %out.i, %if.then26.i, %cond.end.i.s3fwrn5_i2c_read.exit_crit_edge, %sw.bb.s3fwrn5_i2c_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i) #5
  br label %out

out:                                              ; preds = %s3fwrn5_i2c_read.exit, %if.end40.out_crit_edge, %if.end36.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then7, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %out ], [ 0, %if.then7 ], [ 0, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_phy_set_wake(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3fwrn5_i2c_set_mode(ptr noundef %phy_id, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.phy_common, ptr %phy_id, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call = tail call zeroext i1 @s3fwrn5_phy_power_ctrl(ptr noundef %phy_id, i32 noundef %mode) #5
  br i1 %call, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %irq_skip = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %phy_id, i32 0, i32 3
  %0 = ptrtoint ptr %irq_skip to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %irq_skip, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %irq_skip, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_phy_get_mode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_i2c_write(ptr noundef %phy_id, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.phy_common, ptr %phy_id, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %irq_skip = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %phy_id, i32 0, i32 3
  %0 = ptrtoint ptr %irq_skip to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %irq_skip, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %irq_skip, align 4
  %i2c_dev = getelementptr inbounds %struct.s3fwrn5_i2c_phy, ptr %phy_id, i32 0, i32 1
  %1 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c_dev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %2, ptr noundef %4, i32 noundef %6, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -121
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 110000, i32 noundef 120000, i32 noundef 2) #5
  %7 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_dev, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %call.i26 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef %10, i32 noundef %12, i16 noundef zeroext 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i26, %if.then ], [ %call.i, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp7 = icmp slt i32 %ret.0, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %14)
  %cmp11.not = icmp eq i32 %ret.0, %14
  %. = select i1 %cmp11.not, i32 0, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end.cleanup_crit_edge ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @s3fwrn5_phy_power_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_recv_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_s3fwrn5_i2c__315_281_s3fwrn5_i2c_driver_init6, !1, !"__initcall__kmod_s3fwrn5_i2c__315_281_s3fwrn5_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 281, i32 1}
!2 = !{ptr @__exitcall_s3fwrn5_i2c_driver_exit, !1, !"__exitcall_s3fwrn5_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file316, !4, !"__UNIQUE_ID_file316", i1 false, i1 false}
!4 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 283, i32 1}
!5 = !{ptr @__UNIQUE_ID_license317, !4, !"__UNIQUE_ID_license317", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description318, !7, !"__UNIQUE_ID_description318", i1 false, i1 false}
!7 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 284, i32 1}
!8 = !{ptr @__UNIQUE_ID_author319, !9, !"__UNIQUE_ID_author319", i1 false, i1 false}
!9 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 285, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 273, i32 11}
!12 = !{ptr @s3fwrn5_i2c_driver, !13, !"s3fwrn5_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 271, i32 26}
!14 = !{ptr @s3fwrn5_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 190, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 202, i32 30}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 208, i32 29}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 215, i32 10}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 225, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @s3fwrn5_i2c_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @s3fwrn5_i2c_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 157, i32 46}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 161, i32 8}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 167, i32 51}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 171, i32 13}
!39 = !{ptr @i2c_phy_ops, !40, !"i2c_phy_ops", i1 false, i1 false}
!40 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 73, i32 37}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 125, i32 3}
!43 = !{ptr @of_s3fwrn5_i2c_match, !44, !"of_s3fwrn5_i2c_match", i1 false, i1 false}
!44 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 265, i32 34}
!45 = !{ptr @s3fwrn5_i2c_id_table, !46, !"s3fwrn5_i2c_id_table", i1 false, i1 false}
!46 = !{!"../drivers/nfc/s3fwrn5/i2c.c", i32 259, i32 35}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"branch_weights", i32 2000, i32 1}
