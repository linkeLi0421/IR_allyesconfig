; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-spear13xx.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-spear13xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
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
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.spear13xx_pcie = type { ptr, ptr, ptr, ptr }
%struct.pcie_app_reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_pcie_spear13xx__293_266_spear13xx_pcie_driver_init6 = internal global ptr @spear13xx_pcie_driver_init, section ".initcall6.init", align 4
@spear13xx_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spear13xx_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @spear13xx_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spear-pcie\00", [21 x i8] zeroinitializer }, align 32
@spear13xx_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear1340-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @spear13xx_pcie_link_up, ptr @spear13xx_pcie_start_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-phy\00", [23 x i8] zeroinitializer }, align 32
@spear13xx_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"probe deferred\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spear13xx_pcie_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/pci/controller/dwc/pcie-spear13xx.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spear13xx_pcie_probe._entry_ptr = internal global ptr @spear13xx_pcie_probe._entry, section ".printk_index", align 4
@spear13xx_pcie_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 218, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't get pcie-phy\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@spear13xx_pcie_probe._entry_ptr.10 = internal global ptr @spear13xx_pcie_probe._entry.7, section ".printk_index", align 4
@spear13xx_pcie_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 226, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't get clk for pcie\0A\00", [37 x i8] zeroinitializer }, align 32
@spear13xx_pcie_probe._entry_ptr.13 = internal global ptr @spear13xx_pcie_probe._entry.11, section ".printk_index", align 4
@spear13xx_pcie_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 231, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"couldn't enable clk for pcie\0A\00", [34 x i8] zeroinitializer }, align 32
@spear13xx_pcie_probe._entry_ptr.16 = internal global ptr @spear13xx_pcie_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,pcie-is-gen1\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spear1340-pcie\00", [17 x i8] zeroinitializer }, align 32
@spear13xx_add_pcie_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 170, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"spear13xx_add_pcie_port\00", [40 x i8] zeroinitializer }, align 32
@spear13xx_add_pcie_port._entry_ptr = internal global ptr @spear13xx_add_pcie_port._entry, section ".printk_index", align 4
@spear13xx_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @spear13xx_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@spear13xx_add_pcie_port._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 179, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize host\0A\00", [37 x i8] zeroinitializer }, align 32
@spear13xx_add_pcie_port._entry_ptr.23 = internal global ptr @spear13xx_add_pcie_port._entry.21, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"spear13xx_pcie_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 257, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 260, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"spear13xx_pcie_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 252, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 186, i32 33 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 212, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 216, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 218, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 226, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 231, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 235, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 168, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 170, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"spear13xx_pcie_host_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 150, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [47 x i8] c"../drivers/pci/controller/dwc/pcie-spear13xx.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 179, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__initcall__kmod_pcie_spear13xx__293_266_spear13xx_pcie_driver_init6, ptr @spear13xx_add_pcie_port._entry, ptr @spear13xx_add_pcie_port._entry.21, ptr @spear13xx_add_pcie_port._entry_ptr, ptr @spear13xx_add_pcie_port._entry_ptr.23, ptr @spear13xx_pcie_probe._entry, ptr @spear13xx_pcie_probe._entry.11, ptr @spear13xx_pcie_probe._entry.14, ptr @spear13xx_pcie_probe._entry.7, ptr @spear13xx_pcie_probe._entry_ptr, ptr @spear13xx_pcie_probe._entry_ptr.10, ptr @spear13xx_pcie_probe._entry_ptr.13, ptr @spear13xx_pcie_probe._entry_ptr.16, ptr @spear13xx_pcie_driver, ptr @.str, ptr @spear13xx_pcie_of_match, ptr @dw_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @spear13xx_pcie_host_ops, ptr @.str.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_pcie_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_pcie_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_pcie_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_add_pcie_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear13xx_add_pcie_port._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spear13xx_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear13xx_pcie_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear13xx_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i84 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i84, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i84 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i84, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i84, i32 0, i32 9
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i84, ptr %call.i, align 4
  %call8 = tail call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #4
  %phy = getelementptr inbounds %struct.spear13xx_pcie, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end5
  %cmp = icmp eq ptr %call8, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %do.end, label %do.end17

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %call21 = tail call i32 @phy_init(ptr noundef %call8) #4
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #4
  %clk = getelementptr inbounds %struct.spear13xx_pcie, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %clk, align 4
  %cmp.i85 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end19
  %call.i86 = tail call i32 @clk_prepare(ptr noundef %call22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.do.end38_crit_edge

if.end31.do.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end38

if.end.i:                                         ; preds = %if.end31
  %call1.i = tail call i32 @clk_enable(ptr noundef %call22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end39, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call22) #4
  br label %do.end38

do.end38:                                         ; preds = %if.then3.i, %if.end31.do.end38_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i86, %if.end31.do.end38_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end39:                                         ; preds = %if.end.i
  %call.i87 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef null) #4
  %tobool.i.not = icmp eq ptr %call.i87, null
  br i1 %tobool.i.not, label %if.end39.if.end42_crit_edge, label %if.then41

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %link_gen = getelementptr inbounds %struct.dw_pcie, ptr %call.i84, i32 0, i32 12
  %11 = ptrtoint ptr %link_gen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %link_gen, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %pp2.i = getelementptr inbounds %struct.dw_pcie, ptr %14, i32 0, i32 7
  %call.i88 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  %irq.i = getelementptr inbounds %struct.dw_pcie, ptr %14, i32 0, i32 7, i32 7
  %15 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i88, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp.i89 = icmp slt i32 %call.i88, 0
  br i1 %cmp.i89, label %if.end42.fail_clk_crit_edge, label %if.end.i91

if.end42.fail_clk_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_clk

if.end.i91:                                       ; preds = %if.end42
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call.i88, ptr noundef nonnull @spear13xx_pcie_irq_handler, ptr noundef null, i32 noundef 65664, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i90 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i90, label %if.end10.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %17) #7
  br label %spear13xx_add_pcie_port.exit

if.end10.i:                                       ; preds = %if.end.i91
  %ops.i = getelementptr inbounds %struct.dw_pcie, ptr %14, i32 0, i32 7, i32 8
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @spear13xx_pcie_host_ops, ptr %ops.i, align 8
  %msi_irq.i = getelementptr inbounds %struct.dw_pcie, ptr %14, i32 0, i32 7, i32 9
  %19 = ptrtoint ptr %msi_irq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -19, ptr %msi_irq.i, align 4
  %call11.i = tail call i32 @dw_pcie_host_init(ptr noundef %pp2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.cleanup_crit_edge, label %do.end16.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #7
  br label %spear13xx_add_pcie_port.exit

spear13xx_add_pcie_port.exit:                     ; preds = %do.end16.i, %do.end.i
  %retval.0.i92 = phi i32 [ %call.i.i, %do.end.i ], [ %call11.i, %do.end16.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i92)
  %cmp44 = icmp slt i32 %retval.0.i92, 0
  br i1 %cmp44, label %spear13xx_add_pcie_port.exit.fail_clk_crit_edge, label %spear13xx_add_pcie_port.exit.cleanup_crit_edge

spear13xx_add_pcie_port.exit.cleanup_crit_edge:   ; preds = %spear13xx_add_pcie_port.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

spear13xx_add_pcie_port.exit.fail_clk_crit_edge:  ; preds = %spear13xx_add_pcie_port.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_clk

fail_clk:                                         ; preds = %spear13xx_add_pcie_port.exit.fail_clk_crit_edge, %if.end42.fail_clk_crit_edge
  %retval.0.i9298 = phi i32 [ %retval.0.i92, %spear13xx_add_pcie_port.exit.fail_clk_crit_edge ], [ %call.i88, %if.end42.fail_clk_crit_edge ]
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %21) #4
  tail call void @clk_unprepare(ptr noundef %21) #4
  br label %cleanup

cleanup:                                          ; preds = %fail_clk, %spear13xx_add_pcie_port.exit.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %do.end38, %do.end28, %do.end17, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end28 ], [ %retval.0.i.ph, %do.end38 ], [ %retval.0.i9298, %fail_clk ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %6, %do.end17 ], [ -517, %do.end ], [ 0, %spear13xx_add_pcie_port.exit.cleanup_crit_edge ], [ 0, %if.end10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear13xx_pcie_link_up(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %app_base = getelementptr inbounds %struct.spear13xx_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %app_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app_base, align 4
  %app_status_1 = getelementptr inbounds %struct.pcie_app_reg, ptr %5, i32 0, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %app_status_1) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  %7 = lshr i32 %6, 30
  %.lobit = and i32 %7, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear13xx_pcie_start_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %app_base = getelementptr inbounds %struct.spear13xx_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %app_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 134217928) #4, !srcloc !60
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear13xx_pcie_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %app_base = getelementptr inbounds %struct.spear13xx_pcie, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %app_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app_base, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %int_sts = getelementptr inbounds %struct.pcie_app_reg, ptr %1, i32 0, i32 6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_sts) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pp2 = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @dw_handle_msi_irq(ptr noundef %pp2) #4
  br label %do.body5

do.body5:                                         ; preds = %do.end, %entry.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %int_clr = getelementptr inbounds %struct.pcie_app_reg, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_clr, i32 %4) #4, !srcloc !60
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_handle_msi_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear13xx_pcie_host_init(ptr noundef %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i8 @dw_pcie_find_capability(ptr noundef %add.ptr, i8 noundef zeroext 16) #4
  %conv = zext i8 %call1 to i32
  %dbi_base = getelementptr i8, ptr %pp, i32 -28
  %4 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbi_base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 8192
  %app_base = getelementptr inbounds %struct.spear13xx_pcie, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %app_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr2, ptr %app_base, align 4
  %add = add nuw nsw i32 %conv, 8
  %call.i = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 2) #4
  %7 = and i32 %call.i, 36863
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 2, i32 noundef %7) #4
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 2, i32 noundef 4170) #4
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef 2, i32 noundef 2, i32 noundef 52608) #4
  %8 = ptrtoint ptr %app_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %app_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %int_mask.i = getelementptr inbounds %struct.pcie_app_reg, ptr %9, i32 0, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_mask.i) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %11 = or i32 %10, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_mask.i, i32 %11) #4, !srcloc !60
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dw_pcie_find_capability(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_pcie_spear13xx__293_266_spear13xx_pcie_driver_init6, !1, !"__initcall__kmod_pcie_spear13xx__293_266_spear13xx_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 266, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 260, i32 11}
!4 = !{ptr @spear13xx_pcie_driver, !5, !"spear13xx_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 257, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 212, i32 42}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 216, i32 4}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @spear13xx_pcie_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @spear13xx_pcie_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 218, i32 4}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @spear13xx_pcie_probe._entry.7, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @spear13xx_pcie_probe._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 226, i32 3}
!23 = !{ptr @spear13xx_pcie_probe._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @spear13xx_pcie_probe._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 231, i32 3}
!27 = !{ptr @spear13xx_pcie_probe._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @spear13xx_pcie_probe._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 235, i32 32}
!31 = !{ptr @dw_pcie_ops, !32, !"dw_pcie_ops", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 186, i32 33}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 168, i32 11}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 170, i32 3}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @spear13xx_add_pcie_port._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @spear13xx_add_pcie_port._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 179, i32 3}
!42 = !{ptr @spear13xx_add_pcie_port._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @spear13xx_add_pcie_port._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @spear13xx_pcie_host_ops, !45, !"spear13xx_pcie_host_ops", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 150, i32 38}
!46 = !{ptr @spear13xx_pcie_of_match, !47, !"spear13xx_pcie_of_match", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/dwc/pcie-spear13xx.c", i32 252, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 4234601}
!58 = !{i64 2155519193}
!59 = !{i64 2155512787}
!60 = !{i64 4234183}
!61 = !{i64 2155513616}
!62 = !{i64 2155516014}
!63 = !{i64 2155517710}
!64 = !{i64 2155518633}
