; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-rockchip-ep.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-rockchip-ep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pci_epc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
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
%struct.rockchip_pcie = type { ptr, ptr, i8, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, ptr, ptr, i32, ptr, i32, i8, ptr }
%struct.rockchip_pcie_ep = type { %struct.rockchip_pcie, ptr, i32, i32, ptr, i32, ptr, i64, i8, i8 }
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_epf_header = type { i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }

@__initcall__kmod_pcie_rockchip_ep__238_653_rockchip_pcie_ep_driver_init6 = internal global ptr @rockchip_pcie_ep_driver_init, section ".initcall6.init", align 4
@rockchip_pcie_ep_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rockchip_pcie_ep_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_pcie_ep_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rockchip-pcie-ep\00", [47 x i8] zeroinitializer }, align 32
@rockchip_pcie_ep_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rockchip_pcie_epc_ops = internal constant { %struct.pci_epc_ops, [36 x i8] } { %struct.pci_epc_ops { ptr @rockchip_pcie_ep_write_header, ptr @rockchip_pcie_ep_set_bar, ptr @rockchip_pcie_ep_clear_bar, ptr @rockchip_pcie_ep_map_addr, ptr @rockchip_pcie_ep_unmap_addr, ptr @rockchip_pcie_ep_set_msi, ptr @rockchip_pcie_ep_get_msi, ptr null, ptr null, ptr @rockchip_pcie_ep_raise_irq, ptr null, ptr @rockchip_pcie_ep_start, ptr null, ptr @rockchip_pcie_ep_get_features, ptr null }, [36 x i8] zeroinitializer }, align 32
@rockchip_pcie_ep_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 583, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create epc device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rockchip_pcie_ep_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pci/controller/pcie-rockchip-ep.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rockchip_pcie_ep_probe._entry_ptr = internal global ptr @rockchip_pcie_ep_probe._entry, section ".printk_index", align 4
@rockchip_pcie_ep_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 621, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize the memory space\0A\00", [57 x i8] zeroinitializer }, align 32
@rockchip_pcie_ep_probe._entry_ptr.8 = internal global ptr @rockchip_pcie_ep_probe._entry.6, section ".printk_index", align 4
@rockchip_pcie_ep_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 628, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to reserve memory space for MSI\0A\00", [56 x i8] zeroinitializer }, align 32
@rockchip_pcie_ep_probe._entry_ptr.11 = internal global ptr @rockchip_pcie_ep_probe._entry.9, section ".printk_index", align 4
@rockchip_pcie_ep_map_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no free outbound region\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip_pcie_ep_map_addr\00", [38 x i8] zeroinitializer }, align 32
@rockchip_pcie_ep_map_addr._entry_ptr = internal global ptr @rockchip_pcie_ep_map_addr._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rockchip_pcie_epc_features = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 32, i8 0, i8 0, [6 x i64] zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rockchip,max-outbound-regions\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max-functions\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant [24 x i8] c"rockchip_pcie_ep_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 645, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 647, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"rockchip_pcie_ep_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 559, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"rockchip_pcie_epc_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 518, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 583, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 621, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 628, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 274, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"rockchip_pcie_epc_features\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 506, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 546, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [45 x i8] c"../drivers/pci/controller/pcie-rockchip-ep.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 551, i32 42 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__initcall__kmod_pcie_rockchip_ep__238_653_rockchip_pcie_ep_driver_init6, ptr @rockchip_pcie_ep_map_addr._entry, ptr @rockchip_pcie_ep_map_addr._entry_ptr, ptr @rockchip_pcie_ep_probe._entry, ptr @rockchip_pcie_ep_probe._entry.6, ptr @rockchip_pcie_ep_probe._entry.9, ptr @rockchip_pcie_ep_probe._entry_ptr, ptr @rockchip_pcie_ep_probe._entry_ptr.11, ptr @rockchip_pcie_ep_probe._entry_ptr.8, ptr @rockchip_pcie_ep_driver, ptr @.str, ptr @rockchip_pcie_ep_of_match, ptr @rockchip_pcie_epc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @rockchip_pcie_epc_features, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_ep_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_ep_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_epc_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_ep_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_ep_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_ep_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_ep_map_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_pcie_epc_features to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_ep_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_pcie_ep_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_ep_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 176, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_rc = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 28
  %0 = ptrtoint ptr %is_rc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %is_rc, align 4
  %dev3 = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 23
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev3, align 4
  %call4 = tail call ptr @__devm_pci_epc_create(ptr noundef %dev1, ptr noundef nonnull @rockchip_pcie_epc_ops, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %epc9 = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %epc9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %epc9, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call4, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  %call.i88 = tail call i32 @rockchip_pcie_parse_dt(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %call2.i = tail call i32 @rockchip_pcie_get_phys(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %of_node.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %max_regions.i = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %call.i, i32 0, i32 2
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.14, ptr noundef %max_regions.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i89 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i89, label %if.end5.i.if.then9.i_crit_edge, label %lor.lhs.false.i

if.end5.i.if.then9.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %9 = ptrtoint ptr %max_regions.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_regions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp8.i = icmp ugt i32 %10, 32
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then9.i_crit_edge, label %lor.lhs.false.i.if.end11.i_crit_edge

lor.lhs.false.i.if.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

lor.lhs.false.i.if.then9.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false.i.if.then9.i_crit_edge, %if.end5.i.if.then9.i_crit_edge
  %11 = ptrtoint ptr %max_regions.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %max_regions.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %lor.lhs.false.i.if.end11.i_crit_edge
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  %14 = ptrtoint ptr %epc9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %epc9, align 4
  %max_functions.i = getelementptr inbounds %struct.pci_epc, ptr %15, i32 0, i32 6
  %call.i.i32.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %13, ptr noundef nonnull @.str.15, ptr noundef %max_functions.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32.i)
  %cmp14.i = icmp slt i32 %call.i.i32.i, 0
  br i1 %cmp14.i, label %if.then15.i, label %if.end11.i.if.end13_crit_edge

if.end11.i.if.end13_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %epc9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %epc9, align 4
  %max_functions17.i = getelementptr inbounds %struct.pci_epc, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %max_functions17.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %max_functions17.i, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then15.i, %if.end11.i.if.end13_crit_edge
  %call14 = tail call i32 @rockchip_pcie_enable_clocks(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @rockchip_pcie_init_port(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.err_disable_clocks_crit_edge

if.end17.err_disable_clocks_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_clocks

if.end21:                                         ; preds = %if.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %apb_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 33554944) #6, !srcloc !47
  %21 = ptrtoint ptr %max_regions.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_regions.i, align 8
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #6
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !48

devm_kcalloc.exit.thread:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %ob_addr94 = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %ob_addr94 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ob_addr94, align 8
  br label %err_uninit_port

devm_kcalloc.exit:                                ; preds = %if.end21
  %26 = extractvalue { i32, i1 } %23, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %26, i32 noundef 3520) #6
  %ob_addr = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %ob_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i, ptr %ob_addr, align 8
  %tobool25.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool25.not, label %devm_kcalloc.exit.err_uninit_port_crit_edge, label %if.end27

devm_kcalloc.exit.err_uninit_port_crit_edge:      ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_uninit_port

if.end27:                                         ; preds = %devm_kcalloc.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 9437888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !47
  %mem_res = getelementptr inbounds %struct.rockchip_pcie, ptr %call.i, i32 0, i32 29
  %30 = ptrtoint ptr %mem_res to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mem_res, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %33
  %add.i = add i32 %sub.i, %35
  %call30 = tail call i32 @pci_epc_mem_init(ptr noundef %call4, i32 noundef %33, i32 noundef %add.i, i32 noundef 4096) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %err_uninit_port

if.end35:                                         ; preds = %if.end27
  %irq_phys_addr = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %call.i, i32 0, i32 5
  %call36 = tail call ptr @pci_epc_mem_alloc_addr(ptr noundef %call4, ptr noundef %irq_phys_addr, i32 noundef 131072) #6
  %irq_cpu_addr = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %irq_cpu_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call36, ptr %irq_cpu_addr, align 8
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %do.end42, label %if.end43

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  tail call void @pci_epc_mem_exit(ptr noundef %call4) #6
  br label %err_uninit_port

if.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %irq_pci_addr = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %call.i, i32 0, i32 7
  %37 = ptrtoint ptr %irq_pci_addr to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1, ptr %irq_pci_addr, align 8
  br label %cleanup

err_uninit_port:                                  ; preds = %do.end42, %do.end34, %devm_kcalloc.exit.err_uninit_port_crit_edge, %devm_kcalloc.exit.thread
  %err.0 = phi i32 [ %call30, %do.end34 ], [ -12, %do.end42 ], [ -12, %devm_kcalloc.exit.err_uninit_port_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  tail call void @rockchip_pcie_deinit_phys(ptr noundef nonnull %call.i) #6
  br label %err_disable_clocks

err_disable_clocks:                               ; preds = %err_uninit_port, %if.end17.err_disable_clocks_crit_edge
  %err.1 = phi i32 [ %call18, %if.end17.err_disable_clocks_crit_edge ], [ %err.0, %err_uninit_port ]
  tail call void @rockchip_pcie_disable_clocks(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clocks, %if.end43, %if.end13.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %do.end ], [ %err.1, %err_disable_clocks ], [ 0, %if.end43 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call.i88, %if.end8.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_pci_epc_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_pcie_enable_clocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_pcie_init_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_mem_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_mem_alloc_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_mem_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_pcie_deinit_phys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_pcie_disable_clocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_ep_write_header(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, ptr nocapture noundef readonly %hdr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fn)
  %cmp = icmp eq i8 %fn, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hdr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdr, align 4
  %conv3 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv3) #6
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 9437252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !47
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = zext i8 %fn to i32
  %deviceid = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 1
  %7 = ptrtoint ptr %deviceid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %deviceid, align 2
  %shl9 = shl nuw nsw i32 %conv, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %10 = zext i16 %9 to i32
  %apb_base.i60 = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %apb_base.i60 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %apb_base.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %12, i32 %shl9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %10) #6, !srcloc !47
  %revid = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 2
  %13 = ptrtoint ptr %revid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %revid, align 4
  %conv11 = zext i8 %14 to i32
  %progif_code = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 3
  %15 = ptrtoint ptr %progif_code to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %progif_code, align 1
  %conv12 = zext i8 %16 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %shl13, %conv11
  %subclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 4
  %17 = ptrtoint ptr %subclass_code to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %subclass_code, align 2
  %conv15 = zext i8 %18 to i32
  %shl16 = shl nuw nsw i32 %conv15, 16
  %or17 = or i32 %or14, %shl16
  %baseclass_code = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 5
  %19 = ptrtoint ptr %baseclass_code to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %baseclass_code, align 1
  %conv18 = zext i8 %20 to i32
  %shl19 = shl nuw i32 %conv18, 24
  %or20 = or i32 %or17, %shl19
  %add24 = or i32 %shl9, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %or20) #6
  %22 = ptrtoint ptr %apb_base.i60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %apb_base.i60, align 4
  %add.ptr.i63 = getelementptr i8, ptr %23, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %21) #6, !srcloc !47
  %cache_line_size = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 6
  %24 = ptrtoint ptr %cache_line_size to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %cache_line_size, align 4
  %conv25 = zext i8 %25 to i32
  %add29 = or i32 %shl9, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %26 = shl nuw i32 %conv25, 24
  %27 = ptrtoint ptr %apb_base.i60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %apb_base.i60, align 4
  %add.ptr.i65 = getelementptr i8, ptr %28, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %26) #6, !srcloc !47
  %subsys_id = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 8
  %29 = ptrtoint ptr %subsys_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %subsys_id, align 4
  %add35 = or i32 %shl9, 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  %32 = zext i16 %31 to i32
  %33 = ptrtoint ptr %apb_base.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %apb_base.i60, align 4
  %add.ptr.i67 = getelementptr i8, ptr %34, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %32) #6, !srcloc !47
  %interrupt_pin = getelementptr inbounds %struct.pci_epf_header, ptr %hdr, i32 0, i32 9
  %35 = ptrtoint ptr %interrupt_pin to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %interrupt_pin, align 4
  %add40 = or i32 %shl9, 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = lshr i32 %37, 8
  %39 = ptrtoint ptr %apb_base.i60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %apb_base.i60, align 4
  %add.ptr.i69 = getelementptr i8, ptr %40, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %38) #6, !srcloc !47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_ep_set_bar(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, ptr nocapture noundef readonly %epf_bar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %epf_bar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %epf_bar, align 4
  %barno = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 3
  %4 = ptrtoint ptr %barno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %barno, align 4
  %flags2 = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 4
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 4
  %size = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 28)
  %sub = add i32 %10, -1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #6, !range !49
  %sub.i6.i = sub nuw nsw i32 32, %11
  %sh_prom = zext i32 %sub.i6.i to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %shr.i.i = lshr i64 %shl, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #6, !range !49
  %add.i.i = sub nuw nsw i32 64, %12
  br label %cond.end14

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i = trunc i64 %shl to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #6, !range !49
  %sub.i6.i.i = sub nuw nsw i32 32, %13
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end14

cond.end14:                                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub16 = add nsw i32 %retval.0.i.i, 24
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17.not = icmp eq i32 %and, 0
  br i1 %cmp17.not, label %if.else, label %cond.end14.if.end46_crit_edge

cond.end14.if.end46_crit_edge:                    ; preds = %cond.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.else:                                          ; preds = %cond.end14
  %and19 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21 = icmp eq i32 %11, 0
  %cmp21.not = xor i1 %cmp21, true
  %and26 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond = select i1 %cmp21.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end, label %if.else.cleanup88_crit_edge

if.else.cleanup88_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup88

if.end:                                           ; preds = %if.else
  %brmerge = select i1 %cmp21.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.else35, label %if.end.if.end46_crit_edge

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.else35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %.139 = select i1 %cmp21, i32 6, i32 4
  %spec.select = select i1 %tobool.not, i32 %.139, i32 5
  br label %if.end46

if.end46:                                         ; preds = %if.else35, %if.end.if.end46_crit_edge, %cond.end14.if.end46_crit_edge
  %ctrl.2 = phi i32 [ 1, %cond.end14.if.end46_crit_edge ], [ %spec.select, %if.else35 ], [ 7, %if.end.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp47 = icmp slt i32 %5, 4
  %conv50 = zext i8 %fn to i32
  %mul = shl nuw nsw i32 %conv50, 3
  %reg.0.v = select i1 %cmp47, i32 9437760, i32 9437764
  %reg.0 = add nuw nsw i32 %mul, %reg.0.v
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %reg.0
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !50
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %18 = shl i32 %5, 3
  %19 = add i32 %18, -32
  %mul60 = select i1 %cmp47, i32 %18, i32 %19
  %shl63 = shl i32 224, %mul60
  %or = shl i32 255, %mul60
  %neg = xor i32 %or, -1
  %and64 = and i32 %17, %neg
  %shl66137 = and i32 %sub16, 31
  %and69 = shl i32 %shl66137, %mul60
  %add71 = or i32 %mul60, 5
  %shl72 = shl i32 %ctrl.2, %add71
  %and75 = and i32 %shl72, %shl63
  %or76 = or i32 %and75, %and69
  %or77 = or i32 %or76, %and64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or77) #6
  %21 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %22, i32 %reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %20) #6, !srcloc !47
  %mul79 = shl nuw nsw i32 %conv50, 6
  %mul81 = shl i32 %5, 3
  %add80 = add i32 %mul81, %mul79
  %add82 = add i32 %add80, 4196416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %24 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %25, i32 %add82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 %23) #6, !srcloc !47
  %add87 = add i32 %add80, 4196420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %27, i32 %add87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 0) #6, !srcloc !47
  br label %cleanup88

cleanup88:                                        ; preds = %if.end46, %if.else.cleanup88_crit_edge
  %retval.1 = phi i32 [ 0, %if.end46 ], [ -22, %if.else.cleanup88_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pcie_ep_clear_bar(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, ptr nocapture noundef readonly %epf_bar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %barno = getelementptr inbounds %struct.pci_epf_bar, ptr %epf_bar, i32 0, i32 3
  %2 = ptrtoint ptr %barno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %barno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp slt i32 %3, 4
  %conv = zext i8 %fn to i32
  %mul = shl nuw nsw i32 %conv, 3
  %reg.0.v = select i1 %cmp, i32 9437760, i32 9437764
  %reg.0 = add nuw nsw i32 %mul, %reg.0.v
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %reg.0
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !50
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %8 = shl i32 %3, 3
  %9 = add i32 %8, -32
  %mul6 = select i1 %cmp, i32 %8, i32 %9
  %or = shl i32 255, %mul6
  %neg = xor i32 %or, -1
  %and = and i32 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %11 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %12, i32 %reg.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %10) #6, !srcloc !47
  %mul17 = shl nuw nsw i32 %conv, 6
  %mul19 = shl i32 %3, 3
  %add18 = add i32 %mul19, %mul17
  %add20 = add i32 %add18, 4196416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %14, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 0) #6, !srcloc !47
  %add25 = add i32 %add18, 4196420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %16, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 0) #6, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_ep_map_addr(ptr noundef %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %addr, i64 noundef %pci_addr, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ob_region_map = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @_find_first_zero_bit_be(ptr noundef %ob_region_map, i32 noundef 128) #6
  %max_regions = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max_regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_regions, align 8
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %sub)
  %cmp.not = icmp ult i32 %call1, %sub
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epc, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %addr to i64
  tail call fastcc void @rockchip_pcie_prog_ep_ob_atu(ptr noundef %1, i8 noundef zeroext %fn, i32 noundef %call1, i32 noundef 2, i64 noundef %conv, i64 noundef %pci_addr, i32 noundef %size)
  tail call void @_set_bit(i32 noundef %call1, ptr noundef %ob_region_map) #6
  %ob_addr = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ob_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ob_addr, align 8
  %arrayidx = getelementptr i32, ptr %5, i32 %call1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %addr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_pcie_ep_unmap_addr(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %max_regions = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %max_regions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_regions, align 8
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp23.not = icmp eq i32 %sub, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ob_addr = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ob_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ob_addr, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %5, i32 %r.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %addr)
  %cmp2 = icmp eq i32 %7, %addr
  br i1 %cmp2, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %r.024, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %r.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %r.024, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0.lcssa, i32 %sub)
  %cmp5 = icmp eq i32 %r.0.lcssa, %sub
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = shl i32 %r.0.lcssa, 5
  %mul.i = and i32 %and.i, 992
  %add.i = or i32 %mul.i, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %apb_base.i.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !47
  %add3.i = or i32 %mul.i, 4194308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %11, i32 %add3.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 0) #6, !srcloc !47
  %add6.i = or i32 %mul.i, 4194312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %13, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 0) #6, !srcloc !47
  %add9.i = or i32 %mul.i, 4194316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %15, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 0) #6, !srcloc !47
  %add12.i = or i32 %mul.i, 4194328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %17, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 0) #6, !srcloc !47
  %add15.i = or i32 %mul.i, 4194332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i35.i = getelementptr i8, ptr %19, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35.i, i32 0) #6, !srcloc !47
  %ob_addr8 = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %ob_addr8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ob_addr8, align 8
  %arrayidx9 = getelementptr i32, ptr %21, i32 %r.0.lcssa
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx9, align 4
  %ob_region_map = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %1, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %r.0.lcssa, ptr noundef %ob_region_map) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_ep_set_msi(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i8 noundef zeroext %multi_msg_cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i8 %fn to i32
  %shl = shl nuw nsw i32 %conv, 12
  %add = or i32 %shl, 144
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %5 = and i32 %4, 2147418112
  %6 = or i32 %5, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %6) #6, !srcloc !47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_ep_get_msi(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = zext i8 %fn to i32
  %shl = shl nuw nsw i32 %conv, 12
  %add = or i32 %shl, 144
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_ep_raise_irq(ptr nocapture noundef readonly %epc, i8 noundef zeroext %fn, i8 noundef zeroext %vfn, i32 noundef %type, i16 noundef zeroext %interrupt_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %conv.i = zext i8 %fn to i32
  %shl.i = shl nuw nsw i32 %conv.i, 12
  %add.i = or i32 %shl.i, 4
  %apb_base.i.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %apb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %apb_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %add.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @rockchip_pcie_ep_assert_intx(ptr noundef %1, i8 noundef zeroext %fn, i1 noundef zeroext true) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #6
  tail call fastcc void @rockchip_pcie_ep_assert_intx(ptr noundef %1, i8 noundef zeroext %fn, i1 noundef zeroext false) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i6 = zext i8 %fn to i32
  %shl.i7 = shl nuw nsw i32 %conv.i6, 12
  %add.i8 = or i32 %shl.i7, 144
  %apb_base.i.i9 = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %apb_base.i.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_base.i.i9, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %9, i32 %add.i8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb2 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_pcie_ep_start(ptr noundef readonly %epc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epc, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pci_epf = getelementptr inbounds %struct.pci_epc, ptr %epc, i32 0, i32 1
  %2 = ptrtoint ptr %pci_epf to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn13 = load ptr, ptr %pci_epf, align 4
  %cmp.not14 = icmp eq ptr %.pn13, %pci_epf
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn13, %entry.for.body_crit_edge ]
  %cfg.015 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %func_no = getelementptr i8, ptr %.pn16, i32 -16
  %3 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %func_no, align 4
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %cfg.015
  %5 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %pci_epf
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cfg.0.lcssa = phi i32 [ 1, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %cfg.0.lcssa) #6
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 9437888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !47
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @rockchip_pcie_ep_get_features(ptr nocapture noundef readnone %epc, i8 noundef zeroext %func_no, i8 noundef zeroext %vfunc_no) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @rockchip_pcie_epc_features
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_pcie_prog_ep_ob_atu(ptr nocapture noundef readonly %rockchip, i8 noundef zeroext %fn, i32 noundef %r, i32 noundef %type, i64 noundef %cpu_addr, i64 noundef %pci_addr, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i5.i = icmp eq i32 %sub, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #6, !range !49
  %sub.i6.i = sub nuw nsw i32 32, %0
  %cond.i7.i = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i
  %sh_prom = zext i32 %cond.i7.i to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %shr.i.i = lshr i64 %shl, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #6, !range !49
  %add.i.i = sub nuw nsw i32 64, %1
  br label %cond.end6

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i = trunc i64 %shl to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %2 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #6, !range !49
  %sub.i6.i.i = sub nuw nsw i32 32, %2
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end6

cond.end6:                                        ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %type)
  %cmp8 = icmp eq i32 %type, 12
  %3 = call i32 @llvm.smax.i32(i32 %retval.0.i.i, i32 9)
  %mem_res = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 29
  %4 = ptrtoint ptr %mem_res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_res, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %conv12 = zext i32 %7 to i64
  %sub13 = sub i64 %cpu_addr, %conv12
  %sub17 = add nuw i32 %3, 62
  %phi.bo = and i32 %sub17, 63
  %cond19 = select i1 %cmp8, i32 16, i32 %phi.bo
  %conv21 = trunc i64 %sub13 to i32
  %and22 = and i32 %conv21, -256
  %or = or i32 %and22, %cond19
  %conv31 = zext i8 %fn to i32
  %shl32 = shl nuw i32 %conv31, 24
  %or34 = or i32 %shl32, %type
  br i1 %cmp8, label %if.then36, label %if.else

if.then36:                                        ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #8
  %and37 = shl i32 %r, 5
  %mul = and i32 %and37, 992
  %add = or i32 %mul, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 1
  %8 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !47
  %add40 = or i32 %mul, 4194308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %11, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 0) #6, !srcloc !47
  %add43 = or i32 %mul, 4194312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or34) #6
  %13 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %14, i32 %add43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %12) #6, !srcloc !47
  %add46 = or i32 %mul, 4194316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %16, i32 %add46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 0) #6, !srcloc !47
  br label %if.end68

if.else:                                          ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #8
  %extract110 = lshr i64 %pci_addr, 32
  %extract.t111 = trunc i64 %extract110 to i32
  %and47 = shl i32 %r, 5
  %mul48 = and i32 %and47, 992
  %add49 = or i32 %mul48, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %apb_base.i118 = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 1
  %18 = ptrtoint ptr %apb_base.i118 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %apb_base.i118, align 4
  %add.ptr.i119 = getelementptr i8, ptr %19, i32 %add49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %17) #6, !srcloc !47
  %add52 = or i32 %mul48, 4194308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %extract.t111) #6
  %21 = ptrtoint ptr %apb_base.i118 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %apb_base.i118, align 4
  %add.ptr.i121 = getelementptr i8, ptr %22, i32 %add52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121, i32 %20) #6, !srcloc !47
  %add55 = or i32 %mul48, 4194312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or34) #6
  %24 = ptrtoint ptr %apb_base.i118 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %apb_base.i118, align 4
  %add.ptr.i123 = getelementptr i8, ptr %25, i32 %add55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i123, i32 %23) #6, !srcloc !47
  %add58 = or i32 %mul48, 4194316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %apb_base.i118 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %apb_base.i118, align 4
  %add.ptr.i125 = getelementptr i8, ptr %27, i32 %add58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 0) #6, !srcloc !47
  %or64 = or i32 %and22, %phi.bo
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then36
  %mul70.pre-phi = phi i32 [ %mul48, %if.else ], [ %mul, %if.then36 ]
  %addr0.0 = phi i32 [ %or64, %if.else ], [ %or, %if.then36 ]
  %extract = lshr i64 %sub13, 32
  %extract.t = trunc i64 %extract to i32
  %add71 = or i32 %mul70.pre-phi, 4194328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %addr0.0) #6
  %apb_base.i126 = getelementptr inbounds %struct.rockchip_pcie, ptr %rockchip, i32 0, i32 1
  %29 = ptrtoint ptr %apb_base.i126 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %apb_base.i126, align 4
  %add.ptr.i127 = getelementptr i8, ptr %30, i32 %add71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %28) #6, !srcloc !47
  %add74 = or i32 %mul70.pre-phi, 4194332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %extract.t) #6
  %32 = ptrtoint ptr %apb_base.i126 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %apb_base.i126, align 4
  %add.ptr.i129 = getelementptr i8, ptr %33, i32 %add74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %31) #6, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rockchip_pcie_ep_assert_intx(ptr nocapture noundef %ep, i8 noundef zeroext %fn, i1 noundef zeroext %is_asserted) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_regions = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %max_regions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_regions, align 8
  %sub = add i32 %1, -1
  %irq_pci_addr = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %ep, i32 0, i32 7
  %2 = ptrtoint ptr %irq_pci_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %irq_pci_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %3)
  %cmp.not = icmp eq i64 %3, 3
  br i1 %cmp.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !52

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %irq_pci_fn = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %ep, i32 0, i32 8
  %4 = ptrtoint ptr %irq_pci_fn to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_pci_fn, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %fn)
  %cmp3.not = icmp eq i8 %5, %fn
  br i1 %cmp3.not, label %lor.rhs.if.end_crit_edge, label %lor.rhs.if.then_crit_edge, !prof !52

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  %irq_phys_addr = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %ep, i32 0, i32 5
  %6 = ptrtoint ptr %irq_phys_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_phys_addr, align 4
  %conv6 = zext i32 %7 to i64
  tail call fastcc void @rockchip_pcie_prog_ep_ob_atu(ptr noundef %ep, i8 noundef zeroext %fn, i32 noundef %sub, i32 noundef 12, i64 noundef %conv6, i64 noundef 0, i32 noundef 0)
  %8 = ptrtoint ptr %irq_pci_addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 3, ptr %irq_pci_addr, align 8
  %irq_pci_fn8 = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %ep, i32 0, i32 8
  %9 = ptrtoint ptr %irq_pci_fn8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %fn, ptr %irq_pci_fn8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.rhs.if.end_crit_edge
  %irq_pending = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %ep, i32 0, i32 9
  %10 = ptrtoint ptr %irq_pending to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %irq_pending, align 1
  %12 = and i8 %11, -2
  %masksel = zext i1 %is_asserted to i8
  %.sink = or i8 %12, %masksel
  store i8 %.sink, ptr %irq_pending, align 1
  %conv28 = zext i8 %fn to i32
  %shl29 = shl nuw nsw i32 %conv28, 12
  %add31 = or i32 %shl29, 4
  %apb_base.i = getelementptr inbounds %struct.rockchip_pcie, ptr %ep, i32 0, i32 1
  %13 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add31
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !50
  %16 = shl i32 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %and32 = and i32 %16, 524288
  %and32.lobit = lshr exact i32 %and32, 19
  %irq_pending35 = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %ep, i32 0, i32 9
  %17 = ptrtoint ptr %irq_pending35 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %irq_pending35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp37 = icmp ne i8 %18, 0
  %conv38 = zext i1 %cmp37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and32.lobit, i32 %conv38)
  %tobool39.not = icmp eq i32 %and32.lobit, %conv38
  br i1 %tobool39.not, label %if.end.if.end46_crit_edge, label %if.then40

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then40:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %xor41 = lshr exact i32 %and32, 8
  %19 = xor i32 %xor41, 2048
  %20 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %apb_base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %21, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %19) #6, !srcloc !47
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.end.if.end46_crit_edge
  %msg_code.0 = select i1 %is_asserted, i32 73856, i32 74880
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %irq_cpu_addr = getelementptr inbounds %struct.rockchip_pcie_ep, ptr %ep, i32 0, i32 6
  %22 = ptrtoint ptr %irq_cpu_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_cpu_addr, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 %msg_code.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_pcie_parse_dt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_pcie_get_phys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_pcie_rockchip_ep__238_653_rockchip_pcie_ep_driver_init6, !1, !"__initcall__kmod_pcie_rockchip_ep__238_653_rockchip_pcie_ep_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 653, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 647, i32 11}
!4 = !{ptr @rockchip_pcie_ep_driver, !5, !"rockchip_pcie_ep_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 645, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 583, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rockchip_pcie_ep_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @rockchip_pcie_ep_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 621, i32 3}
!16 = !{ptr @rockchip_pcie_ep_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rockchip_pcie_ep_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 628, i32 3}
!20 = !{ptr @rockchip_pcie_ep_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rockchip_pcie_ep_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @rockchip_pcie_epc_ops, !23, !"rockchip_pcie_epc_ops", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 518, i32 33}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 274, i32 3}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rockchip_pcie_ep_map_addr._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @rockchip_pcie_ep_map_addr._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @rockchip_pcie_epc_features, !30, !"rockchip_pcie_epc_features", i1 false, i1 false}
!30 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 506, i32 38}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 546, i32 8}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 551, i32 42}
!35 = !{ptr @rockchip_pcie_ep_of_match, !36, !"rockchip_pcie_ep_of_match", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/pcie-rockchip-ep.c", i32 559, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2154578962}
!47 = !{i64 5118593}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i32 0, i32 33}
!50 = !{i64 5119011}
!51 = !{i64 2154578741}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2154603330}
