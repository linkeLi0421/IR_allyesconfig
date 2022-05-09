; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/microchip/ksz9477_spi.c_pt.bc'
source_filename = "../drivers/net/dsa/microchip/ksz9477_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_ksz9477_spi__499_124_ksz9477_spi_driver_init6 = internal global ptr @ksz9477_spi_driver_init, section ".initcall6.init", align 4
@ksz9477_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ksz9477_spi_ids, ptr @ksz9477_spi_probe, ptr @ksz9477_spi_remove, ptr @ksz9477_spi_shutdown, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ksz9477_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ksz9477_spi_driver_exit = internal global ptr @ksz9477_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias500 = internal constant [30 x i8] c"ksz9477_spi.alias=spi:ksz9477\00", section ".modinfo", align 1
@__UNIQUE_ID_alias501 = internal constant [30 x i8] c"ksz9477_spi.alias=spi:ksz9897\00", section ".modinfo", align 1
@__UNIQUE_ID_alias502 = internal constant [30 x i8] c"ksz9477_spi.alias=spi:ksz9893\00", section ".modinfo", align 1
@__UNIQUE_ID_alias503 = internal constant [30 x i8] c"ksz9477_spi.alias=spi:ksz9563\00", section ".modinfo", align 1
@__UNIQUE_ID_alias504 = internal constant [30 x i8] c"ksz9477_spi.alias=spi:ksz8563\00", section ".modinfo", align 1
@__UNIQUE_ID_alias505 = internal constant [30 x i8] c"ksz9477_spi.alias=spi:ksz9567\00", section ".modinfo", align 1
@__UNIQUE_ID_author506 = internal constant [59 x i8] c"ksz9477_spi.author=Woojung Huh <Woojung.Huh@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description507 = internal constant [74 x i8] c"ksz9477_spi.description=Microchip KSZ9477 Series Switch SPI access Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file508 = internal constant [55 x i8] c"ksz9477_spi.file=drivers/net/dsa/microchip/ksz9477_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license509 = internal constant [24 x i8] c"ksz9477_spi.license=GPL\00", section ".modinfo", align 1
@ksz9477_spi_ids = internal constant { [7 x %struct.spi_device_id], [36 x i8] } { [7 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ksz9477\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ksz9897\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ksz9893\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ksz9563\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ksz8563\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ksz9567\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ksz9477-switch\00", [17 x i8] zeroinitializer }, align 32
@ksz9477_dt_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,ksz9477\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,ksz9897\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,ksz9893\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,ksz9563\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,ksz8563\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,ksz9567\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@ksz9477_regmap_config = internal constant { [3 x %struct.regmap_config], [156 x i8] } { [3 x %struct.regmap_config] [%struct.regmap_config { ptr @.str.7, i32 27, i32 1, i32 5, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @ksz_regmap_lock, ptr @ksz_regmap_unlock, ptr null, ptr null, ptr null, ptr null, i8 0, i32 16777215, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 96, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.8, i32 27, i32 1, i32 5, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @ksz_regmap_lock, ptr @ksz_regmap_unlock, ptr null, ptr null, ptr null, ptr null, i8 0, i32 16777215, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 96, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr @.str.9, i32 27, i32 1, i32 5, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @ksz_regmap_lock, ptr @ksz_regmap_unlock, ptr null, ptr null, ptr null, ptr null, i8 0, i32 16777215, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 96, i32 64, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [156 x i8] zeroinitializer }, align 32
@ksz9477_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ksz9477_spi:38:(&rc)->lock\00", [37 x i8] zeroinitializer }, align 32
@ksz9477_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 43, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize regmap%i: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ksz9477_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/dsa/microchip/ksz9477_spi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ksz9477_spi_probe._entry_ptr = internal global ptr @ksz9477_spi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"ksz9477_spi_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 112, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"ksz9477_spi_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 101, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 114, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"ksz9477_dt_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 90, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"ksz9477_regmap_config\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 38, i32 20 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 41, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [43 x i8] c"../drivers/net/dsa/microchip/ksz9477_spi.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 22, i32 1 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias500, ptr @__UNIQUE_ID_alias501, ptr @__UNIQUE_ID_alias502, ptr @__UNIQUE_ID_alias503, ptr @__UNIQUE_ID_alias504, ptr @__UNIQUE_ID_alias505, ptr @__UNIQUE_ID_author506, ptr @__UNIQUE_ID_description507, ptr @__UNIQUE_ID_file508, ptr @__UNIQUE_ID_license509, ptr @__exitcall_ksz9477_spi_driver_exit, ptr @__initcall__kmod_ksz9477_spi__499_124_ksz9477_spi_driver_init6, ptr @ksz9477_spi_driver_exit, ptr @ksz9477_spi_probe._entry, ptr @ksz9477_spi_probe._entry_ptr, ptr @ksz9477_spi_driver, ptr @ksz9477_spi_ids, ptr @.str, ptr @ksz9477_dt_ids, ptr @ksz9477_regmap_config, ptr @ksz9477_spi_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_spi_ids to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_dt_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_regmap_config to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ksz9477_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ksz9477_spi_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ksz9477_spi_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %rc = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %rc) #6
  %call = tail call ptr @ksz_switch_alloc(ptr noundef %spi, ptr noundef %spi) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %regmap_mutex = getelementptr inbounds %struct.ksz_device, ptr %call, i32 0, i32 4
  %lock_arg = getelementptr inbounds %struct.regmap_config, ptr %rc, i32 0, i32 14
  %0 = call ptr @memcpy(ptr %rc, ptr @ksz9477_regmap_config, i32 172)
  %1 = ptrtoint ptr %lock_arg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %regmap_mutex, ptr %lock_arg, align 4
  %call2 = call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull %rc, ptr noundef nonnull @ksz9477_spi_probe._key, ptr noundef nonnull @.str.1) #6
  %arrayidx3 = getelementptr %struct.ksz_device, ptr %call, i32 0, i32 9, i32 0
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %arrayidx3, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.cond.preheader.if.then7_crit_edge, label %for.inc

for.cond.preheader.if.then7_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %for.inc.1.if.then7_crit_edge, %for.inc.if.then7_crit_edge, %for.cond.preheader.if.then7_crit_edge
  %i.058.lcssa = phi i32 [ 0, %for.cond.preheader.if.then7_crit_edge ], [ 1, %for.inc.if.then7_crit_edge ], [ 2, %for.inc.1.if.then7_crit_edge ]
  %call2.lcssa = phi ptr [ %call2, %for.cond.preheader.if.then7_crit_edge ], [ %call2.1, %for.inc.if.then7_crit_edge ], [ %call2.2, %for.inc.1.if.then7_crit_edge ]
  %3 = ptrtoint ptr %call2.lcssa to i32
  %val_bits = getelementptr [3 x %struct.regmap_config], ptr @ksz9477_regmap_config, i32 0, i32 %i.058.lcssa, i32 4
  %4 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val_bits, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef %3) #9
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %6 = call ptr @memcpy(ptr %rc, ptr getelementptr inbounds ([3 x %struct.regmap_config], ptr @ksz9477_regmap_config, i32 0, i32 1), i32 172)
  %7 = ptrtoint ptr %lock_arg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %regmap_mutex, ptr %lock_arg, align 4
  %call2.1 = call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull %rc, ptr noundef nonnull @ksz9477_spi_probe._key, ptr noundef nonnull @.str.1) #6
  %arrayidx3.1 = getelementptr %struct.ksz_device, ptr %call, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2.1, ptr %arrayidx3.1, align 4
  %cmp.i.1 = icmp ugt ptr %call2.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %for.inc.if.then7_crit_edge, label %for.inc.1

for.inc.if.then7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

for.inc.1:                                        ; preds = %for.inc
  %9 = call ptr @memcpy(ptr %rc, ptr getelementptr inbounds ([3 x %struct.regmap_config], ptr @ksz9477_regmap_config, i32 0, i32 2), i32 172)
  %10 = ptrtoint ptr %lock_arg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap_mutex, ptr %lock_arg, align 4
  %call2.2 = call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull %rc, ptr noundef nonnull @ksz9477_spi_probe._key, ptr noundef nonnull @.str.1) #6
  %arrayidx3.2 = getelementptr %struct.ksz_device, ptr %call, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call2.2, ptr %arrayidx3.2, align 4
  %cmp.i.2 = icmp ugt ptr %call2.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %for.inc.1.if.then7_crit_edge, label %for.inc.2

for.inc.1.if.then7_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

for.inc.2:                                        ; preds = %for.inc.1
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %12 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data, align 8
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %for.inc.2.if.end19_crit_edge, label %if.then16

for.inc.2.if.end19_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then16:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %pdata = getelementptr inbounds %struct.ksz_device, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %pdata, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.inc.2.if.end19_crit_edge
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %mode, align 8
  %call20 = call i32 @spi_setup(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call24 = call i32 @ksz9477_switch_register(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %rc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ksz9477_spi_remove(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
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
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ksz9477_spi_shutdown(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
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
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ksz_switch_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksz9477_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksz_switch_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_ksz9477_spi__499_124_ksz9477_spi_driver_init6, !1, !"__initcall__kmod_ksz9477_spi__499_124_ksz9477_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 124, i32 1}
!2 = !{ptr @__exitcall_ksz9477_spi_driver_exit, !1, !"__exitcall_ksz9477_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias500, !4, !"__UNIQUE_ID_alias500", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 126, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias501, !6, !"__UNIQUE_ID_alias501", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 127, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias502, !8, !"__UNIQUE_ID_alias502", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 128, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias503, !10, !"__UNIQUE_ID_alias503", i1 false, i1 false}
!10 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 129, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias504, !12, !"__UNIQUE_ID_alias504", i1 false, i1 false}
!12 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 130, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias505, !14, !"__UNIQUE_ID_alias505", i1 false, i1 false}
!14 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 131, i32 1}
!15 = !{ptr @__UNIQUE_ID_author506, !16, !"__UNIQUE_ID_author506", i1 false, i1 false}
!16 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 132, i32 1}
!17 = !{ptr @__UNIQUE_ID_description507, !18, !"__UNIQUE_ID_description507", i1 false, i1 false}
!18 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 133, i32 1}
!19 = !{ptr @__UNIQUE_ID_file508, !20, !"__UNIQUE_ID_file508", i1 false, i1 false}
!20 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 134, i32 1}
!21 = !{ptr @__UNIQUE_ID_license509, !20, !"__UNIQUE_ID_license509", i1 false, i1 false}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 114, i32 11}
!24 = !{ptr @ksz9477_spi_driver, !25, !"ksz9477_spi_driver", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 112, i32 26}
!26 = !{ptr @ksz9477_spi_ids, !27, !"ksz9477_spi_ids", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 101, i32 35}
!28 = !{ptr @ksz9477_spi_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 38, i32 20}
!30 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 41, i32 4}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ksz9477_spi_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @ksz9477_spi_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 22, i32 1}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ksz9477_regmap_config, !40, !"ksz9477_regmap_config", i1 false, i1 false}
!44 = !{ptr @ksz9477_dt_ids, !45, !"ksz9477_dt_ids", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/microchip/ksz9477_spi.c", i32 90, i32 34}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
