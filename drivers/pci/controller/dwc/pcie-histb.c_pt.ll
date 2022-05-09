; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-histb.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-histb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.histb_pcie = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_pcie_histb__293_451_histb_pcie_platform_driver_init6 = internal global ptr @histb_pcie_platform_driver_init, section ".initcall6.init", align 4
@histb_pcie_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @histb_pcie_probe, ptr @histb_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @histb_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_histb_pcie_platform_driver_exit = internal global ptr @histb_pcie_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [65 x i8] c"pcie_histb.description=HiSilicon STB PCIe host controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [54 x i8] c"pcie_histb.file=drivers/pci/controller/dwc/pcie-histb\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [26 x i8] c"pcie_histb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"histb-pcie\00", [21 x i8] zeroinitializer }, align 32
@histb_pcie_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr @histb_pcie_read_dbi, ptr @histb_pcie_write_dbi, ptr null, ptr @histb_pcie_link_up, ptr @histb_pcie_start_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot get control reg base\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"histb_pcie_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pci/controller/dwc/pcie-histb.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr = internal global ptr @histb_pcie_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rc-dbi\00", [25 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot get rc-dbi base\0A\00", [40 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.10 = internal global ptr @histb_pcie_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vpcie\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PCIe device power control\00", [38 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to request gpio\0A\00", [40 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.16 = internal global ptr @histb_pcie_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get PCIe aux clk\0A\00", [36 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.20 = internal global ptr @histb_pcie_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pipe\00", [27 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get PCIe pipe clk\0A\00", [35 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.24 = internal global ptr @histb_pcie_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 366, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get PCIEe sys clk\0A\00", [35 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.28 = internal global ptr @histb_pcie_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 372, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get PCIe bus clk\0A\00", [36 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.32 = internal global ptr @histb_pcie_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"soft\00", [27 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"couldn't get soft reset\0A\00", [39 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.36 = internal global ptr @histb_pcie_probe._entry.34, section ".printk_index", align 4
@histb_pcie_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 384, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't get sys reset\0A\00", [40 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.39 = internal global ptr @histb_pcie_probe._entry.37, section ".printk_index", align 4
@histb_pcie_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't get bus reset\0A\00", [40 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.42 = internal global ptr @histb_pcie_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 396, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no pcie-phy found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.47 = internal global ptr @histb_pcie_probe._entry.44, section ".printk_index", align 4
@histb_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @histb_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.3, ptr @.str.4, i32 412, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable host\0A\00", [41 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.50 = internal global ptr @histb_pcie_probe._entry.48, section ".printk_index", align 4
@histb_pcie_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.3, ptr @.str.4, i32 418, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to initialize host\0A\00", [37 x i8] zeroinitializer }, align 32
@histb_pcie_probe._entry_ptr.53 = internal global ptr @histb_pcie_probe._entry.51, section ".printk_index", align 4
@histb_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @histb_pcie_rd_own_conf, ptr @histb_pcie_wr_own_conf }, [44 x i8] zeroinitializer }, align 32
@histb_pcie_host_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 233, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"histb_pcie_host_enable\00", [41 x i8] zeroinitializer }, align 32
@histb_pcie_host_enable._entry_ptr = internal global ptr @histb_pcie_host_enable._entry, section ".printk_index", align 4
@histb_pcie_host_enable._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot prepare/enable bus clk\0A\00", [33 x i8] zeroinitializer }, align 32
@histb_pcie_host_enable._entry_ptr.58 = internal global ptr @histb_pcie_host_enable._entry.56, section ".printk_index", align 4
@histb_pcie_host_enable._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.4, i32 249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot prepare/enable sys clk\0A\00", [33 x i8] zeroinitializer }, align 32
@histb_pcie_host_enable._entry_ptr.61 = internal global ptr @histb_pcie_host_enable._entry.59, section ".printk_index", align 4
@histb_pcie_host_enable._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot prepare/enable pipe clk\0A\00", [32 x i8] zeroinitializer }, align 32
@histb_pcie_host_enable._entry_ptr.64 = internal global ptr @histb_pcie_host_enable._entry.62, section ".printk_index", align 4
@histb_pcie_host_enable._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.55, ptr @.str.4, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot prepare/enable aux clk\0A\00", [33 x i8] zeroinitializer }, align 32
@histb_pcie_host_enable._entry_ptr.67 = internal global ptr @histb_pcie_host_enable._entry.65, section ".printk_index", align 4
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"histb_pcie_platform_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 443, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 447, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"histb_pcie_of_match\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 437, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 289, i32 33 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 320, i32 61 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 322, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 326, i32 62 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 328, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 332, i32 51 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 340, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 345, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 347, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 352, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 354, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 358, i32 39 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 360, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 364, i32 38 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 366, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 370, i32 38 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 372, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 376, i32 51 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 378, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 384, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 390, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 394, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 396, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"histb_pcie_host_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 200, i32 38 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 412, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 418, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [14 x i8] c"histb_pci_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 149, i32 23 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 233, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 243, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 249, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 255, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private constant [43 x i8] c"../drivers/pci/controller/dwc/pcie-histb.c\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 261, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_histb_pcie_platform_driver_exit, ptr @__initcall__kmod_pcie_histb__293_451_histb_pcie_platform_driver_init6, ptr @histb_pcie_host_enable._entry, ptr @histb_pcie_host_enable._entry.56, ptr @histb_pcie_host_enable._entry.59, ptr @histb_pcie_host_enable._entry.62, ptr @histb_pcie_host_enable._entry.65, ptr @histb_pcie_host_enable._entry_ptr, ptr @histb_pcie_host_enable._entry_ptr.58, ptr @histb_pcie_host_enable._entry_ptr.61, ptr @histb_pcie_host_enable._entry_ptr.64, ptr @histb_pcie_host_enable._entry_ptr.67, ptr @histb_pcie_platform_driver_exit, ptr @histb_pcie_probe._entry, ptr @histb_pcie_probe._entry.14, ptr @histb_pcie_probe._entry.18, ptr @histb_pcie_probe._entry.22, ptr @histb_pcie_probe._entry.26, ptr @histb_pcie_probe._entry.30, ptr @histb_pcie_probe._entry.34, ptr @histb_pcie_probe._entry.37, ptr @histb_pcie_probe._entry.40, ptr @histb_pcie_probe._entry.44, ptr @histb_pcie_probe._entry.48, ptr @histb_pcie_probe._entry.51, ptr @histb_pcie_probe._entry.8, ptr @histb_pcie_probe._entry_ptr, ptr @histb_pcie_probe._entry_ptr.10, ptr @histb_pcie_probe._entry_ptr.16, ptr @histb_pcie_probe._entry_ptr.20, ptr @histb_pcie_probe._entry_ptr.24, ptr @histb_pcie_probe._entry_ptr.28, ptr @histb_pcie_probe._entry_ptr.32, ptr @histb_pcie_probe._entry_ptr.36, ptr @histb_pcie_probe._entry_ptr.39, ptr @histb_pcie_probe._entry_ptr.42, ptr @histb_pcie_probe._entry_ptr.47, ptr @histb_pcie_probe._entry_ptr.50, ptr @histb_pcie_probe._entry_ptr.53, ptr @histb_pcie_platform_driver, ptr @.str, ptr @histb_pcie_of_match, ptr @dw_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @histb_pcie_host_ops, ptr @.str.49, ptr @.str.52, ptr @histb_pci_ops, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_host_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_host_enable._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_host_enable._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_host_enable._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @histb_pcie_host_enable._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_pcie_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @histb_pcie_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @histb_pcie_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @histb_pcie_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %of_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_flags) #5
  %2 = ptrtoint ptr %of_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %of_flags, align 4, !annotation !129
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i240 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 320, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i240, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i240, ptr %call.i, align 4
  %pp8 = getelementptr inbounds %struct.dw_pcie, ptr %call.i240, i32 0, i32 7
  %4 = ptrtoint ptr %call.i240 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call.i240, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i240, i32 0, i32 9
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %call10 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  %ctrl = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %ctrl, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %call17 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #5
  %dbi_base = getelementptr inbounds %struct.dw_pcie, ptr %call.i240, i32 0, i32 1
  %10 = ptrtoint ptr %dbi_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %dbi_base, align 4
  %cmp.i241 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  %11 = ptrtoint ptr %dbi_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dbi_base, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %call27 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.11) #5
  %vpcie = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %vpcie to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call27, ptr %vpcie, align 4
  %cmp.i242 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then30, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then30:                                        ; preds = %if.end26
  %15 = ptrtoint ptr %call27 to i32
  %cmp.not = icmp eq ptr %call27, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.end36, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %vpcie to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %vpcie, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %if.end26.if.end38_crit_edge
  %call39 = call i32 @of_get_named_gpio_flags(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull %of_flags) #5
  %reset_gpio = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call39, ptr %reset_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call39)
  %18 = icmp ult i32 %call39, 2048
  br i1 %18, label %if.then45, label %if.end38.if.end54_crit_edge

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then45:                                        ; preds = %if.end38
  %19 = ptrtoint ptr %of_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %of_flags, align 4
  %and = shl i32 %20, 2
  %21 = and i32 %and, 4
  %call47 = call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %call39, i32 noundef %21, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then45.if.end54_crit_edge, label %do.end52

if.then45.if.end54_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end52:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end54:                                         ; preds = %if.then45.if.end54_crit_edge, %if.end38.if.end54_crit_edge
  %call55 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #5
  %aux_clk = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %aux_clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call55, ptr %aux_clk, align 4
  %cmp.i243 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  %23 = ptrtoint ptr %aux_clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aux_clk, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  %call65 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #5
  %pipe_clk = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call65, ptr %pipe_clk, align 4
  %cmp.i244 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  %27 = ptrtoint ptr %pipe_clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pipe_clk, align 4
  %29 = ptrtoint ptr %28 to i32
  br label %cleanup

if.end74:                                         ; preds = %if.end64
  %call75 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.25) #5
  %sys_clk = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call75, ptr %sys_clk, align 4
  %cmp.i245 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %do.end81, label %if.end84

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #8
  %31 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sys_clk, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup

if.end84:                                         ; preds = %if.end74
  %call85 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.29) #5
  %bus_clk = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call85, ptr %bus_clk, align 4
  %cmp.i246 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %do.end91, label %if.end94

do.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #8
  %35 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bus_clk, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup

if.end94:                                         ; preds = %if.end84
  %call.i.i = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %soft_reset = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 6
  %38 = ptrtoint ptr %soft_reset to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i, ptr %soft_reset, align 4
  %cmp.i247 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %do.end101, label %if.end104

do.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #8
  %39 = ptrtoint ptr %soft_reset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %soft_reset, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %cleanup

if.end104:                                        ; preds = %if.end94
  %call.i.i248 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %sys_reset = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 7
  %42 = ptrtoint ptr %sys_reset to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i248, ptr %sys_reset, align 4
  %cmp.i249 = icmp ugt ptr %call.i.i248, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %do.end111, label %if.end114

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #8
  %43 = ptrtoint ptr %sys_reset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sys_reset, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %cleanup

if.end114:                                        ; preds = %if.end104
  %call.i.i250 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #5
  %bus_reset = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 8
  %46 = ptrtoint ptr %bus_reset to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i250, ptr %bus_reset, align 4
  %cmp.i251 = icmp ugt ptr %call.i.i250, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %do.end121, label %if.end124

do.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #8
  %47 = ptrtoint ptr %bus_reset to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus_reset, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

if.end124:                                        ; preds = %if.end114
  %call125 = call ptr @devm_phy_get(ptr noundef %dev, ptr noundef nonnull @.str.43) #5
  %phy = getelementptr inbounds %struct.histb_pcie, ptr %call.i, i32 0, i32 5
  %50 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call125, ptr %phy, align 4
  %cmp.i252 = icmp ugt ptr %call125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i252, label %do.end131, label %if.else

do.end131:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.45) #8
  %51 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %phy, align 4
  br label %if.end135

if.else:                                          ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  %call134 = call i32 @phy_init(ptr noundef %call125) #5
  br label %if.end135

if.end135:                                        ; preds = %if.else, %do.end131
  %ops136 = getelementptr inbounds %struct.dw_pcie, ptr %call.i240, i32 0, i32 7, i32 8
  %52 = ptrtoint ptr %ops136 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @histb_pcie_host_ops, ptr %ops136, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %54 = ptrtoint ptr %call.i240 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i240, align 8
  %driver_data.i.i253 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %driver_data.i.i253 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i253, align 4
  %vpcie.i = getelementptr inbounds %struct.histb_pcie, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %vpcie.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vpcie.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.end135.if.end7.i_crit_edge, label %if.then.i

if.end135.if.end7.i_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end135
  %call4.i = call i32 @regulator_enable(ptr noundef nonnull %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end7.i_crit_edge, label %do.end.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.54, i32 noundef %call4.i) #8
  br label %do.end142

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %if.end135.if.end7.i_crit_edge
  %reset_gpio.i = getelementptr inbounds %struct.histb_pcie, ptr %57, i32 0, i32 10
  %60 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reset_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %61)
  %62 = icmp ult i32 %61, 2048
  br i1 %62, label %if.then9.i, label %if.end7.i.if.end11.i_crit_edge

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i254 = call ptr @gpio_to_desc(i32 noundef %61) #5
  call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i.i254, i32 noundef 1) #5
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  %bus_clk.i = getelementptr inbounds %struct.histb_pcie, ptr %57, i32 0, i32 4
  %63 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus_clk.i, align 4
  %call.i92.i = call i32 @clk_prepare(ptr noundef %64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool.not.i.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end11.i.do.end17.i_crit_edge

if.end11.i.do.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i

if.end.i.i:                                       ; preds = %if.end11.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end18.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %64) #5
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then3.i.i, %if.end11.i.do.end17.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i92.i, %if.end11.i.do.end17.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.57) #8
  br label %err_bus_clk.i

if.end18.i:                                       ; preds = %if.end.i.i
  %sys_clk.i = getelementptr inbounds %struct.histb_pcie, ptr %57, i32 0, i32 3
  %65 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sys_clk.i, align 4
  %call.i93.i = call i32 @clk_prepare(ptr noundef %66) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool.not.i94.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool.not.i94.i, label %if.end.i97.i, label %if.end18.i.do.end24.i_crit_edge

if.end18.i.do.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24.i

if.end.i97.i:                                     ; preds = %if.end18.i
  %call1.i95.i = call i32 @clk_enable(ptr noundef %66) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95.i)
  %tobool2.not.i96.i = icmp eq i32 %call1.i95.i, 0
  br i1 %tobool2.not.i96.i, label %if.end25.i, label %if.then3.i98.i

if.then3.i98.i:                                   ; preds = %if.end.i97.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %66) #5
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then3.i98.i, %if.end18.i.do.end24.i_crit_edge
  %retval.0.i99.ph.i = phi i32 [ %call1.i95.i, %if.then3.i98.i ], [ %call.i93.i, %if.end18.i.do.end24.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.60) #8
  br label %err_sys_clk.i

if.end25.i:                                       ; preds = %if.end.i97.i
  %pipe_clk.i = getelementptr inbounds %struct.histb_pcie, ptr %57, i32 0, i32 2
  %67 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pipe_clk.i, align 4
  %call.i101.i = call i32 @clk_prepare(ptr noundef %68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i)
  %tobool.not.i102.i = icmp eq i32 %call.i101.i, 0
  br i1 %tobool.not.i102.i, label %if.end.i105.i, label %if.end25.i.do.end31.i_crit_edge

if.end25.i.do.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31.i

if.end.i105.i:                                    ; preds = %if.end25.i
  %call1.i103.i = call i32 @clk_enable(ptr noundef %68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103.i)
  %tobool2.not.i104.i = icmp eq i32 %call1.i103.i, 0
  br i1 %tobool2.not.i104.i, label %if.end32.i, label %if.then3.i106.i

if.then3.i106.i:                                  ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %68) #5
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then3.i106.i, %if.end25.i.do.end31.i_crit_edge
  %retval.0.i107.ph.i = phi i32 [ %call1.i103.i, %if.then3.i106.i ], [ %call.i101.i, %if.end25.i.do.end31.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.63) #8
  br label %err_pipe_clk.i

if.end32.i:                                       ; preds = %if.end.i105.i
  %aux_clk.i = getelementptr inbounds %struct.histb_pcie, ptr %57, i32 0, i32 1
  %69 = ptrtoint ptr %aux_clk.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %aux_clk.i, align 4
  %call.i109.i = call i32 @clk_prepare(ptr noundef %70) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.i)
  %tobool.not.i110.i = icmp eq i32 %call.i109.i, 0
  br i1 %tobool.not.i110.i, label %if.end.i113.i, label %if.end32.i.do.end38.i_crit_edge

if.end32.i.do.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38.i

if.end.i113.i:                                    ; preds = %if.end32.i
  %call1.i111.i = call i32 @clk_enable(ptr noundef %70) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i111.i)
  %tobool2.not.i112.i = icmp eq i32 %call1.i111.i, 0
  br i1 %tobool2.not.i112.i, label %if.end143, label %if.then3.i114.i

if.then3.i114.i:                                  ; preds = %if.end.i113.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unprepare(ptr noundef %70) #5
  br label %do.end38.i

do.end38.i:                                       ; preds = %if.then3.i114.i, %if.end32.i.do.end38.i_crit_edge
  %retval.0.i115.ph.i = phi i32 [ %call1.i111.i, %if.then3.i114.i ], [ %call.i109.i, %if.end32.i.do.end38.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.66) #8
  %71 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pipe_clk.i, align 4
  call void @clk_disable(ptr noundef %72) #5
  call void @clk_unprepare(ptr noundef %72) #5
  br label %err_pipe_clk.i

err_pipe_clk.i:                                   ; preds = %do.end38.i, %do.end31.i
  %ret.0.i = phi i32 [ %retval.0.i107.ph.i, %do.end31.i ], [ %retval.0.i115.ph.i, %do.end38.i ]
  %73 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sys_clk.i, align 4
  call void @clk_disable(ptr noundef %74) #5
  call void @clk_unprepare(ptr noundef %74) #5
  br label %err_sys_clk.i

err_sys_clk.i:                                    ; preds = %err_pipe_clk.i, %do.end24.i
  %ret.1.i = phi i32 [ %retval.0.i99.ph.i, %do.end24.i ], [ %ret.0.i, %err_pipe_clk.i ]
  %75 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus_clk.i, align 4
  call void @clk_disable(ptr noundef %76) #5
  call void @clk_unprepare(ptr noundef %76) #5
  br label %err_bus_clk.i

err_bus_clk.i:                                    ; preds = %err_sys_clk.i, %do.end17.i
  %ret.2.i = phi i32 [ %retval.0.i.ph.i, %do.end17.i ], [ %ret.1.i, %err_sys_clk.i ]
  %77 = ptrtoint ptr %vpcie.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vpcie.i, align 4
  %tobool53.not.i = icmp eq ptr %78, null
  br i1 %tobool53.not.i, label %err_bus_clk.i.do.end142_crit_edge, label %if.then54.i

err_bus_clk.i.do.end142_crit_edge:                ; preds = %err_bus_clk.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end142

if.then54.i:                                      ; preds = %err_bus_clk.i
  call void @__sanitizer_cov_trace_pc() #7
  %call56.i = call i32 @regulator_disable(ptr noundef nonnull %78) #5
  br label %do.end142

do.end142:                                        ; preds = %if.then54.i, %err_bus_clk.i.do.end142_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %ret.2.i, %err_bus_clk.i.do.end142_crit_edge ], [ %ret.2.i, %if.then54.i ], [ %call4.i, %do.end.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #8
  br label %cleanup

if.end143:                                        ; preds = %if.end.i113.i
  %soft_reset.i = getelementptr inbounds %struct.histb_pcie, ptr %57, i32 0, i32 6
  %79 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %soft_reset.i, align 4
  %call40.i = call i32 @reset_control_assert(ptr noundef %80) #5
  %81 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %soft_reset.i, align 4
  %call42.i = call i32 @reset_control_deassert(ptr noundef %82) #5
  %sys_reset.i = getelementptr inbounds %struct.histb_pcie, ptr %57, i32 0, i32 7
  %83 = ptrtoint ptr %sys_reset.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sys_reset.i, align 4
  %call43.i = call i32 @reset_control_assert(ptr noundef %84) #5
  %85 = ptrtoint ptr %sys_reset.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sys_reset.i, align 4
  %call45.i = call i32 @reset_control_deassert(ptr noundef %86) #5
  %bus_reset.i = getelementptr inbounds %struct.histb_pcie, ptr %57, i32 0, i32 8
  %87 = ptrtoint ptr %bus_reset.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus_reset.i, align 4
  %call46.i = call i32 @reset_control_assert(ptr noundef %88) #5
  %89 = ptrtoint ptr %bus_reset.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus_reset.i, align 4
  %call48.i = call i32 @reset_control_deassert(ptr noundef %90) #5
  %call144 = call i32 @dw_pcie_host_init(ptr noundef %pp8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end143.cleanup_crit_edge, label %do.end149

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end149:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end149, %if.end143.cleanup_crit_edge, %do.end142, %do.end121, %do.end111, %do.end101, %do.end91, %do.end81, %do.end71, %do.end61, %do.end52, %if.then30.cleanup_crit_edge, %do.end23, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ %13, %do.end23 ], [ %call47, %do.end52 ], [ %25, %do.end61 ], [ %29, %do.end71 ], [ %33, %do.end81 ], [ %37, %do.end91 ], [ %41, %do.end101 ], [ %45, %do.end111 ], [ %49, %do.end121 ], [ %retval.0.i.ph, %do.end142 ], [ %call144, %do.end149 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end143.cleanup_crit_edge ], [ %15, %if.then30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_flags) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %soft_reset.i = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %soft_reset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soft_reset.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %3) #5
  %sys_reset.i = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %sys_reset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sys_reset.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %5) #5
  %bus_reset.i = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %bus_reset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_reset.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %7) #5
  %aux_clk.i = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %aux_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux_clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  %pipe_clk.i = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %pipe_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe_clk.i, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  %sys_clk.i = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sys_clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #5
  tail call void @clk_unprepare(ptr noundef %13) #5
  %bus_clk.i = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_clk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  %reset_gpio.i = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reset_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %17)
  %18 = icmp ult i32 %17, 2048
  br i1 %18, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %17) #5
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i.i, i32 noundef 0) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %vpcie.i = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %vpcie.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vpcie.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i.histb_pcie_host_disable.exit_crit_edge, label %if.then5.i

if.end.i.histb_pcie_host_disable.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %histb_pcie_host_disable.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 @regulator_disable(ptr noundef nonnull %20) #5
  br label %histb_pcie_host_disable.exit

histb_pcie_host_disable.exit:                     ; preds = %if.then5.i, %if.end.i.histb_pcie_host_disable.exit_crit_edge
  %phy = getelementptr inbounds %struct.histb_pcie, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %histb_pcie_host_disable.exit.if.end_crit_edge, label %if.then

histb_pcie_host_disable.exit.if.end_crit_edge:    ; preds = %histb_pcie_host_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %histb_pcie_host_disable.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @phy_exit(ptr noundef nonnull %22) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %histb_pcie_host_disable.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_pcie_read_dbi(ptr nocapture noundef readonly %pci, ptr noundef %base, i32 noundef %reg, i32 noundef %size) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !129
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.histb_pcie, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %8 = or i32 %7, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrl.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %8) #5, !srcloc !133
  %add.ptr = getelementptr i8, ptr %base, i32 %reg
  %call = call i32 @dw_pcie_read(ptr noundef %add.ptr, i32 noundef %size, ptr noundef nonnull %val) #5
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 8
  %driver_data.i.i4 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i4, align 4
  %ctrl.i.i5 = getelementptr inbounds %struct.histb_pcie, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %ctrl.i.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl.i.i5, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %16, i32 4
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #5, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %18 = and i32 %17, -8193
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %ctrl.i.i5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl.i.i5, align 4
  %add.ptr.i6.i7 = getelementptr i8, ptr %20, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i7, i32 %18) #5, !srcloc !133
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @histb_pcie_write_dbi(ptr nocapture noundef readonly %pci, ptr noundef %base, i32 noundef %reg, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.histb_pcie, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl.i.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %7 = or i32 %6, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !133
  %add.ptr = getelementptr i8, ptr %base, i32 %reg
  %call = tail call i32 @dw_pcie_write(ptr noundef %add.ptr, i32 noundef %size, i32 noundef %val) #5
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 8
  %driver_data.i.i4 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i4, align 4
  %ctrl.i.i5 = getelementptr inbounds %struct.histb_pcie, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %ctrl.i.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctrl.i.i5, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %17 = and i32 %16, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %ctrl.i.i5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl.i.i5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #5, !srcloc !133
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_pcie_link_up(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctrl.i = getelementptr inbounds %struct.histb_pcie, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %8, i32 272
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %10 = and i32 %6, 545259520
  call void @__sanitizer_cov_trace_const_cmp4(i32 545259520, i32 %10)
  %.not = icmp eq i32 %10, 545259520
  %11 = and i32 %9, 1056964608
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %11)
  %cmp = icmp eq i32 %11, 285212672
  %or.cond12 = select i1 %.not, i1 %cmp, i1 false
  %retval.0 = zext i1 %or.cond12 to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_pcie_start_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ctrl.i = getelementptr inbounds %struct.histb_pcie, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %7 = or i32 %6, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %7) #5, !srcloc !133
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_pcie_host_init(ptr nocapture noundef readonly %pp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pp, i32 -32
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %bridge = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 17
  %4 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bridge, align 8
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @histb_pci_ops, ptr %ops, align 4
  %ctrl.i = getelementptr inbounds %struct.histb_pcie, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %10 = and i32 %9, -241
  %11 = or i32 %10, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !133
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_pcie_rd_own_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %1 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -32
  %call = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef %where, i32 noundef %size) #5
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 134, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @histb_pcie_wr_own_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %1 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -32
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %where, i32 noundef %size, i32 noundef %val) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 134, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_pcie_histb__293_451_histb_pcie_platform_driver_init6, !1, !"__initcall__kmod_pcie_histb__293_451_histb_pcie_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 451, i32 1}
!2 = !{ptr @__exitcall_histb_pcie_platform_driver_exit, !1, !"__exitcall_histb_pcie_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 453, i32 1}
!5 = !{ptr @__UNIQUE_ID_file295, !6, !"__UNIQUE_ID_file295", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 454, i32 1}
!7 = !{ptr @__UNIQUE_ID_license296, !6, !"__UNIQUE_ID_license296", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 447, i32 11}
!10 = !{ptr @histb_pcie_platform_driver, !11, !"histb_pcie_platform_driver", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 443, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 320, i32 61}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 322, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @histb_pcie_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @histb_pcie_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 326, i32 62}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 328, i32 3}
!26 = !{ptr @histb_pcie_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @histb_pcie_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 332, i32 51}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 340, i32 5}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 345, i32 11}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 347, i32 4}
!36 = !{ptr @histb_pcie_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @histb_pcie_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 352, i32 38}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 354, i32 3}
!42 = !{ptr @histb_pcie_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @histb_pcie_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 358, i32 39}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 360, i32 3}
!48 = !{ptr @histb_pcie_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @histb_pcie_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 364, i32 38}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 366, i32 3}
!54 = !{ptr @histb_pcie_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @histb_pcie_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 370, i32 38}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 372, i32 3}
!60 = !{ptr @histb_pcie_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @histb_pcie_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 376, i32 51}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 378, i32 3}
!66 = !{ptr @histb_pcie_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @histb_pcie_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 384, i32 3}
!70 = !{ptr @histb_pcie_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @histb_pcie_probe._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 390, i32 3}
!74 = !{ptr @histb_pcie_probe._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @histb_pcie_probe._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 394, i32 34}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 396, i32 3}
!80 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @histb_pcie_probe._entry.44, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @histb_pcie_probe._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 412, i32 3}
!85 = !{ptr @histb_pcie_probe._entry.48, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @histb_pcie_probe._entry_ptr.50, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 418, i32 3}
!89 = !{ptr @histb_pcie_probe._entry.51, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @histb_pcie_probe._entry_ptr.53, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @dw_pcie_ops, !92, !"dw_pcie_ops", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 289, i32 33}
!93 = !{ptr @histb_pcie_host_ops, !94, !"histb_pcie_host_ops", i1 false, i1 false}
!94 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 200, i32 38}
!95 = !{ptr @histb_pci_ops, !96, !"histb_pci_ops", i1 false, i1 false}
!96 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 149, i32 23}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 233, i32 4}
!99 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @histb_pcie_host_enable._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @histb_pcie_host_enable._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 243, i32 3}
!104 = !{ptr @histb_pcie_host_enable._entry.56, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @histb_pcie_host_enable._entry_ptr.58, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 249, i32 3}
!108 = !{ptr @histb_pcie_host_enable._entry.59, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @histb_pcie_host_enable._entry_ptr.61, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.63, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 255, i32 3}
!112 = !{ptr @histb_pcie_host_enable._entry.62, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @histb_pcie_host_enable._entry_ptr.64, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 261, i32 3}
!116 = !{ptr @histb_pcie_host_enable._entry.65, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @histb_pcie_host_enable._entry_ptr.67, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @histb_pcie_of_match, !119, !"histb_pcie_of_match", i1 false, i1 false}
!119 = !{!"../drivers/pci/controller/dwc/pcie-histb.c", i32 437, i32 34}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i64 4247039}
!131 = !{i64 2155702068}
!132 = !{i64 2155702287}
!133 = !{i64 4246621}
