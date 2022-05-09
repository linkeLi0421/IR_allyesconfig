; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-keembay.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-keembay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_ep_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.keembay_pcie_of_data = type { i32 }
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
%struct.keembay_pcie = type { %struct.dw_pcie, ptr, i32, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_pcie_keembay__266_460_keembay_pcie_driver_init6 = internal global ptr @keembay_pcie_driver_init, section ".initcall6.init", align 4
@keembay_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @keembay_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @keembay_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"keembay-pcie\00", [19 x i8] zeroinitializer }, align 32
@keembay_pcie_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keembay_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keembay_pcie_ep_of_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@keembay_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr null, ptr null, ptr null, ptr null, ptr @keembay_pcie_link_up, ptr @keembay_pcie_start_link, ptr @keembay_pcie_stop_link }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@keembay_pcie_ep_ops = internal constant { %struct.dw_pcie_ep_ops, [16 x i8] } { %struct.dw_pcie_ep_ops { ptr @keembay_pcie_ep_init, ptr @keembay_pcie_ep_raise_irq, ptr @keembay_pcie_get_features, ptr null }, [16 x i8] zeroinitializer }, align 32
@keembay_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 427, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid device type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keembay_pcie_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pci/controller/dwc/pcie-keembay.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@keembay_pcie_probe._entry_ptr = internal global ptr @keembay_pcie_probe._entry, section ".printk_index", align 4
@keembay_pcie_start_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MPLLA is not locked\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"keembay_pcie_start_link\00", [40 x i8] zeroinitializer }, align 32
@keembay_pcie_start_link._entry_ptr = internal global ptr @keembay_pcie_start_link._entry, section ".printk_index", align 4
@keembay_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@keembay_pcie_add_pcie_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 372, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to initialize host: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"keembay_pcie_add_pcie_port\00", [37 x i8] zeroinitializer }, align 32
@keembay_pcie_add_pcie_port._entry_ptr = internal global ptr @keembay_pcie_add_pcie_port._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"master\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to enable master clock\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable auxiliary clock\00", [63 x i8] zeroinitializer }, align 32
@keembay_pcie_pll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Low jitter PLL is not locked\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"keembay_pcie_pll_init\00", [42 x i8] zeroinitializer }, align 32
@keembay_pcie_pll_init._entry_ptr = internal global ptr @keembay_pcie_pll_init._entry, section ".printk_index", align 4
@keembay_pcie_ep_raise_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Legacy IRQ is not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"keembay_pcie_ep_raise_irq\00", [38 x i8] zeroinitializer }, align 32
@keembay_pcie_ep_raise_irq._entry_ptr = internal global ptr @keembay_pcie_ep_raise_irq._entry, section ".printk_index", align 4
@keembay_pcie_ep_raise_irq._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown IRQ type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@keembay_pcie_ep_raise_irq._entry_ptr.23 = internal global ptr @keembay_pcie_ep_raise_irq._entry.21, section ".printk_index", align 4
@keembay_pcie_epc_features = internal constant { %struct.pci_epc_features, [32 x i8] } { %struct.pci_epc_features { i8 48, i8 42, i8 21, [6 x i64] zeroinitializer, i32 16384 }, [32 x i8] zeroinitializer }, align 32
@keembay_pcie_rc_of_data = internal constant { %struct.keembay_pcie_of_data, [28 x i8] } { %struct.keembay_pcie_of_data { i32 3 }, [28 x i8] zeroinitializer }, align 32
@keembay_pcie_ep_of_data = internal constant { %struct.keembay_pcie_of_data, [28 x i8] } { %struct.keembay_pcie_of_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"keembay_pcie_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 452, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 454, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"keembay_pcie_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 440, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"keembay_pcie_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 145, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 408, i32 63 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"keembay_pcie_ep_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 322, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 427, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 129, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"keembay_pcie_host_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 328, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 347, i32 36 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 372, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 268, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 185, i32 51 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 188, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 190, i32 48 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 193, i32 10 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 224, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 295, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 302, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"keembay_pcie_epc_features\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 307, i32 38 }
@___asan_gen_.127 = private unnamed_addr constant [24 x i8] c"keembay_pcie_rc_of_data\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 432, i32 42 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"keembay_pcie_ep_of_data\00", align 1
@___asan_gen_.131 = private constant [45 x i8] c"../drivers/pci/controller/dwc/pcie-keembay.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 436, i32 42 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__initcall__kmod_pcie_keembay__266_460_keembay_pcie_driver_init6, ptr @keembay_pcie_add_pcie_port._entry, ptr @keembay_pcie_add_pcie_port._entry_ptr, ptr @keembay_pcie_ep_raise_irq._entry, ptr @keembay_pcie_ep_raise_irq._entry.21, ptr @keembay_pcie_ep_raise_irq._entry_ptr, ptr @keembay_pcie_ep_raise_irq._entry_ptr.23, ptr @keembay_pcie_pll_init._entry, ptr @keembay_pcie_pll_init._entry_ptr, ptr @keembay_pcie_probe._entry, ptr @keembay_pcie_probe._entry_ptr, ptr @keembay_pcie_start_link._entry, ptr @keembay_pcie_start_link._entry_ptr, ptr @keembay_pcie_driver, ptr @.str, ptr @keembay_pcie_of_match, ptr @keembay_pcie_ops, ptr @.str.1, ptr @keembay_pcie_ep_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @keembay_pcie_host_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @keembay_pcie_epc_features, ptr @keembay_pcie_rc_of_data, ptr @keembay_pcie_ep_of_data], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_ep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_start_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_add_pcie_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_pll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_ep_raise_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_ep_raise_irq._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_epc_features to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_rc_of_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_pcie_ep_of_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @keembay_pcie_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 344, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @keembay_pcie_ops, ptr %ops, align 8
  %mode9 = getelementptr inbounds %struct.keembay_pcie, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %mode9, align 4
  %call10 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #7
  %apb_base = getelementptr inbounds %struct.keembay_pcie, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %apb_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call10, ptr %apb_base, align 8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %mode9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode9, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 3, label %sw.bb
    i32 1, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end16
  %pp2.i = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7
  %ops.i = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7, i32 8
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @keembay_pcie_host_ops, ptr %ops.i, align 8
  %msi_irq.i = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 7, i32 9
  %12 = ptrtoint ptr %msi_irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -19, ptr %msi_irq.i, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 -16
  %call.i.i = tail call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call.i.i, ptr noundef nonnull @keembay_pcie_msi_irq_handler, ptr noundef nonnull %call.i) #7
  %call4.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 7) #7
  %reset.i = getelementptr inbounds %struct.keembay_pcie, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4.i, ptr %reset.i, align 8
  %cmp.i95.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.i, label %if.then7.i, label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call4.i to i32
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  %call.i.i.i = tail call ptr @devm_clk_get(ptr noundef %18, ptr noundef nonnull @.str.13) #7
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end10.i.keembay_pcie_probe_clock.exit.i.i_crit_edge, label %if.end.i.i.i

if.end10.i.keembay_pcie_probe_clock.exit.i.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %keembay_pcie_probe_clock.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  %call.i.i.i.i = tail call i32 @clk_prepare(ptr noundef %call.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  %call1.i.i.i.i = tail call i32 @clk_enable(ptr noundef %call.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %if.end13.i.i.i, label %if.then3.i.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call.i.i.i) #7
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.then3.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge
  %retval.0.i.ph.i.i.i = phi i32 [ %call1.i.i.i.i, %if.then3.i.i.i.i ], [ %call.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ]
  %19 = inttoptr i32 %retval.0.i.ph.i.i.i to ptr
  br label %keembay_pcie_probe_clock.exit.i.i

if.end13.i.i.i:                                   ; preds = %if.end.i.i.i.i
  %call.i32.i.i.i = tail call i32 @devm_add_action(ptr noundef %18, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i.i.i)
  %tobool.not.i33.i.i.i = icmp eq i32 %call.i32.i.i.i, 0
  br i1 %tobool.not.i33.i.i.i, label %if.end13.i.i.i.keembay_pcie_probe_clock.exit.i.i_crit_edge, label %if.then16.i.i.i

if.end13.i.i.i.keembay_pcie_probe_clock.exit.i.i_crit_edge: ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %keembay_pcie_probe_clock.exit.i.i

if.then16.i.i.i:                                  ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %call.i.i.i) #7
  tail call void @clk_unprepare(ptr noundef %call.i.i.i) #7
  %20 = inttoptr i32 %call.i32.i.i.i to ptr
  br label %keembay_pcie_probe_clock.exit.i.i

keembay_pcie_probe_clock.exit.i.i:                ; preds = %if.then16.i.i.i, %if.end13.i.i.i.keembay_pcie_probe_clock.exit.i.i_crit_edge, %if.then11.i.i.i, %if.end10.i.keembay_pcie_probe_clock.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %19, %if.then11.i.i.i ], [ %20, %if.then16.i.i.i ], [ %call.i.i.i, %if.end10.i.keembay_pcie_probe_clock.exit.i.i_crit_edge ], [ %call.i.i.i, %if.end13.i.i.i.keembay_pcie_probe_clock.exit.i.i_crit_edge ]
  %clk_master.i.i = getelementptr inbounds %struct.keembay_pcie, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %clk_master.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i.i.i, ptr %clk_master.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %keembay_pcie_probe_clock.exit.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge, label %if.end.i96.i

keembay_pcie_probe_clock.exit.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge: ; preds = %keembay_pcie_probe_clock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %keembay_pcie_probe_clocks.exit.i

if.end.i96.i:                                     ; preds = %keembay_pcie_probe_clock.exit.i.i
  %call.i26.i.i = tail call ptr @devm_clk_get(ptr noundef %18, ptr noundef nonnull @.str.15) #7
  %cmp.i.i27.i.i = icmp ugt ptr %call.i26.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i27.i.i, label %if.end.i96.i.keembay_pcie_probe_clock.exit42.i.i_crit_edge, label %if.end.i28.i.i

if.end.i96.i.keembay_pcie_probe_clock.exit42.i.i_crit_edge: ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %keembay_pcie_probe_clock.exit42.i.i

if.end.i28.i.i:                                   ; preds = %if.end.i96.i
  %call3.i.i.i = tail call i32 @clk_set_rate(ptr noundef %call.i26.i.i, i32 noundef 24000000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end8.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = inttoptr i32 %call3.i.i.i to ptr
  br label %keembay_pcie_probe_clock.exit42.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i28.i.i
  %call.i.i29.i.i = tail call i32 @clk_prepare(ptr noundef %call.i26.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i.i)
  %tobool.not.i.i30.i.i = icmp eq i32 %call.i.i29.i.i, 0
  br i1 %tobool.not.i.i30.i.i, label %if.end.i.i33.i.i, label %if.end8.i.i.i.if.then11.i36.i.i_crit_edge

if.end8.i.i.i.if.then11.i36.i.i_crit_edge:        ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i36.i.i

if.end.i.i33.i.i:                                 ; preds = %if.end8.i.i.i
  %call1.i.i31.i.i = tail call i32 @clk_enable(ptr noundef %call.i26.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i31.i.i)
  %tobool2.not.i.i32.i.i = icmp eq i32 %call1.i.i31.i.i, 0
  br i1 %tobool2.not.i.i32.i.i, label %if.end13.i39.i.i, label %if.then3.i.i34.i.i

if.then3.i.i34.i.i:                               ; preds = %if.end.i.i33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call.i26.i.i) #7
  br label %if.then11.i36.i.i

if.then11.i36.i.i:                                ; preds = %if.then3.i.i34.i.i, %if.end8.i.i.i.if.then11.i36.i.i_crit_edge
  %retval.0.i.ph.i35.i.i = phi i32 [ %call1.i.i31.i.i, %if.then3.i.i34.i.i ], [ %call.i.i29.i.i, %if.end8.i.i.i.if.then11.i36.i.i_crit_edge ]
  %23 = inttoptr i32 %retval.0.i.ph.i35.i.i to ptr
  br label %keembay_pcie_probe_clock.exit42.i.i

if.end13.i39.i.i:                                 ; preds = %if.end.i.i33.i.i
  %call.i32.i37.i.i = tail call i32 @devm_add_action(ptr noundef %18, ptr noundef nonnull @clk_disable_unprepare, ptr noundef %call.i26.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i37.i.i)
  %tobool.not.i33.i38.i.i = icmp eq i32 %call.i32.i37.i.i, 0
  br i1 %tobool.not.i33.i38.i.i, label %if.end13.i39.i.i.keembay_pcie_probe_clock.exit42.i.i_crit_edge, label %if.then16.i40.i.i

if.end13.i39.i.i.keembay_pcie_probe_clock.exit42.i.i_crit_edge: ; preds = %if.end13.i39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %keembay_pcie_probe_clock.exit42.i.i

if.then16.i40.i.i:                                ; preds = %if.end13.i39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %call.i26.i.i) #7
  tail call void @clk_unprepare(ptr noundef %call.i26.i.i) #7
  %24 = inttoptr i32 %call.i32.i37.i.i to ptr
  br label %keembay_pcie_probe_clock.exit42.i.i

keembay_pcie_probe_clock.exit42.i.i:              ; preds = %if.then16.i40.i.i, %if.end13.i39.i.i.keembay_pcie_probe_clock.exit42.i.i_crit_edge, %if.then11.i36.i.i, %if.then5.i.i.i, %if.end.i96.i.keembay_pcie_probe_clock.exit42.i.i_crit_edge
  %retval.0.i41.i.i = phi ptr [ %22, %if.then5.i.i.i ], [ %23, %if.then11.i36.i.i ], [ %24, %if.then16.i40.i.i ], [ %call.i26.i.i, %if.end.i96.i.keembay_pcie_probe_clock.exit42.i.i_crit_edge ], [ %call.i26.i.i, %if.end13.i39.i.i.keembay_pcie_probe_clock.exit42.i.i_crit_edge ]
  %clk_aux.i.i = getelementptr inbounds %struct.keembay_pcie, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %clk_aux.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i41.i.i, ptr %clk_aux.i.i, align 4
  %cmp.i43.i.i = icmp ugt ptr %retval.0.i41.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43.i.i, label %keembay_pcie_probe_clock.exit42.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge, label %keembay_pcie_probe_clock.exit42.i.i.if.end14.i_crit_edge

keembay_pcie_probe_clock.exit42.i.i.if.end14.i_crit_edge: ; preds = %keembay_pcie_probe_clock.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

keembay_pcie_probe_clock.exit42.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge: ; preds = %keembay_pcie_probe_clock.exit42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %keembay_pcie_probe_clocks.exit.i

keembay_pcie_probe_clocks.exit.i:                 ; preds = %keembay_pcie_probe_clock.exit42.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge, %keembay_pcie_probe_clock.exit.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge
  %retval.0.i41.sink.i.i = phi ptr [ %retval.0.i.i.i, %keembay_pcie_probe_clock.exit.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge ], [ %retval.0.i41.i.i, %keembay_pcie_probe_clock.exit42.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge ]
  %.str.16.sink.i.i = phi ptr [ @.str.14, %keembay_pcie_probe_clock.exit.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge ], [ @.str.16, %keembay_pcie_probe_clock.exit42.i.i.keembay_pcie_probe_clocks.exit.i_crit_edge ]
  %26 = ptrtoint ptr %retval.0.i41.sink.i.i to i32
  %call14.i.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %18, i32 noundef %26, ptr noundef nonnull %.str.16.sink.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool12.not.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool12.not.i, label %keembay_pcie_probe_clocks.exit.i.if.end14.i_crit_edge, label %keembay_pcie_probe_clocks.exit.i.cleanup_crit_edge

keembay_pcie_probe_clocks.exit.i.cleanup_crit_edge: ; preds = %keembay_pcie_probe_clocks.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

keembay_pcie_probe_clocks.exit.i.if.end14.i_crit_edge: ; preds = %keembay_pcie_probe_clocks.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %keembay_pcie_probe_clocks.exit.i.if.end14.i_crit_edge, %keembay_pcie_probe_clock.exit42.i.i.if.end14.i_crit_edge
  %27 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %apb_base, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 356
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  %30 = or i32 %29, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %apb_base, align 8
  %add.ptr18.i = getelementptr i8, ptr %32, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %30) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %apb_base, align 8
  %add.ptr23.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 65536) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %apb_base, align 8
  %add.ptr.i98.i = getelementptr i8, ptr %36, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i, i32 838860800) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %apb_base, align 8
  %add.ptr70.i.i = getelementptr i8, ptr %38, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i.i, i32 33280) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %apb_base, align 8
  %add.ptr108.i.i = getelementptr i8, ptr %40, i32 368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108.i.i, i32 32801) #7, !srcloc !78
  %call.i99.i = tail call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i99.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 222) #7
  %41 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %apb_base, align 8
  %add.ptr120166.i.i = getelementptr i8, ptr %42, i32 364
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120166.i.i) #7, !srcloc !75
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %and167.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i.i)
  %tobool.not168.i.i = icmp eq i32 %and167.i.i, 0
  br i1 %tobool.not168.i.i, label %if.end14.i.land.lhs.true.i.i_crit_edge, label %if.end14.i.for.end.i.i_crit_edge

if.end14.i.for.end.i.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.end14.i.land.lhs.true.i.i_crit_edge:           ; preds = %if.end14.i
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then140.i.i.land.lhs.true.i.i_crit_edge, %if.end14.i.land.lhs.true.i.i_crit_edge
  %call127.i.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call127.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call127.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then130.i.i, label %if.then140.i.i

if.then130.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %apb_base, align 8
  %add.ptr134.i.i = getelementptr i8, ptr %46, i32 364
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134.i.i) #7, !srcloc !75
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  br label %for.end.i.i

if.then140.i.i:                                   ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #7
  %49 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %apb_base, align 8
  %add.ptr120.i.i = getelementptr i8, ptr %50, i32 364
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120.i.i) #7, !srcloc !75
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %and.i.i = and i32 %52, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then140.i.i.land.lhs.true.i.i_crit_edge, label %if.then140.i.i.for.end.i.i_crit_edge

if.then140.i.i.for.end.i.i_crit_edge:             ; preds = %if.then140.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.then140.i.i.land.lhs.true.i.i_crit_edge:       ; preds = %if.then140.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %if.then140.i.i.for.end.i.i_crit_edge, %if.then130.i.i, %if.end14.i.for.end.i.i_crit_edge
  %val.0.i.i = phi i32 [ %48, %if.then130.i.i ], [ %44, %if.end14.i.for.end.i.i_crit_edge ], [ %52, %if.then140.i.i.for.end.i.i_crit_edge ]
  %and143.i.i = and i32 %val.0.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143.i.i)
  %tobool144.not.i.i = icmp eq i32 %and143.i.i, 0
  br i1 %tobool144.not.i.i, label %keembay_pcie_pll_init.exit.i, label %if.end27.i

keembay_pcie_pll_init.exit.i:                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end27.i:                                       ; preds = %for.end.i.i
  %55 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %apb_base, align 8
  %add.ptr31.i = getelementptr i8, ptr %56, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %58 = or i32 %57, 16777216
  %59 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %apb_base, align 8
  %add.ptr40.i = getelementptr i8, ptr %60, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %58) #7, !srcloc !78
  tail call void @msleep(i32 noundef 100) #7
  %61 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reset.i, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %62, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  %call41.i = tail call i32 @dw_pcie_host_init(ptr noundef %pp2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end47.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @keembay_ep_reset_assert(ptr noundef nonnull %call.i) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call41.i) #10
  br label %cleanup

if.end47.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %apb_base, align 8
  %add.ptr51.i = getelementptr i8, ptr %64, i32 40
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %66 = or i32 %65, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %apb_base, align 8
  %add.ptr60.i = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %66) #7, !srcloc !78
  br label %cleanup

sw.bb19:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %ep = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 8
  %ops20 = getelementptr inbounds %struct.dw_pcie, ptr %call.i, i32 0, i32 8, i32 2
  %69 = ptrtoint ptr %ops20 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @keembay_pcie_ep_ops, ptr %ops20, align 4
  %call22 = tail call i32 @dw_pcie_ep_init(ptr noundef %ep) #7
  br label %cleanup

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb19, %if.end47.i, %if.then43.i, %keembay_pcie_pll_init.exit.i, %keembay_pcie_probe_clocks.exit.i.cleanup_crit_edge, %if.then7.i, %sw.bb.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then13 ], [ -19, %do.end ], [ %call22, %sw.bb19 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %16, %if.then7.i ], [ %call41.i, %if.then43.i ], [ 0, %if.end47.i ], [ %call14.i.i, %keembay_pcie_probe_clocks.exit.i.cleanup_crit_edge ], [ -110, %keembay_pcie_pll_init.exit.i ], [ %call.i.i, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_pcie_link_up(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %apb_base = getelementptr inbounds %struct.keembay_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 176
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %7 = and i32 %6, 67584
  call void @__sanitizer_cov_trace_const_cmp4(i32 67584, i32 %7)
  %cmp = icmp eq i32 %7, 67584
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_pcie_start_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.keembay_pcie, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %apb_base.i = getelementptr inbounds %struct.keembay_pcie, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %apb_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %apb_base.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #7, !srcloc !78
  %call1 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call1, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 127) #7
  %12 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %apb_base.i, align 8
  %add.ptr59 = getelementptr i8, ptr %13, i32 360
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #7, !srcloc !75
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %and60 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool.not61 = icmp eq i32 %and60, 0
  br i1 %tobool.not61, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then30.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then20, label %if.then30

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %apb_base.i, align 8
  %add.ptr24 = getelementptr i8, ptr %17, i32 360
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !75
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  br label %for.end

if.then30:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #7
  %20 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %apb_base.i, align 8
  %add.ptr = getelementptr i8, ptr %21, i32 360
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !75
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %and = and i32 %23, 2
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then30.land.lhs.true_crit_edge, label %if.then30.for.end_crit_edge

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then30.land.lhs.true_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then30.for.end_crit_edge, %if.then20, %if.end.for.end_crit_edge
  %val.0 = phi i32 [ %19, %if.then20 ], [ %15, %if.end.for.end_crit_edge ], [ %23, %if.then30.for.end_crit_edge ]
  %and33 = and i32 %val.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end39, label %if.end41

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %apb_base.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %29 = or i32 %28, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %apb_base.i, align 8
  %add.ptr3.i57 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i57, i32 %29) #7, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end39 ], [ 0, %if.end41 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keembay_pcie_stop_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %apb_base.i = getelementptr inbounds %struct.keembay_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %apb_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_base.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #7, !srcloc !78
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keembay_ep_reset_assert(ptr nocapture noundef readonly %pcie) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.keembay_pcie, ptr %pcie, i32 0, i32 5
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 8
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keembay_pcie_msi_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %apb_base = getelementptr inbounds %struct.keembay_pcie, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %apb_base, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 44
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  %15 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %apb_base, align 8
  %add.ptr8 = getelementptr i8, ptr %16, i32 40
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %18 = and i32 %17, %14
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %chained_irq_enter.exit.if.end_crit_edge, label %if.then

chained_irq_enter.exit.if.end_crit_edge:          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pp2 = getelementptr inbounds %struct.dw_pcie, ptr %1, i32 0, i32 7
  %call13 = tail call i32 @dw_handle_msi_irq(ptr noundef %pp2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %apb_base, align 8
  %add.ptr15 = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %18) #7, !srcloc !78
  br label %if.end

if.end:                                           ; preds = %if.then, %chained_irq_enter.exit.if.end_crit_edge
  %22 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i25 = icmp eq ptr %23, null
  br i1 %tobool.not.i25, label %if.else.i26, label %if.end.chained_irq_exit.exit_crit_edge

if.end.chained_irq_exit.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i26:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i26, %if.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %25, %if.else.i26 ], [ %23, %if.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_handle_msi_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_disable_unprepare(ptr noundef %clk) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %clk) #7
  tail call void @clk_unprepare(ptr noundef %clk) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keembay_pcie_ep_init(ptr nocapture noundef readonly %ep) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %apb_base = getelementptr inbounds %struct.keembay_pcie, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %apb_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_base, align 8
  %add.ptr1 = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -16777216) #7, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_pcie_ep_raise_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i32 noundef %type, i16 noundef zeroext %interrupt_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %type, label %do.end6 [
    i32 1, label %do.end
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.19) #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i16 %interrupt_num to i8
  %call = tail call i32 @dw_pcie_ep_raise_msi_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i8 noundef zeroext %conv) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @dw_pcie_ep_raise_msix_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i16 noundef zeroext %interrupt_num) #7
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22, i32 noundef %type) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %sw.bb2, %sw.bb1, %do.end
  %retval.0 = phi i32 [ -22, %do.end6 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb1 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @keembay_pcie_get_features(ptr nocapture noundef readnone %ep) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @keembay_pcie_epc_features
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_raise_msi_irq(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_raise_msix_irq(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_pcie_keembay__266_460_keembay_pcie_driver_init6, !1, !"__initcall__kmod_pcie_keembay__266_460_keembay_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 460, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 454, i32 11}
!4 = !{ptr @keembay_pcie_driver, !5, !"keembay_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 452, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 408, i32 63}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 427, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @keembay_pcie_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @keembay_pcie_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @keembay_pcie_ops, !17, !"keembay_pcie_ops", i1 false, i1 false}
!17 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 145, i32 33}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 129, i32 3}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @keembay_pcie_start_link._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @keembay_pcie_start_link._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 347, i32 36}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 372, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @keembay_pcie_add_pcie_port._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @keembay_pcie_add_pcie_port._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @keembay_pcie_host_ops, !31, !"keembay_pcie_host_ops", i1 false, i1 false}
!31 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 328, i32 38}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 268, i32 38}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 185, i32 51}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 188, i32 10}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 190, i32 48}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 193, i32 10}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 224, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @keembay_pcie_pll_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @keembay_pcie_pll_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @keembay_pcie_ep_ops, !48, !"keembay_pcie_ep_ops", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 322, i32 36}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 295, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @keembay_pcie_ep_raise_irq._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @keembay_pcie_ep_raise_irq._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 302, i32 3}
!56 = !{ptr @keembay_pcie_ep_raise_irq._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @keembay_pcie_ep_raise_irq._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @keembay_pcie_epc_features, !59, !"keembay_pcie_epc_features", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 307, i32 38}
!60 = !{ptr @keembay_pcie_of_match, !61, !"keembay_pcie_of_match", i1 false, i1 false}
!61 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 440, i32 34}
!62 = !{ptr @keembay_pcie_rc_of_data, !63, !"keembay_pcie_rc_of_data", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 432, i32 42}
!64 = !{ptr @keembay_pcie_ep_of_data, !65, !"keembay_pcie_ep_of_data", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/dwc/pcie-keembay.c", i32 436, i32 42}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 3144979}
!76 = !{i64 2154872604}
!77 = !{i64 2154872913}
!78 = !{i64 3144561}
!79 = !{i64 2154873427}
!80 = !{i64 2154715855}
!81 = !{i64 2154800642}
!82 = !{i64 2154856806}
!83 = !{i64 2154858806}
!84 = !{i64 2154859316}
!85 = !{i64 2154874197}
!86 = !{i64 2154874536}
!87 = !{i64 2154876990}
!88 = !{i64 2154877839}
!89 = !{i64 2154627074}
!90 = !{i64 2154625985}
!91 = !{i64 2154626376}
!92 = !{i64 2154629285}
!93 = !{i64 2154629795}
!94 = !{i64 2154861496}
!95 = !{i64 2154862013}
!96 = !{i64 2154862325}
!97 = !{i64 2154866151}
