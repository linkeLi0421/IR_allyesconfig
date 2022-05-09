; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-fsa9480.c_pt.bc'
source_filename = "../drivers/extcon/extcon-fsa9480.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.fsa9480_usbsw = type { ptr, ptr, ptr, i16 }

@__initcall__kmod_extcon_fsa9480__288_387_fsa9480_module_init4 = internal global ptr @fsa9480_module_init, section ".initcall4.init", align 4
@fsa9480_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @fsa9480_probe, ptr @fsa9480_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsa9480_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsa9480_pm_ops, ptr null, ptr null }, ptr @fsa9480_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_fsa9480_module_exit = internal global ptr @fsa9480_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [73 x i8] c"extcon_fsa9480.description=Fairchild Semiconductor FSA9480 extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [58 x i8] c"extcon_fsa9480.author=Tomasz Figa <tomasz.figa@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [50 x i8] c"extcon_fsa9480.file=drivers/extcon/extcon-fsa9480\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"extcon_fsa9480.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsa9480\00", [24 x i8] zeroinitializer }, align 32
@fsa9480_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fcs,fsa9480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fcs,fsa880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tsu6111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@fsa9480_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fsa9480_suspend, ptr @fsa9480_resume, ptr @fsa9480_suspend, ptr @fsa9480_resume, ptr @fsa9480_suspend, ptr @fsa9480_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsa9480_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"fsa9480\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@fsa9480_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no interrupt provided\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsa9480_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/extcon/extcon-fsa9480.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsa9480_probe._entry_ptr = internal global ptr @fsa9480_probe._entry, section ".printk_index", align 4
@fsa9480_extcon_cable = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 2, i32 1, i32 6, i32 5, i32 8, i32 23, i32 25, i32 61, i32 0], [60 x i8] zeroinitializer }, align 32
@fsa9480_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate memory for extcon\0A\00", [58 x i8] zeroinitializer }, align 32
@fsa9480_probe._entry_ptr.8 = internal global ptr @fsa9480_probe._entry.6, section ".printk_index", align 4
@fsa9480_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 289, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@fsa9480_probe._entry_ptr.11 = internal global ptr @fsa9480_probe._entry.9, section ".printk_index", align 4
@fsa9480_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fsa9480_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @fsa9480_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"extcon_fsa9480:293:(&fsa9480_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@fsa9480_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@fsa9480_probe._entry_ptr.15 = internal global ptr @fsa9480_probe._entry.13, section ".printk_index", align 4
@fsa9480_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@fsa9480_probe._entry_ptr.18 = internal global ptr @fsa9480_probe._entry.16, section ".printk_index", align 4
@fsa9480_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: err %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsa9480_write_reg\00", [46 x i8] zeroinitializer }, align 32
@fsa9480_write_reg._entry_ptr = internal global ptr @fsa9480_write_reg._entry, section ".printk_index", align 4
@fsa9480_read_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsa9480_read_irq\00", [47 x i8] zeroinitializer }, align 32
@fsa9480_read_irq._entry_ptr = internal global ptr @fsa9480_read_irq._entry, section ".printk_index", align 4
@fsa9480_detect_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to read registers\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsa9480_detect_dev\00", [45 x i8] zeroinitializer }, align 32
@fsa9480_detect_dev._entry_ptr = internal global ptr @fsa9480_detect_dev._entry, section ".printk_index", align 4
@fsa9480_detect_dev._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 233, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dev1: 0x%x, dev2: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fsa9480_detect_dev._entry_ptr.27 = internal global ptr @fsa9480_detect_dev._entry.24, section ".printk_index", align 4
@fsa9480_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.28, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsa9480_read_reg\00", [47 x i8] zeroinitializer }, align 32
@fsa9480_read_reg._entry_ptr = internal global ptr @fsa9480_read_reg._entry, section ".printk_index", align 4
@cable_types = internal constant { [15 x i64], [40 x i8] } { [15 x i64] [i64 8388608, i64 8388608, i64 34, i64 2305843009213693952, i64 8388642, i64 34, i64 66, i64 4, i64 2305843009213693954, i64 2305843009213693954, i64 2305843009213693952, i64 2305843009213693952, i64 8388864, i64 2305843009213693952, i64 41943040], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"fsa9480_i2c_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 372, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 374, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"fsa9480_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 364, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"fsa9480_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 354, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"fsa9480_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 358, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 267, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"fsa9480_extcon_cable\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 113, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 282, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 289, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"fsa9480_regmap_config\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 158, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 293, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 296, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 317, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 171, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 196, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 228, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 233, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 182, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [12 x i8] c"cable_types\00", align 1
@___asan_gen_.138 = private constant [35 x i8] c"../drivers/extcon/extcon-fsa9480.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 126, i32 18 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_fsa9480_module_exit, ptr @__initcall__kmod_extcon_fsa9480__288_387_fsa9480_module_init4, ptr @fsa9480_detect_dev._entry, ptr @fsa9480_detect_dev._entry.24, ptr @fsa9480_detect_dev._entry_ptr, ptr @fsa9480_detect_dev._entry_ptr.27, ptr @fsa9480_module_exit, ptr @fsa9480_probe._entry, ptr @fsa9480_probe._entry.13, ptr @fsa9480_probe._entry.16, ptr @fsa9480_probe._entry.6, ptr @fsa9480_probe._entry.9, ptr @fsa9480_probe._entry_ptr, ptr @fsa9480_probe._entry_ptr.11, ptr @fsa9480_probe._entry_ptr.15, ptr @fsa9480_probe._entry_ptr.18, ptr @fsa9480_probe._entry_ptr.8, ptr @fsa9480_read_irq._entry, ptr @fsa9480_read_irq._entry_ptr, ptr @fsa9480_read_reg._entry, ptr @fsa9480_read_reg._entry_ptr, ptr @fsa9480_write_reg._entry, ptr @fsa9480_write_reg._entry_ptr, ptr @fsa9480_i2c_driver, ptr @.str, ptr @fsa9480_of_match, ptr @fsa9480_pm_ops, ptr @fsa9480_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @fsa9480_extcon_cable, ptr @.str.7, ptr @.str.10, ptr @fsa9480_probe._key, ptr @fsa9480_regmap_config, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @cable_types], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_extcon_cable to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_read_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_detect_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_detect_dev._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsa9480_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cable_types to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsa9480_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fsa9480_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsa9480_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @fsa9480_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsa9480_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call8 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev, ptr noundef nonnull @fsa9480_extcon_cable) #7
  %edev = getelementptr inbounds %struct.fsa9480_usbsw, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %edev, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %call19 = tail call i32 @devm_extcon_dev_register(ptr noundef %6, ptr noundef %call8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %call27 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @fsa9480_regmap_config, ptr noundef nonnull @fsa9480_probe._key, ptr noundef nonnull @.str.12) #7
  %regmap = getelementptr inbounds %struct.fsa9480_usbsw, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call27, ptr %regmap, align 4
  %cmp.i89 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call27 to i32
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.14, i32 noundef %10) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end26
  %call.i90 = tail call i32 @regmap_write(ptr noundef %call27, i32 noundef 8, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  br i1 %cmp.i91, label %do.end.i, label %if.end37.fsa9480_write_reg.exit_crit_edge

if.end37.fsa9480_write_reg.exit_crit_edge:        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsa9480_write_reg.exit

do.end.i:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i90) #10
  br label %fsa9480_write_reg.exit

fsa9480_write_reg.exit:                           ; preds = %do.end.i, %if.end37.fsa9480_write_reg.exit_crit_edge
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i93 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 2, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp.i94 = icmp slt i32 %call.i93, 0
  br i1 %cmp.i94, label %do.end.i95, label %fsa9480_write_reg.exit.fsa9480_write_reg.exit96_crit_edge

fsa9480_write_reg.exit.fsa9480_write_reg.exit96_crit_edge: ; preds = %fsa9480_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsa9480_write_reg.exit96

do.end.i95:                                       ; preds = %fsa9480_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i93) #10
  br label %fsa9480_write_reg.exit96

fsa9480_write_reg.exit96:                         ; preds = %do.end.i95, %fsa9480_write_reg.exit.fsa9480_write_reg.exit96_crit_edge
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i98 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 5, i32 noundef 252) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp.i99 = icmp slt i32 %call.i98, 0
  br i1 %cmp.i99, label %do.end.i100, label %fsa9480_write_reg.exit96.fsa9480_write_reg.exit101_crit_edge

fsa9480_write_reg.exit96.fsa9480_write_reg.exit101_crit_edge: ; preds = %fsa9480_write_reg.exit96
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsa9480_write_reg.exit101

do.end.i100:                                      ; preds = %fsa9480_write_reg.exit96
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i98) #10
  br label %fsa9480_write_reg.exit101

fsa9480_write_reg.exit101:                        ; preds = %do.end.i100, %fsa9480_write_reg.exit96.fsa9480_write_reg.exit101_crit_edge
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i103 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 6, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %cmp.i104 = icmp slt i32 %call.i103, 0
  br i1 %cmp.i104, label %do.end.i105, label %fsa9480_write_reg.exit101.fsa9480_write_reg.exit106_crit_edge

fsa9480_write_reg.exit101.fsa9480_write_reg.exit106_crit_edge: ; preds = %fsa9480_write_reg.exit101
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsa9480_write_reg.exit106

do.end.i105:                                      ; preds = %fsa9480_write_reg.exit101
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i103) #10
  br label %fsa9480_write_reg.exit106

fsa9480_write_reg.exit106:                        ; preds = %do.end.i105, %fsa9480_write_reg.exit101.fsa9480_write_reg.exit106_crit_edge
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call44 = tail call i32 @devm_request_threaded_irq(ptr noundef %28, i32 noundef %30, ptr noundef null, ptr noundef nonnull @fsa9480_irq_handler, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %fsa9480_write_reg.exit106
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end51:                                         ; preds = %fsa9480_write_reg.exit106
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call i32 @device_init_wakeup(ptr noundef %32, i1 noundef zeroext true) #7
  tail call fastcc void @fsa9480_detect_dev(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end49, %if.then30, %do.end24, %do.end14, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end14 ], [ %call19, %do.end24 ], [ %10, %if.then30 ], [ %call44, %do.end49 ], [ 0, %if.end51 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsa9480_remove(ptr nocapture noundef readnone %client) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsa9480_irq_handler(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %regs.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regs.i) #7
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %regs.i, align 1, !annotation !86
  %1 = getelementptr inbounds [2 x i8], ptr %regs.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !86
  %regmap.i = getelementptr inbounds %struct.fsa9480_usbsw, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 3, ptr noundef nonnull %regs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.fsa9480_read_irq.exit_crit_edge

entry.fsa9480_read_irq.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsa9480_read_irq.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef %call.i) #10
  br label %fsa9480_read_irq.exit

fsa9480_read_irq.exit:                            ; preds = %do.end.i, %entry.fsa9480_read_irq.exit_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %conv.i = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regs.i, align 1
  %conv2.i = zext i8 %10 to i32
  %or.i = or i32 %shl.i, %conv2.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not = icmp eq i32 %or.i, 0
  br i1 %tobool.not, label %fsa9480_read_irq.exit.cleanup_crit_edge, label %if.end

fsa9480_read_irq.exit.cleanup_crit_edge:          ; preds = %fsa9480_read_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %fsa9480_read_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @fsa9480_detect_dev(ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %fsa9480_read_irq.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %fsa9480_read_irq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsa9480_detect_dev(ptr nocapture noundef %usbsw) unnamed_addr #2 align 64 {
entry:
  %val.i33 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !86
  %regmap.i = getelementptr inbounds %struct.fsa9480_usbsw, ptr %usbsw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %usbsw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usbsw, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.28, i32 noundef %call.i) #10
  br label %fsa9480_read_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  br label %fsa9480_read_reg.exit

fsa9480_read_reg.exit:                            ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %6, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i33) #7
  %7 = ptrtoint ptr %val.i33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i33, align 4, !annotation !86
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i35 = call i32 @regmap_read(ptr noundef %9, i32 noundef 11, ptr noundef nonnull %val.i33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i36 = icmp slt i32 %call.i35, 0
  br i1 %cmp.i36, label %fsa9480_read_reg.exit40.thread, label %fsa9480_read_reg.exit40

fsa9480_read_reg.exit40.thread:                   ; preds = %fsa9480_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %usbsw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usbsw, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.28, i32 noundef %call.i35) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i33) #7
  br label %do.end

fsa9480_read_reg.exit40:                          ; preds = %fsa9480_read_reg.exit
  %12 = ptrtoint ptr %val.i33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i33, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2 = icmp slt i32 %13, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %fsa9480_read_reg.exit40.do.end_crit_edge, label %if.end

fsa9480_read_reg.exit40.do.end_crit_edge:         ; preds = %fsa9480_read_reg.exit40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %fsa9480_read_reg.exit40.do.end_crit_edge, %fsa9480_read_reg.exit40.thread
  %14 = ptrtoint ptr %usbsw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usbsw, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #10
  br label %cleanup

if.end:                                           ; preds = %fsa9480_read_reg.exit40
  %shl = shl i32 %13, 8
  %or = or i32 %shl, %retval.0.i
  %conv = trunc i32 %or to i16
  %16 = ptrtoint ptr %usbsw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usbsw, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i, i32 noundef %13) #10
  %cable = getelementptr inbounds %struct.fsa9480_usbsw, ptr %usbsw, i32 0, i32 3
  %18 = ptrtoint ptr %cable to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cable, align 4
  %20 = xor i16 %conv, -1
  %conv9 = and i16 %19, %20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv9)
  %tobool.not36.i = icmp eq i16 %conv9, 0
  br i1 %tobool.not36.i, label %if.end.fsa9480_handle_change.exit_crit_edge, label %while.body.lr.ph.i

if.end.fsa9480_handle_change.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsa9480_handle_change.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %edev.i = getelementptr inbounds %struct.fsa9480_usbsw, ptr %usbsw, i32 0, i32 2
  br label %while.body3.preheader.i

while.body3.preheader.i:                          ; preds = %while.end.i.while.body3.preheader.i_crit_edge, %while.body.lr.ph.i
  %mask.addr.037.i = phi i16 [ %conv9, %while.body.lr.ph.i ], [ %conv13.i, %while.end.i.while.body3.preheader.i_crit_edge ]
  %conv1.i.i = zext i16 %mask.addr.037.i to i32
  %21 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #7, !range !87
  %sub.i = xor i32 %21, 31
  %arrayidx.i = getelementptr [15 x i64], ptr @cable_types, i32 0, i32 %sub.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i, align 8
  br label %while.body3.i

while.body3.i:                                    ; preds = %fls64.exit32.i.while.body3.i_crit_edge, %while.body3.preheader.i
  %cables.034.i = phi i64 [ %and.i, %fls64.exit32.i.while.body3.i_crit_edge ], [ %23, %while.body3.preheader.i ]
  %shr.i21.i = lshr i64 %cables.034.i, 32
  %conv.i22.i = trunc i64 %shr.i21.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i22.i)
  %tobool.not.i23.i = icmp eq i32 %conv.i22.i, 0
  br i1 %tobool.not.i23.i, label %if.end.i30.i, label %if.then.i25.i

if.then.i25.i:                                    ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = call i32 @llvm.ctlz.i32(i32 %conv.i22.i, i1 true) #7, !range !87
  %add.i24.i = sub nuw nsw i32 64, %24
  br label %fls64.exit32.i

if.end.i30.i:                                     ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i26.i = trunc i64 %cables.034.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i26.i)
  %tobool.not.i5.i27.i = icmp eq i32 %conv1.i26.i, 0
  %25 = call i32 @llvm.ctlz.i32(i32 %conv1.i26.i, i1 true) #7, !range !87
  %sub.i6.i28.i = sub nuw nsw i32 32, %25
  %cond.i7.i29.i = select i1 %tobool.not.i5.i27.i, i32 0, i32 %sub.i6.i28.i
  br label %fls64.exit32.i

fls64.exit32.i:                                   ; preds = %if.end.i30.i, %if.then.i25.i
  %retval.0.i31.i = phi i32 [ %add.i24.i, %if.then.i25.i ], [ %cond.i7.i29.i, %if.end.i30.i ]
  %sub5.i = add nsw i32 %retval.0.i31.i, -1
  %26 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edev.i, align 4
  %call7.i = call i32 @extcon_set_state_sync(ptr noundef %27, i32 noundef %sub5.i, i1 noundef zeroext false) #7
  %sh_prom.i = zext i32 %sub5.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %neg.i = xor i64 %shl.i, -1
  %and.i = and i64 %cables.034.i, %neg.i
  %tobool2.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool2.not.i, label %while.end.i, label %fls64.exit32.i.while.body3.i_crit_edge

fls64.exit32.i.while.body3.i_crit_edge:           ; preds = %fls64.exit32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body3.i

while.end.i:                                      ; preds = %fls64.exit32.i
  %shl9.i = shl nuw i32 1, %sub.i
  %28 = trunc i32 %shl9.i to i16
  %29 = xor i16 %28, -1
  %conv13.i = and i16 %mask.addr.037.i, %29
  %tobool.not.i = icmp eq i16 %conv13.i, 0
  br i1 %tobool.not.i, label %while.end.i.fsa9480_handle_change.exit_crit_edge, label %while.end.i.while.body3.preheader.i_crit_edge

while.end.i.while.body3.preheader.i_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body3.preheader.i

while.end.i.fsa9480_handle_change.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsa9480_handle_change.exit

fsa9480_handle_change.exit:                       ; preds = %while.end.i.fsa9480_handle_change.exit_crit_edge, %if.end.fsa9480_handle_change.exit_crit_edge
  %30 = ptrtoint ptr %cable to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cable, align 4
  %conv12 = zext i16 %31 to i32
  %neg13 = xor i32 %conv12, -1
  %and14 = and i32 %or, %neg13
  %conv15 = trunc i32 %and14 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv15)
  %tobool.not36.i41 = icmp eq i16 %conv15, 0
  br i1 %tobool.not36.i41, label %fsa9480_handle_change.exit.fsa9480_handle_change.exit74_crit_edge, label %while.body.lr.ph.i43

fsa9480_handle_change.exit.fsa9480_handle_change.exit74_crit_edge: ; preds = %fsa9480_handle_change.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsa9480_handle_change.exit74

while.body.lr.ph.i43:                             ; preds = %fsa9480_handle_change.exit
  %edev.i42 = getelementptr inbounds %struct.fsa9480_usbsw, ptr %usbsw, i32 0, i32 2
  br label %while.body3.preheader.i48

while.body3.preheader.i48:                        ; preds = %while.end.i73.while.body3.preheader.i48_crit_edge, %while.body.lr.ph.i43
  %mask.addr.037.i44 = phi i16 [ %conv15, %while.body.lr.ph.i43 ], [ %conv13.i71, %while.end.i73.while.body3.preheader.i48_crit_edge ]
  %conv1.i.i45 = zext i16 %mask.addr.037.i44 to i32
  %32 = call i32 @llvm.ctlz.i32(i32 %conv1.i.i45, i1 true) #7, !range !87
  %sub.i46 = xor i32 %32, 31
  %arrayidx.i47 = getelementptr [15 x i64], ptr @cable_types, i32 0, i32 %sub.i46
  %33 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i47, align 8
  br label %while.body3.i53

while.body3.i53:                                  ; preds = %fls64.exit32.i69.while.body3.i53_crit_edge, %while.body3.preheader.i48
  %cables.034.i49 = phi i64 [ %and.i67, %fls64.exit32.i69.while.body3.i53_crit_edge ], [ %34, %while.body3.preheader.i48 ]
  %shr.i21.i50 = lshr i64 %cables.034.i49, 32
  %conv.i22.i51 = trunc i64 %shr.i21.i50 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i22.i51)
  %tobool.not.i23.i52 = icmp eq i32 %conv.i22.i51, 0
  br i1 %tobool.not.i23.i52, label %if.end.i30.i60, label %if.then.i25.i55

if.then.i25.i55:                                  ; preds = %while.body3.i53
  call void @__sanitizer_cov_trace_pc() #9
  %35 = call i32 @llvm.ctlz.i32(i32 %conv.i22.i51, i1 true) #7, !range !87
  %add.i24.i54 = sub nuw nsw i32 64, %35
  br label %fls64.exit32.i69

if.end.i30.i60:                                   ; preds = %while.body3.i53
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i26.i56 = trunc i64 %cables.034.i49 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i26.i56)
  %tobool.not.i5.i27.i57 = icmp eq i32 %conv1.i26.i56, 0
  %36 = call i32 @llvm.ctlz.i32(i32 %conv1.i26.i56, i1 true) #7, !range !87
  %sub.i6.i28.i58 = sub nuw nsw i32 32, %36
  %cond.i7.i29.i59 = select i1 %tobool.not.i5.i27.i57, i32 0, i32 %sub.i6.i28.i58
  br label %fls64.exit32.i69

fls64.exit32.i69:                                 ; preds = %if.end.i30.i60, %if.then.i25.i55
  %retval.0.i31.i61 = phi i32 [ %add.i24.i54, %if.then.i25.i55 ], [ %cond.i7.i29.i59, %if.end.i30.i60 ]
  %sub5.i62 = add nsw i32 %retval.0.i31.i61, -1
  %37 = ptrtoint ptr %edev.i42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %edev.i42, align 4
  %call7.i63 = call i32 @extcon_set_state_sync(ptr noundef %38, i32 noundef %sub5.i62, i1 noundef zeroext true) #7
  %sh_prom.i64 = zext i32 %sub5.i62 to i64
  %shl.i65 = shl nuw i64 1, %sh_prom.i64
  %neg.i66 = xor i64 %shl.i65, -1
  %and.i67 = and i64 %cables.034.i49, %neg.i66
  %tobool2.not.i68 = icmp eq i64 %and.i67, 0
  br i1 %tobool2.not.i68, label %while.end.i73, label %fls64.exit32.i69.while.body3.i53_crit_edge

fls64.exit32.i69.while.body3.i53_crit_edge:       ; preds = %fls64.exit32.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body3.i53

while.end.i73:                                    ; preds = %fls64.exit32.i69
  %shl9.i70 = shl nuw i32 1, %sub.i46
  %39 = trunc i32 %shl9.i70 to i16
  %40 = xor i16 %39, -1
  %conv13.i71 = and i16 %mask.addr.037.i44, %40
  %tobool.not.i72 = icmp eq i16 %conv13.i71, 0
  br i1 %tobool.not.i72, label %while.end.i73.fsa9480_handle_change.exit74_crit_edge, label %while.end.i73.while.body3.preheader.i48_crit_edge

while.end.i73.while.body3.preheader.i48_crit_edge: ; preds = %while.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body3.preheader.i48

while.end.i73.fsa9480_handle_change.exit74_crit_edge: ; preds = %while.end.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsa9480_handle_change.exit74

fsa9480_handle_change.exit74:                     ; preds = %while.end.i73.fsa9480_handle_change.exit74_crit_edge, %fsa9480_handle_change.exit.fsa9480_handle_change.exit74_crit_edge
  %41 = ptrtoint ptr %cable to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv, ptr %cable, align 4
  br label %cleanup

cleanup:                                          ; preds = %fsa9480_handle_change.exit74, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsa9480_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %reg)
  %cond = icmp eq i32 %reg, 5
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsa9480_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %irq = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsa9480_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %1 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %2, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %irq = getelementptr i8, ptr %dev, i32 932
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_extcon_fsa9480__288_387_fsa9480_module_init4, !1, !"__initcall__kmod_extcon_fsa9480__288_387_fsa9480_module_init4", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 387, i32 1}
!2 = !{ptr @__exitcall_fsa9480_module_exit, !3, !"__exitcall_fsa9480_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 393, i32 1}
!4 = !{ptr @__UNIQUE_ID_description289, !5, !"__UNIQUE_ID_description289", i1 false, i1 false}
!5 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 395, i32 1}
!6 = !{ptr @__UNIQUE_ID_author290, !7, !"__UNIQUE_ID_author290", i1 false, i1 false}
!7 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 396, i32 1}
!8 = !{ptr @__UNIQUE_ID_file291, !9, !"__UNIQUE_ID_file291", i1 false, i1 false}
!9 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 397, i32 1}
!10 = !{ptr @__UNIQUE_ID_license292, !9, !"__UNIQUE_ID_license292", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 374, i32 12}
!13 = !{ptr @fsa9480_i2c_driver, !14, !"fsa9480_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 372, i32 26}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 267, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fsa9480_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @fsa9480_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 282, i32 3}
!25 = !{ptr @fsa9480_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @fsa9480_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 289, i32 3}
!29 = !{ptr @fsa9480_probe._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @fsa9480_probe._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @fsa9480_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 293, i32 17}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 296, i32 3}
!36 = !{ptr @fsa9480_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @fsa9480_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 317, i32 3}
!40 = !{ptr @fsa9480_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fsa9480_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @fsa9480_extcon_cable, !43, !"fsa9480_extcon_cable", i1 false, i1 false}
!43 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 113, i32 27}
!44 = !{ptr @fsa9480_regmap_config, !45, !"fsa9480_regmap_config", i1 false, i1 false}
!45 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 158, i32 35}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 171, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @fsa9480_write_reg._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @fsa9480_write_reg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 196, i32 3}
!53 = !{ptr @fsa9480_read_irq._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @fsa9480_read_irq._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 228, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @fsa9480_detect_dev._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @fsa9480_detect_dev._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 233, i32 2}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fsa9480_detect_dev._entry.24, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @fsa9480_detect_dev._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 182, i32 3}
!67 = !{ptr @fsa9480_read_reg._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @fsa9480_read_reg._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @cable_types, !70, !"cable_types", i1 false, i1 false}
!70 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 126, i32 18}
!71 = !{ptr @fsa9480_of_match, !72, !"fsa9480_of_match", i1 false, i1 false}
!72 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 364, i32 34}
!73 = !{ptr @fsa9480_pm_ops, !74, !"fsa9480_pm_ops", i1 false, i1 false}
!74 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 354, i32 32}
!75 = !{ptr @fsa9480_id, !76, !"fsa9480_id", i1 false, i1 false}
!76 = !{!"../drivers/extcon/extcon-fsa9480.c", i32 358, i32 35}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i32 0, i32 33}
