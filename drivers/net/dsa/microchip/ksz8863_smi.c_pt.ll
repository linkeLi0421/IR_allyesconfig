; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/microchip/ksz8863_smi.c_pt.bc'
source_filename = "../drivers/net/dsa/microchip/ksz8863_smi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_driver = type { %struct.mdio_driver_common, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ksz8 = type { ptr, ptr, ptr, ptr }
%struct.ksz_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, ptr, ptr, [3 x ptr], ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, i32, i32, i8, i8, ptr, ptr, %struct.delayed_work, i32, i16, i16, i32, i32, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }

@__initcall__kmod_ksz8863_smi__497_225_mdio_module_init6 = internal global ptr @mdio_module_init, section ".initcall6.init", align 4
@ksz8863_driver = internal global { %struct.mdio_driver, [36 x i8] } { %struct.mdio_driver { %struct.mdio_driver_common { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ksz8863_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0 }, ptr @ksz8863_smi_probe, ptr @ksz8863_smi_remove, ptr @ksz8863_smi_shutdown }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mdio_module_exit = internal global ptr @mdio_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author498 = internal constant [66 x i8] c"ksz8863_smi.author=Michael Grzeschik <m.grzeschik@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description499 = internal constant [60 x i8] c"ksz8863_smi.description=Microchip KSZ8863 SMI Switch driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file500 = internal constant [55 x i8] c"ksz8863_smi.file=drivers/net/dsa/microchip/ksz8863_smi\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [27 x i8] c"ksz8863_smi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ksz8863-switch\00", [17 x i8] zeroinitializer }, align 32
@ksz8863_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,ksz8863\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,ksz8873\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ksz8863_regmap_config = internal constant { [3 x %struct.regmap_config], [156 x i8] } { [3 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.7, i32 8, i32 0, i32 24, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @ksz_regmap_lock, ptr @ksz_regmap_unlock, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.8, i32 8, i32 0, i32 24, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @ksz_regmap_lock, ptr @ksz_regmap_unlock, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.9, i32 8, i32 0, i32 24, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @ksz_regmap_lock, ptr @ksz_regmap_unlock, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [156 x i8] zeroinitializer }, align 32
@ksz8863_smi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_smi = internal constant { [3 x %struct.regmap_bus], [32 x i8] } { [3 x %struct.regmap_bus] [%struct.regmap_bus { i8 0, ptr @ksz8863_mdio_write, ptr null, ptr null, ptr null, ptr null, ptr @ksz8863_mdio_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 1, i32 1, i8 0 }, %struct.regmap_bus { i8 0, ptr @ksz8863_mdio_write, ptr null, ptr null, ptr null, ptr null, ptr @ksz8863_mdio_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 1, i32 2, i32 2, i8 0 }, %struct.regmap_bus { i8 0, ptr @ksz8863_mdio_write, ptr null, ptr null, ptr null, ptr null, ptr @ksz8863_mdio_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 1, i32 4, i32 4, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ksz8863_smi:164:(&rc)->lock\00", [36 x i8] zeroinitializer }, align 32
@ksz8863_smi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 169, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize regmap%i: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ksz8863_smi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/dsa/microchip/ksz8863_smi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ksz8863_smi_probe._entry_ptr = internal global ptr @ksz8863_smi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"#8\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"#16\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"#32\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"ksz8863_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 215, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 220, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"ksz8863_dt_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 208, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"ksz8863_regmap_config\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 108, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"regmap_smi\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 85, i32 32 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 162, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 167, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 110, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 120, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [43 x i8] c"../drivers/net/dsa/microchip/ksz8863_smi.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 130, i32 11 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author498, ptr @__UNIQUE_ID_description499, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__exitcall_mdio_module_exit, ptr @__initcall__kmod_ksz8863_smi__497_225_mdio_module_init6, ptr @ksz8863_smi_probe._entry, ptr @ksz8863_smi_probe._entry_ptr, ptr @mdio_module_exit, ptr @ksz8863_driver, ptr @.str, ptr @ksz8863_dt_ids, ptr @ksz8863_regmap_config, ptr @ksz8863_smi_probe._key, ptr @regmap_smi, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8863_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8863_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8863_regmap_config to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8863_smi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_smi to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz8863_smi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdio_driver_register(ptr noundef nonnull @ksz8863_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mdio_driver_unregister(ptr noundef nonnull @ksz8863_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8863_smi_probe(ptr noundef %mdiodev) #2 align 64 {
entry:
  %rc = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %rc) #6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mdiodev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ksz8, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mdiodev, ptr %priv, align 4
  %call3 = tail call ptr @ksz_switch_alloc(ptr noundef %mdiodev, ptr noundef nonnull %call.i) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %regmap_mutex = getelementptr inbounds %struct.ksz_device, ptr %call3, i32 0, i32 4
  %lock_arg = getelementptr inbounds %struct.regmap_config, ptr %rc, i32 0, i32 14
  %1 = call ptr @memcpy(ptr %rc, ptr @ksz8863_regmap_config, i32 172)
  %2 = ptrtoint ptr %lock_arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regmap_mutex, ptr %lock_arg, align 4
  %call9 = call ptr @__devm_regmap_init(ptr noundef %mdiodev, ptr noundef nonnull @regmap_smi, ptr noundef nonnull %call3, ptr noundef nonnull %rc, ptr noundef nonnull @ksz8863_smi_probe._key, ptr noundef nonnull @.str.1) #6
  %arrayidx10 = getelementptr %struct.ksz_device, ptr %call3, i32 0, i32 9, i32 0
  %3 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %arrayidx10, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.cond.preheader.if.then14_crit_edge, label %for.inc

for.cond.preheader.if.then14_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %for.inc.1.if.then14_crit_edge, %for.inc.if.then14_crit_edge, %for.cond.preheader.if.then14_crit_edge
  %i.064.lcssa = phi i32 [ 0, %for.cond.preheader.if.then14_crit_edge ], [ 1, %for.inc.if.then14_crit_edge ], [ 2, %for.inc.1.if.then14_crit_edge ]
  %call9.lcssa = phi ptr [ %call9, %for.cond.preheader.if.then14_crit_edge ], [ %call9.1, %for.inc.if.then14_crit_edge ], [ %call9.2, %for.inc.1.if.then14_crit_edge ]
  %4 = ptrtoint ptr %call9.lcssa to i32
  %val_bits = getelementptr [3 x %struct.regmap_config], ptr @ksz8863_regmap_config, i32 0, i32 %i.064.lcssa, i32 4
  %5 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val_bits, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %mdiodev, ptr noundef nonnull @.str.2, i32 noundef %6, i32 noundef %4) #9
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %7 = call ptr @memcpy(ptr %rc, ptr getelementptr inbounds ([3 x %struct.regmap_config], ptr @ksz8863_regmap_config, i32 0, i32 1), i32 172)
  %8 = ptrtoint ptr %lock_arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %regmap_mutex, ptr %lock_arg, align 4
  %call9.1 = call ptr @__devm_regmap_init(ptr noundef %mdiodev, ptr noundef getelementptr inbounds ([3 x %struct.regmap_bus], ptr @regmap_smi, i32 0, i32 1), ptr noundef nonnull %call3, ptr noundef nonnull %rc, ptr noundef nonnull @ksz8863_smi_probe._key, ptr noundef nonnull @.str.1) #6
  %arrayidx10.1 = getelementptr %struct.ksz_device, ptr %call3, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.1, ptr %arrayidx10.1, align 4
  %cmp.i.1 = icmp ugt ptr %call9.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.if.then14_crit_edge, label %for.inc.1

for.inc.if.then14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

for.inc.1:                                        ; preds = %for.inc
  %10 = call ptr @memcpy(ptr %rc, ptr getelementptr inbounds ([3 x %struct.regmap_config], ptr @ksz8863_regmap_config, i32 0, i32 2), i32 172)
  %11 = ptrtoint ptr %lock_arg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regmap_mutex, ptr %lock_arg, align 4
  %call9.2 = call ptr @__devm_regmap_init(ptr noundef %mdiodev, ptr noundef getelementptr inbounds ([3 x %struct.regmap_bus], ptr @regmap_smi, i32 0, i32 2), ptr noundef nonnull %call3, ptr noundef nonnull %rc, ptr noundef nonnull @ksz8863_smi_probe._key, ptr noundef nonnull @.str.1) #6
  %arrayidx10.2 = getelementptr %struct.ksz_device, ptr %call3, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.2, ptr %arrayidx10.2, align 4
  %cmp.i.2 = icmp ugt ptr %call9.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.if.then14_crit_edge, label %for.inc.2

for.inc.1.if.then14_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

for.inc.2:                                        ; preds = %for.inc.1
  %platform_data = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_data, align 8
  %tobool22.not = icmp eq ptr %14, null
  br i1 %tobool22.not, label %for.inc.2.if.end26_crit_edge, label %if.then23

for.inc.2.if.end26_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %pdata = getelementptr inbounds %struct.ksz_device, ptr %call3, i32 0, i32 1
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %pdata, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %for.inc.2.if.end26_crit_edge
  %call27 = call i32 @ksz8_switch_register(ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.end26.cleanup_crit_edge, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then14 ], [ 0, %if.end30 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %rc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8863_smi_remove(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ksz_switch_remove(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz8863_smi_shutdown(ptr nocapture noundef %mdiodev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdiodev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksz_switch_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz8_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz_regmap_lock(ptr noundef %__mtx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef %__mtx, i32 noundef 0) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz_regmap_unlock(ptr noundef %__mtx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %__mtx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8863_mdio_write(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ksz_device, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %priv1 = getelementptr inbounds %struct.ksz8, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %bus = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #6
  %sub = add i32 %count, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp22.not = icmp eq i32 %sub, 0
  br i1 %cmp22.not, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add i32 %i.023, %5
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %and = lshr i32 %add, 5
  %10 = and i32 %and, 7
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %i.023
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i16
  %call = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %10, i32 noundef %add, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  %inc = add nuw i32 %i.023, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %sub)
  %exitcond.not = icmp eq i32 %inc, %sub
  %or.cond = select i1 %cmp3, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ 0, %entry.out_crit_edge ], [ %call, %for.body.out_crit_edge ]
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 8
  %mdio_lock6 = getelementptr inbounds %struct.mii_bus, ptr %14, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock6) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz8863_mdio_read(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_len, ptr nocapture noundef writeonly %val_buf, i32 noundef %val_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_buf, align 1
  %priv = getelementptr inbounds %struct.ksz_device, ptr %ctx, i32 0, i32 10
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %priv1 = getelementptr inbounds %struct.ksz8, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  %bus = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %mdio_lock = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock, i32 noundef 2) #6
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_len)
  %cmp24.not = icmp eq i32 %val_len, 0
  br i1 %cmp24.not, label %entry.cleanup8_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup8

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add i32 %i.025, %conv
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %and = lshr i32 %add, 5
  %10 = and i32 %and, 7
  %or = or i32 %10, 16
  %call = tail call i32 @__mdiobus_read(ptr noundef %9, i32 noundef %or, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %for.body.cleanup8_crit_edge, label %for.inc

for.body.cleanup8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup8

for.inc:                                          ; preds = %for.body
  %conv5 = trunc i32 %call to i8
  %arrayidx = getelementptr i8, ptr %val_buf, i32 %i.025
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv5, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %val_len
  br i1 %exitcond.not, label %for.inc.cleanup8_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup8_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup8

cleanup8:                                         ; preds = %for.inc.cleanup8_crit_edge, %for.body.cleanup8_crit_edge, %entry.cleanup8_crit_edge
  %ret.0 = phi i32 [ 0, %entry.cleanup8_crit_edge ], [ 0, %for.inc.cleanup8_crit_edge ], [ %call, %for.body.cleanup8_crit_edge ]
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus, align 8
  %mdio_lock7 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock7) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_switch_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_ksz8863_smi__497_225_mdio_module_init6, !1, !"__initcall__kmod_ksz8863_smi__497_225_mdio_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 225, i32 1}
!2 = !{ptr @__exitcall_mdio_module_exit, !1, !"__exitcall_mdio_module_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author498, !4, !"__UNIQUE_ID_author498", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 227, i32 1}
!5 = !{ptr @__UNIQUE_ID_description499, !6, !"__UNIQUE_ID_description499", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 228, i32 1}
!7 = !{ptr @__UNIQUE_ID_file500, !8, !"__UNIQUE_ID_file500", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 229, i32 1}
!9 = !{ptr @__UNIQUE_ID_license501, !8, !"__UNIQUE_ID_license501", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 220, i32 11}
!12 = !{ptr @ksz8863_driver, !13, !"ksz8863_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 215, i32 27}
!14 = !{ptr @ksz8863_dt_ids, !15, !"ksz8863_dt_ids", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 208, i32 34}
!16 = !{ptr @ksz8863_smi_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 162, i32 20}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 167, i32 4}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ksz8863_smi_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @ksz8863_smi_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 110, i32 11}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 120, i32 11}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 130, i32 11}
!33 = !{ptr @ksz8863_regmap_config, !34, !"ksz8863_regmap_config", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 108, i32 35}
!35 = !{ptr @regmap_smi, !36, !"regmap_smi", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/microchip/ksz8863_smi.c", i32 85, i32 32}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
