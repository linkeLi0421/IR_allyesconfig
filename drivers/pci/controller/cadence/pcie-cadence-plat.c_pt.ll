; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/cadence/pcie-cadence-plat.c_pt.bc'
source_filename = "../drivers/pci/controller/cadence/pcie-cadence-plat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cdns_pcie_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cdns_plat_pcie_of_data = type { i8 }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.cdns_plat_pcie = type { ptr, i8 }
%struct.cdns_pcie = type { ptr, ptr, ptr, i8, i32, ptr, ptr, ptr }

@__initcall__kmod_pcie_cadence_plat__295_186_cdns_plat_pcie_driver_init6 = internal global ptr @cdns_plat_pcie_driver_init, section ".initcall6.init", align 4
@cdns_plat_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_plat_pcie_probe, ptr null, ptr @cdns_plat_pcie_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_plat_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_pcie_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdns-pcie\00", [22 x i8] zeroinitializer }, align 32
@cdns_plat_pcie_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,cdns-pcie-host\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_plat_pcie_host_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,cdns-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cdns_plat_pcie_ep_of_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cdns_pcie_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@cdns_plat_pcie_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 15, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcie_cadence_plat\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_plat_pcie_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/pci/controller/cadence/pcie-cadence-plat.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" Started %s with is_rc: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cdns_plat_ops = internal constant { %struct.cdns_pcie_ops, [16 x i8] } { %struct.cdns_pcie_ops { ptr null, ptr null, ptr null, ptr @cdns_plat_cpu_addr_fixup }, [16 x i8] zeroinitializer }, align 32
@cdns_plat_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 84, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to init phy\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_plat_pcie_probe._entry_ptr = internal global ptr @cdns_plat_pcie_probe._entry, section ".printk_index", align 4
@cdns_plat_pcie_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 90, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pm_runtime_get_sync() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@cdns_plat_pcie_probe._entry_ptr.10 = internal global ptr @cdns_plat_pcie_probe._entry.8, section ".printk_index", align 4
@cdns_plat_pcie_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 112, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cdns_plat_pcie_probe._entry_ptr.12 = internal global ptr @cdns_plat_pcie_probe._entry.11, section ".printk_index", align 4
@cdns_plat_pcie_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 119, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@cdns_plat_pcie_probe._entry_ptr.14 = internal global ptr @cdns_plat_pcie_probe._entry.13, section ".printk_index", align 4
@cdns_plat_pcie_shutdown.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns_plat_pcie_shutdown\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_runtime_put_sync failed\0A\00", [36 x i8] zeroinitializer }, align 32
@cdns_plat_pcie_host_of_data = internal constant { %struct.cdns_plat_pcie_of_data, [31 x i8] } { %struct.cdns_plat_pcie_of_data { i8 1 }, [31 x i8] zeroinitializer }, align 32
@cdns_plat_pcie_ep_of_data = internal constant { %struct.cdns_plat_pcie_of_data, [31 x i8] } zeroinitializer, align 32
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"cdns_plat_pcie_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 177, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 179, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"cdns_plat_pcie_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 165, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 62, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"cdns_plat_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 40, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 84, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 90, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 112, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 119, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 150, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"cdns_plat_pcie_host_of_data\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 157, i32 44 }
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"cdns_plat_pcie_ep_of_data\00", align 1
@___asan_gen_.75 = private constant [54 x i8] c"../drivers/pci/controller/cadence/pcie-cadence-plat.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 161, i32 44 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__initcall__kmod_pcie_cadence_plat__295_186_cdns_plat_pcie_driver_init6, ptr @cdns_plat_pcie_probe._entry, ptr @cdns_plat_pcie_probe._entry.11, ptr @cdns_plat_pcie_probe._entry.13, ptr @cdns_plat_pcie_probe._entry.8, ptr @cdns_plat_pcie_probe._entry_ptr, ptr @cdns_plat_pcie_probe._entry_ptr.10, ptr @cdns_plat_pcie_probe._entry_ptr.12, ptr @cdns_plat_pcie_probe._entry_ptr.14, ptr @cdns_plat_pcie_driver, ptr @.str, ptr @cdns_plat_pcie_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cdns_plat_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.15, ptr @.str.16, ptr @cdns_plat_pcie_host_of_data, ptr @cdns_plat_pcie_ep_of_data], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_plat_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_plat_pcie_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_plat_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_plat_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_plat_pcie_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_plat_pcie_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_plat_pcie_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_plat_pcie_host_of_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_plat_pcie_ep_of_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_plat_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_plat_pcie_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_plat_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %call, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_plat_pcie_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cdns_plat_pcie_probe, %do.end)) #5
          to label %if.then10 [label %do.end], !srcloc !50

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cdns_plat_pcie_probe.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %2) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #5
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %do.end.cleanup_crit_edge, label %if.end16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br i1 %tobool3.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end16
  %call19 = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 52) #5
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then18.cleanup_crit_edge, label %if.end22

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.then18
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call19, i32 0, i32 16
  %dev24 = getelementptr inbounds %struct.pci_host_bridge, ptr %call19, i32 1, i32 0, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev24, align 4
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call19, i32 1, i32 0, i32 0, i32 6
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cdns_plat_ops, ptr %ops, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %private.i, ptr %call.i, align 4
  %is_rc29 = getelementptr inbounds %struct.cdns_plat_pcie, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %is_rc29 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %1, ptr %is_rc29, align 4
  %call32 = tail call i32 @cdns_pcie_init_phy(ptr noundef %dev1, ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end38, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end38:                                         ; preds = %if.end22
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i146 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp = icmp slt i32 %call.i146, 0
  br i1 %cmp, label %if.end38.err_get_sync.sink.split_crit_edge, label %if.end45

if.end38.err_get_sync.sink.split_crit_edge:       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_get_sync.sink.split

if.end45:                                         ; preds = %if.end38
  %call46 = tail call i32 @cdns_pcie_host_setup(ptr noundef %private.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.end45.err_get_sync_crit_edge

if.end45.err_get_sync_crit_edge:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_get_sync

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end16
  %call.i147 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #5
  %tobool51.not = icmp eq ptr %call.i147, null
  br i1 %tobool51.not, label %if.else.cleanup_crit_edge, label %if.end53

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %if.else
  %dev55 = getelementptr inbounds %struct.cdns_pcie, ptr %call.i147, i32 0, i32 2
  %8 = ptrtoint ptr %dev55 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %dev55, align 8
  %ops57 = getelementptr inbounds %struct.cdns_pcie, ptr %call.i147, i32 0, i32 7
  %9 = ptrtoint ptr %ops57 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cdns_plat_ops, ptr %ops57, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i147, ptr %call.i, align 4
  %is_rc61 = getelementptr inbounds %struct.cdns_plat_pcie, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %is_rc61 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %is_rc61, align 4
  %call64 = tail call i32 @cdns_pcie_init_phy(ptr noundef %dev1, ptr noundef nonnull %call.i147) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end70, label %if.end53.cleanup.sink.split_crit_edge

if.end53.cleanup.sink.split_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end70:                                         ; preds = %if.end53
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %call.i148 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp72 = icmp slt i32 %call.i148, 0
  br i1 %cmp72, label %if.end70.err_get_sync.sink.split_crit_edge, label %if.end78

if.end70.err_get_sync.sink.split_crit_edge:       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_get_sync.sink.split

if.end78:                                         ; preds = %if.end70
  %call79 = tail call i32 @cdns_pcie_ep_setup(ptr noundef nonnull %call.i147) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end78.cleanup_crit_edge, label %if.end78.err_get_sync_crit_edge

if.end78.err_get_sync_crit_edge:                  ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_get_sync

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_get_sync.sink.split:                          ; preds = %if.end70.err_get_sync.sink.split_crit_edge, %if.end38.err_get_sync.sink.split_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %err_get_sync

err_get_sync:                                     ; preds = %err_get_sync.sink.split, %if.end78.err_get_sync_crit_edge, %if.end45.err_get_sync_crit_edge
  %call.i149 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  tail call void @cdns_pcie_disable_phy(ptr noundef %13) #5
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %phy_count87 = getelementptr inbounds %struct.cdns_pcie, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %phy_count87 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_count87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool88.not151 = icmp eq i32 %17, 0
  br i1 %tobool88.not151, label %err_get_sync.cleanup_crit_edge, label %err_get_sync.while.body_crit_edge

err_get_sync.while.body_crit_edge:                ; preds = %err_get_sync
  br label %while.body

err_get_sync.cleanup_crit_edge:                   ; preds = %err_get_sync
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_get_sync.while.body_crit_edge
  %phy_count.0152 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %17, %err_get_sync.while.body_crit_edge ]
  %dec = add i32 %phy_count.0152, -1
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %link = getelementptr inbounds %struct.cdns_pcie, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link, align 4
  %arrayidx = getelementptr ptr, ptr %21, i32 %dec
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  tail call void @device_link_del(ptr noundef %23) #5
  %tobool88.not = icmp eq i32 %dec, 0
  br i1 %tobool88.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end53.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call32, %if.end22.cleanup.sink.split_crit_edge ], [ %call64, %if.end53.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.body.cleanup_crit_edge, %err_get_sync.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ -12, %if.then18.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %err_get_sync.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_plat_pcie_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_plat_pcie_shutdown.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cdns_plat_pcie_shutdown, %if.end8)) #5
          to label %if.then7 [label %if.end8], !srcloc !50

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_plat_pcie_shutdown.__UNIQUE_ID_ddebug294, ptr noundef %dev1, ptr noundef nonnull @.str.16) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %entry.if.end8_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  tail call void @cdns_pcie_disable_phy(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_pcie_init_phy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_pcie_host_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_pcie_ep_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdns_pcie_disable_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @cdns_plat_cpu_addr_fixup(ptr nocapture noundef readnone %pcie, i64 noundef %cpu_addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %cpu_addr, 268435455
  ret i64 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_pcie_cadence_plat__295_186_cdns_plat_pcie_driver_init6, !1, !"__initcall__kmod_pcie_cadence_plat__295_186_cdns_plat_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 186, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 179, i32 11}
!4 = !{ptr @cdns_plat_pcie_driver, !5, !"cdns_plat_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 177, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 62, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cdns_plat_pcie_probe.__UNIQUE_ID_ddebug293, !7, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 84, i32 4}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cdns_plat_pcie_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @cdns_plat_pcie_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 90, i32 4}
!20 = !{ptr @cdns_plat_pcie_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cdns_plat_pcie_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @cdns_plat_pcie_probe._entry.11, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 112, i32 4}
!24 = !{ptr @cdns_plat_pcie_probe._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @cdns_plat_pcie_probe._entry.13, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 119, i32 4}
!27 = !{ptr @cdns_plat_pcie_probe._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @cdns_plat_ops, !29, !"cdns_plat_ops", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 40, i32 35}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 150, i32 3}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cdns_plat_pcie_shutdown.__UNIQUE_ID_ddebug294, !31, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!34 = !{ptr @cdns_plat_pcie_of_match, !35, !"cdns_plat_pcie_of_match", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 165, i32 34}
!36 = !{ptr @cdns_plat_pcie_host_of_data, !37, !"cdns_plat_pcie_host_of_data", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 157, i32 44}
!38 = !{ptr @cdns_plat_pcie_ep_of_data, !39, !"cdns_plat_pcie_ep_of_data", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/cadence/pcie-cadence-plat.c", i32 161, i32 44}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = !{i64 2148693961, i64 2148693966, i64 2148693979, i64 2148694023, i64 2148694057, i64 2148694078}
