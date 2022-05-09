; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/arcxcnn_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/arcxcnn_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
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
%struct.arcxcnn = type { ptr, ptr, ptr, ptr }
%struct.arcxcnn_platform_data = type { ptr, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_arcxcnn_bl__301_404_arcxcnn_driver_init6 = internal global ptr @arcxcnn_driver_init, section ".initcall6.init", align 4
@arcxcnn_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @arcxcnn_probe, ptr @arcxcnn_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arcxcnn_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @arcxcnn_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_arcxcnn_driver_exit = internal global ptr @arcxcnn_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file302 = internal constant [51 x i8] c"arcxcnn_bl.file=drivers/video/backlight/arcxcnn_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [26 x i8] c"arcxcnn_bl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [54 x i8] c"arcxcnn_bl.author=Brian Dodge <bdodge@arcticsand.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [48 x i8] c"arcxcnn_bl.description=ARCXCNN Backlight driver\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"arcxcnn_bl\00", [21 x i8] zeroinitializer }, align 32
@arcxcnn_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arc,arc2c0608\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@arcxcnn_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"arc2c0608\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@arcxcnn_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register backlight.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arcxcnn_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/arcxcnn_bl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arcxcnn_probe._entry_ptr = internal global ptr @arcxcnn_probe._entry, section ".printk_index", align 4
@arcxcnn_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failure ret: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@arcxcnn_probe._entry_ptr.8 = internal global ptr @arcxcnn_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"default-brightness\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arc,led-config-0\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arc,led-config-1\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arc,dim-freq\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arc,comp-config\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arc,filter-config\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arc,trim-config\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led-sources\00", [20 x i8] zeroinitializer }, align 32
@arcxcnn_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"led-sources node is invalid.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arcxcnn_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@arcxcnn_parse_dt._entry_ptr = internal global ptr @arcxcnn_parse_dt._entry, section ".printk_index", align 4
@arcxcnn_update_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to read 0x%.2x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arcxcnn_update_field\00", [43 x i8] zeroinitializer }, align 32
@arcxcnn_update_field._entry_ptr = internal global ptr @arcxcnn_update_field._entry, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"arctic_bl\00", [22 x i8] zeroinitializer }, align 32
@arcxcnn_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @arcxcnn_bl_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"arcxcnn_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 395, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 397, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"arcxcnn_dt_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 383, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"arcxcnn_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 389, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 356, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 360, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 186, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 190, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 194, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 198, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 202, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 206, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 210, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 214, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 218, i32 42 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 229, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 101, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 156, i32 41 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"arcxcnn_bl_ops\00", align 1
@___asan_gen_.108 = private constant [40 x i8] c"../drivers/video/backlight/arcxcnn_bl.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 148, i32 35 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_arcxcnn_driver_exit, ptr @__initcall__kmod_arcxcnn_bl__301_404_arcxcnn_driver_init6, ptr @arcxcnn_driver_exit, ptr @arcxcnn_parse_dt._entry, ptr @arcxcnn_parse_dt._entry_ptr, ptr @arcxcnn_probe._entry, ptr @arcxcnn_probe._entry.6, ptr @arcxcnn_probe._entry_ptr, ptr @arcxcnn_probe._entry_ptr.8, ptr @arcxcnn_update_field._entry, ptr @arcxcnn_update_field._entry_ptr, ptr @arcxcnn_driver, ptr @.str, ptr @arcxcnn_dt_ids, ptr @arcxcnn_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @arcxcnn_bl_ops], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcxcnn_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcxcnn_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcxcnn_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcxcnn_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcxcnn_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcxcnn_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcxcnn_update_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arcxcnn_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arcxcnn_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @arcxcnn_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arcxcnn_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @arcxcnn_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcxcnn_probe(ptr noundef %cl, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %prog_val.i = alloca i32, align 4
  %sources.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 3
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cl, ptr %call.i, align 4
  %dev6 = getelementptr inbounds %struct.arcxcnn, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev6, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.arcxcnn, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %pdata, align 4
  %call10 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %cl, i8 noundef zeroext 0, i8 noundef zeroext 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end4.do.end123_crit_edge

if.end4.do.end123_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123

if.end13:                                         ; preds = %if.end4
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end54_crit_edge

if.end13.if.end54_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then16:                                        ; preds = %if.end13
  %13 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev6, align 4
  %call.i189 = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef 16, i32 noundef 3520) #6
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i189, ptr %pdata, align 4
  %tobool21.not = icmp eq ptr %call.i189, null
  br i1 %tobool21.not, label %if.then16.cleanup_crit_edge, label %if.end23

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.then16
  %16 = ptrtoint ptr %call.i189 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %call.i189, align 4
  %initial_brightness = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %call.i189, i32 0, i32 1
  %17 = ptrtoint ptr %initial_brightness to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 60, ptr %initial_brightness, align 4
  %leden = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %call.i189, i32 0, i32 2
  %18 = ptrtoint ptr %leden to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 63, ptr %leden, align 2
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call28 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %20, i8 noundef zeroext 4) #6
  %conv = trunc i32 %call28 to i8
  %21 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdata, align 4
  %led_config_0 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %led_config_0 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv, ptr %led_config_0, align 1
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i, align 4
  %call31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 5) #6
  %conv32 = trunc i32 %call31 to i8
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata, align 4
  %led_config_1 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %led_config_1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv32, ptr %led_config_1, align 4
  %29 = load ptr, ptr %pdata, align 4
  %led_config_135 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %led_config_135 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %led_config_135, align 4
  %32 = or i8 %31, 4
  store i8 %32, ptr %led_config_135, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %call39 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %34, i8 noundef zeroext 9) #6
  %conv40 = trunc i32 %call39 to i8
  %35 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata, align 4
  %dim_freq = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %dim_freq to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv40, ptr %dim_freq, align 1
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %call43 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext 10) #6
  %conv44 = trunc i32 %call43 to i8
  %40 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdata, align 4
  %comp_config = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %comp_config to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv44, ptr %comp_config, align 2
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %call47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %44, i8 noundef zeroext 11) #6
  %conv48 = trunc i32 %call47 to i8
  %45 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdata, align 4
  %filter_config = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %filter_config to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv48, ptr %filter_config, align 1
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %call51 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %49, i8 noundef zeroext 12) #6
  %conv52 = trunc i32 %call51 to i8
  %50 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdata, align 4
  %trim_config = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %trim_config to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv52, ptr %trim_config, align 4
  %53 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev6, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 27
  %55 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prog_val.i) #6
  %57 = ptrtoint ptr %prog_val.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %prog_val.i, align 4, !annotation !71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sources.i) #6
  %tobool.not.i = icmp eq ptr %56, null
  %58 = call ptr @memset(ptr %sources.i, i32 255, i32 24)
  br i1 %tobool.not.i, label %if.end23.arcxcnn_parse_dt.exit_crit_edge, label %if.end.i

if.end23.arcxcnn_parse_dt.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %arcxcnn_parse_dt.exit

if.end.i:                                         ; preds = %if.end23
  %59 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdata, align 4
  %call.i190 = tail call i32 @of_property_read_string(ptr noundef nonnull %56, ptr noundef nonnull @.str.9, ptr noundef %60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %cmp.i191 = icmp slt i32 %call.i190, 0
  br i1 %cmp.i191, label %if.then3.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdata, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %62, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %56, ptr noundef nonnull @.str.10, ptr noundef nonnull %prog_val.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp8.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.end6.i.if.end11.i_crit_edge

if.end6.i.if.end11.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %prog_val.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %prog_val.i, align 4
  %conv.i192 = trunc i32 %65 to i16
  %66 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdata, align 4
  %initial_brightness.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %initial_brightness.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i192, ptr %initial_brightness.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end11.i_crit_edge
  %call.i.i122.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %56, ptr noundef nonnull @.str.11, ptr noundef nonnull %prog_val.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i122.i)
  %cmp13.i = icmp sgt i32 %call.i.i122.i, -1
  br i1 %cmp13.i, label %if.then15.i, label %if.end11.i.if.end18.i_crit_edge

if.end11.i.if.end18.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %prog_val.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %prog_val.i, align 4
  %conv16.i = trunc i32 %70 to i8
  %71 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdata, align 4
  %led_config_0.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %led_config_0.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv16.i, ptr %led_config_0.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end18.i_crit_edge
  %call.i.i123.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %56, ptr noundef nonnull @.str.12, ptr noundef nonnull %prog_val.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i123.i)
  %cmp20.i = icmp sgt i32 %call.i.i123.i, -1
  br i1 %cmp20.i, label %if.then22.i, label %if.end18.i.if.end25.i_crit_edge

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %prog_val.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %prog_val.i, align 4
  %conv23.i = trunc i32 %75 to i8
  %76 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdata, align 4
  %led_config_1.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %led_config_1.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv23.i, ptr %led_config_1.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end25.i_crit_edge
  %call.i.i124.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %56, ptr noundef nonnull @.str.13, ptr noundef nonnull %prog_val.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i124.i)
  %cmp27.i = icmp sgt i32 %call.i.i124.i, -1
  br i1 %cmp27.i, label %if.then29.i, label %if.end25.i.if.end32.i_crit_edge

if.end25.i.if.end32.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %prog_val.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %prog_val.i, align 4
  %conv30.i = trunc i32 %80 to i8
  %81 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdata, align 4
  %dim_freq.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %dim_freq.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv30.i, ptr %dim_freq.i, align 1
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end25.i.if.end32.i_crit_edge
  %call.i.i125.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %56, ptr noundef nonnull @.str.14, ptr noundef nonnull %prog_val.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i125.i)
  %cmp34.i = icmp sgt i32 %call.i.i125.i, -1
  br i1 %cmp34.i, label %if.then36.i, label %if.end32.i.if.end39.i_crit_edge

if.end32.i.if.end39.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %prog_val.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %prog_val.i, align 4
  %conv37.i = trunc i32 %85 to i8
  %86 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdata, align 4
  %comp_config.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %comp_config.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv37.i, ptr %comp_config.i, align 2
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %if.end32.i.if.end39.i_crit_edge
  %call.i.i126.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %56, ptr noundef nonnull @.str.15, ptr noundef nonnull %prog_val.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i126.i)
  %cmp41.i = icmp sgt i32 %call.i.i126.i, -1
  br i1 %cmp41.i, label %if.then43.i, label %if.end39.i.if.end46.i_crit_edge

if.end39.i.if.end46.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %prog_val.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %prog_val.i, align 4
  %conv44.i = trunc i32 %90 to i8
  %91 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdata, align 4
  %filter_config.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %92, i32 0, i32 7
  %93 = ptrtoint ptr %filter_config.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv44.i, ptr %filter_config.i, align 1
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %if.end39.i.if.end46.i_crit_edge
  %call.i.i127.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %56, ptr noundef nonnull @.str.16, ptr noundef nonnull %prog_val.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i127.i)
  %cmp48.i = icmp sgt i32 %call.i.i127.i, -1
  br i1 %cmp48.i, label %if.then50.i, label %if.end46.i.if.end53.i_crit_edge

if.end46.i.if.end53.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %prog_val.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %prog_val.i, align 4
  %conv51.i = trunc i32 %95 to i8
  %96 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pdata, align 4
  %trim_config.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %97, i32 0, i32 8
  %98 = ptrtoint ptr %trim_config.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv51.i, ptr %trim_config.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then50.i, %if.end46.i.if.end53.i_crit_edge
  %call.i.i193 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %56, ptr noundef nonnull @.str.17, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %cmp55.i = icmp slt i32 %call.i.i193, 0
  br i1 %cmp55.i, label %if.then57.i, label %if.else.i

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdata, align 4
  %leden.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %leden.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 63, ptr %leden.i, align 2
  br label %arcxcnn_parse_dt.exit

if.else.i:                                        ; preds = %if.end53.i
  %102 = call i32 @llvm.umin.i32(i32 %call.i.i193, i32 6) #6
  %call.i128.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %56, ptr noundef nonnull @.str.17, ptr noundef nonnull %sources.i, i32 noundef %102, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128.i)
  %cmp64.i = icmp slt i32 %call.i128.i, 0
  br i1 %cmp64.i, label %do.end.i, label %if.end67.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.18) #9
  br label %arcxcnn_parse_dt.exit

if.end67.i:                                       ; preds = %if.else.i
  %103 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdata, align 4
  %leden69.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %leden69.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %leden69.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp70129.not.i = icmp eq i32 %102, 0
  br i1 %cmp70129.not.i, label %if.end67.i.arcxcnn_parse_dt.exit_crit_edge, label %for.body.i

if.end67.i.arcxcnn_parse_dt.exit_crit_edge:       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arcxcnn_parse_dt.exit

for.body.i:                                       ; preds = %if.end67.i
  %106 = ptrtoint ptr %sources.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sources.i, align 4
  %shl.i = shl nuw i32 1, %107
  %108 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdata, align 4
  %leden75.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %leden75.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %leden75.i, align 2
  %112 = trunc i32 %shl.i to i8
  %conv77.i = or i8 %111, %112
  store i8 %conv77.i, ptr %leden75.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %102)
  %exitcond.not.i = icmp eq i32 %102, 1
  br i1 %exitcond.not.i, label %for.body.i.arcxcnn_parse_dt.exit_crit_edge, label %for.body.i.1

for.body.i.arcxcnn_parse_dt.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arcxcnn_parse_dt.exit

for.body.i.1:                                     ; preds = %for.body.i
  %arrayidx.i.1 = getelementptr inbounds [6 x i32], ptr %sources.i, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i.1, align 4
  %shl.i.1 = shl nuw i32 1, %114
  %115 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdata, align 4
  %leden75.i.1 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %leden75.i.1 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %leden75.i.1, align 2
  %119 = trunc i32 %shl.i.1 to i8
  %conv77.i.1 = or i8 %118, %119
  store i8 %conv77.i.1, ptr %leden75.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %exitcond.not.i.1 = icmp eq i32 %102, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.arcxcnn_parse_dt.exit_crit_edge, label %for.body.i.2

for.body.i.1.arcxcnn_parse_dt.exit_crit_edge:     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %arcxcnn_parse_dt.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %arrayidx.i.2 = getelementptr inbounds [6 x i32], ptr %sources.i, i32 0, i32 2
  %120 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i.2, align 4
  %shl.i.2 = shl nuw i32 1, %121
  %122 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdata, align 4
  %leden75.i.2 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %leden75.i.2 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %leden75.i.2, align 2
  %126 = trunc i32 %shl.i.2 to i8
  %conv77.i.2 = or i8 %125, %126
  store i8 %conv77.i.2, ptr %leden75.i.2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %102)
  %exitcond.not.i.2 = icmp eq i32 %102, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.arcxcnn_parse_dt.exit_crit_edge, label %for.body.i.3

for.body.i.2.arcxcnn_parse_dt.exit_crit_edge:     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %arcxcnn_parse_dt.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %arrayidx.i.3 = getelementptr inbounds [6 x i32], ptr %sources.i, i32 0, i32 3
  %127 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i.3, align 4
  %shl.i.3 = shl nuw i32 1, %128
  %129 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pdata, align 4
  %leden75.i.3 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %leden75.i.3 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %leden75.i.3, align 2
  %133 = trunc i32 %shl.i.3 to i8
  %conv77.i.3 = or i8 %132, %133
  store i8 %conv77.i.3, ptr %leden75.i.3, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %102)
  %exitcond.not.i.3 = icmp eq i32 %102, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.arcxcnn_parse_dt.exit_crit_edge, label %for.body.i.4

for.body.i.3.arcxcnn_parse_dt.exit_crit_edge:     ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %arcxcnn_parse_dt.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %arrayidx.i.4 = getelementptr inbounds [6 x i32], ptr %sources.i, i32 0, i32 4
  %134 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i.4, align 4
  %shl.i.4 = shl nuw i32 1, %135
  %136 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdata, align 4
  %leden75.i.4 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %leden75.i.4 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %leden75.i.4, align 2
  %140 = trunc i32 %shl.i.4 to i8
  %conv77.i.4 = or i8 %139, %140
  store i8 %conv77.i.4, ptr %leden75.i.4, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %102)
  %exitcond.not.i.4 = icmp eq i32 %102, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.arcxcnn_parse_dt.exit_crit_edge, label %for.body.i.5

for.body.i.4.arcxcnn_parse_dt.exit_crit_edge:     ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %arcxcnn_parse_dt.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.5 = getelementptr inbounds [6 x i32], ptr %sources.i, i32 0, i32 5
  %141 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.i.5, align 4
  %shl.i.5 = shl nuw i32 1, %142
  %143 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pdata, align 4
  %leden75.i.5 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %leden75.i.5 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %leden75.i.5, align 2
  %147 = trunc i32 %shl.i.5 to i8
  %conv77.i.5 = or i8 %146, %147
  store i8 %conv77.i.5, ptr %leden75.i.5, align 2
  br label %arcxcnn_parse_dt.exit

arcxcnn_parse_dt.exit:                            ; preds = %for.body.i.5, %for.body.i.4.arcxcnn_parse_dt.exit_crit_edge, %for.body.i.3.arcxcnn_parse_dt.exit_crit_edge, %for.body.i.2.arcxcnn_parse_dt.exit_crit_edge, %for.body.i.1.arcxcnn_parse_dt.exit_crit_edge, %for.body.i.arcxcnn_parse_dt.exit_crit_edge, %if.end67.i.arcxcnn_parse_dt.exit_crit_edge, %do.end.i, %if.then57.i, %if.end23.arcxcnn_parse_dt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sources.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prog_val.i) #6
  br label %if.end54

if.end54:                                         ; preds = %arcxcnn_parse_dt.exit, %if.end13.if.end54_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 8
  %148 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %149 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdata, align 4
  %initial_brightness56 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %initial_brightness56 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %initial_brightness56, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %152)
  %cmp = icmp ugt i16 %152, 4095
  br i1 %cmp, label %if.then59, label %if.end54.if.end62_crit_edge

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %initial_brightness56 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 4095, ptr %initial_brightness56, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end54.if.end62_crit_edge
  %154 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdata, align 4
  %initial_brightness64 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %initial_brightness64 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %initial_brightness64, align 4
  %brightness.tr.i = trunc i16 %157 to i8
  %conv.i194 = shl i8 %brightness.tr.i, 4
  %158 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %call.i, align 4
  %call.i195 = call i32 @i2c_smbus_write_byte_data(ptr noundef %159, i8 noundef zeroext 7, i8 noundef zeroext %conv.i194) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %cmp.i196 = icmp slt i32 %call.i195, 0
  br i1 %cmp.i196, label %if.end62.do.end123_crit_edge, label %arcxcnn_set_brightness.exit

if.end62.do.end123_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123

arcxcnn_set_brightness.exit:                      ; preds = %if.end62
  %160 = lshr i16 %157, 4
  %conv2.i = trunc i16 %160 to i8
  %161 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %call.i, align 4
  %call4.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %162, i8 noundef zeroext 8, i8 noundef zeroext %conv2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool67.not = icmp eq i32 %call4.i, 0
  br i1 %tobool67.not, label %if.end69, label %arcxcnn_set_brightness.exit.do.end123_crit_edge

arcxcnn_set_brightness.exit.do.end123_crit_edge:  ; preds = %arcxcnn_set_brightness.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123

if.end69:                                         ; preds = %arcxcnn_set_brightness.exit
  %163 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %call.i, align 4
  %165 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdata, align 4
  %led_config_072 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %led_config_072 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %led_config_072, align 1
  %call73 = call i32 @i2c_smbus_write_byte_data(ptr noundef %164, i8 noundef zeroext 4, i8 noundef zeroext %168) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end69.do.end123_crit_edge

if.end69.do.end123_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123

if.end76:                                         ; preds = %if.end69
  %169 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %call.i, align 4
  %171 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %pdata, align 4
  %led_config_179 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %led_config_179 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %led_config_179, align 4
  %call80 = call i32 @i2c_smbus_write_byte_data(ptr noundef %170, i8 noundef zeroext 5, i8 noundef zeroext %174) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end76.do.end123_crit_edge

if.end76.do.end123_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123

if.end83:                                         ; preds = %if.end76
  %175 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %call.i, align 4
  %177 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pdata, align 4
  %dim_freq86 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %178, i32 0, i32 5
  %179 = ptrtoint ptr %dim_freq86 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %dim_freq86, align 1
  %call87 = call i32 @i2c_smbus_write_byte_data(ptr noundef %176, i8 noundef zeroext 9, i8 noundef zeroext %180) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end83.do.end123_crit_edge

if.end83.do.end123_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123

if.end90:                                         ; preds = %if.end83
  %181 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %call.i, align 4
  %183 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %pdata, align 4
  %comp_config93 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %184, i32 0, i32 6
  %185 = ptrtoint ptr %comp_config93 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %comp_config93, align 2
  %call94 = call i32 @i2c_smbus_write_byte_data(ptr noundef %182, i8 noundef zeroext 10, i8 noundef zeroext %186) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end90.do.end123_crit_edge

if.end90.do.end123_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123

if.end97:                                         ; preds = %if.end90
  %187 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call.i, align 4
  %189 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pdata, align 4
  %filter_config100 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %190, i32 0, i32 7
  %191 = ptrtoint ptr %filter_config100 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %filter_config100, align 1
  %call101 = call i32 @i2c_smbus_write_byte_data(ptr noundef %188, i8 noundef zeroext 11, i8 noundef zeroext %192) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end97.do.end123_crit_edge

if.end97.do.end123_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123

if.end104:                                        ; preds = %if.end97
  %193 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %call.i, align 4
  %195 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %pdata, align 4
  %trim_config107 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %196, i32 0, i32 8
  %197 = ptrtoint ptr %trim_config107 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %trim_config107, align 4
  %call108 = call i32 @i2c_smbus_write_byte_data(ptr noundef %194, i8 noundef zeroext 12, i8 noundef zeroext %198) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end104.do.end123_crit_edge

if.end104.do.end123_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end123

if.end111:                                        ; preds = %if.end104
  %199 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pdata, align 4
  %leden113 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %leden113 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %leden113, align 2
  %203 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %call.i, align 4
  %call.i198 = call i32 @i2c_smbus_read_byte_data(ptr noundef %204, i8 noundef zeroext 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %cmp.i199 = icmp slt i32 %call.i198, 0
  br i1 %cmp.i199, label %do.end.i200, label %if.end.i202

do.end.i200:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %205 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.20, i32 noundef 6) #9
  br label %arcxcnn_update_field.exit

if.end.i202:                                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %and722.i = and i8 %202, 63
  %207 = trunc i32 %call.i198 to i8
  %208 = and i8 %207, -64
  %conv9.i = or i8 %208, %and722.i
  %209 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %call.i, align 4
  %call11.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %210, i8 noundef zeroext 6, i8 noundef zeroext %conv9.i) #6
  br label %arcxcnn_update_field.exit

arcxcnn_update_field.exit:                        ; preds = %if.end.i202, %do.end.i200
  %211 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pdata, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %212, align 4
  %tobool.not.i205 = icmp eq ptr %214, null
  %..str.22.i = select i1 %tobool.not.i205, ptr @.str.22, ptr %214
  %215 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev6, align 4
  %call.i.i207 = call noalias ptr @devm_kmalloc(ptr noundef %216, i32 noundef 28, i32 noundef 3520) #6
  %tobool2.not.i = icmp eq ptr %call.i.i207, null
  br i1 %tobool2.not.i, label %arcxcnn_update_field.exit.do.end_crit_edge, label %if.end.i210

arcxcnn_update_field.exit.do.end_crit_edge:       ; preds = %arcxcnn_update_field.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i210:                                      ; preds = %arcxcnn_update_field.exit
  %type.i = getelementptr inbounds %struct.backlight_properties, ptr %call.i.i207, i32 0, i32 4
  %217 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 2, ptr %type.i, align 4
  %max_brightness.i = getelementptr inbounds %struct.backlight_properties, ptr %call.i.i207, i32 0, i32 1
  %218 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 4095, ptr %max_brightness.i, align 4
  %219 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pdata, align 4
  %initial_brightness.i208 = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %220, i32 0, i32 1
  %221 = ptrtoint ptr %initial_brightness.i208 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %initial_brightness.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %222)
  %cmp.i209 = icmp ugt i16 %222, 4095
  br i1 %cmp.i209, label %if.then6.i, label %if.end.i210.if.end11.i211_crit_edge

if.end.i210.if.end11.i211_crit_edge:              ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i211

if.then6.i:                                       ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #8
  %223 = ptrtoint ptr %initial_brightness.i208 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 4095, ptr %initial_brightness.i208, align 4
  br label %if.end11.i211

if.end11.i211:                                    ; preds = %if.then6.i, %if.end.i210.if.end11.i211_crit_edge
  %224 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pdata, align 4
  %initial_brightness13.i = getelementptr inbounds %struct.arcxcnn_platform_data, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %initial_brightness13.i to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %initial_brightness13.i, align 4
  %conv14.i = zext i16 %227 to i32
  %228 = ptrtoint ptr %call.i.i207 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %conv14.i, ptr %call.i.i207, align 4
  %229 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev6, align 4
  %call17.i = call ptr @devm_backlight_device_register(ptr noundef %230, ptr noundef %..str.22.i, ptr noundef %230, ptr noundef %call.i, ptr noundef nonnull @arcxcnn_bl_ops, ptr noundef nonnull %call.i.i207) #6
  %bl.i = getelementptr inbounds %struct.arcxcnn, ptr %call.i, i32 0, i32 1
  %231 = ptrtoint ptr %bl.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call17.i, ptr %bl.i, align 4
  %cmp.i.i.i.not = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  %232 = ptrtoint ptr %call17.i to i32
  br i1 %cmp.i.i.i.not, label %if.end11.i211.do.end_crit_edge, label %if.end118

if.end11.i211.do.end_crit_edge:                   ; preds = %if.end11.i211
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end118:                                        ; preds = %if.end11.i211
  %233 = ptrtoint ptr %bl.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %bl.i, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %234, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %234, i32 0, i32 3
  %235 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ops.i, align 4
  %tobool.not.i213 = icmp eq ptr %236, null
  br i1 %tobool.not.i213, label %if.end118.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end118.backlight_update_status.exit_crit_edge: ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end118
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i214 = icmp eq ptr %238, null
  br i1 %tobool2.not.i214, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i215 = call i32 %238(ptr noundef %234) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end118.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  br label %cleanup

do.end:                                           ; preds = %if.end11.i211.do.end_crit_edge, %arcxcnn_update_field.exit.do.end_crit_edge
  %retval.0.i212224 = phi i32 [ -12, %arcxcnn_update_field.exit.do.end_crit_edge ], [ %232, %if.end11.i211.do.end_crit_edge ]
  %239 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %240, ptr noundef nonnull @.str.1) #9
  br label %do.end123

do.end123:                                        ; preds = %do.end, %if.end104.do.end123_crit_edge, %if.end97.do.end123_crit_edge, %if.end90.do.end123_crit_edge, %if.end83.do.end123_crit_edge, %if.end76.do.end123_crit_edge, %if.end69.do.end123_crit_edge, %arcxcnn_set_brightness.exit.do.end123_crit_edge, %if.end62.do.end123_crit_edge, %if.end4.do.end123_crit_edge
  %ret.0 = phi i32 [ %call10, %if.end4.do.end123_crit_edge ], [ %call4.i, %arcxcnn_set_brightness.exit.do.end123_crit_edge ], [ %call73, %if.end69.do.end123_crit_edge ], [ %call80, %if.end76.do.end123_crit_edge ], [ %call87, %if.end83.do.end123_crit_edge ], [ %call94, %if.end90.do.end123_crit_edge ], [ %call101, %if.end97.do.end123_crit_edge ], [ %call108, %if.end104.do.end123_crit_edge ], [ %retval.0.i212224, %do.end ], [ %call.i195, %if.end62.do.end123_crit_edge ]
  %241 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %dev6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %242, ptr noundef nonnull @.str.7, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end123, %backlight_update_status.exit, %if.then16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end123 ], [ 0, %backlight_update_status.exit ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcxcnn_remove(ptr nocapture noundef readonly %cl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %cl, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 0) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 0, i8 noundef zeroext 64) #6
  %bl = getelementptr inbounds %struct.arcxcnn, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bl, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 8
  %9 = load ptr, ptr %bl, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %9, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

entry.backlight_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %entry
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %13(ptr noundef %9) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %entry.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arcxcnn_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bl, align 8
  %state = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 %3, i32 0
  %brightness.tr.i = trunc i32 %spec.select to i8
  %conv.i = shl i8 %brightness.tr.i, 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 7, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %arcxcnn_set_brightness.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

arcxcnn_set_brightness.exit:                      ; preds = %entry
  %shr.i = lshr i32 %spec.select, 4
  %conv2.i = trunc i32 %shr.i to i8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 8, i8 noundef zeroext %conv2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool4.not = icmp eq i32 %call4.i, 0
  br i1 %tobool4.not, label %if.end6, label %arcxcnn_set_brightness.exit.cleanup_crit_edge

arcxcnn_set_brightness.exit.cleanup_crit_edge:    ; preds = %arcxcnn_set_brightness.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %arcxcnn_set_brightness.exit
  %power = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i17 = icmp slt i32 %call.i16, 0
  br i1 %cmp.i17, label %do.end.i, label %if.end.i18

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.arcxcnn, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef 0) #9
  br label %cleanup

if.end.i18:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %conv = select i1 %cmp, i8 0, i8 -128
  %16 = trunc i32 %call.i16 to i8
  %17 = and i8 %16, 127
  %conv9.i = or i8 %17, %conv
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call11.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 0, i8 noundef zeroext %conv9.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i18, %do.end.i, %arcxcnn_set_brightness.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %arcxcnn_set_brightness.exit.cleanup_crit_edge ], [ %call.i16, %do.end.i ], [ %call11.i, %if.end.i18 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_arcxcnn_bl__301_404_arcxcnn_driver_init6, !1, !"__initcall__kmod_arcxcnn_bl__301_404_arcxcnn_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 404, i32 1}
!2 = !{ptr @__exitcall_arcxcnn_driver_exit, !1, !"__exitcall_arcxcnn_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file302, !4, !"__UNIQUE_ID_file302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 406, i32 1}
!5 = !{ptr @__UNIQUE_ID_license303, !4, !"__UNIQUE_ID_license303", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author304, !7, !"__UNIQUE_ID_author304", i1 false, i1 false}
!7 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 407, i32 1}
!8 = !{ptr @__UNIQUE_ID_description305, !9, !"__UNIQUE_ID_description305", i1 false, i1 false}
!9 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 408, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 397, i32 11}
!12 = !{ptr @arcxcnn_driver, !13, !"arcxcnn_driver", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 395, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 356, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @arcxcnn_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @arcxcnn_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 360, i32 2}
!24 = !{ptr @arcxcnn_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @arcxcnn_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 186, i32 38}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 190, i32 35}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 194, i32 35}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 198, i32 35}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 202, i32 35}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 206, i32 35}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 210, i32 35}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 214, i32 35}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 218, i32 42}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 229, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @arcxcnn_parse_dt._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @arcxcnn_parse_dt._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 101, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @arcxcnn_update_field._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @arcxcnn_update_field._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 156, i32 41}
!56 = !{ptr @arcxcnn_bl_ops, !57, !"arcxcnn_bl_ops", i1 false, i1 false}
!57 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 148, i32 35}
!58 = !{ptr @arcxcnn_dt_ids, !59, !"arcxcnn_dt_ids", i1 false, i1 false}
!59 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 383, i32 34}
!60 = !{ptr @arcxcnn_ids, !61, !"arcxcnn_ids", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/arcxcnn_bl.c", i32 389, i32 35}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
