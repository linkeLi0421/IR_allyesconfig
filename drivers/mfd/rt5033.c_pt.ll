; ModuleID = '/llk/IR_all_yes/drivers/mfd/rt5033.c_pt.bc'
source_filename = "../drivers/mfd/rt5033.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rt5033_dev = type { ptr, ptr, ptr, i32, i8 }

@__initcall__kmod_rt5033__288_130_rt5033_driver_init6 = internal global ptr @rt5033_driver_init, section ".initcall6.init", align 4
@rt5033_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rt5033_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt5033_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rt5033_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rt5033_driver_exit = internal global ptr @rt5033_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [61 x i8] c"rt5033.description=Richtek RT5033 multi-function core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [50 x i8] c"rt5033.author=Beomho Seo <beomho.seo@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [31 x i8] c"rt5033.file=drivers/mfd/rt5033\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [19 x i8] c"rt5033.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5033\00", [25 x i8] zeroinitializer }, align 32
@rt5033_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"richtek,rt5033\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rt5033_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rt5033\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rt5033_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rt5033_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 108, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rt5033:75:(&rt5033_regmap_config)->lock\00", [56 x i8] zeroinitializer }, align 32
@rt5033_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 77, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate register map.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5033_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/mfd/rt5033.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt5033_i2c_probe._entry_ptr = internal global ptr @rt5033_i2c_probe._entry, section ".printk_index", align 4
@rt5033_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 83, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Device not found\0A\00", [46 x i8] zeroinitializer }, align 32
@rt5033_i2c_probe._entry_ptr.9 = internal global ptr @rt5033_i2c_probe._entry.7, section ".printk_index", align 4
@rt5033_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 86, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Device found Device ID: %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rt5033_i2c_probe._entry_ptr.13 = internal global ptr @rt5033_i2c_probe._entry.10, section ".printk_index", align 4
@rt5033_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 93, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rt5033_i2c_probe._entry_ptr.16 = internal global ptr @rt5033_i2c_probe._entry.14, section ".printk_index", align 4
@rt5033_devs = internal constant { [4 x %struct.mfd_cell], [64 x i8] } { [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.22, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.23, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.24, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.25, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.26, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.27, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [64 x i8] zeroinitializer }, align 32
@rt5033_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 101, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add RT5033 child devices.\0A\00", [59 x i8] zeroinitializer }, align 32
@rt5033_i2c_probe._entry_ptr.19 = internal global ptr @rt5033_i2c_probe._entry.17, section ".printk_index", align 4
@rt5033_irqs = internal constant { [6 x %struct.regmap_irq], [40 x i8] } { [6 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@rt5033_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 104, i32 105, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 32, i8 0, i32 1, ptr @rt5033_irqs, i32 6, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt5033-regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt5033-charger\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"richtek,rt5033-charger\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt5033-battery\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"richtek,rt5033-battery\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt5033-led\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"richtek,rt5033-led\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"rt5033_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 122, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 124, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"rt5033_dt_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 116, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"rt5033_i2c_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 110, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"rt5033_regmap_config\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 53, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 75, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 77, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 83, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 86, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 92, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"rt5033_devs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 39, i32 30 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 101, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"rt5033_irqs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 20, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"rt5033_irq_chip\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 29, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 40, i32 12 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 42, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 43, i32 20 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 45, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 46, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 48, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [24 x i8] c"../drivers/mfd/rt5033.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 49, i32 20 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_rt5033_driver_exit, ptr @__initcall__kmod_rt5033__288_130_rt5033_driver_init6, ptr @rt5033_driver_exit, ptr @rt5033_i2c_probe._entry, ptr @rt5033_i2c_probe._entry.10, ptr @rt5033_i2c_probe._entry.14, ptr @rt5033_i2c_probe._entry.17, ptr @rt5033_i2c_probe._entry.7, ptr @rt5033_i2c_probe._entry_ptr, ptr @rt5033_i2c_probe._entry_ptr.13, ptr @rt5033_i2c_probe._entry_ptr.16, ptr @rt5033_i2c_probe._entry_ptr.19, ptr @rt5033_i2c_probe._entry_ptr.9, ptr @rt5033_driver, ptr @.str, ptr @rt5033_dt_match, ptr @rt5033_i2c_id, ptr @rt5033_i2c_probe._key, ptr @rt5033_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @rt5033_devs, ptr @.str.18, ptr @rt5033_irqs, ptr @rt5033_irq_chip, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_devs to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_irqs to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5033_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5033_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rt5033_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt5033_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @rt5033_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt5033_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %dev_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_id) #5
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev_id, align 4, !annotation !77
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %irq3 = getelementptr inbounds %struct.rt5033_dev, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %irq3, align 4
  %wakeup = getelementptr inbounds %struct.rt5033_dev, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %wakeup to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %wakeup, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @rt5033_regmap_config, ptr noundef nonnull @rt5033_i2c_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.rt5033_dev, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = call i32 @regmap_read(ptr noundef %call4, i32 noundef 3, ptr noundef nonnull %dev_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end23, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

do.end23:                                         ; preds = %if.end11
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %12) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq3, align 4
  %irq_data = getelementptr inbounds %struct.rt5033_dev, ptr %call.i, i32 0, i32 2
  %call27 = call i32 @regmap_add_irq_chip(ptr noundef %14, i32 noundef %16, i32 noundef 8194, i32 noundef 0, ptr noundef nonnull @rt5033_irq_chip, ptr noundef %irq_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end35, label %do.end32

do.end32:                                         ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %18, i32 noundef %call27) #8
  br label %cleanup

if.end35:                                         ; preds = %do.end23
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %21 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_data, align 4
  %call38 = call ptr @regmap_irq_get_domain(ptr noundef %22) #5
  %call39 = call i32 @devm_mfd_add_devices(ptr noundef %20, i32 noundef -1, ptr noundef nonnull @rt5033_devs, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %call38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %25 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wakeup, align 4, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool48 = icmp ne i8 %26, 0
  %call49 = call i32 @device_init_wakeup(ptr noundef %24, i1 noundef zeroext %tobool48) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end43, %do.end32, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end ], [ -19, %do.end18 ], [ %call27, %do.end32 ], [ %call39, %do.end43 ], [ 0, %if.end45 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_id) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_rt5033__288_130_rt5033_driver_init6, !1, !"__initcall__kmod_rt5033__288_130_rt5033_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/rt5033.c", i32 130, i32 1}
!2 = !{ptr @__exitcall_rt5033_driver_exit, !1, !"__exitcall_rt5033_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/mfd/rt5033.c", i32 132, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/mfd/rt5033.c", i32 133, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/mfd/rt5033.c", i32 134, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/rt5033.c", i32 124, i32 11}
!12 = !{ptr @rt5033_driver, !13, !"rt5033_driver", i1 false, i1 false}
!13 = !{!"../drivers/mfd/rt5033.c", i32 122, i32 26}
!14 = !{ptr @rt5033_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/mfd/rt5033.c", i32 75, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/rt5033.c", i32 77, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rt5033_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @rt5033_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/rt5033.c", i32 83, i32 3}
!27 = !{ptr @rt5033_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rt5033_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/rt5033.c", i32 86, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rt5033_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rt5033_i2c_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/rt5033.c", i32 92, i32 3}
!36 = !{ptr @rt5033_i2c_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rt5033_i2c_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/rt5033.c", i32 101, i32 3}
!40 = !{ptr @rt5033_i2c_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rt5033_i2c_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @rt5033_regmap_config, !43, !"rt5033_regmap_config", i1 false, i1 false}
!43 = !{!"../drivers/mfd/rt5033.c", i32 53, i32 35}
!44 = !{ptr @rt5033_irq_chip, !45, !"rt5033_irq_chip", i1 false, i1 false}
!45 = !{!"../drivers/mfd/rt5033.c", i32 29, i32 37}
!46 = !{ptr @rt5033_irqs, !47, !"rt5033_irqs", i1 false, i1 false}
!47 = !{!"../drivers/mfd/rt5033.c", i32 20, i32 32}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/rt5033.c", i32 40, i32 12}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/rt5033.c", i32 42, i32 11}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/rt5033.c", i32 43, i32 20}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/rt5033.c", i32 45, i32 11}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/rt5033.c", i32 46, i32 20}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/rt5033.c", i32 48, i32 11}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/rt5033.c", i32 49, i32 20}
!62 = !{ptr @rt5033_devs, !63, !"rt5033_devs", i1 false, i1 false}
!63 = !{!"../drivers/mfd/rt5033.c", i32 39, i32 30}
!64 = !{ptr @rt5033_dt_match, !65, !"rt5033_dt_match", i1 false, i1 false}
!65 = !{!"../drivers/mfd/rt5033.c", i32 116, i32 34}
!66 = !{ptr @rt5033_i2c_id, !67, !"rt5033_i2c_id", i1 false, i1 false}
!67 = !{!"../drivers/mfd/rt5033.c", i32 110, i32 35}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i8 0, i8 2}
