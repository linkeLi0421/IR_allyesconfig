; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-mt7621.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-mt7621.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.mt7621_pcie_port = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mt7621_pcie = type { ptr, ptr, %struct.list_head, i8 }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pcie_mt7621__293_554_mt7621_pcie_driver_init6 = internal global ptr @mt7621_pcie_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file294 = internal constant [52 x i8] c"pcie_mt7621.file=drivers/pci/controller/pcie-mt7621\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [27 x i8] c"pcie_mt7621.license=GPL v2\00", section ".modinfo", align 1
@mt7621_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt7621_pcie_probe, ptr @mt7621_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt7621_pcie_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt7621-pci\00", [21 x i8] zeroinitializer }, align 32
@mt7621_pcie_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7621-pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt7621_pcie_quirks_match = internal constant { [1 x %struct.soc_device_attribute], [36 x i8] } { [1 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.12, ptr null, ptr @.str.13, ptr null, ptr null }], [36 x i8] zeroinitializer }, align 32
@mt7621_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"parsing DT failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt7621_pcie_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/pci/controller/pcie-mt7621.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt7621_pcie_probe._entry_ptr = internal global ptr @mt7621_pcie_probe._entry, section ".printk_index", align 4
@mt7621_pcie_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nothing connected in virtual bridges\0A\00", [58 x i8] zeroinitializer }, align 32
@mt7621_pcie_probe._entry_ptr.8 = internal global ptr @mt7621_pcie_probe._entry.6, section ".printk_index", align 4
@mt7621_pcie_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error enabling pcie ports\0A\00", [37 x i8] zeroinitializer }, align 32
@mt7621_pcie_probe._entry_ptr.11 = internal global ptr @mt7621_pcie_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"E2\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mt7621\00", [25 x i8] zeroinitializer }, align 32
@mt7621_pcie_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 278, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to parse devfn: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt7621_pcie_parse_dt\00", [43 x i8] zeroinitializer }, align 32
@mt7621_pcie_parse_dt._entry_ptr = internal global ptr @mt7621_pcie_parse_dt._entry, section ".printk_index", align 4
@mt7621_pcie_parse_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get pcie%d clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt7621_pcie_parse_port\00", [41 x i8] zeroinitializer }, align 32
@mt7621_pcie_parse_port._entry_ptr = internal global ptr @mt7621_pcie_parse_port._entry, section ".printk_index", align 4
@mt7621_pcie_parse_port._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get pcie%d reset control\0A\00", [60 x i8] zeroinitializer }, align 32
@mt7621_pcie_parse_port._entry_ptr.20 = internal global ptr @mt7621_pcie_parse_port._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcie-phy%d\00", [21 x i8] zeroinitializer }, align 32
@mt7621_pcie_parse_port._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get pcie-phy%d\0A\00", [38 x i8] zeroinitializer }, align 32
@mt7621_pcie_parse_port._entry_ptr.24 = internal global ptr @mt7621_pcie_parse_port._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@mt7621_pcie_parse_port._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get GPIO for PCIe%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mt7621_pcie_parse_port._entry_ptr.28 = internal global ptr @mt7621_pcie_parse_port._entry.26, section ".printk_index", align 4
@mt7621_pcie_init_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 372, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"initializing port %d failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt7621_pcie_init_ports\00", [41 x i8] zeroinitializer }, align 32
@mt7621_pcie_init_ports._entry_ptr = internal global ptr @mt7621_pcie_init_ports._entry, section ".printk_index", align 4
@mt7621_pcie_init_ports._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pcie%d no card, disable it (RST & CLK)\0A\00", [56 x i8] zeroinitializer }, align 32
@mt7621_pcie_init_ports._entry_ptr.33 = internal global ptr @mt7621_pcie_init_ports._entry.31, section ".printk_index", align 4
@mt7621_pcie_init_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 303, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize port%d phy\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt7621_pcie_init_port\00", [42 x i8] zeroinitializer }, align 32
@mt7621_pcie_init_port._entry_ptr = internal global ptr @mt7621_pcie_init_port._entry, section ".printk_index", align 4
@mt7621_pcie_init_port._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to power on port%d phy\0A\00", [33 x i8] zeroinitializer }, align 32
@mt7621_pcie_init_port._entry_ptr.38 = internal global ptr @mt7621_pcie_init_port._entry.36, section ".printk_index", align 4
@mt7621_pcie_enable_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot get io resource\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt7621_pcie_enable_ports\00", [39 x i8] zeroinitializer }, align 32
@mt7621_pcie_enable_ports._entry_ptr = internal global ptr @mt7621_pcie_enable_ports._entry, section ".printk_index", align 4
@mt7621_pcie_enable_ports._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"enabling clk pcie%d\0A\00", [43 x i8] zeroinitializer }, align 32
@mt7621_pcie_enable_ports._entry_ptr.43 = internal global ptr @mt7621_pcie_enable_ports._entry.41, section ".printk_index", align 4
@mt7621_pcie_enable_ports._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.3, i32 457, ptr @.str.46, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCIE%d enabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt7621_pcie_enable_ports._entry_ptr.47 = internal global ptr @mt7621_pcie_enable_ports._entry.44, section ".printk_index", align 4
@mt7621_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr @mt7621_pcie_map_bus, ptr @pci_generic_config_read, ptr @pci_generic_config_write }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"mt7621_pcie_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 546, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 550, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"mt7621_pcie_ids\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 540, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [25 x i8] c"mt7621_pcie_quirks_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 473, i32 42 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 504, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 510, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 516, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 474, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 474, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 278, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 222, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 228, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 232, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 235, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 240, i32 54 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 243, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 372, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 384, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 303, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 309, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 439, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 451, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 457, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"mt7621_pcie_ops\00", align 1
@___asan_gen_.193 = private constant [40 x i8] c"../drivers/pci/controller/pcie-mt7621.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 142, i32 23 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__initcall__kmod_pcie_mt7621__293_554_mt7621_pcie_driver_init6, ptr @mt7621_pcie_enable_ports._entry, ptr @mt7621_pcie_enable_ports._entry.41, ptr @mt7621_pcie_enable_ports._entry.44, ptr @mt7621_pcie_enable_ports._entry_ptr, ptr @mt7621_pcie_enable_ports._entry_ptr.43, ptr @mt7621_pcie_enable_ports._entry_ptr.47, ptr @mt7621_pcie_init_port._entry, ptr @mt7621_pcie_init_port._entry.36, ptr @mt7621_pcie_init_port._entry_ptr, ptr @mt7621_pcie_init_port._entry_ptr.38, ptr @mt7621_pcie_init_ports._entry, ptr @mt7621_pcie_init_ports._entry.31, ptr @mt7621_pcie_init_ports._entry_ptr, ptr @mt7621_pcie_init_ports._entry_ptr.33, ptr @mt7621_pcie_parse_dt._entry, ptr @mt7621_pcie_parse_dt._entry_ptr, ptr @mt7621_pcie_parse_port._entry, ptr @mt7621_pcie_parse_port._entry.18, ptr @mt7621_pcie_parse_port._entry.22, ptr @mt7621_pcie_parse_port._entry.26, ptr @mt7621_pcie_parse_port._entry_ptr, ptr @mt7621_pcie_parse_port._entry_ptr.20, ptr @mt7621_pcie_parse_port._entry_ptr.24, ptr @mt7621_pcie_parse_port._entry_ptr.28, ptr @mt7621_pcie_probe._entry, ptr @mt7621_pcie_probe._entry.6, ptr @mt7621_pcie_probe._entry.9, ptr @mt7621_pcie_probe._entry_ptr, ptr @mt7621_pcie_probe._entry_ptr.11, ptr @mt7621_pcie_probe._entry_ptr.8, ptr @mt7621_pcie_driver, ptr @.str, ptr @mt7621_pcie_ids, ptr @mt7621_pcie_quirks_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.46, ptr @mt7621_pcie_ops], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_quirks_match to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_parse_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_parse_port._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_parse_port._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_parse_port._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_init_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_init_ports._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_init_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_init_port._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_enable_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_enable_ports._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_enable_ports._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7621_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt7621_pcie_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name.i.i = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 20) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %ports = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %ports, ptr %ports, align 4
  %prev.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ports, ptr %prev.i, align 4
  %call7 = tail call ptr @soc_device_match(ptr noundef nonnull @mt7621_pcie_quirks_match) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end4.if.end10_crit_edge, label %if.then9

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %resets_inverted = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %resets_inverted to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %resets_inverted, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end4.if.end10_crit_edge
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 -16
  %of_node.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr.i, i32 noundef 0) #7
  %base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %base.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i to i32
  br label %do.end

if.end.i:                                         ; preds = %if.end10
  %call6.i = tail call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef null) #7
  %cmp.not53.i = icmp eq ptr %call6.i, null
  br i1 %cmp.not53.i, label %if.end.i.if.end14_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %child.054.i = phi ptr [ %call14.i, %for.inc.i.for.body.i_crit_edge ], [ %call6.i, %if.end.i.for.body.i_crit_edge ]
  %call7.i = call i32 @of_pci_get_devfn(ptr noundef nonnull %child.054.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %mt7621_pcie_parse_dt.exit.thread95, label %if.end10.i

mt7621_pcie_parse_dt.exit.thread95:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %child.054.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef %call7.i) #10
  br label %do.end

if.end10.i:                                       ; preds = %for.body.i
  %13 = lshr i32 %call7.i, 3
  %and.i = and i32 %13, 31
  %14 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name.i.i) #7
  %16 = call ptr @memset(ptr %name.i.i, i32 255, i32 10)
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %mt7621_pcie_parse_port.exit.thread40.i, label %if.end.i.i

mt7621_pcie_parse_port.exit.thread40.i:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name.i.i) #7
  br label %if.then12.i

if.end.i.i:                                       ; preds = %if.end10.i
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -16
  %add.i.i = add nuw nsw i32 %and.i, 1
  %call2.i.i = call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr.i.i, i32 noundef %add.i.i) #7
  %17 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2.i.i, ptr %call.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.i.mt7621_pcie_parse_port.exit.i_crit_edge, label %if.end8.i.i

if.end.i.i.mt7621_pcie_parse_port.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_pcie_parse_port.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %call9.i.i = call ptr @devm_get_clk_from_child(ptr noundef %15, ptr noundef nonnull %child.054.i, ptr noundef null) #7
  %clk.i.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %call.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9.i.i, ptr %clk.i.i, align 4
  %cmp.i95.i.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.i.i, label %do.end.i.i, label %if.end15.i.i

do.end.i.i:                                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.16, i32 noundef %and.i) #10
  %19 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i.i, align 4
  br label %mt7621_pcie_parse_port.exit.i

if.end15.i.i:                                     ; preds = %if.end8.i.i
  %call.i96.i.i = call ptr @__of_reset_control_get(ptr noundef nonnull %child.054.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %pcie_rst.i.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %call.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %pcie_rst.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i96.i.i, ptr %pcie_rst.i.i, align 4
  %cmp.i37.i = icmp eq ptr %call.i96.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i37.i, label %do.end22.i.i, label %if.end25.i.i

do.end22.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.19, i32 noundef %and.i) #10
  %22 = ptrtoint ptr %pcie_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie_rst.i.i, align 4
  br label %mt7621_pcie_parse_port.exit.i

if.end25.i.i:                                     ; preds = %if.end15.i.i
  %call26.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i.i, i32 noundef 10, ptr noundef nonnull @.str.21, i32 noundef %and.i) #7
  %call28.i.i = call ptr @devm_of_phy_get(ptr noundef %15, ptr noundef nonnull %child.054.i, ptr noundef nonnull %name.i.i) #7
  %phy.i.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %call.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %phy.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call28.i.i, ptr %phy.i.i, align 4
  %cmp.i97.i.i = icmp ugt ptr %call28.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97.i.i, label %if.end25.i.i.remove_reset.i.i_crit_edge, label %if.end37.i.i

if.end25.i.i.remove_reset.i.i_crit_edge:          ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_reset.i.i

if.end37.i.i:                                     ; preds = %if.end25.i.i
  %call38.i.i = call ptr @devm_gpiod_get_index_optional(ptr noundef %15, ptr noundef nonnull @.str.25, i32 noundef %and.i, i32 noundef 3) #7
  %gpio_rst.i.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %call.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %gpio_rst.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call38.i.i, ptr %gpio_rst.i.i, align 4
  %cmp.i98.i.i = icmp ugt ptr %call38.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98.i.i, label %if.end37.i.i.remove_reset.i.i_crit_edge, label %if.end47.i.i

if.end37.i.i.remove_reset.i.i_crit_edge:          ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_reset.i.i

if.end47.i.i:                                     ; preds = %if.end37.i.i
  %slot48.i.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %call.i.i.i, i32 0, i32 7
  %26 = ptrtoint ptr %slot48.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i, ptr %slot48.i.i, align 4
  %pcie49.i.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %call.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %pcie49.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %private.i, ptr %pcie49.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %call.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %31, ptr noundef %ports) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end47.i.i.mt7621_pcie_parse_port.exit.thread.i_crit_edge

if.end47.i.i.mt7621_pcie_parse_port.exit.thread.i_crit_edge: ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_pcie_parse_port.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list.i.i, ptr %prev.i, align 4
  %33 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ports, ptr %list.i.i, align 4
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list.i.i, ptr %31, align 4
  br label %mt7621_pcie_parse_port.exit.thread.i

remove_reset.i.i:                                 ; preds = %if.end37.i.i.remove_reset.i.i_crit_edge, %if.end25.i.i.remove_reset.i.i_crit_edge
  %.str.27.sink.i.i = phi ptr [ @.str.23, %if.end25.i.i.remove_reset.i.i_crit_edge ], [ @.str.27, %if.end37.i.i.remove_reset.i.i_crit_edge ]
  %err.0.in.in.i.i = phi ptr [ %phy.i.i, %if.end25.i.i.remove_reset.i.i_crit_edge ], [ %gpio_rst.i.i, %if.end37.i.i.remove_reset.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull %.str.27.sink.i.i, i32 noundef %and.i) #10
  %36 = ptrtoint ptr %err.0.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %err.0.in.i.i = load ptr, ptr %err.0.in.in.i.i, align 4
  %37 = ptrtoint ptr %pcie_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcie_rst.i.i, align 4
  call void @reset_control_put(ptr noundef %38) #7
  br label %mt7621_pcie_parse_port.exit.i

mt7621_pcie_parse_port.exit.thread.i:             ; preds = %if.end.i.i.i.i, %if.end47.i.i.mt7621_pcie_parse_port.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name.i.i) #7
  br label %for.inc.i

mt7621_pcie_parse_port.exit.i:                    ; preds = %remove_reset.i.i, %do.end22.i.i, %do.end.i.i, %if.end.i.i.mt7621_pcie_parse_port.exit.i_crit_edge
  %retval.0.i.in.i = phi ptr [ %20, %do.end.i.i ], [ %23, %do.end22.i.i ], [ %err.0.in.i.i, %remove_reset.i.i ], [ %call2.i.i, %if.end.i.i.mt7621_pcie_parse_port.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name.i.i) #7
  %tobool.not.i = icmp eq ptr %retval.0.i.in.i, null
  br i1 %tobool.not.i, label %mt7621_pcie_parse_port.exit.i.for.inc.i_crit_edge, label %if.then12.loopexit.i

mt7621_pcie_parse_port.exit.i.for.inc.i_crit_edge: ; preds = %mt7621_pcie_parse_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then12.loopexit.i:                             ; preds = %mt7621_pcie_parse_port.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i.le.i = ptrtoint ptr %retval.0.i.in.i to i32
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.then12.loopexit.i, %mt7621_pcie_parse_port.exit.thread40.i
  %retval.0.i43.i = phi i32 [ -12, %mt7621_pcie_parse_port.exit.thread40.i ], [ %retval.0.i.le.i, %if.then12.loopexit.i ]
  call void @of_node_put(ptr noundef nonnull %child.054.i) #7
  br label %do.end

for.inc.i:                                        ; preds = %mt7621_pcie_parse_port.exit.i.for.inc.i_crit_edge, %mt7621_pcie_parse_port.exit.thread.i
  %call14.i = call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef nonnull %child.054.i) #7
  %cmp.not.i = icmp eq ptr %call14.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.end14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end:                                           ; preds = %if.then12.i, %mt7621_pcie_parse_dt.exit.thread95, %if.then.i
  %retval.2.i98 = phi i32 [ %call7.i, %mt7621_pcie_parse_dt.exit.thread95 ], [ %12, %if.then.i ], [ %retval.0.i43.i, %if.then12.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end14:                                         ; preds = %for.inc.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge
  %39 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private.i, align 4
  %41 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn13.i.i = load ptr, ptr %ports, align 4
  %cmp.not14.i.i = icmp eq ptr %.pn13.i.i, %ports
  br i1 %cmp.not14.i.i, label %if.end14.mt7621_pcie_reset_assert.exit.i_crit_edge, label %if.end14.for.body.i.i_crit_edge

if.end14.for.body.i.i_crit_edge:                  ; preds = %if.end14
  br label %for.body.i.i

if.end14.mt7621_pcie_reset_assert.exit.i_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_pcie_reset_assert.exit.i

for.body.i.i:                                     ; preds = %mt7621_rst_gpio_pcie_assert.exit.i.i.for.body.i.i_crit_edge, %if.end14.for.body.i.i_crit_edge
  %.pn15.i.i = phi ptr [ %.pn.i.i, %mt7621_rst_gpio_pcie_assert.exit.i.i.for.body.i.i_crit_edge ], [ %.pn13.i.i, %if.end14.for.body.i.i_crit_edge ]
  %pcie1.i.i.i = getelementptr i8, ptr %.pn15.i.i, i32 8
  %42 = ptrtoint ptr %pcie1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcie1.i.i.i, align 4
  %resets_inverted.i.i.i = getelementptr inbounds %struct.mt7621_pcie, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %resets_inverted.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %resets_inverted.i.i.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i.i = icmp eq i8 %45, 0
  %pcie_rst2.i.i.i = getelementptr i8, ptr %.pn15.i.i, i32 20
  %46 = ptrtoint ptr %pcie_rst2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcie_rst2.i.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i65 = call i32 @reset_control_assert(ptr noundef %47) #7
  br label %mt7621_control_assert.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i.i = call i32 @reset_control_deassert(ptr noundef %47) #7
  br label %mt7621_control_assert.exit.i.i

mt7621_control_assert.exit.i.i:                   ; preds = %if.else.i.i.i, %if.then.i.i.i
  %gpio_rst.i.i.i = getelementptr i8, ptr %.pn15.i.i, i32 24
  %48 = ptrtoint ptr %gpio_rst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gpio_rst.i.i.i, align 4
  %tobool.not.i11.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i11.i.i, label %mt7621_control_assert.exit.i.i.mt7621_rst_gpio_pcie_assert.exit.i.i_crit_edge, label %if.then.i12.i.i

mt7621_control_assert.exit.i.i.mt7621_rst_gpio_pcie_assert.exit.i.i_crit_edge: ; preds = %mt7621_control_assert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_rst_gpio_pcie_assert.exit.i.i

if.then.i12.i.i:                                  ; preds = %mt7621_control_assert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value(ptr noundef nonnull %49, i32 noundef 1) #7
  br label %mt7621_rst_gpio_pcie_assert.exit.i.i

mt7621_rst_gpio_pcie_assert.exit.i.i:             ; preds = %if.then.i12.i.i, %mt7621_control_assert.exit.i.i.mt7621_rst_gpio_pcie_assert.exit.i.i_crit_edge
  %50 = ptrtoint ptr %.pn15.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i.i = load ptr, ptr %.pn15.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports
  br i1 %cmp.not.i.i, label %mt7621_rst_gpio_pcie_assert.exit.i.i.mt7621_pcie_reset_assert.exit.i_crit_edge, label %mt7621_rst_gpio_pcie_assert.exit.i.i.for.body.i.i_crit_edge

mt7621_rst_gpio_pcie_assert.exit.i.i.for.body.i.i_crit_edge: ; preds = %mt7621_rst_gpio_pcie_assert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

mt7621_rst_gpio_pcie_assert.exit.i.i.mt7621_pcie_reset_assert.exit.i_crit_edge: ; preds = %mt7621_rst_gpio_pcie_assert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_pcie_reset_assert.exit.i

mt7621_pcie_reset_assert.exit.i:                  ; preds = %mt7621_rst_gpio_pcie_assert.exit.i.i.mt7621_pcie_reset_assert.exit.i_crit_edge, %if.end14.mt7621_pcie_reset_assert.exit.i_crit_edge
  call void @msleep(i32 noundef 100) #7
  %51 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn10.i.i = load ptr, ptr %ports, align 4
  %cmp.not11.i.i = icmp eq ptr %.pn10.i.i, %ports
  br i1 %cmp.not11.i.i, label %mt7621_pcie_reset_assert.exit.i.mt7621_pcie_reset_rc_deassert.exit.i_crit_edge, label %mt7621_pcie_reset_assert.exit.i.for.body.i103.i_crit_edge

mt7621_pcie_reset_assert.exit.i.for.body.i103.i_crit_edge: ; preds = %mt7621_pcie_reset_assert.exit.i
  br label %for.body.i103.i

mt7621_pcie_reset_assert.exit.i.mt7621_pcie_reset_rc_deassert.exit.i_crit_edge: ; preds = %mt7621_pcie_reset_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_pcie_reset_rc_deassert.exit.i

for.body.i103.i:                                  ; preds = %mt7621_control_deassert.exit.i.i.for.body.i103.i_crit_edge, %mt7621_pcie_reset_assert.exit.i.for.body.i103.i_crit_edge
  %.pn12.i.i = phi ptr [ %.pn.i108.i, %mt7621_control_deassert.exit.i.i.for.body.i103.i_crit_edge ], [ %.pn10.i.i, %mt7621_pcie_reset_assert.exit.i.for.body.i103.i_crit_edge ]
  %pcie1.i.i99.i = getelementptr i8, ptr %.pn12.i.i, i32 8
  %52 = ptrtoint ptr %pcie1.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcie1.i.i99.i, align 4
  %resets_inverted.i.i100.i = getelementptr inbounds %struct.mt7621_pcie, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %resets_inverted.i.i100.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %resets_inverted.i.i100.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i.i101.i = icmp eq i8 %55, 0
  %pcie_rst2.i.i102.i = getelementptr i8, ptr %.pn12.i.i, i32 20
  %56 = ptrtoint ptr %pcie_rst2.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcie_rst2.i.i102.i, align 4
  br i1 %tobool.not.i.i101.i, label %if.else.i.i107.i, label %if.then.i.i105.i

if.then.i.i105.i:                                 ; preds = %for.body.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i104.i = call i32 @reset_control_deassert(ptr noundef %57) #7
  br label %mt7621_control_deassert.exit.i.i

if.else.i.i107.i:                                 ; preds = %for.body.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i106.i = call i32 @reset_control_assert(ptr noundef %57) #7
  br label %mt7621_control_deassert.exit.i.i

mt7621_control_deassert.exit.i.i:                 ; preds = %if.else.i.i107.i, %if.then.i.i105.i
  %58 = ptrtoint ptr %.pn12.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn.i108.i = load ptr, ptr %.pn12.i.i, align 4
  %cmp.not.i109.i = icmp eq ptr %.pn.i108.i, %ports
  br i1 %cmp.not.i109.i, label %mt7621_control_deassert.exit.i.i.mt7621_pcie_reset_rc_deassert.exit.i_crit_edge, label %mt7621_control_deassert.exit.i.i.for.body.i103.i_crit_edge

mt7621_control_deassert.exit.i.i.for.body.i103.i_crit_edge: ; preds = %mt7621_control_deassert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i103.i

mt7621_control_deassert.exit.i.i.mt7621_pcie_reset_rc_deassert.exit.i_crit_edge: ; preds = %mt7621_control_deassert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_pcie_reset_rc_deassert.exit.i

mt7621_pcie_reset_rc_deassert.exit.i:             ; preds = %mt7621_control_deassert.exit.i.i.mt7621_pcie_reset_rc_deassert.exit.i_crit_edge, %mt7621_pcie_reset_assert.exit.i.mt7621_pcie_reset_rc_deassert.exit.i_crit_edge
  %59 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ports, align 4
  %cmp.not128.i = icmp eq ptr %60, %ports
  br i1 %cmp.not128.i, label %mt7621_pcie_reset_rc_deassert.exit.i.for.end.i_crit_edge, label %mt7621_pcie_reset_rc_deassert.exit.i.for.body.i66_crit_edge

mt7621_pcie_reset_rc_deassert.exit.i.for.body.i66_crit_edge: ; preds = %mt7621_pcie_reset_rc_deassert.exit.i
  br label %for.body.i66

mt7621_pcie_reset_rc_deassert.exit.i.for.end.i_crit_edge: ; preds = %mt7621_pcie_reset_rc_deassert.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i66:                                     ; preds = %cleanup.i.for.body.i66_crit_edge, %mt7621_pcie_reset_rc_deassert.exit.i.for.body.i66_crit_edge
  %.pn.in129.i = phi ptr [ %.pn132.i, %cleanup.i.for.body.i66_crit_edge ], [ %60, %mt7621_pcie_reset_rc_deassert.exit.i.for.body.i66_crit_edge ]
  %61 = ptrtoint ptr %.pn.in129.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn132.i = load ptr, ptr %.pn.in129.i, align 4
  %slot9.i = getelementptr i8, ptr %.pn.in129.i, i32 28
  %62 = ptrtoint ptr %slot9.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %slot9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp10.i = icmp eq i32 %63, 1
  br i1 %cmp10.i, label %if.then.i67, label %if.end.i70

if.then.i67:                                      ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #9
  %enabled.i = getelementptr i8, ptr %.pn.in129.i, i32 32
  %64 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %enabled.i, align 4
  br label %cleanup.i

if.end.i70:                                       ; preds = %for.body.i66
  %pcie1.i.i = getelementptr i8, ptr %.pn.in129.i, i32 8
  %65 = ptrtoint ptr %pcie1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcie1.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %phy.i.i68 = getelementptr i8, ptr %.pn.in129.i, i32 16
  %69 = ptrtoint ptr %phy.i.i68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy.i.i68, align 4
  %call.i.i = call i32 @phy_init(ptr noundef %70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i69 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i69, label %if.end.i.i72, label %do.end.i.i71

do.end.i.i71:                                     ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.34, i32 noundef %63) #10
  br label %do.end.i

if.end.i.i72:                                     ; preds = %if.end.i70
  %71 = ptrtoint ptr %phy.i.i68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy.i.i68, align 4
  %call5.i.i = call i32 @phy_power_on(ptr noundef %72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %mt7621_pcie_init_port.exit.i, label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.37, i32 noundef %63) #10
  %73 = ptrtoint ptr %phy.i.i68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %phy.i.i68, align 4
  %call12.i.i = call i32 @phy_exit(ptr noundef %74) #7
  br label %do.end.i

mt7621_pcie_init_port.exit.i:                     ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  %enabled.i.i = getelementptr i8, ptr %.pn.in129.i, i32 32
  %75 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %enabled.i.i, align 4
  br label %cleanup.i

do.end.i:                                         ; preds = %do.end10.i.i, %do.end.i.i71
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.29, i32 noundef %63) #10
  %call.i.i110.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in129.i) #7
  br i1 %call.i.i110.i, label %if.end.i.i.i, label %do.end.i.list_del.exit.i_crit_edge

do.end.i.list_del.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i73 = getelementptr inbounds %struct.list_head, ptr %.pn.in129.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i73, align 4
  %78 = ptrtoint ptr %.pn.in129.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %.pn.in129.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i.list_del.exit.i_crit_edge
  %82 = ptrtoint ptr %.pn.in129.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in129.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in129.i, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %list_del.exit.i, %mt7621_pcie_init_port.exit.i, %if.then.i67
  %cmp.not.i74 = icmp eq ptr %.pn132.i, %ports
  br i1 %cmp.not.i74, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.body.i66_crit_edge

cleanup.i.for.body.i66_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i66

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %mt7621_pcie_reset_rc_deassert.exit.i.for.end.i_crit_edge
  %84 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn10.i112.i = load ptr, ptr %ports, align 4
  %cmp.not11.i113.i = icmp eq ptr %.pn10.i112.i, %ports
  br i1 %cmp.not11.i113.i, label %for.end.i.mt7621_pcie_reset_ep_deassert.exit.i_crit_edge, label %for.end.i.for.body.i117.i_crit_edge

for.end.i.for.body.i117.i_crit_edge:              ; preds = %for.end.i
  br label %for.body.i117.i

for.end.i.mt7621_pcie_reset_ep_deassert.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_pcie_reset_ep_deassert.exit.i

for.body.i117.i:                                  ; preds = %mt7621_rst_gpio_pcie_deassert.exit.i.i.for.body.i117.i_crit_edge, %for.end.i.for.body.i117.i_crit_edge
  %.pn12.i114.i = phi ptr [ %.pn.i119.i, %mt7621_rst_gpio_pcie_deassert.exit.i.i.for.body.i117.i_crit_edge ], [ %.pn10.i112.i, %for.end.i.for.body.i117.i_crit_edge ]
  %gpio_rst.i.i115.i = getelementptr i8, ptr %.pn12.i114.i, i32 24
  %85 = ptrtoint ptr %gpio_rst.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %gpio_rst.i.i115.i, align 4
  %tobool.not.i.i116.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i116.i, label %for.body.i117.i.mt7621_rst_gpio_pcie_deassert.exit.i.i_crit_edge, label %if.then.i.i118.i

for.body.i117.i.mt7621_rst_gpio_pcie_deassert.exit.i.i_crit_edge: ; preds = %for.body.i117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_rst_gpio_pcie_deassert.exit.i.i

if.then.i.i118.i:                                 ; preds = %for.body.i117.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_value(ptr noundef nonnull %86, i32 noundef 0) #7
  br label %mt7621_rst_gpio_pcie_deassert.exit.i.i

mt7621_rst_gpio_pcie_deassert.exit.i.i:           ; preds = %if.then.i.i118.i, %for.body.i117.i.mt7621_rst_gpio_pcie_deassert.exit.i.i_crit_edge
  %87 = ptrtoint ptr %.pn12.i114.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn.i119.i = load ptr, ptr %.pn12.i114.i, align 4
  %cmp.not.i120.i = icmp eq ptr %.pn.i119.i, %ports
  br i1 %cmp.not.i120.i, label %mt7621_rst_gpio_pcie_deassert.exit.i.i.mt7621_pcie_reset_ep_deassert.exit.i_crit_edge, label %mt7621_rst_gpio_pcie_deassert.exit.i.i.for.body.i117.i_crit_edge

mt7621_rst_gpio_pcie_deassert.exit.i.i.for.body.i117.i_crit_edge: ; preds = %mt7621_rst_gpio_pcie_deassert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i117.i

mt7621_rst_gpio_pcie_deassert.exit.i.i.mt7621_pcie_reset_ep_deassert.exit.i_crit_edge: ; preds = %mt7621_rst_gpio_pcie_deassert.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt7621_pcie_reset_ep_deassert.exit.i

mt7621_pcie_reset_ep_deassert.exit.i:             ; preds = %mt7621_rst_gpio_pcie_deassert.exit.i.i.mt7621_pcie_reset_ep_deassert.exit.i_crit_edge, %for.end.i.mt7621_pcie_reset_ep_deassert.exit.i_crit_edge
  call void @msleep(i32 noundef 100) #7
  %88 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn96133.i = load ptr, ptr %ports, align 4
  %cmp27.not135.i = icmp eq ptr %.pn96133.i, %ports
  br i1 %cmp27.not135.i, label %mt7621_pcie_reset_ep_deassert.exit.i.if.end21_crit_edge, label %mt7621_pcie_reset_ep_deassert.exit.i.for.body29.i_crit_edge

mt7621_pcie_reset_ep_deassert.exit.i.for.body29.i_crit_edge: ; preds = %mt7621_pcie_reset_ep_deassert.exit.i
  br label %for.body29.i

mt7621_pcie_reset_ep_deassert.exit.i.if.end21_crit_edge: ; preds = %mt7621_pcie_reset_ep_deassert.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body29.i:                                     ; preds = %cleanup50.i.for.body29.i_crit_edge, %mt7621_pcie_reset_ep_deassert.exit.i.for.body29.i_crit_edge
  %.pn96139.i = phi ptr [ %.pn96.i, %cleanup50.i.for.body29.i_crit_edge ], [ %.pn96133.i, %mt7621_pcie_reset_ep_deassert.exit.i.for.body29.i_crit_edge ]
  %tmp.1137.i = phi ptr [ %tmp.2.i, %cleanup50.i.for.body29.i_crit_edge ], [ null, %mt7621_pcie_reset_ep_deassert.exit.i.for.body29.i_crit_edge ]
  %num_disabled.0136.i = phi i8 [ %num_disabled.2.i, %cleanup50.i.for.body29.i_crit_edge ], [ 0, %mt7621_pcie_reset_ep_deassert.exit.i.for.body29.i_crit_edge ]
  %port.1140.i = getelementptr i8, ptr %.pn96139.i, i32 -4
  %slot31.i = getelementptr i8, ptr %.pn96139.i, i32 28
  %89 = ptrtoint ptr %slot31.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %slot31.i, align 4
  %91 = ptrtoint ptr %port.1140.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port.1140.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %92, i32 80
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !103
  %94 = and i32 %93, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i.not.i = icmp eq i32 %94, 0
  br i1 %cmp.i.not.i, label %do.end36.i, label %for.body29.i.if.end49.i_crit_edge

for.body29.i.if.end49.i_crit_edge:                ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

do.end36.i:                                       ; preds = %for.body29.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.32, i32 noundef %90) #10
  %pcie1.i121.i = getelementptr i8, ptr %.pn96139.i, i32 8
  %95 = ptrtoint ptr %pcie1.i121.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pcie1.i121.i, align 4
  %resets_inverted.i.i = getelementptr inbounds %struct.mt7621_pcie, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %resets_inverted.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %resets_inverted.i.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i122.i = icmp eq i8 %98, 0
  %pcie_rst2.i.i = getelementptr i8, ptr %.pn96139.i, i32 20
  %99 = ptrtoint ptr %pcie_rst2.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pcie_rst2.i.i, align 4
  br i1 %tobool.not.i122.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i123.i = call i32 @reset_control_assert(ptr noundef %100) #7
  br label %mt7621_control_assert.exit.i

if.else.i.i:                                      ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i.i = call i32 @reset_control_deassert(ptr noundef %100) #7
  br label %mt7621_control_assert.exit.i

mt7621_control_assert.exit.i:                     ; preds = %if.else.i.i, %if.then.i.i
  %enabled37.i = getelementptr i8, ptr %.pn96139.i, i32 32
  %101 = ptrtoint ptr %enabled37.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %enabled37.i, align 4
  %inc.i = add i8 %num_disabled.0136.i, 1
  %102 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values)
  switch i32 %90, label %mt7621_control_assert.exit.i.if.end49.i_crit_edge [
    i32 0, label %mt7621_control_assert.exit.i.cleanup50.i_crit_edge
    i32 1, label %land.lhs.true.i
  ]

mt7621_control_assert.exit.i.cleanup50.i_crit_edge: ; preds = %mt7621_control_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50.i

mt7621_control_assert.exit.i.if.end49.i_crit_edge: ; preds = %mt7621_control_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

land.lhs.true.i:                                  ; preds = %mt7621_control_assert.exit.i
  %tobool42.not.i = icmp eq ptr %tmp.1137.i, null
  br i1 %tobool42.not.i, label %land.lhs.true.i.if.end49.i_crit_edge, label %land.lhs.true43.i

land.lhs.true.i.if.end49.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

land.lhs.true43.i:                                ; preds = %land.lhs.true.i
  %enabled44.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %tmp.1137.i, i32 0, i32 8
  %103 = ptrtoint ptr %enabled44.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %enabled44.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool45.not.i = icmp eq i8 %104, 0
  br i1 %tobool45.not.i, label %if.then46.i, label %land.lhs.true43.i.if.end49.i_crit_edge

land.lhs.true43.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then46.i:                                      ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i = getelementptr inbounds %struct.mt7621_pcie_port, ptr %tmp.1137.i, i32 0, i32 4
  %105 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %phy.i, align 4
  %call47.i = call i32 @phy_power_off(ptr noundef %106) #7
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %land.lhs.true43.i.if.end49.i_crit_edge, %land.lhs.true.i.if.end49.i_crit_edge, %mt7621_control_assert.exit.i.if.end49.i_crit_edge, %for.body29.i.if.end49.i_crit_edge
  %num_disabled.1.i = phi i8 [ %num_disabled.0136.i, %for.body29.i.if.end49.i_crit_edge ], [ %inc.i, %land.lhs.true43.i.if.end49.i_crit_edge ], [ %inc.i, %if.then46.i ], [ %inc.i, %land.lhs.true.i.if.end49.i_crit_edge ], [ %inc.i, %mt7621_control_assert.exit.i.if.end49.i_crit_edge ]
  br label %cleanup50.i

cleanup50.i:                                      ; preds = %if.end49.i, %mt7621_control_assert.exit.i.cleanup50.i_crit_edge
  %num_disabled.2.i = phi i8 [ %num_disabled.1.i, %if.end49.i ], [ %inc.i, %mt7621_control_assert.exit.i.cleanup50.i_crit_edge ]
  %tmp.2.i = phi ptr [ %tmp.1137.i, %if.end49.i ], [ %port.1140.i, %mt7621_control_assert.exit.i.cleanup50.i_crit_edge ]
  %107 = ptrtoint ptr %.pn96139.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn96.i = load ptr, ptr %.pn96139.i, align 4
  %cmp27.not.i = icmp eq ptr %.pn96.i, %ports
  br i1 %cmp27.not.i, label %for.end59.i, label %cleanup50.i.for.body29.i_crit_edge

cleanup50.i.for.body29.i_crit_edge:               ; preds = %cleanup50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.i

for.end59.i:                                      ; preds = %cleanup50.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %num_disabled.2.i)
  %cmp60.not.i = icmp eq i8 %num_disabled.2.i, 3
  br i1 %cmp60.not.i, label %do.end20, label %for.end59.i.if.end21_crit_edge

for.end59.i.if.end21_crit_edge:                   ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end20:                                         ; preds = %for.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end21:                                         ; preds = %for.end59.i.if.end21_crit_edge, %mt7621_pcie_reset_ep_deassert.exit.i.if.end21_crit_edge
  %108 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %private.i, align 4
  %windows.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i76.for.cond.i.i_crit_edge, %if.end21
  %entry1.0.in.i.i = phi ptr [ %windows.i, %if.end21 ], [ %entry1.0.i.i, %for.body.i.i76.for.cond.i.i_crit_edge ]
  %110 = ptrtoint ptr %entry1.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %entry1.0.i.i = load ptr, ptr %entry1.0.in.i.i, align 4
  %cmp.not.i.i75 = icmp eq ptr %entry1.0.i.i, %windows.i
  br i1 %cmp.not.i.i75, label %for.cond.i.i.do.end.i78_crit_edge, label %for.body.i.i76

for.cond.i.i.do.end.i78_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i78

for.body.i.i76:                                   ; preds = %for.cond.i.i
  %res.i.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %res.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.resource, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %114, 7936
  %cmp2.i.i = icmp eq i32 %and.i.i.i, 256
  br i1 %cmp2.i.i, label %resource_list_first_type.exit.i, label %for.body.i.i76.for.cond.i.i_crit_edge

for.body.i.i76.for.cond.i.i_crit_edge:            ; preds = %for.body.i.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

resource_list_first_type.exit.i:                  ; preds = %for.body.i.i76
  %tobool.not.i77 = icmp eq ptr %entry1.0.i.i, null
  br i1 %tobool.not.i77, label %resource_list_first_type.exit.i.do.end.i78_crit_edge, label %if.end.i80

resource_list_first_type.exit.i.do.end.i78_crit_edge: ; preds = %resource_list_first_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i78

do.end.i78:                                       ; preds = %resource_list_first_type.exit.i.do.end.i78_crit_edge, %for.cond.i.i.do.end.i78_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.39) #10
  br label %do.end27

if.end.i80:                                       ; preds = %resource_list_first_type.exit.i
  %res.i.i.le = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %116, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i79, i32 -1) #7, !srcloc !104
  %117 = ptrtoint ptr %res.i.i.le to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %res.i.i.le, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %118, align 4
  %offset.i = getelementptr inbounds %struct.resource_entry, ptr %entry1.0.i.i, i32 0, i32 2
  %121 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %offset.i, align 4
  %sub.i = sub i32 %120, %122
  %123 = call i32 @llvm.bswap.i32(i32 %sub.i) #7
  %124 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %125, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %123) #7, !srcloc !104
  %126 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %126)
  %.pn58.i = load ptr, ptr %ports, align 4
  %cmp.not60.i = icmp eq ptr %.pn58.i, %ports
  br i1 %cmp.not60.i, label %if.end.i80.if.end28_crit_edge, label %if.end.i80.for.body.i82_crit_edge

if.end.i80.for.body.i82_crit_edge:                ; preds = %if.end.i80
  br label %for.body.i82

if.end.i80.if.end28_crit_edge:                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body.i82:                                     ; preds = %for.inc.i90.for.body.i82_crit_edge, %if.end.i80.for.body.i82_crit_edge
  %.pn61.i = phi ptr [ %.pn.i, %for.inc.i90.for.body.i82_crit_edge ], [ %.pn58.i, %if.end.i80.for.body.i82_crit_edge ]
  %port.062.i = getelementptr i8, ptr %.pn61.i, i32 -4
  %enabled.i81 = getelementptr i8, ptr %.pn61.i, i32 32
  %127 = ptrtoint ptr %enabled.i81 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %enabled.i81, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool5.not.i = icmp eq i8 %128, 0
  br i1 %tobool5.not.i, label %for.body.i82.for.inc.i90_crit_edge, label %if.then6.i

for.body.i82.for.inc.i90_crit_edge:               ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i90

if.then6.i:                                       ; preds = %for.body.i82
  %clk.i = getelementptr i8, ptr %.pn61.i, i32 12
  %129 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk.i, align 4
  %call.i.i83 = call i32 @clk_prepare(ptr noundef %130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %call.i.i83, 0
  br i1 %tobool.not.i.i84, label %if.end.i.i85, label %if.then6.i.do.end12.i_crit_edge

if.then6.i.do.end12.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12.i

if.end.i.i85:                                     ; preds = %if.then6.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end13.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %130) #7
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then3.i.i, %if.then6.i.do.end12.i_crit_edge
  %retval.0.i46.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i83, %if.then6.i.do.end12.i_crit_edge ]
  %slot.i = getelementptr i8, ptr %.pn61.i, i32 28
  %131 = ptrtoint ptr %slot.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %slot.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.42, i32 noundef %132) #10
  br label %do.end27

if.end13.i:                                       ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #9
  %pcie1.i.i86 = getelementptr i8, ptr %.pn61.i, i32 8
  %133 = ptrtoint ptr %pcie1.i.i86 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pcie1.i.i86, align 4
  %slot2.i.i = getelementptr i8, ptr %.pn61.i, i32 28
  %135 = ptrtoint ptr %slot2.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %slot2.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.mt7621_pcie, ptr %134, i32 0, i32 1
  %137 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i87 = getelementptr i8, ptr %138, i32 12
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i87) #7, !srcloc !103
  %140 = call i32 @llvm.bswap.i32(i32 %139) #7
  %add.i.i88 = add i32 %136, 20
  %shl.i.i = shl nuw i32 1, %add.i.i88
  %or.i.i = or i32 %140, %shl.i.i
  %141 = call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %142 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i18.i.i = getelementptr i8, ptr %143, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i.i, i32 %141) #7, !srcloc !104
  %144 = ptrtoint ptr %port.062.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %port.062.i, align 4
  %add.ptr.i19.i.i = getelementptr i8, ptr %145, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i.i, i32 16842623) #7, !srcloc !104
  %146 = ptrtoint ptr %port.062.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %port.062.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %147, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i.i, i32 16778246) #7, !srcloc !104
  %shl2.i.i.i.i = shl i32 %136, 11
  %or8.i.i.i.i = or i32 %shl2.i.i.i.i, -2030043124
  %148 = call i32 @llvm.bswap.i32(i32 %or8.i.i.i.i) #7
  %149 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %150, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %148) #7, !srcloc !104
  %151 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %152, i32 36
  %153 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i.i) #7, !srcloc !103
  %154 = and i32 %153, -16711681
  %155 = or i32 %154, 5242880
  %156 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i24.i.i = getelementptr i8, ptr %157, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24.i.i, i32 %148) #7, !srcloc !104
  %158 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i2.i25.i.i = getelementptr i8, ptr %159, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i25.i.i, i32 %155) #7, !srcloc !104
  %160 = ptrtoint ptr %slot2.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %slot2.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.45, i32 noundef %161) #10
  br label %for.inc.i90

for.inc.i90:                                      ; preds = %if.end13.i, %for.body.i82.for.inc.i90_crit_edge
  %162 = ptrtoint ptr %.pn61.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %.pn.i = load ptr, ptr %.pn61.i, align 4
  %cmp.not.i89 = icmp eq ptr %.pn.i, %ports
  br i1 %cmp.not.i89, label %for.inc.i90.if.end28_crit_edge, label %for.inc.i90.for.body.i82_crit_edge

for.inc.i90.for.body.i82_crit_edge:               ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i82

for.inc.i90.if.end28_crit_edge:                   ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end27:                                         ; preds = %do.end12.i, %do.end.i78
  %retval.0.i = phi i32 [ %retval.0.i46.ph.i, %do.end12.i ], [ -22, %do.end.i78 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  %163 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pn115 = load ptr, ptr %ports, align 4
  %cmp.not116 = icmp eq ptr %.pn115, %ports
  br i1 %cmp.not116, label %do.end27.cleanup_crit_edge, label %do.end27.for.body_crit_edge

do.end27.for.body_crit_edge:                      ; preds = %do.end27
  br label %for.body

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %for.inc.i90.if.end28_crit_edge, %if.end.i80.if.end28_crit_edge
  %ops.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %164 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @mt7621_pcie_ops, ptr %ops.i, align 4
  %sysdata.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %165 = ptrtoint ptr %sysdata.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %private.i, ptr %sysdata.i, align 4
  %call1.i = call i32 @pci_host_probe(ptr noundef nonnull %call) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end27.for.body_crit_edge
  %.pn117 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn115, %do.end27.for.body_crit_edge ]
  %pcie_rst = getelementptr i8, ptr %.pn117, i32 20
  %166 = ptrtoint ptr %pcie_rst to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pcie_rst, align 4
  call void @reset_control_put(ptr noundef %167) #7
  %168 = ptrtoint ptr %.pn117 to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pn = load ptr, ptr %.pn117, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end28, %do.end27.cleanup_crit_edge, %do.end20, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.2.i98, %do.end ], [ 0, %do.end20 ], [ %call1.i, %if.end28 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i, %do.end27.cleanup_crit_edge ], [ %retval.0.i, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt7621_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ports = getelementptr inbounds %struct.mt7621_pcie, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn10 = load ptr, ptr %ports, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %ports
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %pcie_rst = getelementptr i8, ptr %.pn12, i32 20
  %3 = ptrtoint ptr %pcie_rst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie_rst, align 4
  tail call void @reset_control_put(ptr noundef %4) #7
  %5 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %ports
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_devfn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_get_clk_from_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mt7621_pcie_map_bus(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %number = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  %4 = shl i32 %where, 16
  %shl.i = and i32 %4, 251658240
  %shl1.i = shl nuw nsw i32 %conv, 16
  %5 = shl i32 %devfn, 8
  %shl2.i = and i32 %5, 63488
  %shl4.i = and i32 %5, 1792
  %and6.i = and i32 %where, 252
  %or.i = or i32 %shl1.i, %shl2.i
  %or3.i = or i32 %or.i, %shl4.i
  %or5.i = or i32 %or3.i, %and6.i
  %or7.i = or i32 %or5.i, %shl.i
  %or8.i = or i32 %or7.i, -2147483648
  %6 = tail call i32 @llvm.bswap.i32(i32 %or8.i)
  %base = getelementptr inbounds %struct.mt7621_pcie, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !104
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %10, i32 36
  %and4 = and i32 %where, 3
  %add.ptr5 = getelementptr i8, ptr %add.ptr3, i32 %and4
  ret ptr %add.ptr5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_generic_config_write(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_pcie_mt7621__293_554_mt7621_pcie_driver_init6, !1, !"__initcall__kmod_pcie_mt7621__293_554_mt7621_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 554, i32 1}
!2 = !{ptr @__UNIQUE_ID_file294, !3, !"__UNIQUE_ID_file294", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 556, i32 1}
!4 = !{ptr @__UNIQUE_ID_license295, !3, !"__UNIQUE_ID_license295", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 550, i32 11}
!7 = !{ptr @mt7621_pcie_driver, !8, !"mt7621_pcie_driver", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 546, i32 31}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 504, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mt7621_pcie_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @mt7621_pcie_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 510, i32 3}
!19 = !{ptr @mt7621_pcie_probe._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mt7621_pcie_probe._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 516, i32 3}
!23 = !{ptr @mt7621_pcie_probe._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mt7621_pcie_probe._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 474, i32 36}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 474, i32 14}
!29 = !{ptr @mt7621_pcie_quirks_match, !30, !"mt7621_pcie_quirks_match", i1 false, i1 false}
!30 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 473, i32 42}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 278, i32 4}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mt7621_pcie_parse_dt._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mt7621_pcie_parse_dt._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 222, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mt7621_pcie_parse_port._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mt7621_pcie_parse_port._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 228, i32 3}
!43 = !{ptr @mt7621_pcie_parse_port._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mt7621_pcie_parse_port._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 232, i32 31}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 235, i32 3}
!49 = !{ptr @mt7621_pcie_parse_port._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mt7621_pcie_parse_port._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 240, i32 54}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 243, i32 3}
!55 = !{ptr @mt7621_pcie_parse_port._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mt7621_pcie_parse_port._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 372, i32 4}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mt7621_pcie_init_ports._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @mt7621_pcie_init_ports._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 384, i32 4}
!64 = !{ptr @mt7621_pcie_init_ports._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mt7621_pcie_init_ports._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 303, i32 3}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mt7621_pcie_init_port._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @mt7621_pcie_init_port._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 309, i32 3}
!73 = !{ptr @mt7621_pcie_init_port._entry.36, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mt7621_pcie_init_port._entry_ptr.38, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 439, i32 3}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @mt7621_pcie_enable_ports._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @mt7621_pcie_enable_ports._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 451, i32 5}
!82 = !{ptr @mt7621_pcie_enable_ports._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mt7621_pcie_enable_ports._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 457, i32 4}
!86 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mt7621_pcie_enable_ports._entry.44, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @mt7621_pcie_enable_ports._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @mt7621_pcie_ops, !90, !"mt7621_pcie_ops", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 142, i32 23}
!91 = !{ptr @mt7621_pcie_ids, !92, !"mt7621_pcie_ids", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/pcie-mt7621.c", i32 540, i32 34}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i8 0, i8 2}
!103 = !{i64 4747539}
!104 = !{i64 4747121}
