; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-bcm-unimac.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-bcm-unimac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.unimac_mdio_priv = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.unimac_mdio_pdata = type { i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_mdio_bcm_unimac__282_356_unimac_mdio_driver_init6 = internal global ptr @unimac_mdio_driver_init, section ".initcall6.init", align 4
@unimac_mdio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @unimac_mdio_probe, ptr @unimac_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @unimac_mdio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @unimac_mdio_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_unimac_mdio_driver_exit = internal global ptr @unimac_mdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author283 = internal constant [44 x i8] c"mdio_bcm_unimac.author=Broadcom Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description284 = internal constant [64 x i8] c"mdio_bcm_unimac.description=Broadcom UniMAC MDIO bus controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file285 = internal constant [54 x i8] c"mdio_bcm_unimac.file=drivers/net/mdio/mdio-bcm-unimac\00", section ".modinfo", align 1
@__UNIQUE_ID_license286 = internal constant [28 x i8] c"mdio_bcm_unimac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias287 = internal constant [43 x i8] c"mdio_bcm_unimac.alias=platform:unimac-mdio\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unimac-mdio\00", [20 x i8] zeroinitializer }, align 32
@unimac_mdio_ids = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,genet-mdio-v1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,unimac-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@unimac_mdio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @unimac_mdio_suspend, ptr @unimac_mdio_resume, ptr @unimac_mdio_suspend, ptr @unimac_mdio_resume, ptr @unimac_mdio_suspend, ptr @unimac_mdio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@unimac_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to remap register\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unimac_mdio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/mdio/mdio-bcm-unimac.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@unimac_mdio_probe._entry_ptr = internal global ptr @unimac_mdio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unimac MII bus\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@unimac_mdio_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MDIO bus registration failed\0A\00", [34 x i8] zeroinitializer }, align 32
@unimac_mdio_probe._entry_ptr.11 = internal global ptr @unimac_mdio_probe._entry.9, section ".printk_index", align 4
@unimac_mdio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Broadcom UniMAC MDIO bus\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@unimac_mdio_probe._entry_ptr.15 = internal global ptr @unimac_mdio_probe._entry.12, section ".printk_index", align 4
@unimac_mdio_clk_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014Incorrect MDIO clock frequency, ignoring\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unimac_mdio_clk_set\00", [44 x i8] zeroinitializer }, align 32
@unimac_mdio_clk_set._entry_ptr = internal global ptr @unimac_mdio_clk_set._entry, section ".printk_index", align 4
@unimac_mdio_reset.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mdio_bcm_unimac\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unimac_mdio_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Workaround for PHY @ %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 45, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s has invalid PHY address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_mdio_parse_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/of_mdio.h\00", [40 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr = internal global ptr @of_mdio_parse_addr._entry, section ".printk_index", align 4
@of_mdio_parse_addr._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.24, i32 52, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s PHY address %i is too large\0A\00", [32 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr.27 = internal global ptr @of_mdio_parse_addr._entry.25, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"unimac_mdio_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 347, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 349, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"unimac_mdio_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 336, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"unimac_mdio_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 333, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 239, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 251, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 270, i32 15 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 278, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 282, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 288, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 202, i32 3 }
@___asan_gen_.98 = private constant [38 x i8] c"../drivers/net/mdio/mdio-bcm-unimac.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 178, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 43, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 45, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [27 x i8] c"../include/linux/of_mdio.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 51, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias287, ptr @__UNIQUE_ID_author283, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file285, ptr @__UNIQUE_ID_license286, ptr @__exitcall_unimac_mdio_driver_exit, ptr @__initcall__kmod_mdio_bcm_unimac__282_356_unimac_mdio_driver_init6, ptr @of_mdio_parse_addr._entry, ptr @of_mdio_parse_addr._entry.25, ptr @of_mdio_parse_addr._entry_ptr, ptr @of_mdio_parse_addr._entry_ptr.27, ptr @unimac_mdio_clk_set._entry, ptr @unimac_mdio_clk_set._entry_ptr, ptr @unimac_mdio_driver_exit, ptr @unimac_mdio_probe._entry, ptr @unimac_mdio_probe._entry.12, ptr @unimac_mdio_probe._entry.9, ptr @unimac_mdio_probe._entry_ptr, ptr @unimac_mdio_probe._entry_ptr.11, ptr @unimac_mdio_probe._entry_ptr.15, ptr @unimac_mdio_driver, ptr @.str, ptr @unimac_mdio_ids, ptr @unimac_mdio_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unimac_mdio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unimac_mdio_ids to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unimac_mdio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unimac_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unimac_mdio_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unimac_mdio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unimac_mdio_clk_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @unimac_mdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @unimac_mdio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @unimac_mdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @unimac_mdio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unimac_mdio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call9 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %5, i32 noundef %add.i) #7
  %base = getelementptr inbounds %struct.unimac_mdio_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %base, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call16 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.unimac_mdio_priv, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call16, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %call.i123 = tail call i32 @clk_prepare(ptr noundef %call16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end22
  %call1.i = tail call i32 @clk_enable(ptr noundef %call16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end27, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call16) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end.i
  %clk_freq = getelementptr inbounds %struct.unimac_mdio_priv, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef %clk_freq, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool29.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool29.not, label %if.end32, label %if.end32.thread

if.end32.thread:                                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %clk_freq, align 4
  br label %unimac_mdio_clk_set.exit

if.end32:                                         ; preds = %if.end27
  %12 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %clk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i124 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i124, label %if.end32.unimac_mdio_clk_set.exit_crit_edge, label %if.end.i125

if.end32.unimac_mdio_clk_set.exit_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %unimac_mdio_clk_set.exit

if.end.i125:                                      ; preds = %if.end32
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %if.end.i125.if.end4.i_crit_edge, label %if.else.i

if.end.i125.if.end4.i_crit_edge:                  ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  %call.i126 = tail call i32 @clk_get_rate(ptr noundef nonnull %14) #7
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.end.i125.if.end4.i_crit_edge
  %rate.0.i = phi i32 [ %call.i126, %if.else.i ], [ 250000000, %if.end.i125.if.end4.i_crit_edge ]
  %15 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_freq, align 4
  %mul.i = shl i32 %16, 1
  %div6.i = udiv i32 %rate.0.i, %mul.i
  %sub.i127 = add i32 %div6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i127)
  %tobool7.not.i = icmp ult i32 %sub.i127, 64
  br i1 %tobool7.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %unimac_mdio_clk_set.exit

if.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !74
  %20 = and i32 %19, 268238847
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %shl.i = shl nuw nsw i32 %sub.i127, 4
  %or.i = or i32 %21, %shl.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %22) #7, !srcloc !75
  br label %unimac_mdio_clk_set.exit

unimac_mdio_clk_set.exit:                         ; preds = %if.end10.i, %do.end.i, %if.end32.unimac_mdio_clk_set.exit_crit_edge, %if.end32.thread
  %call.i128 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #7
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i128, ptr %call.i, align 4
  %tobool35.not = icmp eq ptr %call.i128, null
  br i1 %tobool35.not, label %unimac_mdio_clk_set.exit.out_clk_disable_crit_edge, label %if.end37

unimac_mdio_clk_set.exit.out_clk_disable_crit_edge: ; preds = %unimac_mdio_clk_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_clk_disable

if.end37:                                         ; preds = %unimac_mdio_clk_set.exit
  %priv39 = getelementptr inbounds %struct.mii_bus, ptr %call.i128, i32 0, i32 3
  %26 = ptrtoint ptr %priv39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %priv39, align 8
  %tobool40.not = icmp eq ptr %1, null
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %bus_name = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %bus_name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus_name, align 4
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i128, i32 0, i32 1
  %29 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %name, align 4
  %wait_func = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %wait_func to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wait_func, align 4
  %wait_func42 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %wait_func42 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %wait_func42, align 4
  %wait_func_data = getelementptr inbounds %struct.unimac_mdio_pdata, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %wait_func_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wait_func_data, align 4
  %wait_func_data43 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %wait_func_data43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %wait_func_data43, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %neg = xor i32 %37, -1
  %phy_mask44 = getelementptr inbounds %struct.mii_bus, ptr %call.i128, i32 0, i32 13
  %38 = ptrtoint ptr %phy_mask44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %neg, ptr %phy_mask44, align 8
  br label %if.end48

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %name45 = getelementptr inbounds %struct.mii_bus, ptr %call.i128, i32 0, i32 1
  %39 = ptrtoint ptr %name45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.7, ptr %name45, align 4
  %wait_func_data46 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %wait_func_data46 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %wait_func_data46, align 4
  %wait_func47 = getelementptr inbounds %struct.unimac_mdio_priv, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %wait_func47 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @unimac_mdio_poll, ptr %wait_func47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then41
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i128, i32 0, i32 9
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev, ptr %parent, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i128, i32 0, i32 4
  %43 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @unimac_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i128, i32 0, i32 5
  %44 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @unimac_mdio_write, ptr %write, align 8
  %reset = getelementptr inbounds %struct.mii_bus, ptr %call.i128, i32 0, i32 6
  %45 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @unimac_mdio_reset, ptr %reset, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i128, i32 0, i32 2
  %46 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev, align 8
  %id51 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %48 = ptrtoint ptr %id51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id51, align 4
  %call52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.8, ptr noundef %47, i32 noundef %49)
  %call53 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i128, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end60, label %do.end58

do.end58:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  tail call void @mdiobus_free(ptr noundef nonnull %call.i128) #7
  br label %out_clk_disable

if.end60:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

out_clk_disable:                                  ; preds = %do.end58, %unimac_mdio_clk_set.exit.out_clk_disable_crit_edge
  %ret.0 = phi i32 [ %call53, %do.end58 ], [ -12, %unimac_mdio_clk_set.exit.out_clk_disable_crit_edge ]
  %51 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %52) #7
  tail call void @clk_unprepare(ptr noundef %52) #7
  br label %cleanup

cleanup:                                          ; preds = %out_clk_disable, %if.end60, %if.then3.i, %if.end22.cleanup_crit_edge, %if.then19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then19 ], [ %ret.0, %out_clk_disable ], [ 0, %if.end60 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i123, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unimac_mdio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @mdiobus_unregister(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @mdiobus_free(ptr noundef %5) #7
  %clk = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unimac_mdio_poll(ptr nocapture noundef readonly %wait_func_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.unimac_mdio_priv, ptr %wait_func_data, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !74
  %3 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %dec = add nsw i32 %timeout.0, -1
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unimac_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %shl = shl i32 %phy_id, 21
  %shl2 = shl i32 %reg, 16
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, 134217728
  %2 = tail call i32 @llvm.bswap.i32(i32 %or3) #7
  %base.i = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !75
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !74
  %8 = or i32 %7, 32
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !75
  %wait_func = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %wait_func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wait_func, align 4
  %wait_func_data = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %wait_func_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wait_func_data, align 4
  %call = tail call i32 %12(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !74
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %phy_ignore_ta_mask = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 14
  %19 = ptrtoint ptr %phy_ignore_ta_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_ignore_ta_mask, align 4
  %shl5 = shl nuw i32 1, %phy_id
  %and = and i32 %20, %shl5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp ne i32 %and, 0
  %and7 = and i32 %18, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool8.not
  %and11 = and i32 %18, 65535
  %spec.select = select i1 %or.cond, i32 %and11, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unimac_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %shl = shl i32 %phy_id, 21
  %shl2 = shl i32 %reg, 16
  %conv = zext i16 %val to i32
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, %conv
  %or4 = or i32 %or3, 67108864
  %2 = tail call i32 @llvm.bswap.i32(i32 %or4) #7
  %base.i = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !75
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !74
  %8 = or i32 %7, 32
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !75
  %wait_func = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %wait_func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wait_func, align 4
  %wait_func_data = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %wait_func_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wait_func_data, align 4
  %call = tail call i32 %12(ptr noundef %14) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unimac_mdio_reset(ptr noundef %bus) #2 align 64 {
entry:
  %addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  %of_node = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 13
  %2 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mask, align 8
  %neg = xor i32 %3, -1
  br label %if.end6

if.else:                                          ; preds = %entry
  %call = tail call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp.not45 = icmp eq ptr %call, null
  br i1 %cmp.not45, label %if.else.if.end6_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.else.for.body_crit_edge
  %child.047 = phi ptr [ %call5, %for.cond.for.body_crit_edge ], [ %call, %if.else.for.body_crit_edge ]
  %read_mask.046 = phi i32 [ %12, %for.cond.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #7
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %addr.i, align 4, !annotation !76
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.047, ptr noundef nonnull @.str.21, ptr noundef nonnull %addr.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %child.047, i32 0, i32 2
  %5 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %full_name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %6) #10
  br label %11

if.end.i:                                         ; preds = %for.body
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %8)
  %cmp1.i = icmp ugt i32 %8, 31
  br i1 %cmp1.i, label %do.end5.i, label %of_mdio_parse_addr.exit

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %full_name6.i = getelementptr inbounds %struct.device_node, ptr %child.047, i32 0, i32 2
  %9 = ptrtoint ptr %full_name6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %full_name6.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef %10, i32 noundef %8) #10
  br label %11

of_mdio_parse_addr.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  %shl = shl nuw i32 1, %8
  %or = or i32 %shl, %read_mask.046
  br label %for.cond

11:                                               ; preds = %do.end5.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  br label %for.cond

for.cond:                                         ; preds = %11, %of_mdio_parse_addr.exit
  %12 = phi i32 [ %read_mask.046, %11 ], [ %or, %of_mdio_parse_addr.exit ]
  %call5 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.047) #7
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %for.cond.if.end6_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.if.end6_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %for.cond.if.end6_crit_edge, %if.else.if.end6_crit_edge, %if.then
  %read_mask.2 = phi i32 [ %neg, %if.then ], [ 0, %if.else.if.end6_crit_edge ], [ %12, %for.cond.if.end6_crit_edge ]
  br label %for.body9

for.body9:                                        ; preds = %for.inc22.for.body9_crit_edge, %if.end6
  %addr.050 = phi i32 [ 0, %if.end6 ], [ %inc, %for.inc22.for.body9_crit_edge ]
  %shl10 = shl nuw i32 1, %addr.050
  %and = and i32 %shl10, %read_mask.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.body9.for.inc22_crit_edge, label %do.body

for.body9.for.inc22_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

do.body:                                          ; preds = %for.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @unimac_mdio_reset.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unimac_mdio_reset, %if.then17)) #7
          to label %do.end [label %if.then17], !srcloc !77

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @unimac_mdio_reset.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %addr.050) #7
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %call20 = call i32 @mdiobus_read(ptr noundef %bus, i32 noundef %addr.050, i32 noundef 1) #7
  br label %for.inc22

for.inc22:                                        ; preds = %do.end, %for.body9.for.inc22_crit_edge
  %inc = add nuw nsw i32 %addr.050, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end23, label %for.inc22.for.body9_crit_edge

for.inc22.for.body9_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.end23:                                        ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unimac_mdio_suspend(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unimac_mdio_resume(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %clk_freq.i = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i5 = icmp eq i32 %5, 0
  br i1 %tobool.not.i5, label %if.end.cleanup_crit_edge, label %if.end.i6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i6:                                        ; preds = %if.end
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.end.i6.if.end4.i_crit_edge, label %if.else.i

if.end.i6.if.end4.i_crit_edge:                    ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7 = tail call i32 @clk_get_rate(ptr noundef nonnull %7) #7
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.end.i6.if.end4.i_crit_edge
  %rate.0.i = phi i32 [ %call.i7, %if.else.i ], [ 250000000, %if.end.i6.if.end4.i_crit_edge ]
  %8 = ptrtoint ptr %clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_freq.i, align 4
  %mul.i = shl i32 %9, 1
  %div6.i = udiv i32 %rate.0.i, %mul.i
  %sub.i = add i32 %div6.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.i)
  %tobool7.not.i = icmp ult i32 %sub.i, 64
  br i1 %tobool7.not.i, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.unimac_mdio_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !74
  %13 = and i32 %12, 268238847
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %shl.i = shl nuw nsw i32 %sub.i, 4
  %or.i = or i32 %14, %shl.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %15) #7, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i, %do.end.i, %if.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end10.i ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_mdio_bcm_unimac__282_356_unimac_mdio_driver_init6, !1, !"__initcall__kmod_mdio_bcm_unimac__282_356_unimac_mdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 356, i32 1}
!2 = !{ptr @__exitcall_unimac_mdio_driver_exit, !1, !"__exitcall_unimac_mdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author283, !4, !"__UNIQUE_ID_author283", i1 false, i1 false}
!4 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 358, i32 1}
!5 = !{ptr @__UNIQUE_ID_description284, !6, !"__UNIQUE_ID_description284", i1 false, i1 false}
!6 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 359, i32 1}
!7 = !{ptr @__UNIQUE_ID_file285, !8, !"__UNIQUE_ID_file285", i1 false, i1 false}
!8 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 360, i32 1}
!9 = !{ptr @__UNIQUE_ID_license286, !8, !"__UNIQUE_ID_license286", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias287, !11, !"__UNIQUE_ID_alias287", i1 false, i1 false}
!11 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 361, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 349, i32 11}
!14 = !{ptr @unimac_mdio_driver, !15, !"unimac_mdio_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 347, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 239, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @unimac_mdio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @unimac_mdio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 251, i32 31}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 270, i32 15}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 278, i32 37}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 282, i32 3}
!32 = !{ptr @unimac_mdio_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @unimac_mdio_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 288, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @unimac_mdio_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @unimac_mdio_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 202, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @unimac_mdio_clk_set._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @unimac_mdio_clk_set._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 178, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @unimac_mdio_reset.__UNIQUE_ID_ddebug281, !45, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/of_mdio.h", i32 43, i32 33}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/of_mdio.h", i32 45, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @of_mdio_parse_addr._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @of_mdio_parse_addr._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/of_mdio.h", i32 51, i32 3}
!59 = !{ptr @of_mdio_parse_addr._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @of_mdio_parse_addr._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @unimac_mdio_ids, !62, !"unimac_mdio_ids", i1 false, i1 false}
!62 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 336, i32 34}
!63 = !{ptr @unimac_mdio_pm_ops, !64, !"unimac_mdio_pm_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/mdio/mdio-bcm-unimac.c", i32 333, i32 8}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 3077006}
!75 = !{i64 3076588}
!76 = !{!"auto-init"}
!77 = !{i64 2148728998, i64 2148729003, i64 2148729016, i64 2148729060, i64 2148729094, i64 2148729115}
