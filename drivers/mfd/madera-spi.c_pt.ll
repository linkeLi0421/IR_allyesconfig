; ModuleID = '/llk/IR_all_yes/drivers/mfd/madera-spi.c_pt.bc'
source_filename = "../drivers/mfd/madera-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.madera = type { ptr, ptr, ptr, i32, i32, ptr, i32, [2 x %struct.regulator_bulk_data], ptr, i8, i8, %struct.madera_pdata, ptr, ptr, i32, [3 x %struct.clk_bulk_data], i32, [4 x i32], ptr, %struct.mutex, i32, [3 x i8], [3 x i8], %struct.blocking_notifier_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.madera_pdata = type { ptr, %struct.arizona_ldo1_pdata, %struct.arizona_micsupp_pdata, i32, i32, ptr, i32, [2 x i32], %struct.madera_codec_pdata }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.madera_codec_pdata = type { [4 x i32], [6 x i32], [6 x [4 x i32]], [6 x i8], [2 x i32], [2 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_madera_spi__290_149_madera_spi_driver_init6 = internal global ptr @madera_spi_driver_init, section ".initcall6.init", align 4
@madera_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @madera_spi_ids, ptr @madera_spi_probe, ptr @madera_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @madera_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @madera_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_madera_spi_driver_exit = internal global ptr @madera_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [48 x i8] c"madera_spi.description=Madera SPI bus interface\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [64 x i8] c"madera_spi.author=Richard Fitzgerald <rf@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"madera_spi.file=drivers/mfd/madera-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [26 x i8] c"madera_spi.license=GPL v2\00", section ".modinfo", align 1
@madera_spi_ids = internal constant { [10 x %struct.spi_device_id], [88 x i8] } { [10 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"cs47l15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.spi_device_id { [32 x i8] c"cs47l35\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"cs47l85\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"cs47l90\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"cs47l91\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"cs42l92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.spi_device_id { [32 x i8] c"cs47l92\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id { [32 x i8] c"cs47l93\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.spi_device_id { [32 x i8] c"wm1840\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.spi_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"madera\00", [25 x i8] zeroinitializer }, align 32
@madera_of_match = external dso_local constant [0 x %struct.of_device_id], align 4
@madera_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@cs47l15_16bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@cs47l15_32bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@cs47l35_16bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@cs47l35_32bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@cs47l85_16bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@cs47l85_32bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@cs47l90_16bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@cs47l90_32bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@cs47l92_16bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@cs47l92_32bit_spi_regmap = external dso_local constant %struct.regmap_config, align 4
@madera_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 74, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown Madera SPI device type %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"madera_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/madera-spi.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@madera_spi_probe._entry_ptr = internal global ptr @madera_spi_probe._entry, section ".printk_index", align 4
@madera_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Kernel does not include support for %s\0A\00", [56 x i8] zeroinitializer }, align 32
@madera_spi_probe._entry_ptr.8 = internal global ptr @madera_spi_probe._entry.6, section ".printk_index", align 4
@madera_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"madera_spi:91:(regmap_16bit_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@madera_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate 16-bit register map: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@madera_spi_probe._entry_ptr.12 = internal global ptr @madera_spi_probe._entry.10, section ".printk_index", align 4
@madera_spi_probe._key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"madera_spi:99:(regmap_32bit_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@madera_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate 32-bit register map: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@madera_spi_probe._entry_ptr.17 = internal global ptr @madera_spi_probe._entry.15, section ".printk_index", align 4
@switch.table.madera_spi_probe = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @cs47l35_16bit_spi_regmap, ptr @cs47l85_16bit_spi_regmap, ptr @cs47l90_16bit_spi_regmap, ptr @cs47l90_16bit_spi_regmap, ptr @cs47l92_16bit_spi_regmap, ptr @cs47l92_16bit_spi_regmap, ptr @cs47l85_16bit_spi_regmap, ptr @cs47l15_16bit_spi_regmap, ptr @cs47l92_16bit_spi_regmap], [60 x i8] zeroinitializer }, align 32
@switch.table.madera_spi_probe.18 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @cs47l35_32bit_spi_regmap, ptr @cs47l85_32bit_spi_regmap, ptr @cs47l90_32bit_spi_regmap, ptr @cs47l90_32bit_spi_regmap, ptr @cs47l92_32bit_spi_regmap, ptr @cs47l92_32bit_spi_regmap, ptr @cs47l85_32bit_spi_regmap, ptr @cs47l15_32bit_spi_regmap, ptr @cs47l92_32bit_spi_regmap], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"madera_spi_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 138, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"madera_spi_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 124, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 140, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 73, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 82, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 91, i32 19 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 94, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 99, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [28 x i8] c"../drivers/mfd/madera-spi.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 102, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [30 x i8] c"switch.table.madera_spi_probe\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [33 x i8] c"switch.table.madera_spi_probe.18\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_madera_spi_driver_exit, ptr @__initcall__kmod_madera_spi__290_149_madera_spi_driver_init6, ptr @madera_spi_driver_exit, ptr @madera_spi_probe._entry, ptr @madera_spi_probe._entry.10, ptr @madera_spi_probe._entry.15, ptr @madera_spi_probe._entry.6, ptr @madera_spi_probe._entry_ptr, ptr @madera_spi_probe._entry_ptr.12, ptr @madera_spi_probe._entry_ptr.17, ptr @madera_spi_probe._entry_ptr.8, ptr @madera_spi_driver, ptr @madera_spi_ids, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @madera_spi_probe._key, ptr @.str.9, ptr @.str.11, ptr @madera_spi_probe._key.13, ptr @.str.14, ptr @.str.16, ptr @switch.table.madera_spi_probe, ptr @switch.table.madera_spi_probe.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spi_ids to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spi_probe._key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.madera_spi_probe to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.madera_spi_probe.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @madera_spi_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @madera_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @madera_spi_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #4
  %call1 = tail call ptr @of_device_get_match_data(ptr noundef %spi) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call1 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %type.0 = phi i32 [ %0, %if.then ], [ %2, %if.else ]
  %switch.tableidx = add i32 %type.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 9
  br i1 %3, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %type.0) #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [9 x ptr], ptr @switch.table.madera_spi_probe, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep86 = getelementptr inbounds [9 x ptr], ptr @switch.table.madera_spi_probe.18, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep86 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load87 = load ptr, ptr %switch.gep86, align 4
  %call7 = tail call ptr @madera_name_from_type(i32 noundef %type.0) #4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 520, i32 noundef 3520) #4
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %switch.lookup.cleanup_crit_edge, label %if.end19

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %switch.lookup
  %call20 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull %switch.load, ptr noundef nonnull @madera_spi_probe._key, ptr noundef nonnull @.str.9) #4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call20, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.11, i32 noundef %7) #7
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  %call32 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull %switch.load87, ptr noundef nonnull @madera_spi_probe._key.13, ptr noundef nonnull @.str.14) #4
  %regmap_32bit = getelementptr inbounds %struct.madera, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regmap_32bit to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call32, ptr %regmap_32bit, align 4
  %cmp.i85 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then35, label %if.end42

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %call32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %9) #7
  br label %cleanup

if.end42:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %type43 = getelementptr inbounds %struct.madera, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %type43 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type.0, ptr %type43, align 4
  %type_name = getelementptr inbounds %struct.madera, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %type_name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %type_name, align 4
  %dev45 = getelementptr inbounds %struct.madera, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %dev45 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi, ptr %dev45, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %irq46 = getelementptr inbounds %struct.madera, ptr %call.i, i32 0, i32 14
  %15 = ptrtoint ptr %irq46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %irq46, align 4
  %call47 = tail call i32 @madera_dev_init(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then35, %if.then23, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %7, %if.then23 ], [ %9, %if.then35 ], [ %call47, %if.end42 ], [ -12, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_spi_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @madera_dev_exit(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @madera_name_from_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @madera_dev_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @madera_dev_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_madera_spi__290_149_madera_spi_driver_init6, !1, !"__initcall__kmod_madera_spi__290_149_madera_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/madera-spi.c", i32 149, i32 1}
!2 = !{ptr @__exitcall_madera_spi_driver_exit, !1, !"__exitcall_madera_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/mfd/madera-spi.c", i32 151, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/mfd/madera-spi.c", i32 152, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/mfd/madera-spi.c", i32 153, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/madera-spi.c", i32 140, i32 11}
!12 = !{ptr @madera_spi_driver, !13, !"madera_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/mfd/madera-spi.c", i32 138, i32 26}
!14 = !{ptr @madera_spi_ids, !15, !"madera_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/mfd/madera-spi.c", i32 124, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/madera-spi.c", i32 73, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @madera_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @madera_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/madera-spi.c", i32 82, i32 3}
!26 = !{ptr @madera_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @madera_spi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @madera_spi_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/mfd/madera-spi.c", i32 91, i32 19}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/madera-spi.c", i32 94, i32 3}
!33 = !{ptr @madera_spi_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @madera_spi_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @madera_spi_probe._key.13, !36, !"_key", i1 false, i1 false}
!36 = !{!"../drivers/mfd/madera-spi.c", i32 99, i32 25}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/madera-spi.c", i32 102, i32 3}
!40 = !{ptr @madera_spi_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @madera_spi_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
