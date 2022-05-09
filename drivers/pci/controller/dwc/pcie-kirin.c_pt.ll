; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-kirin.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-kirin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kirin_pcie_data = type { i32 }
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
%struct.kirin_pcie = type { i32, ptr, ptr, ptr, ptr, i32, i32, [3 x i32], [3 x ptr], i32, [3 x i32], [3 x ptr] }
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.hi3660_pcie_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_pcie_kirin__293_832_kirin_pcie_driver_init6 = internal global ptr @kirin_pcie_driver_init, section ".initcall6.init", align 4
@kirin_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kirin_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @kirin_pcie_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kirin_pcie_driver_exit = internal global ptr @kirin_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description294 = internal constant [72 x i8] c"pcie_kirin.description=PCIe host controller driver for Kirin Phone SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [56 x i8] c"pcie_kirin.author=Xiaowei Song <songxiaowei@huawei.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [54 x i8] c"pcie_kirin.file=drivers/pci/controller/dwc/pcie-kirin\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [26 x i8] c"pcie_kirin.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kirin-pcie\00", [21 x i8] zeroinitializer }, align 32
@kirin_pcie_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,kirin960-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kirin_960_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,kirin970-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kirin_970_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@kirin_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 786, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"NULL node\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kirin_pcie_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pci/controller/dwc/pcie-kirin.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kirin_pcie_probe._entry_ptr = internal global ptr @kirin_pcie_probe._entry, section ".printk_index", align 4
@kirin_pcie_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 792, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OF data missing\0A\00", [47 x i8] zeroinitializer }, align 32
@kirin_pcie_probe._entry_ptr.8 = internal global ptr @kirin_pcie_probe._entry.6, section ".printk_index", align 4
@kirin_dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr @kirin_pcie_read_dbi, ptr @kirin_pcie_write_dbi, ptr null, ptr @kirin_pcie_link_up, ptr @kirin_pcie_start_link, ptr null }, [36 x i8] zeroinitializer }, align 32
@kirin_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @kirin_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@kirin_pci_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr @kirin_pcie_add_bus, ptr null, ptr null, ptr @kirin_pcie_rd_own_conf, ptr @kirin_pcie_wr_own_conf }, [44 x i8] zeroinitializer }, align 32
@kirin_pcie_add_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 566, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PERST# %s error: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kirin_pcie_add_bus\00", [45 x i8] zeroinitializer }, align 32
@kirin_pcie_add_bus._entry_ptr = internal global ptr @kirin_pcie_add_bus._entry, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@kirin_pcie_get_resource._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pcie_kirin_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.16, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"pcie_kirin:468:(&pcie_kirin_regmap_conf)->lock\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@kirin_pcie_get_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to get a valid gpio pin\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kirin_pcie_get_resource\00", [40 x i8] zeroinitializer }, align 32
@kirin_pcie_get_resource._entry_ptr = internal global ptr @kirin_pcie_get_resource._entry, section ".printk_index", align 4
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kirin_pcie_apb\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hisilicon,clken-gpios\00", [42 x i8] zeroinitializer }, align 32
@kirin_pcie_get_gpio_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Too many GPIO clock requests!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kirin_pcie_get_gpio_enable\00", [37 x i8] zeroinitializer }, align 32
@kirin_pcie_get_gpio_enable._entry_ptr = internal global ptr @kirin_pcie_get_gpio_enable._entry, section ".printk_index", align 4
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcie_clkreq_%d\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#gpio-cells\00", [20 x i8] zeroinitializer }, align 32
@kirin_pcie_parse_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Too many PCI slots!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kirin_pcie_parse_port\00", [42 x i8] zeroinitializer }, align 32
@kirin_pcie_parse_port._entry_ptr = internal global ptr @kirin_pcie_parse_port._entry, section ".printk_index", align 4
@kirin_pcie_parse_port._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to parse devfn: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@kirin_pcie_parse_port._entry_ptr.26 = internal global ptr @kirin_pcie_parse_port._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie_perst_%d\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcie_perst_bridge\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_phy_ref\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_aux\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_apb_phy\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_apb_sys\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcie_aclk\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hisilicon,hi3660-crgctrl\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hisilicon,hi3660-sctrl\00", [41 x i8] zeroinitializer }, align 32
@hi3660_pcie_phy_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PIPE clk is not stable\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hi3660_pcie_phy_start\00", [42 x i8] zeroinitializer }, align 32
@hi3660_pcie_phy_start._entry_ptr = internal global ptr @hi3660_pcie_phy_start._entry, section ".printk_index", align 4
@kirin_pcie_gpio_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 641, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to get a valid %s gpio\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kirin_pcie_gpio_request\00", [40 x i8] zeroinitializer }, align 32
@kirin_pcie_gpio_request._entry_ptr = internal global ptr @kirin_pcie_gpio_request._entry, section ".printk_index", align 4
@kirin_pcie_gpio_request._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 654, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@kirin_pcie_gpio_request._entry_ptr.42 = internal global ptr @kirin_pcie_gpio_request._entry.41, section ".printk_index", align 4
@kirin_960_data = internal constant { %struct.kirin_pcie_data, [28 x i8] } zeroinitializer, align 32
@kirin_970_data = internal constant { %struct.kirin_pcie_data, [28 x i8] } { %struct.kirin_pcie_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"kirin_pcie_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 823, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 827, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"kirin_pcie_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 771, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 786, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 792, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"kirin_dw_pcie_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 671, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"kirin_pcie_host_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 678, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"kirin_pci_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 574, i32 23 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 565, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 463, i32 57 }
@___asan_gen_.97 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"pcie_kirin_regmap_conf\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 361, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 467, i32 20 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 474, i32 10 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 478, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 362, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 377, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 382, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 394, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"../include/linux/of_gpio.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 104, i32 50 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 424, i32 5 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 431, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 437, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 733, i32 51 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 155, i32 39 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 159, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 163, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 167, i32 39 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 171, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 186, i32 58 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 190, i32 52 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 194, i32 52 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 222, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 640, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 653, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant [15 x i8] c"kirin_960_data\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 763, i32 37 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"kirin_970_data\00", align 1
@___asan_gen_.209 = private constant [43 x i8] c"../drivers/pci/controller/dwc/pcie-kirin.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 767, i32 37 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_kirin_pcie_driver_exit, ptr @__initcall__kmod_pcie_kirin__293_832_kirin_pcie_driver_init6, ptr @hi3660_pcie_phy_start._entry, ptr @hi3660_pcie_phy_start._entry_ptr, ptr @kirin_pcie_add_bus._entry, ptr @kirin_pcie_add_bus._entry_ptr, ptr @kirin_pcie_driver_exit, ptr @kirin_pcie_get_gpio_enable._entry, ptr @kirin_pcie_get_gpio_enable._entry_ptr, ptr @kirin_pcie_get_resource._entry, ptr @kirin_pcie_get_resource._entry_ptr, ptr @kirin_pcie_gpio_request._entry, ptr @kirin_pcie_gpio_request._entry.41, ptr @kirin_pcie_gpio_request._entry_ptr, ptr @kirin_pcie_gpio_request._entry_ptr.42, ptr @kirin_pcie_parse_port._entry, ptr @kirin_pcie_parse_port._entry.24, ptr @kirin_pcie_parse_port._entry_ptr, ptr @kirin_pcie_parse_port._entry_ptr.26, ptr @kirin_pcie_probe._entry, ptr @kirin_pcie_probe._entry.6, ptr @kirin_pcie_probe._entry_ptr, ptr @kirin_pcie_probe._entry_ptr.8, ptr @kirin_pcie_remove, ptr @kirin_pcie_driver, ptr @.str, ptr @kirin_pcie_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @kirin_dw_pcie_ops, ptr @kirin_pcie_host_ops, ptr @kirin_pci_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @kirin_pcie_get_resource._key, ptr @pcie_kirin_regmap_conf, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @kirin_960_data, ptr @kirin_970_data], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pci_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_add_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_get_resource._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_kirin_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_get_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_get_gpio_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_parse_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_parse_port._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_pcie_phy_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_gpio_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_pcie_gpio_request._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_960_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirin_970_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kirin_pcie_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pci = getelementptr inbounds %struct.kirin_pcie, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %3, i32 0, i32 7
  tail call void @dw_pcie_host_deinit(ptr noundef %pp) #8
  tail call fastcc void @kirin_pcie_power_off(ptr noundef %1)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_host_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kirin_pcie_power_off(ptr nocapture noundef readonly %kirin_pcie) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kirin_pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kirin_pcie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n_gpio_clkreq = getelementptr inbounds %struct.kirin_pcie, ptr %kirin_pcie, i32 0, i32 9
  %2 = ptrtoint ptr %n_gpio_clkreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_gpio_clkreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp12 = icmp sgt i32 %3, 0
  br i1 %cmp12, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %phy_priv.i = getelementptr inbounds %struct.kirin_pcie, ptr %kirin_pcie, i32 0, i32 4
  %4 = ptrtoint ptr %phy_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_priv.i, align 4
  %sysctrl.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sysctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysctrl.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 96, i32 noundef 0) #8
  %aux_clk25.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %aux_clk25.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aux_clk25.i.i, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  %aclk26.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %aclk26.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aclk26.i.i, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  %apb_phy_clk27.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %apb_phy_clk27.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %apb_phy_clk27.i.i, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  tail call void @clk_unprepare(ptr noundef %13) #8
  %apb_sys_clk28.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %apb_sys_clk28.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %apb_sys_clk28.i.i, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  %phy_ref_clk29.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %phy_ref_clk29.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_ref_clk29.i.i, align 4
  tail call void @clk_disable(ptr noundef %17) #8
  tail call void @clk_unprepare(ptr noundef %17) #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kirin_pcie, ptr %kirin_pcie, i32 0, i32 10, i32 %i.03
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %call.i1 = tail call ptr @gpio_to_desc(i32 noundef %19) #8
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i1, i32 noundef 1) #8
  %inc = add nuw nsw i32 %i.03, 1
  %20 = ptrtoint ptr %n_gpio_clkreq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_gpio_clkreq, align 4
  %cmp1 = icmp slt i32 %inc, %21
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %phy = getelementptr inbounds %struct.kirin_pcie, ptr %kirin_pcie, i32 0, i32 3
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %call3 = tail call i32 @phy_power_off(ptr noundef %23) #8
  %24 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy, align 4
  %call5 = tail call i32 @phy_exit(ptr noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kirin_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kirin_pcie_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kirin_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @kirin_pcie_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirin_pcie_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %val.i.i.i = alloca i32, align 4
  %name.i58.i = alloca [32 x i8], align 1
  %name.i.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 80, i32 noundef 3520) #8
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call.i56 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #8
  %tobool13.not = icmp eq ptr %call.i56, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %2 = ptrtoint ptr %call.i56 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i56, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i56, i32 0, i32 9
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @kirin_dw_pcie_ops, ptr %ops, align 8
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %call.i56, i32 0, i32 7
  %ops17 = getelementptr inbounds %struct.dw_pcie, ptr %call.i56, i32 0, i32 7, i32 8
  %4 = ptrtoint ptr %ops17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @kirin_pcie_host_ops, ptr %ops17, align 8
  %pci18 = getelementptr inbounds %struct.kirin_pcie, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %pci18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i56, ptr %pci18, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call.i, align 4
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call.i57 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #8
  %cmp.i.i = icmp ugt ptr %call.i57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end15.kirin_pcie_get_resource.exit_crit_edge, label %if.end.i

if.end15.kirin_pcie_get_resource.exit_crit_edge:  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %kirin_pcie_get_resource.exit

if.end.i:                                         ; preds = %if.end15
  %call4.i = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call.i57, ptr noundef nonnull @pcie_kirin_regmap_conf, ptr noundef nonnull @kirin_pcie_get_resource._key, ptr noundef nonnull @.str.12) #8
  %apb.i = getelementptr inbounds %struct.kirin_pcie, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %apb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4.i, ptr %apb.i, align 4
  %cmp.i56.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56.i, label %if.end.i.kirin_pcie_get_resource.exit_crit_edge, label %if.end10.i

if.end.i.kirin_pcie_get_resource.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kirin_pcie_get_resource.exit

if.end10.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef null) #8
  %gpio_id_dwc_perst.i = getelementptr inbounds %struct.kirin_pcie, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %gpio_id_dwc_perst.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i.i, ptr %gpio_id_dwc_perst.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, -517
  br i1 %cmp.i, label %if.end10.i.cleanup_crit_edge, label %if.else.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i.i)
  %15 = icmp ult i32 %call.i.i, 2048
  br i1 %15, label %if.end19.i, label %do.end.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end19.i:                                       ; preds = %if.else.i
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i.i) #8
  %18 = call ptr @memset(ptr %name.i.i, i32 255, i32 32)
  %call.i.i.i = tail call i32 @of_count_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i57.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i57.i, label %if.end19.i.if.end22.i_crit_edge, label %if.end.i.i

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.end.i.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp2.i.i = icmp ugt i32 %call.i.i.i, 3
  br i1 %cmp2.i.i, label %do.end.i.i, label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #11
  br label %kirin_pcie_get_gpio_enable.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %n_gpio_clkreq.i.i = getelementptr inbounds %struct.kirin_pcie, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %n_gpio_clkreq.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i.i.i, ptr %n_gpio_clkreq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp648.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp648.not.i.i, label %if.end4.i.i.if.end22.i_crit_edge, label %if.end4.i.i.for.body.i.i_crit_edge

if.end4.i.i.for.body.i.i_crit_edge:               ; preds = %if.end4.i.i
  br label %for.body.i.i

if.end4.i.i.if.end22.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

for.cond.i.i:                                     ; preds = %if.end15.i.i
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %20 = ptrtoint ptr %n_gpio_clkreq.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_gpio_clkreq.i.i, align 4
  %cmp6.i.i = icmp slt i32 %inc.i.i, %21
  br i1 %cmp6.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.if.end22.i_crit_edge

for.cond.i.i.if.end22.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end4.i.i.for.body.i.i_crit_edge
  %i.049.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end4.i.i.for.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call.i47.i.i = call i32 @of_get_named_gpio_flags(ptr noundef %23, ptr noundef nonnull @.str.17, i32 noundef %i.049.i.i, ptr noundef null) #8
  %arrayidx.i.i = getelementptr %struct.kirin_pcie, ptr %call.i, i32 0, i32 10, i32 %i.049.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call.i47.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i.i)
  %cmp11.i.i = icmp slt i32 %call.i47.i.i, 0
  br i1 %cmp11.i.i, label %for.body.i.i.kirin_pcie_get_gpio_enable.exit.i_crit_edge, label %if.end15.i.i

for.body.i.i.kirin_pcie_get_gpio_enable.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kirin_pcie_get_gpio_enable.exit.i

if.end15.i.i:                                     ; preds = %for.body.i.i
  %call16.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i.i, ptr noundef nonnull @.str.20, i32 noundef %i.049.i.i) #8
  %call18.i.i = call ptr @devm_kstrdup_const(ptr noundef %dev1, ptr noundef nonnull %name.i.i, i32 noundef 3264) #8
  %arrayidx19.i.i = getelementptr %struct.kirin_pcie, ptr %call.i, i32 0, i32 11, i32 %i.049.i.i
  %25 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call18.i.i, ptr %arrayidx19.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool.not.i.i, label %if.end15.i.i.kirin_pcie_get_gpio_enable.exit.i_crit_edge, label %for.cond.i.i

if.end15.i.i.kirin_pcie_get_gpio_enable.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kirin_pcie_get_gpio_enable.exit.i

kirin_pcie_get_gpio_enable.exit.i:                ; preds = %if.end15.i.i.kirin_pcie_get_gpio_enable.exit.i_crit_edge, %for.body.i.i.kirin_pcie_get_gpio_enable.exit.i_crit_edge, %do.end.i.i
  %retval.0.i.i = phi i32 [ -22, %do.end.i.i ], [ %call.i47.i.i, %for.body.i.i.kirin_pcie_get_gpio_enable.exit.i_crit_edge ], [ -12, %if.end15.i.i.kirin_pcie_get_gpio_enable.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #8
  br label %cleanup

if.end22.i:                                       ; preds = %for.cond.i.i.if.end22.i_crit_edge, %if.end4.i.i.if.end22.i_crit_edge, %if.end19.i.if.end22.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #8
  %call23.i = call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef null) #8
  %cmp24.not86.i = icmp eq ptr %call23.i, null
  br i1 %cmp24.not86.i, label %if.end22.i.if.end22_crit_edge, label %for.body.lr.ph.i

if.end22.i.if.end22_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.body.lr.ph.i:                                 ; preds = %if.end22.i
  %num_slots.i.i = getelementptr inbounds %struct.kirin_pcie, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.087.i = phi ptr [ %call23.i, %for.body.lr.ph.i ], [ %call29.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i58.i) #8
  %26 = call ptr @memset(ptr %name.i58.i, i32 255, i32 32)
  %call.i60.i = call ptr @of_get_next_available_child(ptr noundef nonnull %child.087.i, ptr noundef null) #8
  %cmp.not75.i.i = icmp eq ptr %call.i60.i, null
  br i1 %cmp.not75.i.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.for.body.i61.i_crit_edge

for.body.i.for.body.i61.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i61.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.body.i61.i:                                   ; preds = %for.inc31.i.i.for.body.i61.i_crit_edge, %for.body.i.for.body.i61.i_crit_edge
  %parent.076.i.i = phi ptr [ %call32.i.i, %for.inc31.i.i.for.body.i61.i_crit_edge ], [ %call.i60.i, %for.body.i.for.body.i61.i_crit_edge ]
  %call2.i.i = call ptr @of_get_next_available_child(ptr noundef nonnull %parent.076.i.i, ptr noundef null) #8
  %cmp4.not72.i.i = icmp eq ptr %call2.i.i, null
  br i1 %cmp4.not72.i.i, label %for.body.i61.i.for.inc31.i.i_crit_edge, label %for.body.i61.i.for.body5.i.i_crit_edge

for.body.i61.i.for.body5.i.i_crit_edge:           ; preds = %for.body.i61.i
  br label %for.body5.i.i

for.body.i61.i.for.inc31.i.i_crit_edge:           ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31.i.i

for.body5.i.i:                                    ; preds = %for.inc.i.i.for.body5.i.i_crit_edge, %for.body.i61.i.for.body5.i.i_crit_edge
  %child.073.i.i = phi ptr [ %call30.i.i, %for.inc.i.i.for.body5.i.i_crit_edge ], [ %call2.i.i, %for.body.i61.i.for.body5.i.i_crit_edge ]
  %27 = ptrtoint ptr %num_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_slots.i.i, align 4
  %call.i.i62.i = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %child.073.i.i, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef null) #8
  %arrayidx.i63.i = getelementptr %struct.kirin_pcie, ptr %call.i, i32 0, i32 7, i32 %28
  %29 = ptrtoint ptr %arrayidx.i63.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call.i.i62.i, ptr %arrayidx.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62.i)
  %cmp9.i.i = icmp slt i32 %call.i.i62.i, 0
  br i1 %cmp9.i.i, label %for.body5.i.i.for.inc.i.i_crit_edge, label %if.end.i65.i

for.body5.i.i.for.inc.i.i_crit_edge:              ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i65.i:                                     ; preds = %for.body5.i.i
  %30 = ptrtoint ptr %num_slots.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_slots.i.i, align 4
  %inc.i64.i = add i32 %31, 1
  store i32 %inc.i64.i, ptr %num_slots.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.i64.i)
  %cmp12.i.i = icmp sgt i32 %inc.i64.i, 3
  br i1 %cmp12.i.i, label %do.end.i66.i, label %if.end14.i.i

do.end.i66.i:                                     ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #11
  br label %put_node.i

if.end14.i.i:                                     ; preds = %if.end.i65.i
  %call15.i.i = call i32 @of_pci_get_devfn(ptr noundef nonnull %child.073.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %do.end20.i.i, label %if.end21.i.i

do.end20.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call15.i.i) #11
  br label %put_node.i

if.end21.i.i:                                     ; preds = %if.end14.i.i
  %32 = lshr i32 %call15.i.i, 3
  %and.i.i = and i32 %32, 31
  %call22.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i58.i, ptr noundef nonnull @.str.27, i32 noundef %and.i.i) #8
  %call24.i.i = call ptr @devm_kstrdup_const(ptr noundef %dev1, ptr noundef nonnull %name.i58.i, i32 noundef 3264) #8
  %arrayidx25.i.i = getelementptr %struct.kirin_pcie, ptr %call.i, i32 0, i32 8, i32 %28
  %33 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call24.i.i, ptr %arrayidx25.i.i, align 4
  %tobool.not.i67.i = icmp eq ptr %call24.i.i, null
  br i1 %tobool.not.i67.i, label %if.end21.i.i.put_node.i_crit_edge, label %if.end21.i.i.for.inc.i.i_crit_edge

if.end21.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end21.i.i.put_node.i_crit_edge:                ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_node.i

for.inc.i.i:                                      ; preds = %if.end21.i.i.for.inc.i.i_crit_edge, %for.body5.i.i.for.inc.i.i_crit_edge
  %call30.i.i = call ptr @of_get_next_available_child(ptr noundef nonnull %parent.076.i.i, ptr noundef nonnull %child.073.i.i) #8
  %cmp4.not.i.i = icmp eq ptr %call30.i.i, null
  br i1 %cmp4.not.i.i, label %for.inc.i.i.for.inc31.i.i_crit_edge, label %for.inc.i.i.for.body5.i.i_crit_edge

for.inc.i.i.for.body5.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i.i

for.inc.i.i.for.inc31.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31.i.i

for.inc31.i.i:                                    ; preds = %for.inc.i.i.for.inc31.i.i_crit_edge, %for.body.i61.i.for.inc31.i.i_crit_edge
  %call32.i.i = call ptr @of_get_next_available_child(ptr noundef nonnull %child.087.i, ptr noundef nonnull %parent.076.i.i) #8
  %cmp.not.i.i = icmp eq ptr %call32.i.i, null
  br i1 %cmp.not.i.i, label %for.inc31.i.i.for.inc.i_crit_edge, label %for.inc31.i.i.for.body.i61.i_crit_edge

for.inc31.i.i.for.body.i61.i_crit_edge:           ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i61.i

for.inc31.i.i.for.inc.i_crit_edge:                ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc31.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i58.i) #8
  %call29.i = call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef nonnull %child.087.i) #8
  %cmp24.not.i = icmp eq ptr %call29.i, null
  br i1 %cmp24.not.i, label %for.inc.i.if.end22_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end22_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

put_node.i:                                       ; preds = %if.end21.i.i.put_node.i_crit_edge, %do.end20.i.i, %do.end.i66.i
  %ret.0.i.i = phi i32 [ -22, %do.end.i66.i ], [ %call15.i.i, %do.end20.i.i ], [ -12, %if.end21.i.i.put_node.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.073.i.i) #8
  call void @of_node_put(ptr noundef nonnull %parent.076.i.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i58.i) #8
  call void @of_node_put(ptr noundef nonnull %child.087.i) #8
  br label %cleanup

kirin_pcie_get_resource.exit:                     ; preds = %if.end.i.kirin_pcie_get_resource.exit_crit_edge, %if.end15.kirin_pcie_get_resource.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i57, %if.end15.kirin_pcie_get_resource.exit_crit_edge ], [ %call4.i, %if.end.i.kirin_pcie_get_resource.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %cleanup

if.end22:                                         ; preds = %for.inc.i.if.end22_crit_edge, %if.end22.i.if.end22_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i59 = icmp eq i32 %36, 0
  br i1 %cmp.i59, label %if.then.i62, label %if.else.i69

if.then.i62:                                      ; preds = %if.end22
  %call.i.i.i60 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #8
  %tobool.not.i.i61 = icmp eq ptr %call.i.i.i60, null
  br i1 %tobool.not.i.i61, label %if.then.i62.cleanup_crit_edge, label %if.end.i.i63

if.then.i62.cleanup_crit_edge:                    ; preds = %if.then.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i63:                                     ; preds = %if.then.i62
  %phy_priv.i.i = getelementptr inbounds %struct.kirin_pcie, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %phy_priv.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i.i60, ptr %phy_priv.i.i, align 4
  %38 = ptrtoint ptr %call.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev1, ptr %call.i.i.i60, align 4
  %call.i17.i.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.29) #8
  %phy_ref_clk.i.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %call.i.i.i60, i32 0, i32 6
  %39 = ptrtoint ptr %phy_ref_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i17.i.i, ptr %phy_ref_clk.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call.i17.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end.i.i63.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i63.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge: ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi3660_pcie_phy_get_clk.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i63
  %call6.i.i.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.30) #8
  %aux_clk.i.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %call.i.i.i60, i32 0, i32 8
  %40 = ptrtoint ptr %aux_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call6.i.i.i, ptr %aux_clk.i.i.i, align 4
  %cmp.i53.i.i.i = icmp ugt ptr %call6.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53.i.i.i, label %if.end.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge, label %if.end12.i.i.i

if.end.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi3660_pcie_phy_get_clk.exit.i.i

if.end12.i.i.i:                                   ; preds = %if.end.i.i.i
  %call13.i.i.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.31) #8
  %apb_phy_clk.i.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %call.i.i.i60, i32 0, i32 5
  %41 = ptrtoint ptr %apb_phy_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call13.i.i.i, ptr %apb_phy_clk.i.i.i, align 4
  %cmp.i54.i.i.i = icmp ugt ptr %call13.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.i.i.i, label %if.end12.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge, label %if.end19.i.i.i

if.end12.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi3660_pcie_phy_get_clk.exit.i.i

if.end19.i.i.i:                                   ; preds = %if.end12.i.i.i
  %call20.i.i.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.32) #8
  %apb_sys_clk.i.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %call.i.i.i60, i32 0, i32 4
  %42 = ptrtoint ptr %apb_sys_clk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call20.i.i.i, ptr %apb_sys_clk.i.i.i, align 4
  %cmp.i55.i.i.i = icmp ugt ptr %call20.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i55.i.i.i, label %if.end19.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge, label %if.end26.i.i.i

if.end19.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge: ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi3660_pcie_phy_get_clk.exit.i.i

if.end26.i.i.i:                                   ; preds = %if.end19.i.i.i
  %call27.i.i.i = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.33) #8
  %aclk.i.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %call.i.i.i60, i32 0, i32 7
  %43 = ptrtoint ptr %aclk.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call27.i.i.i, ptr %aclk.i.i.i, align 4
  %cmp.i56.i.i.i = icmp ugt ptr %call27.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56.i.i.i, label %if.end26.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge, label %if.end26.i.i.i.if.end6.i.i_crit_edge

if.end26.i.i.i.if.end6.i.i_crit_edge:             ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.end26.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge: ; preds = %if.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi3660_pcie_phy_get_clk.exit.i.i

hi3660_pcie_phy_get_clk.exit.i.i:                 ; preds = %if.end26.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge, %if.end19.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge, %if.end12.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge, %if.end.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge, %if.end.i.i63.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge
  %retval.0.i.in.i.i = phi ptr [ %call27.i.i.i, %if.end26.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge ], [ %call.i17.i.i, %if.end.i.i63.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge ], [ %call6.i.i.i, %if.end.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge ], [ %call13.i.i.i, %if.end12.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge ], [ %call20.i.i.i, %if.end19.i.i.i.hi3660_pcie_phy_get_clk.exit.i.i_crit_edge ]
  %tobool4.not.i.i = icmp eq ptr %retval.0.i.in.i.i, null
  br i1 %tobool4.not.i.i, label %hi3660_pcie_phy_get_clk.exit.i.i.if.end6.i.i_crit_edge, label %hi3660_pcie_phy_get_clk.exit.i.i.kirin_pcie_power_on.exit.thread_crit_edge

hi3660_pcie_phy_get_clk.exit.i.i.kirin_pcie_power_on.exit.thread_crit_edge: ; preds = %hi3660_pcie_phy_get_clk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kirin_pcie_power_on.exit.thread

hi3660_pcie_phy_get_clk.exit.i.i.if.end6.i.i_crit_edge: ; preds = %hi3660_pcie_phy_get_clk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %hi3660_pcie_phy_get_clk.exit.i.i.if.end6.i.i_crit_edge, %if.end26.i.i.i.if.end6.i.i_crit_edge
  %44 = ptrtoint ptr %call.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i.i.i60, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 -16
  %call.i18.i.i = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @.str.34) #8
  %base.i.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %call.i.i.i60, i32 0, i32 1
  %46 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i18.i.i, ptr %base.i.i.i, align 4
  %cmp.i.i19.i.i = icmp ugt ptr %call.i18.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i19.i.i, label %if.end6.i.i.hi3660_pcie_phy_init.exit.i_crit_edge, label %if.end.i22.i.i

if.end6.i.i.hi3660_pcie_phy_init.exit.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi3660_pcie_phy_init.exit.i

if.end.i22.i.i:                                   ; preds = %if.end6.i.i
  %call6.i21.i.i = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.35) #8
  %crgctrl.i.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %call.i.i.i60, i32 0, i32 2
  %47 = ptrtoint ptr %crgctrl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call6.i21.i.i, ptr %crgctrl.i.i.i, align 4
  %cmp.i30.i.i.i = icmp ugt ptr %call6.i21.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30.i.i.i, label %if.end.i22.i.i.hi3660_pcie_phy_init.exit.i_crit_edge, label %if.end12.i26.i.i

if.end.i22.i.i.hi3660_pcie_phy_init.exit.i_crit_edge: ; preds = %if.end.i22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi3660_pcie_phy_init.exit.i

if.end12.i26.i.i:                                 ; preds = %if.end.i22.i.i
  %call13.i24.i.i = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.36) #8
  %sysctrl.i.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %call.i.i.i60, i32 0, i32 3
  %48 = ptrtoint ptr %sysctrl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call13.i24.i.i, ptr %sysctrl.i.i.i, align 4
  %cmp.i31.i.i.i = icmp ugt ptr %call13.i24.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.i.i.i, label %if.end12.i26.i.i.hi3660_pcie_phy_init.exit.i_crit_edge, label %if.end12.i26.i.i.if.end.i66_crit_edge

if.end12.i26.i.i.if.end.i66_crit_edge:            ; preds = %if.end12.i26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i66

if.end12.i26.i.i.hi3660_pcie_phy_init.exit.i_crit_edge: ; preds = %if.end12.i26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hi3660_pcie_phy_init.exit.i

hi3660_pcie_phy_init.exit.i:                      ; preds = %if.end12.i26.i.i.hi3660_pcie_phy_init.exit.i_crit_edge, %if.end.i22.i.i.hi3660_pcie_phy_init.exit.i_crit_edge, %if.end6.i.i.hi3660_pcie_phy_init.exit.i_crit_edge
  %retval.0.i.in.i = phi ptr [ %call13.i24.i.i, %if.end12.i26.i.i.hi3660_pcie_phy_init.exit.i_crit_edge ], [ %call.i18.i.i, %if.end6.i.i.hi3660_pcie_phy_init.exit.i_crit_edge ], [ %call6.i21.i.i, %if.end.i22.i.i.hi3660_pcie_phy_init.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i.in.i, null
  br i1 %tobool.not.i, label %hi3660_pcie_phy_init.exit.i.if.end.i66_crit_edge, label %hi3660_pcie_phy_init.exit.i.kirin_pcie_power_on.exit.thread_crit_edge

hi3660_pcie_phy_init.exit.i.kirin_pcie_power_on.exit.thread_crit_edge: ; preds = %hi3660_pcie_phy_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kirin_pcie_power_on.exit.thread

hi3660_pcie_phy_init.exit.i.if.end.i66_crit_edge: ; preds = %hi3660_pcie_phy_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i66

if.end.i66:                                       ; preds = %hi3660_pcie_phy_init.exit.i.if.end.i66_crit_edge, %if.end12.i26.i.i.if.end.i66_crit_edge
  %49 = ptrtoint ptr %phy_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy_priv.i.i, align 4
  %sysctrl.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %sysctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sysctrl.i.i, align 4
  %call.i.i65 = call i32 @regmap_write(ptr noundef %52, i32 noundef 96, i32 noundef 16) #8
  call void @usleep_range_state(i32 noundef 100, i32 noundef 105, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #8
  %53 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %val.i.i.i, align 4, !annotation !121
  %54 = ptrtoint ptr %sysctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sysctrl.i.i, align 4
  %call.i.i64.i = call i32 @regmap_read(ptr noundef %55, i32 noundef 330, ptr noundef nonnull %val.i.i.i) #8
  %56 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val.i.i.i, align 4
  %or.i.i.i = and i32 %57, -821097473
  %and.i.i.i = or i32 %or.i.i.i, 15791104
  store i32 %and.i.i.i, ptr %val.i.i.i, align 4
  %58 = ptrtoint ptr %sysctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sysctrl.i.i, align 4
  %call2.i.i.i = call i32 @regmap_write(ptr noundef %59, i32 noundef 330, i32 noundef %and.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #8
  %phy_ref_clk.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %50, i32 0, i32 6
  %60 = ptrtoint ptr %phy_ref_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy_ref_clk.i.i, align 4
  %call.i76.i = call i32 @clk_set_rate(ptr noundef %61, i32 noundef 100000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool1.not.i.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.end.i66.cleanup_crit_edge

if.end.i66.cleanup_crit_edge:                     ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i66
  %62 = ptrtoint ptr %phy_ref_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy_ref_clk.i.i, align 4
  %call.i.i78.i = call i32 @clk_prepare(ptr noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78.i)
  %tobool.not.i.i79.i = icmp eq i32 %call.i.i78.i, 0
  br i1 %tobool.not.i.i79.i, label %if.end.i.i81.i, label %if.end3.i.i.cleanup_crit_edge

if.end3.i.i.cleanup_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i81.i:                                   ; preds = %if.end3.i.i
  %call1.i.i80.i = call i32 @clk_enable(ptr noundef %63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i80.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i80.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end8.i.i, label %if.end.i.i81.i.cleanup.sink.split.i82.i_crit_edge

if.end.i.i81.i.cleanup.sink.split.i82.i_crit_edge: ; preds = %if.end.i.i81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i82.i

if.end8.i.i:                                      ; preds = %if.end.i.i81.i
  %apb_sys_clk.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %50, i32 0, i32 4
  %64 = ptrtoint ptr %apb_sys_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %apb_sys_clk.i.i, align 4
  %call.i48.i.i = call i32 @clk_prepare(ptr noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i.i)
  %tobool.not.i49.i.i = icmp eq i32 %call.i48.i.i, 0
  br i1 %tobool.not.i49.i.i, label %if.end.i52.i.i, label %if.end8.i.i.apb_sys_fail.i.i_crit_edge

if.end8.i.i.apb_sys_fail.i.i_crit_edge:           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apb_sys_fail.i.i

if.end.i52.i.i:                                   ; preds = %if.end8.i.i
  %call1.i50.i.i = call i32 @clk_enable(ptr noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i.i)
  %tobool2.not.i51.i.i = icmp eq i32 %call1.i50.i.i, 0
  br i1 %tobool2.not.i51.i.i, label %if.end12.i.i, label %if.end.i52.i.i.apb_sys_fail.sink.split.i.i_crit_edge

if.end.i52.i.i.apb_sys_fail.sink.split.i.i_crit_edge: ; preds = %if.end.i52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apb_sys_fail.sink.split.i.i

if.end12.i.i:                                     ; preds = %if.end.i52.i.i
  %apb_phy_clk.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %50, i32 0, i32 5
  %66 = ptrtoint ptr %apb_phy_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %apb_phy_clk.i.i, align 4
  %call.i56.i.i = call i32 @clk_prepare(ptr noundef %67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i.i)
  %tobool.not.i57.i.i = icmp eq i32 %call.i56.i.i, 0
  br i1 %tobool.not.i57.i.i, label %if.end.i60.i.i, label %if.end12.i.i.apb_phy_fail.i.i_crit_edge

if.end12.i.i.apb_phy_fail.i.i_crit_edge:          ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apb_phy_fail.i.i

if.end.i60.i.i:                                   ; preds = %if.end12.i.i
  %call1.i58.i.i = call i32 @clk_enable(ptr noundef %67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58.i.i)
  %tobool2.not.i59.i.i = icmp eq i32 %call1.i58.i.i, 0
  br i1 %tobool2.not.i59.i.i, label %if.end16.i.i, label %if.end.i60.i.i.apb_phy_fail.sink.split.i.i_crit_edge

if.end.i60.i.i.apb_phy_fail.sink.split.i.i_crit_edge: ; preds = %if.end.i60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %apb_phy_fail.sink.split.i.i

if.end16.i.i:                                     ; preds = %if.end.i60.i.i
  %aclk.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %50, i32 0, i32 7
  %68 = ptrtoint ptr %aclk.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %aclk.i.i, align 4
  %call17.i.i = call fastcc i32 @clk_prepare_enable(ptr noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end16.i.i.aclk_fail.i.i_crit_edge

if.end16.i.i.aclk_fail.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %aclk_fail.i.i

if.end20.i.i:                                     ; preds = %if.end16.i.i
  %aux_clk.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %50, i32 0, i32 8
  %70 = ptrtoint ptr %aux_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %aux_clk.i.i, align 4
  %call21.i.i = call fastcc i32 @clk_prepare_enable(ptr noundef %71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end.i66.i, label %aux_clk_fail.i.i

aux_clk_fail.i.i:                                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %aclk.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %aclk.i.i, align 4
  call void @clk_disable(ptr noundef %73) #8
  call void @clk_unprepare(ptr noundef %73) #8
  br label %aclk_fail.i.i

aclk_fail.i.i:                                    ; preds = %aux_clk_fail.i.i, %if.end16.i.i.aclk_fail.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call17.i.i, %if.end16.i.i.aclk_fail.i.i_crit_edge ], [ %call21.i.i, %aux_clk_fail.i.i ]
  %74 = ptrtoint ptr %apb_phy_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %apb_phy_clk.i.i, align 4
  call void @clk_disable(ptr noundef %75) #8
  br label %apb_phy_fail.sink.split.i.i

apb_phy_fail.sink.split.i.i:                      ; preds = %aclk_fail.i.i, %if.end.i60.i.i.apb_phy_fail.sink.split.i.i_crit_edge
  %.sink.i.i = phi ptr [ %75, %aclk_fail.i.i ], [ %67, %if.end.i60.i.i.apb_phy_fail.sink.split.i.i_crit_edge ]
  %ret.2.ph.i.i = phi i32 [ %ret.1.i.i, %aclk_fail.i.i ], [ %call1.i58.i.i, %if.end.i60.i.i.apb_phy_fail.sink.split.i.i_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink.i.i) #8
  br label %apb_phy_fail.i.i

apb_phy_fail.i.i:                                 ; preds = %apb_phy_fail.sink.split.i.i, %if.end12.i.i.apb_phy_fail.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %call.i56.i.i, %if.end12.i.i.apb_phy_fail.i.i_crit_edge ], [ %ret.2.ph.i.i, %apb_phy_fail.sink.split.i.i ]
  %76 = ptrtoint ptr %apb_sys_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %apb_sys_clk.i.i, align 4
  call void @clk_disable(ptr noundef %77) #8
  br label %apb_sys_fail.sink.split.i.i

apb_sys_fail.sink.split.i.i:                      ; preds = %apb_phy_fail.i.i, %if.end.i52.i.i.apb_sys_fail.sink.split.i.i_crit_edge
  %.sink70.i.i = phi ptr [ %77, %apb_phy_fail.i.i ], [ %65, %if.end.i52.i.i.apb_sys_fail.sink.split.i.i_crit_edge ]
  %ret.3.ph.i.i = phi i32 [ %ret.2.i.i, %apb_phy_fail.i.i ], [ %call1.i50.i.i, %if.end.i52.i.i.apb_sys_fail.sink.split.i.i_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink70.i.i) #8
  br label %apb_sys_fail.i.i

apb_sys_fail.i.i:                                 ; preds = %apb_sys_fail.sink.split.i.i, %if.end8.i.i.apb_sys_fail.i.i_crit_edge
  %ret.3.i.i = phi i32 [ %call.i48.i.i, %if.end8.i.i.apb_sys_fail.i.i_crit_edge ], [ %ret.3.ph.i.i, %apb_sys_fail.sink.split.i.i ]
  %78 = ptrtoint ptr %phy_ref_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %phy_ref_clk.i.i, align 4
  call void @clk_disable(ptr noundef %79) #8
  br label %cleanup.sink.split.i82.i

cleanup.sink.split.i82.i:                         ; preds = %apb_sys_fail.i.i, %if.end.i.i81.i.cleanup.sink.split.i82.i_crit_edge
  %.sink71.i.i = phi ptr [ %79, %apb_sys_fail.i.i ], [ %63, %if.end.i.i81.i.cleanup.sink.split.i82.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ %ret.3.i.i, %apb_sys_fail.i.i ], [ %call1.i.i80.i, %if.end.i.i81.i.cleanup.sink.split.i82.i_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink71.i.i) #8
  br label %cleanup

if.end.i66.i:                                     ; preds = %if.end20.i.i
  %80 = ptrtoint ptr %sysctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sysctrl.i.i, align 4
  %call3.i.i = call i32 @regmap_write(ptr noundef %81, i32 noundef 68, i32 noundef 48) #8
  %crgctrl.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %50, i32 0, i32 2
  %82 = ptrtoint ptr %crgctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %crgctrl.i.i, align 4
  %call4.i.i = call i32 @regmap_write(ptr noundef %83, i32 noundef 136, i32 noundef -1946157056) #8
  %84 = ptrtoint ptr %sysctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sysctrl.i.i, align 4
  %call6.i.i = call i32 @regmap_write(ptr noundef %85, i32 noundef 400, i32 noundef 1589248) #8
  %86 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %50, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.hi3660_pcie_phy, ptr %50, i32 0, i32 1
  %88 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %89, i32 4
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %91 = and i32 %90, -65537
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i23.i.i.i = getelementptr i8, ptr %93, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i.i.i, i32 %91) #8, !srcloc !125
  %94 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i.i.i.i, align 4
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #8, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %97 = and i32 %96, -16385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #8, !srcloc !125
  call void @usleep_range_state(i32 noundef 10, i32 noundef 11, i32 noundef 2) #8
  %100 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i27.i.i.i = getelementptr i8, ptr %101, i32 4
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i.i.i) #8, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %103 = and i32 %102, -257
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i29.i.i.i = getelementptr i8, ptr %105, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i.i.i, i32 %103) #8, !srcloc !125
  call void @usleep_range_state(i32 noundef 550, i32 noundef 600, i32 noundef 2) #8
  %106 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i31.i.i.i = getelementptr i8, ptr %107, i32 1024
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i.i.i) #8, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %109 = and i32 %108, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i.i.i = icmp eq i32 %109, 0
  br i1 %tobool.not.i.i.i, label %if.end.i66.i.if.end28.i_crit_edge, label %disable_clks.i.i

if.end.i66.i.if.end28.i_crit_edge:                ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

disable_clks.i.i:                                 ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.37) #11
  %110 = ptrtoint ptr %aux_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %aux_clk.i.i, align 4
  call void @clk_disable(ptr noundef %111) #8
  call void @clk_unprepare(ptr noundef %111) #8
  %112 = ptrtoint ptr %aclk.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %aclk.i.i, align 4
  call void @clk_disable(ptr noundef %113) #8
  call void @clk_unprepare(ptr noundef %113) #8
  %114 = ptrtoint ptr %apb_phy_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %apb_phy_clk.i.i, align 4
  call void @clk_disable(ptr noundef %115) #8
  call void @clk_unprepare(ptr noundef %115) #8
  %116 = ptrtoint ptr %apb_sys_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %apb_sys_clk.i.i, align 4
  call void @clk_disable(ptr noundef %117) #8
  call void @clk_unprepare(ptr noundef %117) #8
  %118 = ptrtoint ptr %phy_ref_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %phy_ref_clk.i.i, align 4
  call void @clk_disable(ptr noundef %119) #8
  call void @clk_unprepare(ptr noundef %119) #8
  br label %cleanup

if.else.i69:                                      ; preds = %if.end22
  %120 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %of_node, align 8
  %call7.i = call ptr @devm_of_phy_get(ptr noundef %dev1, ptr noundef %121, ptr noundef null) #8
  %phy.i = getelementptr inbounds %struct.kirin_pcie, ptr %call.i, i32 0, i32 3
  %122 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call7.i, ptr %phy.i, align 4
  %cmp.i.i68 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i68, label %kirin_pcie_power_on.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i69
  %num_slots.i.i70 = getelementptr inbounds %struct.kirin_pcie, ptr %call.i, i32 0, i32 6
  %123 = ptrtoint ptr %num_slots.i.i70 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %num_slots.i.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp72.i.i = icmp sgt i32 %124, 0
  br i1 %cmp72.i.i, label %if.end13.i.for.body.i.i73_crit_edge, label %if.end13.i.for.cond9.preheader.i.i_crit_edge

if.end13.i.for.cond9.preheader.i.i_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i.i

if.end13.i.for.body.i.i73_crit_edge:              ; preds = %if.end13.i
  br label %for.body.i.i73

for.cond9.preheader.i.i:                          ; preds = %for.inc.i.i76.for.cond9.preheader.i.i_crit_edge, %if.end13.i.for.cond9.preheader.i.i_crit_edge
  %n_gpio_clkreq.i.i71 = getelementptr inbounds %struct.kirin_pcie, ptr %call.i, i32 0, i32 9
  %125 = ptrtoint ptr %n_gpio_clkreq.i.i71 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %n_gpio_clkreq.i.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp1074.i.i = icmp sgt i32 %126, 0
  br i1 %cmp1074.i.i, label %for.cond9.preheader.i.i.for.body11.i.i_crit_edge, label %for.cond9.preheader.i.i.if.end17.i_crit_edge

for.cond9.preheader.i.i.if.end17.i_crit_edge:     ; preds = %for.cond9.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

for.cond9.preheader.i.i.for.body11.i.i_crit_edge: ; preds = %for.cond9.preheader.i.i
  br label %for.body11.i.i

for.body.i.i73:                                   ; preds = %for.inc.i.i76.for.body.i.i73_crit_edge, %if.end13.i.for.body.i.i73_crit_edge
  %i.073.i.i = phi i32 [ %inc.i.i75, %for.inc.i.i76.for.body.i.i73_crit_edge ], [ 0, %if.end13.i.for.body.i.i73_crit_edge ]
  %arrayidx.i.i72 = getelementptr %struct.kirin_pcie, ptr %call.i, i32 0, i32 7, i32 %i.073.i.i
  %127 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %128)
  %129 = icmp ult i32 %128, 2048
  %arrayidx5.i.i = getelementptr %struct.kirin_pcie, ptr %call.i, i32 0, i32 8, i32 %i.073.i.i
  br i1 %129, label %if.end.i70.i, label %for.body.i.i73.cleanup.sink.split.i.i_crit_edge

for.body.i.i73.cleanup.sink.split.i.i_crit_edge:  ; preds = %for.body.i.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

if.end.i70.i:                                     ; preds = %for.body.i.i73
  %130 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx5.i.i, align 4
  %call6.i68.i = call i32 @devm_gpio_request(ptr noundef %dev1, i32 noundef %128, ptr noundef %131) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i68.i)
  %tobool.not.i69.i = icmp eq i32 %call6.i68.i, 0
  br i1 %tobool.not.i69.i, label %for.inc.i.i76, label %if.end.i70.i.cleanup_crit_edge

if.end.i70.i.cleanup_crit_edge:                   ; preds = %if.end.i70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.i.i76:                                    ; preds = %if.end.i70.i
  %inc.i.i75 = add nuw nsw i32 %i.073.i.i, 1
  %132 = ptrtoint ptr %num_slots.i.i70 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %num_slots.i.i70, align 4
  %cmp.i71.i = icmp slt i32 %inc.i.i75, %133
  br i1 %cmp.i71.i, label %for.inc.i.i76.for.body.i.i73_crit_edge, label %for.inc.i.i76.for.cond9.preheader.i.i_crit_edge

for.inc.i.i76.for.cond9.preheader.i.i_crit_edge:  ; preds = %for.inc.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond9.preheader.i.i

for.inc.i.i76.for.body.i.i73_crit_edge:           ; preds = %for.inc.i.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i73

for.body11.i.i:                                   ; preds = %for.inc34.i.i.for.body11.i.i_crit_edge, %for.cond9.preheader.i.i.for.body11.i.i_crit_edge
  %i.175.i.i = phi i32 [ %inc35.i.i, %for.inc34.i.i.for.body11.i.i_crit_edge ], [ 0, %for.cond9.preheader.i.i.for.body11.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr %struct.kirin_pcie, ptr %call.i, i32 0, i32 10, i32 %i.175.i.i
  %134 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %135)
  %136 = icmp ult i32 %135, 2048
  %arrayidx23.i.i = getelementptr %struct.kirin_pcie, ptr %call.i, i32 0, i32 11, i32 %i.175.i.i
  br i1 %136, label %if.end19.i.i, label %for.body11.i.i.cleanup.sink.split.i.i_crit_edge

for.body11.i.i.cleanup.sink.split.i.i_crit_edge:  ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

if.end19.i.i:                                     ; preds = %for.body11.i.i
  %137 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx23.i.i, align 4
  %call24.i.i77 = call i32 @devm_gpio_request(ptr noundef %dev1, i32 noundef %135, ptr noundef %138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i77)
  %tobool25.not.i.i = icmp eq i32 %call24.i.i77, 0
  br i1 %tobool25.not.i.i, label %if.end27.i.i, label %if.end19.i.i.cleanup_crit_edge

if.end19.i.i.cleanup_crit_edge:                   ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27.i.i:                                     ; preds = %if.end19.i.i
  %139 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx12.i.i, align 4
  %call.i.i72.i = call ptr @gpio_to_desc(i32 noundef %140) #8
  %call1.i.i.i = call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i72.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool31.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool31.not.i.i, label %for.inc34.i.i, label %if.end27.i.i.cleanup_crit_edge

if.end27.i.i.cleanup_crit_edge:                   ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc34.i.i:                                    ; preds = %if.end27.i.i
  %inc35.i.i = add nuw nsw i32 %i.175.i.i, 1
  %141 = ptrtoint ptr %n_gpio_clkreq.i.i71 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %n_gpio_clkreq.i.i71, align 4
  %cmp10.i.i = icmp slt i32 %inc35.i.i, %142
  br i1 %cmp10.i.i, label %for.inc34.i.i.for.body11.i.i_crit_edge, label %for.inc34.i.i.if.end17.i_crit_edge

for.inc34.i.i.if.end17.i_crit_edge:               ; preds = %for.inc34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

for.inc34.i.i.for.body11.i.i_crit_edge:           ; preds = %for.inc34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11.i.i

cleanup.sink.split.i.i:                           ; preds = %for.body11.i.i.cleanup.sink.split.i.i_crit_edge, %for.body.i.i73.cleanup.sink.split.i.i_crit_edge
  %arrayidx18.sink.i.i = phi ptr [ %arrayidx23.i.i, %for.body11.i.i.cleanup.sink.split.i.i_crit_edge ], [ %arrayidx5.i.i, %for.body.i.i73.cleanup.sink.split.i.i_crit_edge ]
  %143 = ptrtoint ptr %arrayidx18.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx18.sink.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, ptr noundef %144) #11
  br label %cleanup

if.end17.i:                                       ; preds = %for.inc34.i.i.if.end17.i_crit_edge, %for.cond9.preheader.i.i.if.end17.i_crit_edge
  %145 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %phy.i, align 4
  %call19.i = call i32 @phy_init(ptr noundef %146) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i78, label %if.end17.i.err.i_crit_edge

if.end17.i.err.i_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end22.i78:                                     ; preds = %if.end17.i
  %147 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %phy.i, align 4
  %call24.i = call i32 @phy_power_on(ptr noundef %148) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i78.if.end28.i_crit_edge, label %if.end22.i78.err.i_crit_edge

if.end22.i78.err.i_crit_edge:                     ; preds = %if.end22.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end22.i78.if.end28.i_crit_edge:                ; preds = %if.end22.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end22.i78.if.end28.i_crit_edge, %if.end.i66.i.if.end28.i_crit_edge
  call void @usleep_range_state(i32 noundef 21000, i32 noundef 25000, i32 noundef 2) #8
  %149 = ptrtoint ptr %gpio_id_dwc_perst.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %gpio_id_dwc_perst.i, align 4
  %call29.i80 = call i32 @gpio_request(i32 noundef %150, ptr noundef nonnull @.str.28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i80)
  %tobool30.not.i = icmp eq i32 %call29.i80, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end28.i.kirin_pcie_power_on.exit.thread90_crit_edge

if.end28.i.kirin_pcie_power_on.exit.thread90_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kirin_pcie_power_on.exit.thread90

if.then31.i:                                      ; preds = %if.end28.i
  %151 = ptrtoint ptr %gpio_id_dwc_perst.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %gpio_id_dwc_perst.i, align 4
  %call.i74.i = call ptr @gpio_to_desc(i32 noundef %152) #8
  %call1.i75.i = call i32 @gpiod_direction_output_raw(ptr noundef %call.i74.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i75.i)
  %tobool34.not.i = icmp eq i32 %call1.i75.i, 0
  br i1 %tobool34.not.i, label %if.then31.i.kirin_pcie_power_on.exit.thread90_crit_edge, label %if.then31.i.err.i_crit_edge

if.then31.i.err.i_crit_edge:                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.then31.i.kirin_pcie_power_on.exit.thread90_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kirin_pcie_power_on.exit.thread90

kirin_pcie_power_on.exit.thread90:                ; preds = %if.then31.i.kirin_pcie_power_on.exit.thread90_crit_edge, %if.end28.i.kirin_pcie_power_on.exit.thread90_crit_edge
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  %call28 = call i32 @dw_pcie_host_init(ptr noundef %pp) #8
  br label %cleanup

err.i:                                            ; preds = %if.then31.i.err.i_crit_edge, %if.end22.i78.err.i_crit_edge, %if.end17.i.err.i_crit_edge
  %ret.0.i = phi i32 [ %call1.i75.i, %if.then31.i.err.i_crit_edge ], [ %call19.i, %if.end17.i.err.i_crit_edge ], [ %call24.i, %if.end22.i78.err.i_crit_edge ]
  call fastcc void @kirin_pcie_power_off(ptr noundef %call.i) #8
  br label %cleanup

kirin_pcie_power_on.exit.thread:                  ; preds = %hi3660_pcie_phy_init.exit.i.kirin_pcie_power_on.exit.thread_crit_edge, %hi3660_pcie_phy_get_clk.exit.i.i.kirin_pcie_power_on.exit.thread_crit_edge
  %retval.0.i81.in.ph = phi ptr [ %retval.0.i.in.i.i, %hi3660_pcie_phy_get_clk.exit.i.i.kirin_pcie_power_on.exit.thread_crit_edge ], [ %retval.0.i.in.i, %hi3660_pcie_phy_init.exit.i.kirin_pcie_power_on.exit.thread_crit_edge ]
  %retval.0.i81132 = ptrtoint ptr %retval.0.i81.in.ph to i32
  br label %cleanup

kirin_pcie_power_on.exit:                         ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #10
  %retval.0.i81 = ptrtoint ptr %call7.i to i32
  br label %cleanup

cleanup:                                          ; preds = %kirin_pcie_power_on.exit, %kirin_pcie_power_on.exit.thread, %err.i, %kirin_pcie_power_on.exit.thread90, %cleanup.sink.split.i.i, %if.end27.i.i.cleanup_crit_edge, %if.end19.i.i.cleanup_crit_edge, %if.end.i70.i.cleanup_crit_edge, %disable_clks.i.i, %cleanup.sink.split.i82.i, %if.end3.i.i.cleanup_crit_edge, %if.end.i66.cleanup_crit_edge, %if.then.i62.cleanup_crit_edge, %kirin_pcie_get_resource.exit, %put_node.i, %kirin_pcie_get_gpio_enable.exit.i, %do.end.i, %if.end10.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %call28, %kirin_pcie_power_on.exit.thread90 ], [ -22, %do.end6 ], [ -22, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ], [ %retval.0.i, %kirin_pcie_get_resource.exit ], [ %retval.0.i81, %kirin_pcie_power_on.exit ], [ %retval.0.i.i, %kirin_pcie_get_gpio_enable.exit.i ], [ -517, %if.end10.i.cleanup_crit_edge ], [ -19, %do.end.i ], [ %ret.0.i.i, %put_node.i ], [ -19, %cleanup.sink.split.i.i ], [ %call.i76.i, %if.end.i66.cleanup_crit_edge ], [ %call.i.i78.i, %if.end3.i.i.cleanup_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i82.i ], [ -22, %disable_clks.i.i ], [ -12, %if.then.i62.cleanup_crit_edge ], [ %ret.0.i, %err.i ], [ %retval.0.i81132, %kirin_pcie_power_on.exit.thread ], [ %call24.i.i77, %if.end19.i.i.cleanup_crit_edge ], [ %call1.i.i.i, %if.end27.i.i.cleanup_crit_edge ], [ %call6.i68.i, %if.end.i70.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirin_pcie_read_dbi(ptr nocapture noundef readonly %pci, ptr noundef %base, i32 noundef %reg, i32 noundef %size) #3 align 64 {
entry:
  %val.i3 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #8
  %4 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ret, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !121
  %apb.i = getelementptr inbounds %struct.kirin_pcie, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %val.i) #8
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i, align 4
  %storemerge.i = or i32 %9, 2097152
  store i32 %storemerge.i, ptr %val.i, align 4
  %10 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %apb.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 4, i32 noundef %storemerge.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %add.ptr = getelementptr i8, ptr %base, i32 %reg
  %call1 = call i32 @dw_pcie_read(ptr noundef %add.ptr, i32 noundef %size, ptr noundef nonnull %ret) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i3) #8
  %12 = ptrtoint ptr %val.i3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i3, align 4, !annotation !121
  %13 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %apb.i, align 4
  %call.i5 = call i32 @regmap_read(ptr noundef %14, i32 noundef 4, ptr noundef nonnull %val.i3) #8
  %15 = ptrtoint ptr %val.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i3, align 4
  %and.i6 = and i32 %16, -2097153
  store i32 %and.i6, ptr %val.i3, align 4
  %17 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %apb.i, align 4
  %call2.i7 = call i32 @regmap_write(ptr noundef %18, i32 noundef 4, i32 noundef %and.i6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i3) #8
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #8
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kirin_pcie_write_dbi(ptr nocapture noundef readonly %pci, ptr noundef %base, i32 noundef %reg, i32 noundef %size, i32 noundef %val) #3 align 64 {
entry:
  %val.i3 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !121
  %apb.i = getelementptr inbounds %struct.kirin_pcie, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %apb.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %val.i) #8
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %storemerge.i = or i32 %8, 2097152
  store i32 %storemerge.i, ptr %val.i, align 4
  %9 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %apb.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 0, i32 noundef %storemerge.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %add.ptr = getelementptr i8, ptr %base, i32 %reg
  %call1 = call i32 @dw_pcie_write(ptr noundef %add.ptr, i32 noundef %size, i32 noundef %val) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i3) #8
  %11 = ptrtoint ptr %val.i3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i3, align 4, !annotation !121
  %12 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %apb.i, align 4
  %call.i5 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %val.i3) #8
  %14 = ptrtoint ptr %val.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i3, align 4
  %and.i6 = and i32 %15, -2097153
  store i32 %and.i6, ptr %val.i3, align 4
  %16 = ptrtoint ptr %apb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %apb.i, align 4
  %call2.i7 = call i32 @regmap_write(ptr noundef %17, i32 noundef 0, i32 noundef %and.i6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirin_pcie_link_up(ptr nocapture noundef readonly %pci) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !121
  %apb = getelementptr inbounds %struct.kirin_pcie, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %apb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %apb, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 1024, ptr noundef nonnull %val) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 32800
  call void @__sanitizer_cov_trace_const_cmp4(i32 32800, i32 %and)
  %cmp = icmp eq i32 %and, 32800
  %. = zext i1 %cmp to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirin_pcie_start_link(ptr nocapture noundef readonly %pci) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %apb = getelementptr inbounds %struct.kirin_pcie, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %apb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 28, i32 noundef 2048) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kirin_pcie_host_init(ptr nocapture noundef readonly %pp) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.pcie_port, ptr %pp, i32 0, i32 17
  %0 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge, align 8
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kirin_pci_ops, ptr %ops, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirin_pcie_add_bus(ptr nocapture noundef readonly %bus) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %num_slots = getelementptr inbounds %struct.kirin_pcie, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %8 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp19 = icmp sgt i32 %9, 0
  br i1 %cmp19, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.kirin_pcie, ptr %5, i32 0, i32 7, i32 %i.020
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %11) #8
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %arrayidx6 = getelementptr %struct.kirin_pcie, ptr %5, i32 0, i32 8, i32 %i.020
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef %15, i32 noundef %call1.i) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %16 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_slots, align 4
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 12000, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirin_pcie_rd_own_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %1 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -32
  %call = tail call i32 @dw_pcie_read_dbi(ptr noundef %add.ptr, i32 noundef %where, i32 noundef %size) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 134, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirin_pcie_wr_own_conf(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %1 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sysdata, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -32
  tail call void @dw_pcie_write_dbi(ptr noundef %add.ptr, i32 noundef %where, i32 noundef %size, i32 noundef %val) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 134, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_read_dbi(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_write_dbi(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kstrdup_const(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_get_devfn(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !36, !37, !39, !41, !42, !44, !46, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_pcie_kirin__293_832_kirin_pcie_driver_init6, !1, !"__initcall__kmod_pcie_kirin__293_832_kirin_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 832, i32 1}
!2 = !{ptr @__exitcall_kirin_pcie_driver_exit, !1, !"__exitcall_kirin_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description294, !4, !"__UNIQUE_ID_description294", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 835, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 836, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 837, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 827, i32 13}
!12 = !{ptr @kirin_pcie_driver, !13, !"kirin_pcie_driver", i1 false, i1 false}
!13 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 823, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 786, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @kirin_pcie_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @kirin_pcie_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 792, i32 3}
!24 = !{ptr @kirin_pcie_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @kirin_pcie_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @kirin_dw_pcie_ops, !27, !"kirin_dw_pcie_ops", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 671, i32 33}
!28 = !{ptr @kirin_pcie_host_ops, !29, !"kirin_pcie_host_ops", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 678, i32 38}
!30 = !{ptr @kirin_pci_ops, !31, !"kirin_pci_ops", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 574, i32 23}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 565, i32 4}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @kirin_pcie_add_bus._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @kirin_pcie_add_bus._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 463, i32 57}
!39 = !{ptr @kirin_pcie_get_resource._key, !40, !"_key", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 467, i32 20}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 474, i32 10}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 478, i32 3}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @kirin_pcie_get_resource._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @kirin_pcie_get_resource._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 362, i32 10}
!51 = !{ptr @pcie_kirin_regmap_conf, !52, !"pcie_kirin_regmap_conf", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 361, i32 35}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 377, i32 32}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 382, i32 3}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @kirin_pcie_get_gpio_enable._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @kirin_pcie_get_gpio_enable._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 394, i32 17}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/of_gpio.h", i32 104, i32 50}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 424, i32 5}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @kirin_pcie_parse_port._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @kirin_pcie_parse_port._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 431, i32 5}
!71 = !{ptr @kirin_pcie_parse_port._entry.24, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @kirin_pcie_parse_port._entry_ptr.26, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 437, i32 18}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 733, i32 51}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 155, i32 39}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 159, i32 35}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 163, i32 39}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 167, i32 39}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 171, i32 32}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 186, i32 58}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 190, i32 52}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 194, i32 52}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 222, i32 3}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @hi3660_pcie_phy_start._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @hi3660_pcie_phy_start._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 640, i32 4}
!100 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @kirin_pcie_gpio_request._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @kirin_pcie_gpio_request._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @kirin_pcie_gpio_request._entry.41, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 653, i32 4}
!105 = !{ptr @kirin_pcie_gpio_request._entry_ptr.42, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @kirin_pcie_match, !107, !"kirin_pcie_match", i1 false, i1 false}
!107 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 771, i32 34}
!108 = !{ptr @kirin_960_data, !109, !"kirin_960_data", i1 false, i1 false}
!109 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 763, i32 37}
!110 = !{ptr @kirin_970_data, !111, !"kirin_970_data", i1 false, i1 false}
!111 = !{!"../drivers/pci/controller/dwc/pcie-kirin.c", i32 767, i32 37}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i64 4907364}
!123 = !{i64 2155795391}
!124 = !{i64 2155794511}
!125 = !{i64 4906946}
