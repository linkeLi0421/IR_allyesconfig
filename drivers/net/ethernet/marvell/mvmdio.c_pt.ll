; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/mvmdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mvmdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.orion_mdio_ops = type { ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.orion_mdio_dev = type { ptr, [4 x ptr], i32, %struct.wait_queue_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_mvmdio__285_451_orion_mdio_driver_init6 = internal global ptr @orion_mdio_driver_init, section ".initcall6.init", align 4
@orion_mdio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @orion_mdio_probe, ptr @orion_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @orion_mdio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_orion_mdio_driver_exit = internal global ptr @orion_mdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description286 = internal constant [49 x i8] c"mvmdio.description=Marvell MDIO interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author287 = internal constant [69 x i8] c"mvmdio.author=Thomas Petazzoni <thomas.petazzoni@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [48 x i8] c"mvmdio.file=drivers/net/ethernet/marvell/mvmdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [19 x i8] c"mvmdio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias290 = internal constant [33 x i8] c"mvmdio.alias=platform:orion-mdio\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"orion-mdio\00", [21 x i8] zeroinitializer }, align 32
@orion_mdio_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,xmdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@orion_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No SMI register address given\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orion_mdio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/marvell/mvmdio.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@orion_mdio_probe._entry_ptr = internal global ptr @orion_mdio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"orion_mdio_bus\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-mii\00", [25 x i8] zeroinitializer }, align 32
@orion_mdio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to remap SMI register\0A\00", [34 x i8] zeroinitializer }, align 32
@orion_mdio_probe._entry_ptr.10 = internal global ptr @orion_mdio_probe._entry.8, section ".printk_index", align 4
@orion_mdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->smi_busy_wait\00", [44 x i8] zeroinitializer }, align 32
@orion_mdio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 340, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [211 x i8], [45 x i8] } { [211 x i8] c"unsupported number of clocks, limiting to the first (sizeof(dev->clk) / sizeof((dev->clk)[0]) + ((int)(sizeof(struct { int:(-!!(__builtin_types_compatible_p(typeof((dev->clk)), typeof(&(dev->clk)[0])))); }))))\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@orion_mdio_probe._entry_ptr.15 = internal global ptr @orion_mdio_probe._entry.12, section ".printk_index", align 4
@orion_mdio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"disabling interrupt, resource size is too small\0A\00", [47 x i8] zeroinitializer }, align 32
@orion_mdio_probe._entry_ptr.18 = internal global ptr @orion_mdio_probe._entry.16, section ".printk_index", align 4
@orion_mdio_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot register MDIO bus (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@orion_mdio_probe._entry_ptr.21 = internal global ptr @orion_mdio_probe._entry.19, section ".printk_index", align 4
@orion_mdio_smi_ops = internal constant { %struct.orion_mdio_ops, [20 x i8] } { %struct.orion_mdio_ops { ptr @orion_mdio_smi_is_done, i32 45, i32 55 }, [20 x i8] zeroinitializer }, align 32
@orion_mdio_smi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SMI bus read not valid\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"orion_mdio_smi_read\00", [44 x i8] zeroinitializer }, align 32
@orion_mdio_smi_read._entry_ptr = internal global ptr @orion_mdio_smi_read._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@orion_mdio_wait_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timeout: SMI busy for too long\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"orion_mdio_wait_ready\00", [42 x i8] zeroinitializer }, align 32
@orion_mdio_wait_ready._entry_ptr = internal global ptr @orion_mdio_wait_ready._entry, section ".printk_index", align 4
@orion_mdio_xsmi_ops = internal constant { %struct.orion_mdio_ops, [20 x i8] } { %struct.orion_mdio_ops { ptr @orion_mdio_xsmi_is_done, i32 150, i32 160 }, [20 x i8] zeroinitializer }, align 32
@orion_mdio_xsmi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"XSMI bus read not valid\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"orion_mdio_xsmi_read\00", [43 x i8] zeroinitializer }, align 32
@orion_mdio_xsmi_read._entry_ptr = internal global ptr @orion_mdio_xsmi_read._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"orion_mdio_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 441, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 445, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"orion_mdio_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 425, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 290, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 310, i32 14 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 311, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 318, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 322, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 338, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 355, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 382, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"orion_mdio_smi_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 136, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 167, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 127, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"orion_mdio_xsmi_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 201, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [41 x i8] c"../drivers/net/ethernet/marvell/mvmdio.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 233, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias290, ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_orion_mdio_driver_exit, ptr @__initcall__kmod_mvmdio__285_451_orion_mdio_driver_init6, ptr @orion_mdio_driver_exit, ptr @orion_mdio_probe._entry, ptr @orion_mdio_probe._entry.12, ptr @orion_mdio_probe._entry.16, ptr @orion_mdio_probe._entry.19, ptr @orion_mdio_probe._entry.8, ptr @orion_mdio_probe._entry_ptr, ptr @orion_mdio_probe._entry_ptr.10, ptr @orion_mdio_probe._entry_ptr.15, ptr @orion_mdio_probe._entry_ptr.18, ptr @orion_mdio_probe._entry_ptr.21, ptr @orion_mdio_smi_read._entry, ptr @orion_mdio_smi_read._entry_ptr, ptr @orion_mdio_wait_ready._entry, ptr @orion_mdio_wait_ready._entry_ptr, ptr @orion_mdio_xsmi_read._entry, ptr @orion_mdio_xsmi_read._entry_ptr, ptr @orion_mdio_driver, ptr @.str, ptr @orion_mdio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @orion_mdio_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @orion_mdio_smi_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @orion_mdio_xsmi_ops, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 211, i32 256, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_smi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_smi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_wait_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_xsmi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orion_mdio_xsmi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @orion_mdio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @orion_mdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @orion_mdio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #7
  %0 = ptrtoint ptr %call to i32
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %dev1, i32 noundef 76) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %if.end8.sw.epilog_crit_edge [
    i32 0, label %if.end8.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb9
  ]

if.end8.sw.epilog.sink.split_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb9, %if.end8.sw.epilog.sink.split_crit_edge
  %orion_mdio_xsmi_read.sink = phi ptr [ @orion_mdio_xsmi_read, %sw.bb9 ], [ @orion_mdio_smi_read, %if.end8.sw.epilog.sink.split_crit_edge ]
  %orion_mdio_xsmi_write.sink = phi ptr [ @orion_mdio_xsmi_write, %sw.bb9 ], [ @orion_mdio_smi_write, %if.end8.sw.epilog.sink.split_crit_edge ]
  %read10 = getelementptr inbounds %struct.mii_bus, ptr %call5, i32 0, i32 4
  %2 = ptrtoint ptr %read10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %orion_mdio_xsmi_read.sink, ptr %read10, align 4
  %write11 = getelementptr inbounds %struct.mii_bus, ptr %call5, i32 0, i32 5
  %3 = ptrtoint ptr %write11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %orion_mdio_xsmi_write.sink, ptr %write11, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end8.sw.epilog_crit_edge
  %name = getelementptr inbounds %struct.mii_bus, ptr %call5, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.6, ptr %name, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %call5, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.dev_name.exit_crit_edge

sw.epilog.dev_name.exit_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %sw.epilog.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %sw.epilog.dev_name.exit_crit_edge ]
  %call14 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i)
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call5, i32 0, i32 9
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %parent, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call5, i32 0, i32 3
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %12 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %13
  %add.i = add i32 %sub.i, %15
  %call18 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %13, i32 noundef %add.i) #7
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call18, ptr %11, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %do.end24, label %do.body27

do.end24:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  br label %cleanup

do.body27:                                        ; preds = %dev_name.exit
  %smi_busy_wait = getelementptr inbounds %struct.orion_mdio_dev, ptr %11, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %smi_busy_wait, ptr noundef nonnull @.str.11, ptr noundef nonnull @orion_mdio_probe.__key) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %tobool31.not = icmp eq ptr %18, null
  br i1 %tobool31.not, label %if.else, label %for.body.preheader

for.body.preheader:                               ; preds = %do.body27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call35 = tail call ptr @of_clk_get(ptr noundef %20, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.orion_mdio_dev, ptr %11, i32 0, i32 1, i32 0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call35, ptr %arrayidx, align 4
  %cmp39 = icmp eq ptr %call35, inttoptr (i32 -517 to ptr)
  br i1 %cmp39, label %for.body.preheader.out_clk_crit_edge, label %if.end41

for.body.preheader.out_clk_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_clk

if.end41:                                         ; preds = %for.body.preheader
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end41.for.end_crit_edge, label %if.end46

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end46:                                         ; preds = %if.end41
  %call.i = tail call i32 @clk_prepare(ptr noundef %call35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i230 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i230, label %if.end.i231, label %if.end46.clk_prepare_enable.exit_crit_edge

if.end46.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i231:                                      ; preds = %if.end46
  %call1.i = tail call i32 @clk_enable(ptr noundef %call35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i231.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i231.clk_prepare_enable.exit_crit_edge:    ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call35) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i231.clk_prepare_enable.exit_crit_edge, %if.end46.clk_prepare_enable.exit_crit_edge
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call35.1 = tail call ptr @of_clk_get(ptr noundef %23, i32 noundef 1) #7
  %arrayidx.1 = getelementptr %struct.orion_mdio_dev, ptr %11, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call35.1, ptr %arrayidx.1, align 4
  %cmp39.1 = icmp eq ptr %call35.1, inttoptr (i32 -517 to ptr)
  br i1 %cmp39.1, label %clk_prepare_enable.exit.out_clk_crit_edge, label %if.end41.1

clk_prepare_enable.exit.out_clk_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_clk

if.end41.1:                                       ; preds = %clk_prepare_enable.exit
  %cmp.i.1 = icmp ugt ptr %call35.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end41.1.for.end_crit_edge, label %if.end46.1

if.end41.1.for.end_crit_edge:                     ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end46.1:                                       ; preds = %if.end41.1
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef %call35.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i230.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i230.1, label %if.end.i231.1, label %if.end46.1.clk_prepare_enable.exit.1_crit_edge

if.end46.1.clk_prepare_enable.exit.1_crit_edge:   ; preds = %if.end46.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.1

if.end.i231.1:                                    ; preds = %if.end46.1
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef %call35.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end.i231.1.clk_prepare_enable.exit.1_crit_edge, label %if.then3.i.1

if.end.i231.1.clk_prepare_enable.exit.1_crit_edge: ; preds = %if.end.i231.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.1

if.then3.i.1:                                     ; preds = %if.end.i231.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call35.1) #7
  br label %clk_prepare_enable.exit.1

clk_prepare_enable.exit.1:                        ; preds = %if.then3.i.1, %if.end.i231.1.clk_prepare_enable.exit.1_crit_edge, %if.end46.1.clk_prepare_enable.exit.1_crit_edge
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call35.2 = tail call ptr @of_clk_get(ptr noundef %26, i32 noundef 2) #7
  %arrayidx.2 = getelementptr %struct.orion_mdio_dev, ptr %11, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call35.2, ptr %arrayidx.2, align 4
  %cmp39.2 = icmp eq ptr %call35.2, inttoptr (i32 -517 to ptr)
  br i1 %cmp39.2, label %clk_prepare_enable.exit.1.out_clk_crit_edge, label %if.end41.2

clk_prepare_enable.exit.1.out_clk_crit_edge:      ; preds = %clk_prepare_enable.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_clk

if.end41.2:                                       ; preds = %clk_prepare_enable.exit.1
  %cmp.i.2 = icmp ugt ptr %call35.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end41.2.for.end_crit_edge, label %if.end46.2

if.end41.2.for.end_crit_edge:                     ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end46.2:                                       ; preds = %if.end41.2
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef %call35.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i230.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i230.2, label %if.end.i231.2, label %if.end46.2.clk_prepare_enable.exit.2_crit_edge

if.end46.2.clk_prepare_enable.exit.2_crit_edge:   ; preds = %if.end46.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.2

if.end.i231.2:                                    ; preds = %if.end46.2
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef %call35.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %if.end.i231.2.clk_prepare_enable.exit.2_crit_edge, label %if.then3.i.2

if.end.i231.2.clk_prepare_enable.exit.2_crit_edge: ; preds = %if.end.i231.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.2

if.then3.i.2:                                     ; preds = %if.end.i231.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call35.2) #7
  br label %clk_prepare_enable.exit.2

clk_prepare_enable.exit.2:                        ; preds = %if.then3.i.2, %if.end.i231.2.clk_prepare_enable.exit.2_crit_edge, %if.end46.2.clk_prepare_enable.exit.2_crit_edge
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %call35.3 = tail call ptr @of_clk_get(ptr noundef %29, i32 noundef 3) #7
  %arrayidx.3 = getelementptr %struct.orion_mdio_dev, ptr %11, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call35.3, ptr %arrayidx.3, align 4
  %cmp39.3 = icmp eq ptr %call35.3, inttoptr (i32 -517 to ptr)
  br i1 %cmp39.3, label %clk_prepare_enable.exit.2.out_clk_crit_edge, label %if.end41.3

clk_prepare_enable.exit.2.out_clk_crit_edge:      ; preds = %clk_prepare_enable.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_clk

if.end41.3:                                       ; preds = %clk_prepare_enable.exit.2
  %cmp.i.3 = icmp ugt ptr %call35.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.end41.3.for.end_crit_edge, label %if.end46.3

if.end41.3.for.end_crit_edge:                     ; preds = %if.end41.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end46.3:                                       ; preds = %if.end41.3
  %call.i.3 = tail call i32 @clk_prepare(ptr noundef %call35.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i230.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i230.3, label %if.end.i231.3, label %if.end46.3.for.end_crit_edge

if.end46.3.for.end_crit_edge:                     ; preds = %if.end46.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i231.3:                                    ; preds = %if.end46.3
  %call1.i.3 = tail call i32 @clk_enable(ptr noundef %call35.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool2.not.i.3 = icmp eq i32 %call1.i.3, 0
  br i1 %tobool2.not.i.3, label %if.end.i231.3.for.end_crit_edge, label %if.then3.i.3

if.end.i231.3.for.end_crit_edge:                  ; preds = %if.end.i231.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then3.i.3:                                     ; preds = %if.end.i231.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call35.3) #7
  br label %for.end

for.end:                                          ; preds = %if.then3.i.3, %if.end.i231.3.for.end_crit_edge, %if.end46.3.for.end_crit_edge, %if.end41.3.for.end_crit_edge, %if.end41.2.for.end_crit_edge, %if.end41.1.for.end_crit_edge, %if.end41.for.end_crit_edge
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call52 = tail call ptr @of_clk_get(ptr noundef %32, i32 noundef 4) #7
  %cmp.i232 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232, label %for.end.if.end78_crit_edge, label %do.end57

for.end.if.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end57:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %if.end78

if.else:                                          ; preds = %do.body27
  %call61 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk62 = getelementptr inbounds %struct.orion_mdio_dev, ptr %11, i32 0, i32 1
  %33 = ptrtoint ptr %clk62 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call61, ptr %clk62, align 4
  %cmp67 = icmp eq ptr %call61, inttoptr (i32 -517 to ptr)
  br i1 %cmp67, label %if.else.out_clk_crit_edge, label %if.end69

if.else.out_clk_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_clk

if.end69:                                         ; preds = %if.else
  %cmp.i233 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.end69.if.end78_crit_edge, label %if.then73

if.end69.if.end78_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then73:                                        ; preds = %if.end69
  %call.i234 = tail call i32 @clk_prepare(ptr noundef %call61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool.not.i235 = icmp eq i32 %call.i234, 0
  br i1 %tobool.not.i235, label %if.end.i238, label %if.then73.if.end78_crit_edge

if.then73.if.end78_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.end.i238:                                      ; preds = %if.then73
  %call1.i236 = tail call i32 @clk_enable(ptr noundef %call61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i236)
  %tobool2.not.i237 = icmp eq i32 %call1.i236, 0
  br i1 %tobool2.not.i237, label %if.end.i238.if.end78_crit_edge, label %if.then3.i239

if.end.i238.if.end78_crit_edge:                   ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then3.i239:                                    ; preds = %if.end.i238
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call61) #7
  br label %if.end78

if.end78:                                         ; preds = %if.then3.i239, %if.end.i238.if.end78_crit_edge, %if.then73.if.end78_crit_edge, %if.end69.if.end78_crit_edge, %do.end57, %for.end.if.end78_crit_edge
  %call79 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #7
  %err_interrupt = getelementptr inbounds %struct.orion_mdio_dev, ptr %11, i32 0, i32 2
  %34 = ptrtoint ptr %err_interrupt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call79, ptr %err_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp81 = icmp sgt i32 %call79, 0
  br i1 %cmp81, label %land.lhs.true, label %if.end78.if.else105_crit_edge

if.end78.if.else105_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else105

land.lhs.true:                                    ; preds = %if.end78
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %end.i, align 4
  %37 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call2, align 4
  %sub.i242 = add i32 %36, 1
  %add.i243 = sub i32 %sub.i242, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %add.i243)
  %cmp83 = icmp ult i32 %add.i243, 132
  br i1 %cmp83, label %if.else105.thread, label %if.end90

if.else105.thread:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  %39 = ptrtoint ptr %err_interrupt to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %err_interrupt, align 4
  br label %if.end110

if.end90:                                         ; preds = %land.lhs.true
  %40 = ptrtoint ptr %err_interrupt to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %err_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp92 = icmp sgt i32 %.pr, 0
  br i1 %cmp92, label %if.then93, label %if.end90.if.else105_crit_edge

if.end90.if.else105_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else105

if.then93:                                        ; preds = %if.end90
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  %call.i244 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %.pr, ptr noundef nonnull @orion_mdio_err_irq, ptr noundef null, i32 noundef 128, ptr noundef %42, ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244)
  %tobool98.not = icmp eq i32 %call.i244, 0
  br i1 %tobool98.not, label %do.body101, label %if.then93.out_mdio_crit_edge

if.then93.out_mdio_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_mdio

do.body101:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %11, align 4
  %add.ptr = getelementptr i8, ptr %44, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #7, !srcloc !79
  br label %if.end110

if.else105:                                       ; preds = %if.end90.if.else105_crit_edge, %if.end78.if.else105_crit_edge
  %45 = phi i32 [ %.pr, %if.end90.if.else105_crit_edge ], [ %call79, %if.end78.if.else105_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %45)
  %cmp107 = icmp eq i32 %45, -517
  br i1 %cmp107, label %if.else105.out_mdio_crit_edge, label %if.else105.if.end110_crit_edge

if.else105.if.end110_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.else105.out_mdio_crit_edge:                    ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_mdio

if.end110:                                        ; preds = %if.else105.if.end110_crit_edge, %do.body101, %if.else105.thread
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  %call120 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call5, ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp122 = icmp slt i32 %call120, 0
  br i1 %cmp122, label %do.end126, label %if.end128

do.end126:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call120) #10
  br label %out_mdio

if.end128:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call5, ptr %driver_data.i.i, align 4
  br label %cleanup

out_mdio:                                         ; preds = %do.end126, %if.else105.out_mdio_crit_edge, %if.then93.out_mdio_crit_edge
  %ret.1 = phi i32 [ %call.i244, %if.then93.out_mdio_crit_edge ], [ %call120, %do.end126 ], [ -517, %if.else105.out_mdio_crit_edge ]
  %49 = ptrtoint ptr %err_interrupt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %err_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp130 = icmp sgt i32 %50, 0
  br i1 %cmp130, label %do.body132, label %out_mdio.out_clk_crit_edge

out_mdio.out_clk_crit_edge:                       ; preds = %out_mdio
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_clk

do.body132:                                       ; preds = %out_mdio
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %11, align 4
  %add.ptr136 = getelementptr i8, ptr %52, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 0) #7, !srcloc !79
  br label %out_clk

out_clk:                                          ; preds = %do.body132, %out_mdio.out_clk_crit_edge, %if.else.out_clk_crit_edge, %clk_prepare_enable.exit.2.out_clk_crit_edge, %clk_prepare_enable.exit.1.out_clk_crit_edge, %clk_prepare_enable.exit.out_clk_crit_edge, %for.body.preheader.out_clk_crit_edge
  %ret.2 = phi i32 [ %ret.1, %do.body132 ], [ %ret.1, %out_mdio.out_clk_crit_edge ], [ -517, %if.else.out_clk_crit_edge ], [ -517, %clk_prepare_enable.exit.2.out_clk_crit_edge ], [ -517, %clk_prepare_enable.exit.1.out_clk_crit_edge ], [ -517, %clk_prepare_enable.exit.out_clk_crit_edge ], [ -517, %for.body.preheader.out_clk_crit_edge ]
  %arrayidx142 = getelementptr %struct.orion_mdio_dev, ptr %11, i32 0, i32 1, i32 0
  %53 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx142, align 4
  %cmp.i245 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %out_clk.cleanup_crit_edge, label %if.end145

out_clk.cleanup_crit_edge:                        ; preds = %out_clk
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end145:                                        ; preds = %out_clk
  tail call void @clk_disable(ptr noundef %54) #7
  tail call void @clk_unprepare(ptr noundef %54) #7
  %55 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx142, align 4
  tail call void @clk_put(ptr noundef %56) #7
  %arrayidx142.1 = getelementptr %struct.orion_mdio_dev, ptr %11, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %arrayidx142.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx142.1, align 4
  %cmp.i245.1 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245.1, label %if.end145.cleanup_crit_edge, label %if.end145.1

if.end145.cleanup_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end145.1:                                      ; preds = %if.end145
  tail call void @clk_disable(ptr noundef %58) #7
  tail call void @clk_unprepare(ptr noundef %58) #7
  %59 = ptrtoint ptr %arrayidx142.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx142.1, align 4
  tail call void @clk_put(ptr noundef %60) #7
  %arrayidx142.2 = getelementptr %struct.orion_mdio_dev, ptr %11, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %arrayidx142.2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx142.2, align 4
  %cmp.i245.2 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245.2, label %if.end145.1.cleanup_crit_edge, label %if.end145.2

if.end145.1.cleanup_crit_edge:                    ; preds = %if.end145.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end145.2:                                      ; preds = %if.end145.1
  tail call void @clk_disable(ptr noundef %62) #7
  tail call void @clk_unprepare(ptr noundef %62) #7
  %63 = ptrtoint ptr %arrayidx142.2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx142.2, align 4
  tail call void @clk_put(ptr noundef %64) #7
  %arrayidx142.3 = getelementptr %struct.orion_mdio_dev, ptr %11, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %arrayidx142.3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx142.3, align 4
  %cmp.i245.3 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245.3, label %if.end145.2.cleanup_crit_edge, label %if.end145.3

if.end145.2.cleanup_crit_edge:                    ; preds = %if.end145.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end145.3:                                      ; preds = %if.end145.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %66) #7
  tail call void @clk_unprepare(ptr noundef %66) #7
  %67 = ptrtoint ptr %arrayidx142.3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx142.3, align 4
  tail call void @clk_put(ptr noundef %68) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end145.3, %if.end145.2.cleanup_crit_edge, %if.end145.1.cleanup_crit_edge, %if.end145.cleanup_crit_edge, %out_clk.cleanup_crit_edge, %if.end128, %do.end24, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end128 ], [ -19, %do.end24 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.2, %if.end145.3 ], [ %ret.2, %if.end145.2.cleanup_crit_edge ], [ %ret.2, %if.end145.1.cleanup_crit_edge ], [ %ret.2, %if.end145.cleanup_crit_edge ], [ %ret.2, %out_clk.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %err_interrupt = getelementptr inbounds %struct.orion_mdio_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %err_interrupt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %err_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @mdiobus_unregister(ptr noundef %1) #7
  %arrayidx = getelementptr %struct.orion_mdio_dev, ptr %3, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.for.end_crit_edge, label %if.end4

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end4:                                          ; preds = %if.end
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_put(ptr noundef %11) #7
  %arrayidx.1 = getelementptr %struct.orion_mdio_dev, ptr %3, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %cmp.i.1 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end4.for.end_crit_edge, label %if.end4.1

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end4.1:                                        ; preds = %if.end4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  tail call void @clk_put(ptr noundef %15) #7
  %arrayidx.2 = getelementptr %struct.orion_mdio_dev, ptr %3, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %cmp.i.2 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.end4.1.for.end_crit_edge, label %if.end4.2

if.end4.1.for.end_crit_edge:                      ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end4.2:                                        ; preds = %if.end4.1
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  tail call void @clk_put(ptr noundef %19) #7
  %arrayidx.3 = getelementptr %struct.orion_mdio_dev, ptr %3, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %cmp.i.3 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %if.end4.2.for.end_crit_edge, label %if.end4.3

if.end4.2.for.end_crit_edge:                      ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end4.3:                                        ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.3, align 4
  tail call void @clk_put(ptr noundef %23) #7
  br label %for.end

for.end:                                          ; preds = %if.end4.3, %if.end4.2.for.end_crit_edge, %if.end4.1.for.end_crit_edge, %if.end4.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_smi_read(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_smi_ops, ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %mii_id, 16
  %shl3 = shl i32 %regnum, 21
  %or = or i32 %shl, %shl3
  %or4 = or i32 %or, 67108864
  %2 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !79
  %call5 = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_smi_ops, ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.body.cleanup_crit_edge, label %if.end8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.body
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !83
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %and12 = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 9
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %and19 = and i32 %8, 65535
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end17, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and19, %if.end18 ], [ -19, %do.end17 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_smi_write(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_smi_ops, ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %mii_id, 16
  %shl3 = shl i32 %regnum, 21
  %or = or i32 %shl3, %shl
  %conv = zext i16 %value to i32
  %or6 = or i32 %or, %conv
  %2 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #7, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_xsmi_read(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and1 = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_xsmi_ops, ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %and5 = and i32 %regnum, 65535
  %2 = tail call i32 @llvm.bswap.i32(i32 %and5)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %mii_id, 16
  %5 = shl i32 %regnum, 5
  %shl10 = and i32 %5, 65011712
  %or = or i32 %shl, %shl10
  %or11 = or i32 %or, 469762048
  %6 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !79
  %call14 = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_xsmi_ops, ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.body.cleanup_crit_edge, label %if.end18

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %do.body
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %12 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool24.not = icmp eq i32 %12, 0
  br i1 %tobool24.not, label %do.end28, label %if.end29

do.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 9
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %18 = and i32 %17, -65536
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end28, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.end29 ], [ -19, %do.end28 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call14, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_xsmi_write(ptr nocapture noundef readonly %bus, i32 noundef %mii_id, i32 noundef %regnum, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %and1 = and i32 %regnum, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @orion_mdio_wait_ready(ptr noundef nonnull @orion_mdio_xsmi_ops, ptr noundef %bus)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %and5 = and i32 %regnum, 65535
  %2 = tail call i32 @llvm.bswap.i32(i32 %and5)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %mii_id, 16
  %5 = shl i32 %regnum, 5
  %shl10 = and i32 %5, 65011712
  %conv12 = zext i16 %value to i32
  %or = or i32 %shl, %shl10
  %or11 = or i32 %or, %conv12
  %or13 = or i32 %or11, 335544320
  %6 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_err_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %3 = and i32 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -268435457) #7, !srcloc !79
  %smi_busy_wait = getelementptr inbounds %struct.orion_mdio_dev, ptr %dev_id, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %smi_busy_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @orion_mdio_wait_ready(ptr nocapture noundef readonly %ops, ptr nocapture noundef readonly %bus) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 1000
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %spec.select.i, %2
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %call197 = call i32 %4(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool.not98 = icmp eq i32 %call197, 0
  br i1 %tobool.not98, label %if.else.lr.ph, label %entry.cleanup59_crit_edge

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

if.else.lr.ph:                                    ; preds = %entry
  %err_interrupt = getelementptr inbounds %struct.orion_mdio_dev, ptr %1, i32 0, i32 2
  %smi_busy_wait = getelementptr inbounds %struct.orion_mdio_dev, ptr %1, i32 0, i32 3
  %poll_interval_min = getelementptr inbounds %struct.orion_mdio_ops, ptr %ops, i32 0, i32 1
  %poll_interval_max = getelementptr inbounds %struct.orion_mdio_ops, ptr %ops, i32 0, i32 2
  br label %if.else

if.else:                                          ; preds = %if.end55.if.else_crit_edge, %if.else.lr.ph
  %timeout.0100 = phi i32 [ %spec.select.i, %if.else.lr.ph ], [ %timeout.1, %if.end55.if.else_crit_edge ]
  %timedout.099 = phi i32 [ 0, %if.else.lr.ph ], [ %timedout.1, %if.end55.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timedout.099)
  %tobool2.not = icmp eq i32 %timedout.099, 0
  br i1 %tobool2.not, label %if.end4, label %do.end58

if.end4:                                          ; preds = %if.else
  %5 = ptrtoint ptr %err_interrupt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err_interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.then5, label %if.else9

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %poll_interval_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %poll_interval_min, align 4
  %9 = ptrtoint ptr %poll_interval_max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %poll_interval_max, align 4
  call void @usleep_range_state(i32 noundef %8, i32 noundef %10, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  %sub.lobit = lshr i32 %sub, 31
  br label %if.end55

if.else9:                                         ; preds = %if.end4
  %12 = call i32 @llvm.umax.i32(i32 %timeout.0100, i32 2)
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 121) #7
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %call17 = call i32 %14(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then26, label %if.else9.if.end55_crit_edge

if.else9.if.end55_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then26:                                        ; preds = %if.else9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call2890 = call i32 @prepare_to_wait_event(ptr noundef %smi_busy_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %call3191 = call i32 %17(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3191)
  %tobool32.not92.not = icmp eq i32 %call3191, 0
  br i1 %tobool32.not92.not, label %if.then26.cleanup_crit_edge, label %if.then26.for.end_crit_edge

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then26.cleanup_crit_edge
  %__ret27.196 = phi i32 [ %__ret27.1, %cleanup.cleanup_crit_edge ], [ %12, %if.then26.cleanup_crit_edge ]
  %call49 = call i32 @schedule_timeout(i32 noundef %__ret27.196) #7
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %smi_busy_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %call31 = call i32 %19(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool36.not = icmp eq i32 %call49, 0
  %spec.store.select64 = select i1 %tobool36.not, i32 1, i32 %call49
  %__ret27.1 = select i1 %tobool32.not, i32 %call49, i32 %spec.store.select64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret27.1)
  %tobool42.not = icmp eq i32 %__ret27.1, 0
  %not.tobool32.not = xor i1 %tobool32.not, true
  %20 = select i1 %not.tobool32.not, i1 true, i1 %tobool42.not
  br i1 %20, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then26.for.end_crit_edge
  call void @finish_wait(ptr noundef %smi_busy_wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end55

if.end55:                                         ; preds = %for.end, %if.else9.if.end55_crit_edge, %if.then5
  %timedout.1 = phi i32 [ %sub.lobit, %if.then5 ], [ 1, %for.end ], [ 1, %if.else9.if.end55_crit_edge ]
  %timeout.1 = phi i32 [ %timeout.0100, %if.then5 ], [ %12, %for.end ], [ %12, %if.else9.if.end55_crit_edge ]
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %call1 = call i32 %22(ptr noundef %1) #7
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end55.if.else_crit_edge, label %if.end55.cleanup59_crit_edge

if.end55.cleanup59_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup59

if.end55.if.else_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 9
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.24) #10
  br label %cleanup59

cleanup59:                                        ; preds = %do.end58, %if.end55.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.0 = phi i32 [ -110, %do.end58 ], [ 0, %entry.cleanup59_crit_edge ], [ 0, %if.end55.cleanup59_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_smi_is_done(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %3 = lshr i32 %2, 4
  %.lobit = and i32 %3, 1
  %4 = xor i32 %.lobit, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @orion_mdio_xsmi_is_done(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %3 = lshr i32 %2, 6
  %.lobit = and i32 %3, 1
  %4 = xor i32 %.lobit, 1
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_mvmdio__285_451_orion_mdio_driver_init6, !1, !"__initcall__kmod_mvmdio__285_451_orion_mdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 451, i32 1}
!2 = !{ptr @__exitcall_orion_mdio_driver_exit, !1, !"__exitcall_orion_mdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description286, !4, !"__UNIQUE_ID_description286", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 453, i32 1}
!5 = !{ptr @__UNIQUE_ID_author287, !6, !"__UNIQUE_ID_author287", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 454, i32 1}
!7 = !{ptr @__UNIQUE_ID_file288, !8, !"__UNIQUE_ID_file288", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 455, i32 1}
!9 = !{ptr @__UNIQUE_ID_license289, !8, !"__UNIQUE_ID_license289", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias290, !11, !"__UNIQUE_ID_alias290", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 456, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 445, i32 11}
!14 = !{ptr @orion_mdio_driver, !15, !"orion_mdio_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 441, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 290, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @orion_mdio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @orion_mdio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 310, i32 14}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 311, i32 37}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 318, i32 3}
!30 = !{ptr @orion_mdio_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @orion_mdio_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @orion_mdio_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 322, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 338, i32 4}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @orion_mdio_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @orion_mdio_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 355, i32 3}
!42 = !{ptr @orion_mdio_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @orion_mdio_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 382, i32 3}
!46 = !{ptr @orion_mdio_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @orion_mdio_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 167, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @orion_mdio_smi_read._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @orion_mdio_smi_read._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 127, i32 2}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @orion_mdio_wait_ready._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @orion_mdio_wait_ready._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @orion_mdio_smi_ops, !59, !"orion_mdio_smi_ops", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 136, i32 36}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 233, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @orion_mdio_xsmi_read._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @orion_mdio_xsmi_read._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @orion_mdio_xsmi_ops, !66, !"orion_mdio_xsmi_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 201, i32 36}
!67 = !{ptr @orion_mdio_match, !68, !"orion_mdio_match", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/marvell/mvmdio.c", i32 425, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2156109220}
!79 = !{i64 7308042}
!80 = !{i64 2156111321}
!81 = !{i64 2156112061}
!82 = !{i64 2156078889}
!83 = !{i64 7308460}
!84 = !{i64 2156079711}
!85 = !{i64 2156082357}
!86 = !{i64 2156085117}
!87 = !{i64 2156086457}
!88 = !{i64 2156087274}
!89 = !{i64 2156089459}
!90 = !{i64 2156096036}
!91 = !{i64 2156097384}
!92 = !{i64 2156098240}
!93 = !{i64 2156098493}
!94 = !{i64 2156078425}
!95 = !{i64 2156083177}
