; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/xgmac_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/xgmac_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mdio_fsl_priv = type { ptr, i8, i8, i8 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.tgec_mdio_controller = type { [12 x i32], i32, i32, i32, i32 }

@__initcall__kmod_xgmac_mdio__287_370_xgmac_mdio_driver_init6 = internal global ptr @xgmac_mdio_driver_init, section ".initcall6.init", align 4
@xgmac_mdio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgmac_mdio_probe, ptr @xgmac_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgmac_mdio_match, ptr @xgmac_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgmac_mdio_driver_exit = internal global ptr @xgmac_mdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description288 = internal constant [59 x i8] c"xgmac_mdio.description=Freescale QorIQ 10G MDIO Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file289 = internal constant [58 x i8] c"xgmac_mdio.file=drivers/net/ethernet/freescale/xgmac_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [26 x i8] c"xgmac_mdio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl-fman_xmdio\00", [17 x i8] zeroinitializer }, align 32
@xgmac_mdio_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fman-xmdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,fman-memac-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@xgmac_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"NXP0006\00\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@xgmac_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not obtain address\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgmac_mdio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/freescale/xgmac_mdio.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgmac_mdio_probe._entry_ptr = internal global ptr @xgmac_mdio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Freescale XGMAC MDIO Bus\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pa\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,erratum-a009885\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,erratum-a011043\00", [44 x i8] zeroinitializer }, align 32
@xgmac_mdio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot register MDIO bus\0A\00", [38 x i8] zeroinitializer }, align 32
@xgmac_mdio_probe._entry_ptr.13 = internal global ptr @xgmac_mdio_probe._entry.11, section ".printk_index", align 4
@xgmac_mdio_read.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgmac_mdio\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgmac_mdio_read\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error while reading PHY%d reg at %d.%hhu\0A\00", [54 x i8] zeroinitializer }, align 32
@xgmac_mdio_read.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read %04x\0A\00", [21 x i8] zeroinitializer }, align 32
@xgmac_wait_until_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"timeout waiting for bus to be free\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgmac_wait_until_free\00", [42 x i8] zeroinitializer }, align 32
@xgmac_wait_until_free._entry_ptr = internal global ptr @xgmac_wait_until_free._entry, section ".printk_index", align 4
@xgmac_wait_until_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"timeout waiting for operation to complete\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgmac_wait_until_done\00", [42 x i8] zeroinitializer }, align 32
@xgmac_wait_until_done._entry_ptr = internal global ptr @xgmac_wait_until_done._entry, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"xgmac_mdio_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 360, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 362, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"xgmac_mdio_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 343, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"xgmac_acpi_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 354, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 272, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 280, i32 14 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 285, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 299, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 302, i32 13 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 304, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 314, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 241, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 247, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 95, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [47 x i8] c"../drivers/net/ethernet/freescale/xgmac_mdio.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 120, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_xgmac_mdio_driver_exit, ptr @__initcall__kmod_xgmac_mdio__287_370_xgmac_mdio_driver_init6, ptr @xgmac_mdio_driver_exit, ptr @xgmac_mdio_probe._entry, ptr @xgmac_mdio_probe._entry.11, ptr @xgmac_mdio_probe._entry_ptr, ptr @xgmac_mdio_probe._entry_ptr.13, ptr @xgmac_wait_until_done._entry, ptr @xgmac_wait_until_done._entry_ptr, ptr @xgmac_wait_until_free._entry, ptr @xgmac_wait_until_free._entry_ptr, ptr @xgmac_mdio_driver, ptr @.str, ptr @xgmac_mdio_match, ptr @xgmac_acpi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_mdio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_mdio_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_mdio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_wait_until_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_wait_until_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_mdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgmac_mdio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgmac_mdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgmac_mdio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_mdio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @mdiobus_alloc_size(i32 noundef 8) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.mii_bus, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.6, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call1, i32 0, i32 4
  %1 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xgmac_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call1, i32 0, i32 5
  %2 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xgmac_mdio_write, ptr %write, align 8
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call1, i32 0, i32 9
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev5, ptr %parent, align 4
  %probe_capabilities = getelementptr inbounds %struct.mii_bus, ptr %call1, i32 0, i32 19
  %4 = ptrtoint ptr %probe_capabilities to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %probe_capabilities, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %call1, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.7, ptr noundef nonnull %call)
  %priv7 = getelementptr inbounds %struct.mii_bus, ptr %call1, i32 0, i32 3
  %5 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv7, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call10 = tail call ptr @ioremap(i32 noundef %8, i32 noundef %add.i) #6
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call10, ptr %6, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end4.err_ioremap_crit_edge, label %if.end14

if.end4.err_ioremap_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ioremap

if.end14:                                         ; preds = %if.end4
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev5, ptr noundef nonnull @.str.8) #6
  %is_little_endian = getelementptr inbounds %struct.mdio_fsl_priv, ptr %6, i32 0, i32 1
  %frombool = zext i1 %call.i to i8
  %12 = ptrtoint ptr %is_little_endian to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %is_little_endian, align 4
  %call.i80 = tail call zeroext i1 @device_property_present(ptr noundef %dev5, ptr noundef nonnull @.str.9) #6
  %has_a009885 = getelementptr inbounds %struct.mdio_fsl_priv, ptr %6, i32 0, i32 2
  %frombool19 = zext i1 %call.i80 to i8
  %13 = ptrtoint ptr %has_a009885 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool19, ptr %has_a009885, align 1
  %call.i81 = tail call zeroext i1 @device_property_present(ptr noundef %dev5, ptr noundef nonnull @.str.10) #6
  %has_a011043 = getelementptr inbounds %struct.mdio_fsl_priv, ptr %6, i32 0, i32 3
  %frombool22 = zext i1 %call.i81 to i8
  %14 = ptrtoint ptr %has_a011043 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool22, ptr %has_a011043, align 2
  %fwnode24 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %15 = ptrtoint ptr %fwnode24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fwnode24, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  %cmp.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end14.do.end40_crit_edge, label %is_of_node.exit

if.end14.do.end40_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

is_of_node.exit:                                  ; preds = %if.end14
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %18, @of_fwnode_ops
  br i1 %cmp.i, label %if.end35, label %is_of_node.exit.do.end40_crit_edge

is_of_node.exit.do.end40_crit_edge:               ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

if.end35:                                         ; preds = %is_of_node.exit
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %cmp.i86 = icmp eq ptr %20, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %16, i32 -12
  %spec.select = select i1 %cmp.i86, ptr %add.ptr, ptr null
  %call29 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call1, ptr noundef %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool36.not = icmp eq i32 %call29, 0
  br i1 %tobool36.not, label %if.end42, label %if.end35.do.end40_crit_edge

if.end35.do.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

do.end40:                                         ; preds = %if.end35.do.end40_crit_edge, %is_of_node.exit.do.end40_crit_edge, %if.end14.do.end40_crit_edge
  %ret.091 = phi i32 [ %call29, %if.end35.do.end40_crit_edge ], [ -22, %is_of_node.exit.do.end40_crit_edge ], [ -22, %if.end14.do.end40_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.12) #9
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 4
  tail call void @iounmap(ptr noundef %22) #6
  br label %err_ioremap

if.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1, ptr %driver_data.i.i, align 4
  br label %cleanup

err_ioremap:                                      ; preds = %do.end40, %if.end4.err_ioremap_crit_edge
  %ret.1 = phi i32 [ %ret.091, %do.end40 ], [ -12, %if.end4.err_ioremap_crit_edge ]
  tail call void @mdiobus_free(ptr noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %err_ioremap, %if.end42, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %err_ioremap ], [ 0, %if.end42 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_mdio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  tail call void @mdiobus_unregister(ptr noundef %1) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %5) #6
  tail call void @mdiobus_free(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_mdio_read(ptr noundef %bus, i32 noundef %phy_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %is_little_endian = getelementptr inbounds %struct.mdio_fsl_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %is_little_endian to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_little_endian, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %mdio_stat2 = getelementptr inbounds %struct.tgec_mdio_controller, ptr %3, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_stat2) #6
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit

xgmac_read32.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i198 = phi i32 [ %7, %if.then.i ], [ %6, %if.else.i ]
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %8 = lshr i32 %regnum, 16
  %and8 = and i32 %retval.0.i198, -65
  %9 = lshr exact i32 %and, 24
  %mdio_stat.0 = or i32 %and8, %9
  %dev_addr.0.in = select i1 %tobool4.not, i32 %regnum, i32 %8
  %dev_addr.0 = and i32 %dev_addr.0.in, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body.i, label %if.then.i199

if.then.i199:                                     ; preds = %xgmac_read32.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %mdio_stat.0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_stat2, i32 %10) #6, !srcloc !68
  br label %while.cond.i.preheader

do.body.i:                                        ; preds = %xgmac_read32.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_stat2, i32 %mdio_stat.0) #6, !srcloc !68
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %do.body.i, %if.then.i199
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %while.cond.i.preheader
  %timeout.0.i = phi i32 [ %dec.i, %do.end.i ], [ 1000, %while.cond.i.preheader ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_stat2) #6
  br i1 %tobool.not, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit.i

if.else.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit.i

xgmac_read32.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %12, %if.then.i.i ], [ %11, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool2.not.i = icmp eq i32 %timeout.0.i, 0
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %while.end.i, label %do.end.i

do.end.i:                                         ; preds = %xgmac_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !70
  %dec.i = add nsw i32 %timeout.0.i, -1
  br label %while.cond.i

while.end.i:                                      ; preds = %xgmac_read32.exit.i
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  br i1 %tobool2.not.i, label %xgmac_wait_until_free.exit, label %if.end15

xgmac_wait_until_free.exit:                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end15:                                         ; preds = %while.end.i
  %and16 = shl i32 %phy_id, 5
  %shl = and i32 %and16, 992
  %or19 = or i32 %dev_addr.0, %shl
  %mdio_ctl20 = getelementptr inbounds %struct.tgec_mdio_controller, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body.i202, label %if.then.i201

if.then.i201:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %or19) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_ctl20, i32 %13) #6, !srcloc !68
  br label %xgmac_write32.exit203

do.body.i202:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_ctl20, i32 %or19) #6, !srcloc !68
  br label %xgmac_write32.exit203

xgmac_write32.exit203:                            ; preds = %do.body.i202, %if.then.i201
  br i1 %tobool4.not, label %xgmac_write32.exit203.if.end33_crit_edge, label %if.then24

xgmac_write32.exit203.if.end33_crit_edge:         ; preds = %xgmac_write32.exit203
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then24:                                        ; preds = %xgmac_write32.exit203
  %and25 = and i32 %regnum, 65535
  %mdio_addr = getelementptr inbounds %struct.tgec_mdio_controller, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body.i205, label %if.then.i204

if.then.i204:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and25) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_addr, i32 %14) #6, !srcloc !68
  br label %while.cond.i209.preheader

do.body.i205:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_addr, i32 %and25) #6, !srcloc !68
  br label %while.cond.i209.preheader

while.cond.i209.preheader:                        ; preds = %do.body.i205, %if.then.i204
  br label %while.cond.i209

while.cond.i209:                                  ; preds = %do.end.i219, %while.cond.i209.preheader
  %timeout.0.i208 = phi i32 [ %dec.i218, %do.end.i219 ], [ 1000, %while.cond.i209.preheader ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_stat2) #6
  br i1 %tobool.not, label %if.else.i.i211, label %if.then.i.i210

if.then.i.i210:                                   ; preds = %while.cond.i209
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit.i217

if.else.i.i211:                                   ; preds = %while.cond.i209
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit.i217

xgmac_read32.exit.i217:                           ; preds = %if.else.i.i211, %if.then.i.i210
  %retval.0.i.i212 = phi i32 [ %16, %if.then.i.i210 ], [ %15, %if.else.i.i211 ]
  %and.i213 = and i32 %retval.0.i.i212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i213)
  %tobool1.not.i214 = icmp eq i32 %and.i213, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i208)
  %tobool2.not.i215 = icmp eq i32 %timeout.0.i208, 0
  %or.cond.i216 = select i1 %tobool1.not.i214, i1 true, i1 %tobool2.not.i215
  br i1 %or.cond.i216, label %while.end.i220, label %do.end.i219

do.end.i219:                                      ; preds = %xgmac_read32.exit.i217
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !70
  %dec.i218 = add nsw i32 %timeout.0.i208, -1
  br label %while.cond.i209

while.end.i220:                                   ; preds = %xgmac_read32.exit.i217
  br i1 %tobool2.not.i215, label %xgmac_wait_until_free.exit223, label %while.end.i220.if.end33_crit_edge

while.end.i220.if.end33_crit_edge:                ; preds = %while.end.i220
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

xgmac_wait_until_free.exit223:                    ; preds = %while.end.i220
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end33:                                         ; preds = %while.end.i220.if.end33_crit_edge, %xgmac_write32.exit203.if.end33_crit_edge
  %has_a009885 = getelementptr inbounds %struct.mdio_fsl_priv, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %has_a009885 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_a009885, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool34.not = icmp eq i8 %18, 0
  br i1 %tobool34.not, label %if.end33.if.end51_crit_edge, label %do.body36

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.body36:                                        ; preds = %if.end33
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !71
  %and.i224 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i224)
  %tobool46.not = icmp eq i32 %and.i224, 0
  br i1 %tobool46.not, label %if.then47, label %do.body36.if.end51_crit_edge

do.body36.if.end51_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then47:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %do.body36.if.end51_crit_edge, %if.end33.if.end51_crit_edge
  %flags.0 = phi i32 [ %19, %do.body36.if.end51_crit_edge ], [ %19, %if.then47 ], [ -1, %if.end33.if.end51_crit_edge ]
  %or52 = or i32 %or19, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body.i226, label %if.then.i225

if.then.i225:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or52) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_ctl20, i32 %20) #6, !srcloc !68
  br label %while.cond.i230.preheader

do.body.i226:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_ctl20, i32 %or52) #6, !srcloc !68
  br label %while.cond.i230.preheader

while.cond.i230.preheader:                        ; preds = %do.body.i226, %if.then.i225
  br label %while.cond.i230

while.cond.i230:                                  ; preds = %do.end.i240, %while.cond.i230.preheader
  %timeout.0.i229 = phi i32 [ %dec.i239, %do.end.i240 ], [ 1000, %while.cond.i230.preheader ]
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_stat2) #6
  br i1 %tobool.not, label %if.else.i.i232, label %if.then.i.i231

if.then.i.i231:                                   ; preds = %while.cond.i230
  call void @__sanitizer_cov_trace_pc() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit.i238

if.else.i.i232:                                   ; preds = %while.cond.i230
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit.i238

xgmac_read32.exit.i238:                           ; preds = %if.else.i.i232, %if.then.i.i231
  %retval.0.i.i233 = phi i32 [ %22, %if.then.i.i231 ], [ %21, %if.else.i.i232 ]
  %and.i234 = and i32 %retval.0.i.i233, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool1.not.i235 = icmp eq i32 %and.i234, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i229)
  %tobool2.not.i236 = icmp eq i32 %timeout.0.i229, 0
  %or.cond.i237 = select i1 %tobool1.not.i235, i1 true, i1 %tobool2.not.i236
  br i1 %or.cond.i237, label %while.end.i241, label %do.end.i240

do.end.i240:                                      ; preds = %xgmac_read32.exit.i238
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !73
  %dec.i239 = add nsw i32 %timeout.0.i229, -1
  br label %while.cond.i230

while.end.i241:                                   ; preds = %xgmac_read32.exit.i238
  br i1 %tobool2.not.i236, label %xgmac_wait_until_done.exit, label %if.end60

xgmac_wait_until_done.exit:                       ; preds = %while.end.i241
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %irq_restore

if.end60:                                         ; preds = %while.end.i241
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_stat2) #6
  br i1 %tobool.not, label %if.else.i245, label %if.then.i244

if.then.i244:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit247

if.else.i245:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit247

xgmac_read32.exit247:                             ; preds = %if.else.i245, %if.then.i244
  %retval.0.i246 = phi i32 [ %24, %if.then.i244 ], [ %23, %if.else.i245 ]
  %and64 = and i32 %retval.0.i246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %xgmac_read32.exit247.if.else81_crit_edge, label %land.lhs.true

xgmac_read32.exit247.if.else81_crit_edge:         ; preds = %xgmac_read32.exit247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else81

land.lhs.true:                                    ; preds = %xgmac_read32.exit247
  %has_a011043 = getelementptr inbounds %struct.mdio_fsl_priv, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %has_a011043 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_a011043, align 2, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool66.not = icmp eq i8 %26, 0
  br i1 %tobool66.not, label %do.body68, label %land.lhs.true.if.else81_crit_edge

land.lhs.true.if.else81_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else81

do.body68:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_mdio_read.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_mdio_read, %if.then75)) #6
          to label %irq_restore [label %if.then75], !srcloc !74

if.then75:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgmac_mdio_read.__UNIQUE_ID_ddebug285, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %phy_id, i32 noundef %dev_addr.0, i32 noundef %regnum) #6
  br label %irq_restore

if.else81:                                        ; preds = %land.lhs.true.if.else81_crit_edge, %xgmac_read32.exit247.if.else81_crit_edge
  %mdio_data = getelementptr inbounds %struct.tgec_mdio_controller, ptr %3, i32 0, i32 3
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_data) #6
  br i1 %tobool.not, label %if.else.i249, label %if.then.i248

if.then.i248:                                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit251

if.else.i249:                                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit251

xgmac_read32.exit251:                             ; preds = %if.else.i249, %if.then.i248
  %retval.0.i250 = phi i32 [ %28, %if.then.i248 ], [ %27, %if.else.i249 ]
  %and84 = and i32 %retval.0.i250, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_mdio_read.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_mdio_read, %if.then97)) #6
          to label %irq_restore [label %if.then97], !srcloc !74

if.then97:                                        ; preds = %xgmac_read32.exit251
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgmac_mdio_read.__UNIQUE_ID_ddebug286, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %and84) #6
  br label %irq_restore

irq_restore:                                      ; preds = %if.then97, %xgmac_read32.exit251, %if.then75, %do.body68, %xgmac_wait_until_done.exit
  %ret.0 = phi i32 [ -110, %xgmac_wait_until_done.exit ], [ %and84, %if.then97 ], [ 65535, %if.then75 ], [ 65535, %do.body68 ], [ %and84, %xgmac_read32.exit251 ]
  %29 = ptrtoint ptr %has_a009885 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_a009885, align 1, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool104.not = icmp eq i8 %30, 0
  br i1 %tobool104.not, label %irq_restore.cleanup_crit_edge, label %do.body106

irq_restore.cleanup_crit_edge:                    ; preds = %irq_restore
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body106:                                       ; preds = %irq_restore
  %and.i252 = and i32 %flags.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i252)
  %tobool114.not = icmp eq i32 %and.i252, 0
  br i1 %tobool114.not, label %if.then115, label %do.body106.do.body117_crit_edge

do.body106.do.body117_crit_edge:                  ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body117

if.then115:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body117

do.body117:                                       ; preds = %if.then115, %do.body106.do.body117_crit_edge
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !75
  %and.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool125.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool125.not, label %if.then134, label %do.body117.do.end137_crit_edge, !prof !76

do.body117.do.end137_crit_edge:                   ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end137

if.then134:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end137

do.end137:                                        ; preds = %if.then134, %do.body117.do.end137_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.0) #6, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %do.end137, %irq_restore.cleanup_crit_edge, %xgmac_wait_until_free.exit223, %xgmac_wait_until_free.exit
  %retval.0 = phi i32 [ -110, %xgmac_wait_until_free.exit ], [ -110, %xgmac_wait_until_free.exit223 ], [ %ret.0, %do.end137 ], [ %ret.0, %irq_restore.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_mdio_write(ptr noundef %bus, i32 noundef %phy_id, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %is_little_endian = getelementptr inbounds %struct.mdio_fsl_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %is_little_endian to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_little_endian, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %mdio_stat2 = getelementptr inbounds %struct.tgec_mdio_controller, ptr %3, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_stat2) #6
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit

xgmac_read32.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %6, %if.else.i ]
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %8 = lshr i32 %regnum, 16
  %and8 = and i32 %retval.0.i, -65
  %dev_addr.0.in = select i1 %tobool4.not, i32 %regnum, i32 %8
  %9 = lshr exact i32 %and, 24
  %mdio_stat.0 = or i32 %and8, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body.i, label %if.then.i78

if.then.i78:                                      ; preds = %xgmac_read32.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %mdio_stat.0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_stat2, i32 %10) #6, !srcloc !68
  br label %while.cond.i.preheader

do.body.i:                                        ; preds = %xgmac_read32.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_stat2, i32 %mdio_stat.0) #6, !srcloc !68
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %do.body.i, %if.then.i78
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i, %while.cond.i.preheader
  %timeout.0.i = phi i32 [ %dec.i, %do.end.i ], [ 1000, %while.cond.i.preheader ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_stat2) #6
  br i1 %tobool.not, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit.i

if.else.i.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit.i

xgmac_read32.exit.i:                              ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %12, %if.then.i.i ], [ %11, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i)
  %tobool2.not.i = icmp eq i32 %timeout.0.i, 0
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %while.end.i, label %do.end.i

do.end.i:                                         ; preds = %xgmac_read32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !70
  %dec.i = add nsw i32 %timeout.0.i, -1
  br label %while.cond.i

while.end.i:                                      ; preds = %xgmac_read32.exit.i
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  br i1 %tobool2.not.i, label %while.end.i.cleanup.sink.split_crit_edge, label %if.end15

while.end.i.cleanup.sink.split_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end15:                                         ; preds = %while.end.i
  %dev_addr.0 = and i32 %dev_addr.0.in, 31
  %and16 = shl i32 %phy_id, 5
  %shl = and i32 %and16, 992
  %or19 = or i32 %dev_addr.0, %shl
  %mdio_ctl20 = getelementptr inbounds %struct.tgec_mdio_controller, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body.i81, label %if.then.i80

if.then.i80:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %or19) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_ctl20, i32 %13) #6, !srcloc !68
  br label %xgmac_write32.exit82

do.body.i81:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_ctl20, i32 %or19) #6, !srcloc !68
  br label %xgmac_write32.exit82

xgmac_write32.exit82:                             ; preds = %do.body.i81, %if.then.i80
  br i1 %tobool4.not, label %xgmac_write32.exit82.if.end33_crit_edge, label %if.then24

xgmac_write32.exit82.if.end33_crit_edge:          ; preds = %xgmac_write32.exit82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then24:                                        ; preds = %xgmac_write32.exit82
  %and25 = and i32 %regnum, 65535
  %mdio_addr = getelementptr inbounds %struct.tgec_mdio_controller, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body.i84, label %if.then.i83

if.then.i83:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and25) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_addr, i32 %14) #6, !srcloc !68
  br label %while.cond.i88.preheader

do.body.i84:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_addr, i32 %and25) #6, !srcloc !68
  br label %while.cond.i88.preheader

while.cond.i88.preheader:                         ; preds = %do.body.i84, %if.then.i83
  br label %while.cond.i88

while.cond.i88:                                   ; preds = %do.end.i98, %while.cond.i88.preheader
  %timeout.0.i87 = phi i32 [ %dec.i97, %do.end.i98 ], [ 1000, %while.cond.i88.preheader ]
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_stat2) #6
  br i1 %tobool.not, label %if.else.i.i90, label %if.then.i.i89

if.then.i.i89:                                    ; preds = %while.cond.i88
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit.i96

if.else.i.i90:                                    ; preds = %while.cond.i88
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit.i96

xgmac_read32.exit.i96:                            ; preds = %if.else.i.i90, %if.then.i.i89
  %retval.0.i.i91 = phi i32 [ %16, %if.then.i.i89 ], [ %15, %if.else.i.i90 ]
  %and.i92 = and i32 %retval.0.i.i91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool1.not.i93 = icmp eq i32 %and.i92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i87)
  %tobool2.not.i94 = icmp eq i32 %timeout.0.i87, 0
  %or.cond.i95 = select i1 %tobool1.not.i93, i1 true, i1 %tobool2.not.i94
  br i1 %or.cond.i95, label %while.end.i99, label %do.end.i98

do.end.i98:                                       ; preds = %xgmac_read32.exit.i96
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !70
  %dec.i97 = add nsw i32 %timeout.0.i87, -1
  br label %while.cond.i88

while.end.i99:                                    ; preds = %xgmac_read32.exit.i96
  br i1 %tobool2.not.i94, label %while.end.i99.cleanup.sink.split_crit_edge, label %while.end.i99.if.end33_crit_edge

while.end.i99.if.end33_crit_edge:                 ; preds = %while.end.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

while.end.i99.cleanup.sink.split_crit_edge:       ; preds = %while.end.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end33:                                         ; preds = %while.end.i99.if.end33_crit_edge, %xgmac_write32.exit82.if.end33_crit_edge
  %conv34 = zext i16 %value to i32
  %mdio_data = getelementptr inbounds %struct.tgec_mdio_controller, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not, label %do.body.i104, label %if.then.i103

if.then.i103:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %conv34) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_data, i32 %17) #6, !srcloc !68
  br label %while.cond.i108.preheader

do.body.i104:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mdio_data, i32 %conv34) #6, !srcloc !68
  br label %while.cond.i108.preheader

while.cond.i108.preheader:                        ; preds = %do.body.i104, %if.then.i103
  br label %while.cond.i108

while.cond.i108:                                  ; preds = %do.end.i118, %while.cond.i108.preheader
  %timeout.0.i107 = phi i32 [ %dec.i117, %do.end.i118 ], [ 1000, %while.cond.i108.preheader ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdio_stat2) #6
  br i1 %tobool.not, label %if.else.i.i110, label %if.then.i.i109

if.then.i.i109:                                   ; preds = %while.cond.i108
  call void @__sanitizer_cov_trace_pc() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %xgmac_read32.exit.i116

if.else.i.i110:                                   ; preds = %while.cond.i108
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %xgmac_read32.exit.i116

xgmac_read32.exit.i116:                           ; preds = %if.else.i.i110, %if.then.i.i109
  %retval.0.i.i111 = phi i32 [ %19, %if.then.i.i109 ], [ %18, %if.else.i.i110 ]
  %and.i112 = and i32 %retval.0.i.i111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool1.not.i113 = icmp eq i32 %and.i112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i107)
  %tobool2.not.i114 = icmp eq i32 %timeout.0.i107, 0
  %or.cond.i115 = select i1 %tobool1.not.i113, i1 true, i1 %tobool2.not.i114
  br i1 %or.cond.i115, label %while.end.i119, label %do.end.i118

do.end.i118:                                      ; preds = %xgmac_read32.exit.i116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !73
  %dec.i117 = add nsw i32 %timeout.0.i107, -1
  br label %while.cond.i108

while.end.i119:                                   ; preds = %xgmac_read32.exit.i116
  br i1 %tobool2.not.i114, label %while.end.i119.cleanup.sink.split_crit_edge, label %while.end.i119.cleanup_crit_edge

while.end.i119.cleanup_crit_edge:                 ; preds = %while.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end.i119.cleanup.sink.split_crit_edge:      ; preds = %while.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end.i119.cleanup.sink.split_crit_edge, %while.end.i99.cleanup.sink.split_crit_edge, %while.end.i.cleanup.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.18, %while.end.i.cleanup.sink.split_crit_edge ], [ @.str.18, %while.end.i99.cleanup.sink.split_crit_edge ], [ @.str.20, %while.end.i119.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.20.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.i119.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end.i119.cleanup_crit_edge ], [ -110, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_xgmac_mdio__287_370_xgmac_mdio_driver_init6, !1, !"__initcall__kmod_xgmac_mdio__287_370_xgmac_mdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 370, i32 1}
!2 = !{ptr @__exitcall_xgmac_mdio_driver_exit, !1, !"__exitcall_xgmac_mdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description288, !4, !"__UNIQUE_ID_description288", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 372, i32 1}
!5 = !{ptr @__UNIQUE_ID_file289, !6, !"__UNIQUE_ID_file289", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 373, i32 1}
!7 = !{ptr @__UNIQUE_ID_license290, !6, !"__UNIQUE_ID_license290", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 362, i32 11}
!10 = !{ptr @xgmac_mdio_driver, !11, !"xgmac_mdio_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 360, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 272, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @xgmac_mdio_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @xgmac_mdio_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 280, i32 14}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 285, i32 37}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 299, i32 11}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 302, i32 13}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 304, i32 13}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 314, i32 3}
!32 = !{ptr @xgmac_mdio_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @xgmac_mdio_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 241, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @xgmac_mdio_read.__UNIQUE_ID_ddebug285, !35, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 247, i32 3}
!41 = !{ptr @xgmac_mdio_read.__UNIQUE_ID_ddebug286, !40, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 95, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @xgmac_wait_until_free._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @xgmac_wait_until_free._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 120, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @xgmac_wait_until_done._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @xgmac_wait_until_done._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @xgmac_mdio_match, !53, !"xgmac_mdio_match", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 343, i32 34}
!54 = !{ptr @xgmac_acpi_match, !55, !"xgmac_acpi_match", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/freescale/xgmac_mdio.c", i32 354, i32 36}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i8 0, i8 2}
!66 = !{i64 2154838767}
!67 = !{i64 2156045827}
!68 = !{i64 7305490}
!69 = !{i64 2156046491}
!70 = !{i64 2156046333}
!71 = !{i64 703273, i64 703334}
!72 = !{i64 2156048561}
!73 = !{i64 2156048403}
!74 = !{i64 2148955084, i64 2148955089, i64 2148955102, i64 2148955146, i64 2148955180, i64 2148955201}
!75 = !{i64 706005}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 706290}
