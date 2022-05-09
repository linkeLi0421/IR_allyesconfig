; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-mscc-miim.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-mscc-miim.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mscc_miim_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_mscc_miim_setup\09\09\09\09"
module asm "\09.long\09__crc_mscc_miim_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mscc_miim_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22mscc_miim_setup\22\09\09\09\09\09"
module asm "__kstrtabns_mscc_miim_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mscc_miim_dev = type { ptr, i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-mii\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_mscc_miim_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_mscc_miim_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_mscc_miim_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mscc_miim_setup to i32), ptr @__kstrtab_mscc_miim_setup, ptr @__kstrtabns_mscc_miim_setup }, section "___ksymtab+mscc_miim_setup", align 4
@__initcall__kmod_mdio_mscc_miim__281_312_mscc_miim_driver_init6 = internal global ptr @mscc_miim_driver_init, section ".initcall6.init", align 4
@mscc_miim_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mscc_miim_probe, ptr @mscc_miim_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mscc_miim_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mscc_miim_driver_exit = internal global ptr @mscc_miim_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description282 = internal constant [49 x i8] c"mdio_mscc_miim.description=Microsemi MIIM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author283 = internal constant [72 x i8] c"mdio_mscc_miim.author=Alexandre Belloni <alexandre.belloni@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file284 = internal constant [52 x i8] c"mdio_mscc_miim.file=drivers/net/mdio/mdio-mscc-miim\00", section ".modinfo", align 1
@__UNIQUE_ID_license285 = internal constant [36 x i8] c"mdio_mscc_miim.license=Dual MIT/GPL\00", section ".modinfo", align 1
@mscc_miim_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/mdio/mdio-mscc-miim.c\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mscc miim write cmd reg error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mscc_miim_read.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mscc miim read data reg error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mscc_miim_status.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mscc miim status read error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mscc_miim_write.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mscc miim write error %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mscc_miim_reset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mscc reset set error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mscc_miim_reset.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mscc reset clear error %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mscc-miim\00", [22 x i8] zeroinitializer }, align 32
@mscc_miim_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mscc,ocelot-miim\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.1, i32 238, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to map MIIM registers\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mscc_miim_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry_ptr = internal global ptr @mscc_miim_probe._entry, section ".printk_index", align 4
@mscc_miim_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mscc_miim_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mdio_mscc_miim:243:(&mscc_miim_regmap_config)->lock\00", [44 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.1, i32 246, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to create MIIM regmap\0A\00", [34 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry_ptr.18 = internal global ptr @mscc_miim_probe._entry.16, section ".printk_index", align 4
@mscc_miim_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.1, i32 255, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to map internal phy registers\0A\00", [58 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry_ptr.21 = internal global ptr @mscc_miim_probe._entry.19, section ".printk_index", align 4
@mscc_miim_probe._key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mscc_miim_phy_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.34, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mdio_mscc_miim:260:(&mscc_miim_phy_regmap_config)->lock\00", [40 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.12, ptr @.str.1, i32 262, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to create phy register regmap\0A\00", [58 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry_ptr.26 = internal global ptr @mscc_miim_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mscc_miim\00", [22 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.1, i32 269, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to setup the MDIO bus\0A\00", [34 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry_ptr.30 = internal global ptr @mscc_miim_probe._entry.28, section ".printk_index", align 4
@mscc_miim_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.1, i32 279, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot register MDIO bus (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mscc_miim_probe._entry_ptr.33 = internal global ptr @mscc_miim_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 211, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"mscc_miim_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 303, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 108, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 119, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 65, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 152, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 167, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 174, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 307, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"mscc_miim_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 297, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 238, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"mscc_miim_regmap_config\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 184, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 242, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 246, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 255, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [28 x i8] c"mscc_miim_phy_regmap_config\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 190, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 259, i32 16 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 262, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 267, i32 42 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 269, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 279, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private constant [37 x i8] c"../drivers/net/mdio/mdio-mscc-miim.c\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 194, i32 11 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file284, ptr @__UNIQUE_ID_license285, ptr @__exitcall_mscc_miim_driver_exit, ptr @__initcall__kmod_mdio_mscc_miim__281_312_mscc_miim_driver_init6, ptr @__ksymtab_mscc_miim_setup, ptr @mscc_miim_driver_exit, ptr @mscc_miim_probe._entry, ptr @mscc_miim_probe._entry.16, ptr @mscc_miim_probe._entry.19, ptr @mscc_miim_probe._entry.24, ptr @mscc_miim_probe._entry.28, ptr @mscc_miim_probe._entry.31, ptr @mscc_miim_probe._entry_ptr, ptr @mscc_miim_probe._entry_ptr.18, ptr @mscc_miim_probe._entry_ptr.21, ptr @mscc_miim_probe._entry_ptr.26, ptr @mscc_miim_probe._entry_ptr.30, ptr @mscc_miim_probe._entry_ptr.33, ptr @.str, ptr @mscc_miim_driver, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @mscc_miim_match, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mscc_miim_probe._key, ptr @mscc_miim_regmap_config, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @mscc_miim_probe._key.22, ptr @mscc_miim_phy_regmap_config, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_probe._key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_phy_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_miim_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mscc_miim_setup(ptr noundef %dev, ptr nocapture noundef writeonly %pbus, ptr noundef %name, ptr noundef %mii_regmap, i32 noundef %status_offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %dev, i32 noundef 16) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %name1 = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %name, ptr %name1, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mscc_miim_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mscc_miim_write, ptr %write, align 8
  %reset = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @mscc_miim_reset, ptr %reset, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str, ptr noundef %retval.0.i)
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 9
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mii_regmap, ptr %10, align 4
  %mii_status_offset = getelementptr inbounds %struct.mscc_miim_dev, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %mii_status_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %status_offset, ptr %mii_status_offset, align 4
  %13 = ptrtoint ptr %pbus to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %pbus, align 4
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_miim_read(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum) #0 align 64 {
entry:
  %val.i32.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !89
  %call = tail call fastcc i32 @mscc_miim_wait_pending(ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %mii_status_offset = getelementptr inbounds %struct.mscc_miim_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mii_status_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mii_status_offset, align 4
  %add = add i32 %6, 8
  %shl = shl i32 %mii_id, 25
  %shl1 = shl i32 %regnum, 20
  %or = or i32 %shl, %shl1
  %or3 = or i32 %or, -2147483644
  %call4 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add, i32 noundef %or3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %land.end, label %if.end41

land.end:                                         ; preds = %if.end
  %.b122 = load i1, ptr @mscc_miim_read.__already_done, align 1
  br i1 %.b122, label %land.end.out_crit_edge, label %if.then11, !prof !90

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then11:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mscc_miim_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %call4) #6
  br label %out

if.end41:                                         ; preds = %if.end
  %call.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 78) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then19.i, %if.end41
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i.i, align 4, !annotation !89
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %8, align 4
  %mii_status_offset.i.i = getelementptr inbounds %struct.mscc_miim_dev, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %mii_status_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mii_status_offset.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %land.end.i.i, label %if.end34.i.i

land.end.i.i:                                     ; preds = %for.cond.i
  %.b42.i.i = load i1, ptr @mscc_miim_status.__already_done, align 1
  br i1 %.b42.i.i, label %land.end.i.i.mscc_miim_status.exit.i_crit_edge, label %if.then5.i.i, !prof !90

land.end.i.i.mscc_miim_status.exit.i_crit_edge:   ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mscc_miim_status.exit.i

if.then5.i.i:                                     ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mscc_miim_status.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call.i.i) #6
  br label %mscc_miim_status.exit.i

if.end34.i.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i.i, align 4
  br label %mscc_miim_status.exit.i

mscc_miim_status.exit.i:                          ; preds = %if.end34.i.i, %if.then5.i.i, %land.end.i.i.mscc_miim_status.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %15, %if.end34.i.i ], [ %call.i.i, %if.then5.i.i ], [ %call.i.i, %land.end.i.i.mscc_miim_status.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %and.i = and i32 %retval.0.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %mscc_miim_status.exit.i.if.end45_crit_edge, label %land.lhs.true.i

mscc_miim_status.exit.i.if.end45_crit_edge:       ; preds = %mscc_miim_status.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.lhs.true.i:                                  ; preds = %mscc_miim_status.exit.i
  %call12.i = call i64 @ktime_get() #6
  %cmp3.i.i = icmp sgt i64 %call12.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then15.i, label %if.then19.i

if.then15.i:                                      ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i32.i) #6
  %18 = ptrtoint ptr %val.i32.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i32.i, align 4, !annotation !89
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %17, align 4
  %mii_status_offset.i34.i = getelementptr inbounds %struct.mscc_miim_dev, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %mii_status_offset.i34.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mii_status_offset.i34.i, align 4
  %call.i35.i = call i32 @regmap_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %val.i32.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %cmp.i36.i = icmp slt i32 %call.i35.i, 0
  br i1 %cmp.i36.i, label %land.end.i38.i, label %if.end34.i40.i

land.end.i38.i:                                   ; preds = %if.then15.i
  %.b42.i37.i = load i1, ptr @mscc_miim_status.__already_done, align 1
  br i1 %.b42.i37.i, label %land.end.i38.i.mscc_miim_status.exit42.i_crit_edge, label %if.then5.i39.i, !prof !90

land.end.i38.i.mscc_miim_status.exit42.i_crit_edge: ; preds = %land.end.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mscc_miim_status.exit42.i

if.then5.i39.i:                                   ; preds = %land.end.i38.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mscc_miim_status.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call.i35.i) #6
  br label %mscc_miim_status.exit42.i

if.end34.i40.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %val.i32.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i32.i, align 4
  br label %mscc_miim_status.exit42.i

mscc_miim_status.exit42.i:                        ; preds = %if.end34.i40.i, %if.then5.i39.i, %land.end.i38.i.mscc_miim_status.exit42.i_crit_edge
  %retval.0.i41.i = phi i32 [ %24, %if.end34.i40.i ], [ %call.i35.i, %if.then5.i39.i ], [ %call.i35.i, %land.end.i38.i.mscc_miim_status.exit42.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i32.i) #6
  %.pre.i = and i32 %retval.0.i41.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %phi.cmp.i = icmp eq i32 %.pre.i, 0
  br i1 %phi.cmp.i, label %mscc_miim_status.exit42.i.if.end45_crit_edge, label %mscc_miim_status.exit42.i.out_crit_edge

mscc_miim_status.exit42.i.out_crit_edge:          ; preds = %mscc_miim_status.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

mscc_miim_status.exit42.i.if.end45_crit_edge:     ; preds = %mscc_miim_status.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #6
  br label %for.cond.i

if.end45:                                         ; preds = %mscc_miim_status.exit42.i.if.end45_crit_edge, %mscc_miim_status.exit.i.if.end45_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %mii_status_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mii_status_offset, align 4
  %add48 = add i32 %28, 12
  %call49 = call i32 @regmap_read(ptr noundef %26, i32 noundef %add48, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %land.end58, label %if.end100

land.end58:                                       ; preds = %if.end45
  %.b120121 = load i1, ptr @mscc_miim_read.__already_done.3, align 1
  br i1 %.b120121, label %land.end58.out_crit_edge, label %if.then65, !prof !90

land.end58.out_crit_edge:                         ; preds = %land.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then65:                                        ; preds = %land.end58
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mscc_miim_read.__already_done.3, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 119, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %call49) #6
  br label %out

if.end100:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %and = and i32 %30, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  %and104 = and i32 %30, 65535
  %spec.select = select i1 %tobool101.not, i32 %and104, i32 -5
  br label %out

out:                                              ; preds = %if.end100, %if.then65, %land.end58.out_crit_edge, %mscc_miim_status.exit42.i.out_crit_edge, %if.then11, %land.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call4, %if.then11 ], [ %call4, %land.end.out_crit_edge ], [ %call49, %if.then65 ], [ %call49, %land.end58.out_crit_edge ], [ %spec.select, %if.end100 ], [ -110, %mscc_miim_status.exit42.i.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_miim_write(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum, i16 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @mscc_miim_wait_pending(ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mii_status_offset = getelementptr inbounds %struct.mscc_miim_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mii_status_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mii_status_offset, align 4
  %add = add i32 %5, 8
  %shl = shl i32 %mii_id, 25
  %shl1 = shl i32 %regnum, 20
  %or = or i32 %shl, %shl1
  %conv = zext i16 %value to i32
  %shl3 = shl nuw nsw i32 %conv, 4
  %or2 = or i32 %shl3, %or
  %or5 = or i32 %or2, -2147483646
  %call6 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add, i32 noundef %or5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %land.end, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

land.end:                                         ; preds = %if.end
  %.b53 = load i1, ptr @mscc_miim_write.__already_done, align 1
  br i1 %.b53, label %land.end.out_crit_edge, label %if.then15, !prof !90

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then15:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mscc_miim_write.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 152, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %call6) #6
  br label %out

out:                                              ; preds = %if.then15, %land.end.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call6, %if.end.out_crit_edge ], [ %call6, %if.then15 ], [ %call6, %land.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_miim_reset(ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phy_reset_offset = getelementptr inbounds %struct.mscc_miim_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy_reset_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_reset_offset, align 4
  %phy_regs = getelementptr inbounds %struct.mscc_miim_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_regs, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 @regmap_write(ptr noundef nonnull %5, i32 noundef %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.end, label %if.end37

land.end:                                         ; preds = %if.then
  %.b111 = load i1, ptr @mscc_miim_reset.__already_done, align 1
  br i1 %.b111, label %land.end.cleanup_crit_edge, label %if.then8, !prof !90

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mscc_miim_reset.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 167, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %call) #6
  br label %cleanup

if.end37:                                         ; preds = %if.then
  %6 = ptrtoint ptr %phy_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_regs, align 4
  %call40 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %3, i32 noundef 511) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %land.end49, label %if.end37.while.body_crit_edge

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  br label %while.body

land.end49:                                       ; preds = %if.end37
  %.b109110 = load i1, ptr @mscc_miim_reset.__already_done.8, align 1
  br i1 %.b109110, label %land.end49.cleanup_crit_edge, label %if.then56, !prof !90

land.end49.cleanup_crit_edge:                     ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then56:                                        ; preds = %land.end49
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mscc_miim_reset.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 174, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %call40) #6
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end37.while.body_crit_edge
  %__ms.0112 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 500, %if.end37.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0112, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #6
  %tobool92.not = icmp eq i32 %dec, 0
  br i1 %tobool92.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %if.then56, %land.end49.cleanup_crit_edge, %if.then8, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then8 ], [ %call, %land.end.cleanup_crit_edge ], [ %call40, %if.then56 ], [ %call40, %land.end49.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_miim_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mscc_miim_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mscc_miim_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mscc_miim_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mscc_miim_wait_pending(ptr nocapture noundef readonly %bus) unnamed_addr #0 align 64 {
entry:
  %val.i32 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 87) #6
  %priv.i = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.then19, %entry
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !89
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %mii_status_offset.i = getelementptr inbounds %struct.mscc_miim_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mii_status_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mii_status_offset.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %land.end.i, label %if.end34.i

land.end.i:                                       ; preds = %for.cond
  %.b42.i = load i1, ptr @mscc_miim_status.__already_done, align 1
  br i1 %.b42.i, label %land.end.i.mscc_miim_status.exit_crit_edge, label %if.then5.i, !prof !90

land.end.i.mscc_miim_status.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mscc_miim_status.exit

if.then5.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mscc_miim_status.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call.i) #6
  br label %mscc_miim_status.exit

if.end34.i:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  br label %mscc_miim_status.exit

mscc_miim_status.exit:                            ; preds = %if.end34.i, %if.then5.i, %land.end.i.mscc_miim_status.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end34.i ], [ %call.i, %if.then5.i ], [ %call.i, %land.end.i.mscc_miim_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %and = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %mscc_miim_status.exit.for.end_crit_edge, label %land.lhs.true

mscc_miim_status.exit.for.end_crit_edge:          ; preds = %mscc_miim_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %mscc_miim_status.exit
  %call12 = call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %if.then19

if.then15:                                        ; preds = %land.lhs.true
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i32) #6
  %11 = ptrtoint ptr %val.i32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i32, align 4, !annotation !89
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %mii_status_offset.i34 = getelementptr inbounds %struct.mscc_miim_dev, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %mii_status_offset.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mii_status_offset.i34, align 4
  %call.i35 = call i32 @regmap_read(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %val.i32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i36 = icmp slt i32 %call.i35, 0
  br i1 %cmp.i36, label %land.end.i38, label %if.end34.i40

land.end.i38:                                     ; preds = %if.then15
  %.b42.i37 = load i1, ptr @mscc_miim_status.__already_done, align 1
  br i1 %.b42.i37, label %land.end.i38.mscc_miim_status.exit42_crit_edge, label %if.then5.i39, !prof !90

land.end.i38.mscc_miim_status.exit42_crit_edge:   ; preds = %land.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %mscc_miim_status.exit42

if.then5.i39:                                     ; preds = %land.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mscc_miim_status.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.5, i32 noundef %call.i35) #6
  br label %mscc_miim_status.exit42

if.end34.i40:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %val.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i32, align 4
  br label %mscc_miim_status.exit42

mscc_miim_status.exit42:                          ; preds = %if.end34.i40, %if.then5.i39, %land.end.i38.mscc_miim_status.exit42_crit_edge
  %retval.0.i41 = phi i32 [ %17, %if.end34.i40 ], [ %call.i35, %if.then5.i39 ], [ %call.i35, %land.end.i38.mscc_miim_status.exit42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i32) #6
  %.pre = and i32 %retval.0.i41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -110
  br label %for.end

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #6
  br label %for.cond

for.end:                                          ; preds = %mscc_miim_status.exit42, %mscc_miim_status.exit.for.end_crit_edge
  %and22.pre-phi = phi i32 [ %phi.sel, %mscc_miim_status.exit42 ], [ 0, %mscc_miim_status.exit.for.end_crit_edge ]
  ret i32 %and22.pre-phi
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_miim_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call, ptr noundef nonnull @mscc_miim_regmap_config, ptr noundef nonnull @mscc_miim_probe._key, ptr noundef nonnull @.str.15) #6
  %cmp.i89 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %1 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.end12.if.end36_crit_edge, label %if.then14

if.end12.if.end36_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then14:                                        ; preds = %if.end12
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call13) #6
  %cmp.i90 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  %2 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.then14
  %call27 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call16, ptr noundef nonnull @mscc_miim_phy_regmap_config, ptr noundef nonnull @mscc_miim_probe._key.22, ptr noundef nonnull @.str.23) #6
  %cmp.i91 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %do.end32, label %if.end24.if.end36_crit_edge

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  %3 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end24.if.end36_crit_edge, %if.end12.if.end36_crit_edge
  %phy_regmap.0 = phi ptr [ %call27, %if.end24.if.end36_crit_edge ], [ null, %if.end12.if.end36_crit_edge ]
  %call.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %dev, i32 noundef 16) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end42, label %if.end.i

if.end.i:                                         ; preds = %if.end36
  %name1.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.27, ptr %name1.i, align 4
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mscc_miim_read, ptr %read.i, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mscc_miim_write, ptr %write.i, align 8
  %reset.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mscc_miim_reset, ptr %reset.i, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end44_crit_edge

if.end.i.if.end44_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %if.end44

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end44:                                         ; preds = %if.end.i.i, %if.end.i.if.end44_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i ], [ %9, %if.end.i.if.end44_crit_edge ]
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i) #6
  %parent.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent.i, align 4
  %priv.i = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %14, align 4
  %mii_status_offset.i = getelementptr inbounds %struct.mscc_miim_dev, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %mii_status_offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %mii_status_offset.i, align 4
  %17 = load ptr, ptr %priv.i, align 8
  %phy_regs45 = getelementptr inbounds %struct.mscc_miim_dev, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %phy_regs45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %phy_regmap.0, ptr %phy_regs45, align 4
  %phy_reset_offset = getelementptr inbounds %struct.mscc_miim_dev, ptr %17, i32 0, i32 3
  %19 = ptrtoint ptr %phy_reset_offset to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %phy_reset_offset, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call47 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i, ptr noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %call47) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %do.end52, %do.end42, %do.end32, %do.end21, %do.end9, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %1, %do.end9 ], [ %2, %do.end21 ], [ %3, %do.end32 ], [ -12, %do.end42 ], [ %call47, %do.end52 ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_miim_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !39, !40, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 211, i32 37}
!2 = !{ptr @__ksymtab_mscc_miim_setup, !3, !"__ksymtab_mscc_miim_setup", i1 false, i1 false}
!3 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 225, i32 1}
!4 = !{ptr @__initcall__kmod_mdio_mscc_miim__281_312_mscc_miim_driver_init6, !5, !"__initcall__kmod_mdio_mscc_miim__281_312_mscc_miim_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 312, i32 1}
!6 = !{ptr @__exitcall_mscc_miim_driver_exit, !5, !"__exitcall_mscc_miim_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description282, !8, !"__UNIQUE_ID_description282", i1 false, i1 false}
!8 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 314, i32 1}
!9 = !{ptr @__UNIQUE_ID_author283, !10, !"__UNIQUE_ID_author283", i1 false, i1 false}
!10 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 315, i32 1}
!11 = !{ptr @__UNIQUE_ID_file284, !12, !"__UNIQUE_ID_file284", i1 false, i1 false}
!12 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 316, i32 1}
!13 = !{ptr @__UNIQUE_ID_license285, !12, !"__UNIQUE_ID_license285", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 108, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 119, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 65, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 152, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 167, i32 4}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 174, i32 4}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 307, i32 11}
!35 = !{ptr @mscc_miim_driver, !36, !"mscc_miim_driver", i1 false, i1 false}
!36 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 303, i32 31}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 238, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mscc_miim_probe._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @mscc_miim_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mscc_miim_probe._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 242, i32 15}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 246, i32 3}
!49 = !{ptr @mscc_miim_probe._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mscc_miim_probe._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 255, i32 4}
!53 = !{ptr @mscc_miim_probe._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mscc_miim_probe._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @mscc_miim_probe._key.22, !56, !"_key", i1 false, i1 false}
!56 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 259, i32 16}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 262, i32 4}
!60 = !{ptr @mscc_miim_probe._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mscc_miim_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 267, i32 42}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 269, i32 3}
!66 = !{ptr @mscc_miim_probe._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mscc_miim_probe._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 279, i32 3}
!70 = !{ptr @mscc_miim_probe._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mscc_miim_probe._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mscc_miim_regmap_config, !73, !"mscc_miim_regmap_config", i1 false, i1 false}
!73 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 184, i32 35}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 194, i32 11}
!76 = !{ptr @mscc_miim_phy_regmap_config, !77, !"mscc_miim_phy_regmap_config", i1 false, i1 false}
!77 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 190, i32 35}
!78 = !{ptr @mscc_miim_match, !79, !"mscc_miim_match", i1 false, i1 false}
!79 = !{!"../drivers/net/mdio/mdio-mscc-miim.c", i32 297, i32 34}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{!"auto-init"}
!90 = !{!"branch_weights", i32 2000, i32 1}
