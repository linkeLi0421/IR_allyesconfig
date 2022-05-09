; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/dwc/pcie-artpec6.c_pt.bc'
source_filename = "../drivers/pci/controller/dwc/pcie-artpec6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dw_pcie_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pcie_host_ops = type { ptr, ptr }
%struct.dw_pcie_ep_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.artpec_pcie_of_data = type { i32, i32 }
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
%struct.dw_pcie = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.pcie_port, %struct.dw_pcie_ep, ptr, i32, i32, i32, [2 x i8], i8 }
%struct.pcie_port = type { i8, i64, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i16, i32, ptr, i32, [8 x i32], ptr, %struct.raw_spinlock, [8 x i32] }
%struct.dw_pcie_ep = type { ptr, %struct.list_head, ptr, i32, i32, i32, [6 x i8], ptr, ptr, ptr, ptr, i32, [6 x ptr] }
%struct.artpec6_pcie = type { ptr, ptr, ptr, i32, i32 }

@__initcall__kmod_pcie_artpec6__237_500_artpec6_pcie_driver_init6 = internal global ptr @artpec6_pcie_driver_init, section ".initcall6.init", align 4
@artpec6_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @artpec6_pcie_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @artpec6_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"artpec6-pcie\00", [19 x i8] zeroinitializer }, align 32
@artpec6_pcie_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec6-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @artpec6_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec6-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @artpec6_pcie_ep_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec7-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @artpec7_pcie_rc_of_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"axis,artpec7-pcie-ep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @artpec7_pcie_ep_of_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@dw_pcie_ops = internal constant { %struct.dw_pcie_ops, [36 x i8] } { %struct.dw_pcie_ops { ptr @artpec6_pcie_cpu_addr_fixup, ptr null, ptr null, ptr null, ptr null, ptr @artpec6_pcie_establish_link, ptr @artpec6_pcie_stop_link }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"axis,syscon-pcie\00", [47 x i8] zeroinitializer }, align 32
@artpec6_pcie_host_ops = internal constant { %struct.dw_pcie_host_ops, [24 x i8] } { %struct.dw_pcie_host_ops { ptr @artpec6_pcie_host_init, ptr null }, [24 x i8] zeroinitializer }, align 32
@pcie_ep_ops = internal constant { %struct.dw_pcie_ep_ops, [16 x i8] } { %struct.dw_pcie_ep_ops { ptr @artpec6_pcie_ep_init, ptr @artpec6_pcie_raise_irq, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@artpec6_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 446, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"INVALID device type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"artpec6_pcie_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pci/controller/dwc/pcie-artpec6.c\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@artpec6_pcie_probe._entry_ptr = internal global ptr @artpec6_pcie_probe._entry, section ".printk_index", align 4
@artpec6_pcie_cpu_addr_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 109, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"UNKNOWN device type\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"artpec6_pcie_cpu_addr_fixup\00", [36 x i8] zeroinitializer }, align 32
@artpec6_pcie_cpu_addr_fixup._entry_ptr = internal global ptr @artpec6_pcie_cpu_addr_fixup._entry, section ".printk_index", align 4
@artpec6_pcie_init_phy_a7.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie_artpec6\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"artpec6_pcie_init_phy_a7\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Using reference clock: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@artpec6_pcie_wait_for_phy_a6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 157, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PCIe clock manager did not leave idle state\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"artpec6_pcie_wait_for_phy_a6\00", [35 x i8] zeroinitializer }, align 32
@artpec6_pcie_wait_for_phy_a6._entry_ptr = internal global ptr @artpec6_pcie_wait_for_phy_a6._entry, section ".printk_index", align 4
@artpec6_pcie_wait_for_phy_a6._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.5, i32 166, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PHY PLL did not lock\0A\00", [42 x i8] zeroinitializer }, align 32
@artpec6_pcie_wait_for_phy_a6._entry_ptr.19 = internal global ptr @artpec6_pcie_wait_for_phy_a6._entry.17, section ".printk_index", align 4
@artpec6_pcie_wait_for_phy_a7._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.20, ptr @.str.5, i32 185, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"artpec6_pcie_wait_for_phy_a7\00", [35 x i8] zeroinitializer }, align 32
@artpec6_pcie_wait_for_phy_a7._entry_ptr = internal global ptr @artpec6_pcie_wait_for_phy_a7._entry, section ".printk_index", align 4
@artpec6_pcie_wait_for_phy_a7._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.5, i32 196, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PHY did not enter Pn state\0A\00", [36 x i8] zeroinitializer }, align 32
@artpec6_pcie_wait_for_phy_a7._entry_ptr.23 = internal global ptr @artpec6_pcie_wait_for_phy_a7._entry.21, section ".printk_index", align 4
@artpec6_pcie_raise_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 361, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EP cannot trigger legacy IRQs\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"artpec6_pcie_raise_irq\00", [41 x i8] zeroinitializer }, align 32
@artpec6_pcie_raise_irq._entry_ptr = internal global ptr @artpec6_pcie_raise_irq._entry, section ".printk_index", align 4
@artpec6_pcie_raise_irq._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.5, i32 366, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UNKNOWN IRQ type\0A\00", [46 x i8] zeroinitializer }, align 32
@artpec6_pcie_raise_irq._entry_ptr.28 = internal global ptr @artpec6_pcie_raise_irq._entry.26, section ".printk_index", align 4
@artpec6_pcie_rc_of_data = internal constant { %struct.artpec_pcie_of_data, [24 x i8] } { %struct.artpec_pcie_of_data { i32 0, i32 3 }, [24 x i8] zeroinitializer }, align 32
@artpec6_pcie_ep_of_data = internal constant { %struct.artpec_pcie_of_data, [24 x i8] } { %struct.artpec_pcie_of_data { i32 0, i32 1 }, [24 x i8] zeroinitializer }, align 32
@artpec7_pcie_rc_of_data = internal constant { %struct.artpec_pcie_of_data, [24 x i8] } { %struct.artpec_pcie_of_data { i32 1, i32 3 }, [24 x i8] zeroinitializer }, align 32
@artpec7_pcie_ep_of_data = internal constant { %struct.artpec_pcie_of_data, [24 x i8] } { %struct.artpec_pcie_of_data { i32 1, i32 1 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"artpec6_pcie_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 492, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 495, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"artpec6_pcie_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 472, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"dw_pcie_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 136, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 411, i32 47 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 417, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"artpec6_pcie_host_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 335, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"pcie_ep_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 372, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 446, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 109, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 250, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 157, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 166, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 185, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 196, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 361, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 366, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [24 x i8] c"artpec6_pcie_rc_of_data\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 452, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant [24 x i8] c"artpec6_pcie_ep_of_data\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 457, i32 41 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"artpec7_pcie_rc_of_data\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 462, i32 41 }
@___asan_gen_.154 = private unnamed_addr constant [24 x i8] c"artpec7_pcie_ep_of_data\00", align 1
@___asan_gen_.155 = private constant [45 x i8] c"../drivers/pci/controller/dwc/pcie-artpec6.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 467, i32 41 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__initcall__kmod_pcie_artpec6__237_500_artpec6_pcie_driver_init6, ptr @artpec6_pcie_cpu_addr_fixup._entry, ptr @artpec6_pcie_cpu_addr_fixup._entry_ptr, ptr @artpec6_pcie_probe._entry, ptr @artpec6_pcie_probe._entry_ptr, ptr @artpec6_pcie_raise_irq._entry, ptr @artpec6_pcie_raise_irq._entry.26, ptr @artpec6_pcie_raise_irq._entry_ptr, ptr @artpec6_pcie_raise_irq._entry_ptr.28, ptr @artpec6_pcie_wait_for_phy_a6._entry, ptr @artpec6_pcie_wait_for_phy_a6._entry.17, ptr @artpec6_pcie_wait_for_phy_a6._entry_ptr, ptr @artpec6_pcie_wait_for_phy_a6._entry_ptr.19, ptr @artpec6_pcie_wait_for_phy_a7._entry, ptr @artpec6_pcie_wait_for_phy_a7._entry.21, ptr @artpec6_pcie_wait_for_phy_a7._entry_ptr, ptr @artpec6_pcie_wait_for_phy_a7._entry_ptr.23, ptr @artpec6_pcie_driver, ptr @.str, ptr @artpec6_pcie_of_match, ptr @dw_pcie_ops, ptr @.str.1, ptr @.str.2, ptr @artpec6_pcie_host_ops, ptr @pcie_ep_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @artpec6_pcie_rc_of_data, ptr @artpec6_pcie_ep_of_data, ptr @artpec7_pcie_rc_of_data, ptr @artpec7_pcie_ep_of_data], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pcie_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_host_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_ep_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_cpu_addr_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_wait_for_phy_a6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_wait_for_phy_a6._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_wait_for_phy_a7._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_wait_for_phy_a7._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_raise_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_raise_irq._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_rc_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec6_pcie_ep_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec7_pcie_rc_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artpec7_pcie_ep_of_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @artpec6_pcie_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
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
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %mode3 = getelementptr inbounds %struct.artpec_pcie_of_data, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i81 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #5
  %tobool9.not = icmp eq ptr %call.i81, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %call.i81 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i81, align 8
  %ops = getelementptr inbounds %struct.dw_pcie, ptr %call.i81, i32 0, i32 9
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dw_pcie_ops, ptr %ops, align 8
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i81, ptr %call.i, align 4
  %variant14 = getelementptr inbounds %struct.artpec6_pcie, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %variant14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %variant14, align 4
  %mode15 = getelementptr inbounds %struct.artpec6_pcie, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %mode15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %mode15, align 4
  %call16 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  %phy_base = getelementptr inbounds %struct.artpec6_pcie, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %phy_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call16, ptr %phy_base, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call23 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %12, ptr noundef nonnull @.str.2) #5
  %regmap = getelementptr inbounds %struct.artpec6_pcie, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %regmap, align 4
  %cmp.i82 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %16 = ptrtoint ptr %mode15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode15, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end [
    i32 3, label %sw.bb
    i32 1, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end29
  %pp = getelementptr inbounds %struct.dw_pcie, ptr %call.i81, i32 0, i32 7
  %ops31 = getelementptr inbounds %struct.dw_pcie, ptr %call.i81, i32 0, i32 7, i32 8
  %19 = ptrtoint ptr %ops31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @artpec6_pcie_host_ops, ptr %ops31, align 8
  %call33 = tail call i32 @dw_pcie_host_init(ptr noundef %pp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb36:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  %call.i83 = call i32 @regmap_read(ptr noundef %call23, i32 noundef 24, ptr noundef nonnull %val.i) #5
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %and = and i32 %22, -983041
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i85 = call i32 @regmap_write(ptr noundef %24, i32 noundef 24, i32 noundef %and) #5
  %ep = getelementptr inbounds %struct.dw_pcie, ptr %call.i81, i32 0, i32 8
  %ops38 = getelementptr inbounds %struct.dw_pcie, ptr %call.i81, i32 0, i32 8, i32 2
  %25 = ptrtoint ptr %ops38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pcie_ep_ops, ptr %ops38, align 4
  %call40 = call i32 @dw_pcie_ep_init(ptr noundef %ep) #5
  br label %cleanup

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %17) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb36, %sw.bb.cleanup_crit_edge, %if.then26, %if.then19, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then19 ], [ %14, %if.then26 ], [ 0, %sw.epilog ], [ %call40, %sw.bb36 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call33, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_host_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @artpec6_pcie_cpu_addr_fixup(ptr nocapture noundef readonly %pci, i64 noundef %pci_addr) #2 align 64 {
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
  %mode = getelementptr inbounds %struct.artpec6_pcie, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %5, label %do.end [
    i32 3, label %sw.bb
    i32 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cfg0_base = getelementptr inbounds %struct.dw_pcie, ptr %pci, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %cfg0_base to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cfg0_base, align 8
  %sub = sub i64 %pci_addr, %8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %phys_base = getelementptr inbounds %struct.dw_pcie, ptr %pci, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phys_base, align 4
  %conv = zext i32 %10 to i64
  %sub4 = sub i64 %pci_addr, %conv
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb3, %sw.bb
  %retval.0 = phi i64 [ %pci_addr, %do.end ], [ %sub4, %sw.bb3 ], [ %sub, %sw.bb ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pcie_establish_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  %regmap.i = getelementptr inbounds %struct.artpec6_pcie, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 24, ptr noundef nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %or = or i32 %8, 1048576
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i5 = call i32 @regmap_write(ptr noundef %10, i32 noundef 24, i32 noundef %or) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_pcie_stop_link(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  %regmap.i = getelementptr inbounds %struct.artpec6_pcie, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 24, ptr noundef nonnull %val.i) #5
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %and = and i32 %8, -1048577
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i5 = call i32 @regmap_write(ptr noundef %10, i32 noundef 24, i32 noundef %and) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pcie_host_init(ptr nocapture noundef %pp) #2 align 64 {
entry:
  %val.i.i9 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
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
  %variant = getelementptr inbounds %struct.artpec6_pcie, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %n_fts = getelementptr i8, ptr %pp, i32 280
  %6 = ptrtoint ptr %n_fts to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -76, ptr %n_fts, align 8
  %arrayidx2 = getelementptr i8, ptr %pp, i32 281
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -76, ptr %arrayidx2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i.i, align 4, !annotation !81
  %regmap.i.i = getelementptr inbounds %struct.artpec6_pcie, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 24, ptr noundef nonnull %val.i.i) #5
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %13 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %variant, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %14, label %if.end.artpec6_pcie_assert_core_reset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.artpec6_pcie_assert_core_reset.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %artpec6_pcie_assert_core_reset.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %12, 2097152
  br label %artpec6_pcie_assert_core_reset.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %12, -9
  br label %artpec6_pcie_assert_core_reset.exit

artpec6_pcie_assert_core_reset.exit:              ; preds = %sw.bb1.i, %sw.bb.i, %if.end.artpec6_pcie_assert_core_reset.exit_crit_edge
  %val.0.i = phi i32 [ %12, %if.end.artpec6_pcie_assert_core_reset.exit_crit_edge ], [ %and.i, %sw.bb1.i ], [ %or.i, %sw.bb.i ]
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %call.i7.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 24, i32 noundef %val.0.i) #5
  call fastcc void @artpec6_pcie_init_phy(ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i9) #5
  %18 = ptrtoint ptr %val.i.i9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i.i9, align 4, !annotation !81
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i11 = call i32 @regmap_read(ptr noundef %20, i32 noundef 24, ptr noundef nonnull %val.i.i9) #5
  %21 = ptrtoint ptr %val.i.i9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i.i9, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i9) #5
  %23 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %variant, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %24, label %artpec6_pcie_assert_core_reset.exit.artpec6_pcie_deassert_core_reset.exit_crit_edge [
    i32 0, label %sw.bb.i14
    i32 1, label %sw.bb1.i16
  ]

artpec6_pcie_assert_core_reset.exit.artpec6_pcie_deassert_core_reset.exit_crit_edge: ; preds = %artpec6_pcie_assert_core_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %artpec6_pcie_deassert_core_reset.exit

sw.bb.i14:                                        ; preds = %artpec6_pcie_assert_core_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and.i13 = and i32 %22, -2097153
  br label %artpec6_pcie_deassert_core_reset.exit

sw.bb1.i16:                                       ; preds = %artpec6_pcie_assert_core_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or.i15 = or i32 %22, 8
  br label %artpec6_pcie_deassert_core_reset.exit

artpec6_pcie_deassert_core_reset.exit:            ; preds = %sw.bb1.i16, %sw.bb.i14, %artpec6_pcie_assert_core_reset.exit.artpec6_pcie_deassert_core_reset.exit_crit_edge
  %val.0.i17 = phi i32 [ %22, %artpec6_pcie_assert_core_reset.exit.artpec6_pcie_deassert_core_reset.exit_crit_edge ], [ %or.i15, %sw.bb1.i16 ], [ %and.i13, %sw.bb.i14 ]
  %26 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i.i, align 4
  %call.i7.i18 = call i32 @regmap_write(ptr noundef %27, i32 noundef 24, i32 noundef %val.0.i17) #5
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  call fastcc void @artpec6_pcie_wait_for_phy(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @artpec6_pcie_init_phy(ptr nocapture noundef readonly %artpec6_pcie) unnamed_addr #2 align 64 {
entry:
  %val.i38.i = alloca i32, align 4
  %val.i33.i = alloca i32, align 4
  %val.i28.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.artpec6_pcie, ptr %artpec6_pcie, i32 0, i32 3
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %3 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i.i, align 4, !annotation !81
  %regmap.i.i = getelementptr inbounds %struct.artpec6_pcie, ptr %artpec6_pcie, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 24, ptr noundef nonnull %val.i.i) #5
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %or1.i = and i32 %7, -16780318
  %and.i = or i32 %or1.i, 1053
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i27.i = call i32 @regmap_write(ptr noundef %9, i32 noundef 24, i32 noundef %and.i) #5
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i28.i) #5
  %10 = ptrtoint ptr %val.i28.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i28.i, align 4, !annotation !81
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i30.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 64, ptr noundef nonnull %val.i28.i) #5
  %13 = ptrtoint ptr %val.i28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i28.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i28.i) #5
  %or4.i = or i32 %14, 16
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %call.i32.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 64, i32 noundef %or4.i) #5
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i33.i) #5
  %17 = ptrtoint ptr %val.i33.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i33.i, align 4, !annotation !81
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %call.i35.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 24, ptr noundef nonnull %val.i33.i) #5
  %20 = ptrtoint ptr %val.i33.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i33.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i33.i) #5
  %or6.i = or i32 %21, 768
  %22 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i, align 4
  %call.i37.i = call i32 @regmap_write(ptr noundef %23, i32 noundef 24, i32 noundef %or6.i) #5
  call void @usleep_range_state(i32 noundef 6000, i32 noundef 7000, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i38.i) #5
  %24 = ptrtoint ptr %val.i38.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i38.i, align 4, !annotation !81
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %call.i40.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 64, ptr noundef nonnull %val.i38.i) #5
  %27 = ptrtoint ptr %val.i38.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i38.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i38.i) #5
  %and8.i = and i32 %28, -3
  %29 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i.i, align 4
  %call.i42.i = call i32 @regmap_write(ptr noundef %30, i32 noundef 64, i32 noundef %and8.i) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @artpec6_pcie_init_phy_a7(ptr noundef %artpec6_pcie)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @artpec6_pcie_wait_for_phy(ptr nocapture noundef readonly %artpec6_pcie) unnamed_addr #2 align 64 {
entry:
  %val.i.i4 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.artpec6_pcie, ptr %artpec6_pcie, i32 0, i32 3
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %variant, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %artpec6_pcie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %artpec6_pcie, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %regmap.i.i = getelementptr inbounds %struct.artpec6_pcie, ptr %artpec6_pcie, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %sw.bb
  %retries.0.i = phi i32 [ 50, %sw.bb ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i.i, align 4, !annotation !81
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 64, ptr noundef nonnull %val.i.i) #5
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %dec.i = add nsw i32 %retries.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  %and.i = and i32 %11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  br i1 %tobool.not.i, label %do.end7.i, label %do.end.i.if.end.i_crit_edge

do.end.i.if.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end7.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.15) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end7.i, %do.end.i.if.end.i_crit_edge
  %phy_base.i = getelementptr inbounds %struct.artpec6_pcie, ptr %artpec6_pcie, i32 0, i32 2
  br label %do.body8.i

do.body8.i:                                       ; preds = %do.body8.i.do.body8.i_crit_edge, %if.end.i
  %retries.1.i = phi i32 [ 50, %if.end.i ], [ %dec11.i, %do.body8.i.do.body8.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %12 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 280
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %dec11.i = add nsw i32 %retries.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec11.i)
  %tobool13.not.i = icmp eq i32 %dec11.i, 0
  %tobool13.not.not.i = xor i1 %tobool13.not.i, true
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not.i = icmp eq i32 %15, 0
  %or.cond34.i = select i1 %tobool13.not.not.i, i1 %tobool16.not.i, i1 false
  br i1 %or.cond34.i, label %do.body8.i.do.body8.i_crit_edge, label %do.end18.i

do.body8.i.do.body8.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i

do.end18.i:                                       ; preds = %do.body8.i
  br i1 %tobool13.not.i, label %do.end23.i, label %do.end18.i.sw.epilog_crit_edge

do.end18.i.sw.epilog_crit_edge:                   ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end23.i:                                       ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.18) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %16 = ptrtoint ptr %artpec6_pcie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %artpec6_pcie, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %regmap.i.i5 = getelementptr inbounds %struct.artpec6_pcie, ptr %artpec6_pcie, i32 0, i32 1
  br label %do.body.i13

do.body.i13:                                      ; preds = %do.body.i13.do.body.i13_crit_edge, %sw.bb1
  %retries.0.i6 = phi i32 [ 50, %sw.bb1 ], [ %dec.i8, %do.body.i13.do.body.i13_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i4) #5
  %20 = ptrtoint ptr %val.i.i4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i.i4, align 4, !annotation !81
  %21 = ptrtoint ptr %regmap.i.i5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i.i5, align 4
  %call.i.i7 = call i32 @regmap_read(ptr noundef %22, i32 noundef 64, ptr noundef nonnull %val.i.i4) #5
  %23 = ptrtoint ptr %val.i.i4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i.i4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i4) #5
  %dec.i8 = add nsw i32 %retries.0.i6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i8)
  %tobool.not.i9 = icmp eq i32 %dec.i8, 0
  %and.i10 = and i32 %24, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool3.not.i11 = icmp eq i32 %and.i10, 0
  %or.cond.i12 = select i1 %tobool.not.i9, i1 true, i1 %tobool3.not.i11
  br i1 %or.cond.i12, label %do.end.i14, label %do.body.i13.do.body.i13_crit_edge

do.body.i13.do.body.i13_crit_edge:                ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i13

do.end.i14:                                       ; preds = %do.body.i13
  br i1 %tobool.not.i9, label %do.end7.i15, label %do.end.i14.if.end.i17_crit_edge

do.end.i14.if.end.i17_crit_edge:                  ; preds = %do.end.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i17

do.end7.i15:                                      ; preds = %do.end.i14
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.15) #8
  br label %if.end.i17

if.end.i17:                                       ; preds = %do.end7.i15, %do.end.i14.if.end.i17_crit_edge
  %phy_base.i16 = getelementptr inbounds %struct.artpec6_pcie, ptr %artpec6_pcie, i32 0, i32 2
  br label %do.body8.i20

do.body8.i20:                                     ; preds = %land.rhs21.i.do.body8.i20_crit_edge, %if.end.i17
  %retries.1.i18 = phi i32 [ 50, %if.end.i17 ], [ %dec18.i, %land.rhs21.i.do.body8.i20_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %25 = ptrtoint ptr %phy_base.i16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_base.i16, align 4
  %add.ptr.i19 = getelementptr i8, ptr %26, i32 16448
  %27 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i19) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %28 = ptrtoint ptr %phy_base.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy_base.i16, align 4
  %add.ptr14.i = getelementptr i8, ptr %29, i32 16476
  %30 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14.i) #5, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  %dec18.i = add nsw i32 %retries.1.i18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18.i)
  %tobool20.not.i = icmp eq i32 %dec18.i, 0
  br i1 %tobool20.not.i, label %do.end33.critedge.i, label %land.rhs21.i

land.rhs21.i:                                     ; preds = %do.body8.i20
  %31 = and i16 %27, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool23.not.i = icmp eq i16 %31, 0
  %32 = and i16 %30, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool26.not.i = icmp eq i16 %32, 0
  %or.cond44.i = select i1 %tobool23.not.i, i1 %tobool26.not.i, i1 false
  br i1 %or.cond44.i, label %land.rhs21.i.sw.epilog_crit_edge, label %land.rhs21.i.do.body8.i20_crit_edge

land.rhs21.i.do.body8.i20_crit_edge:              ; preds = %land.rhs21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8.i20

land.rhs21.i.sw.epilog_crit_edge:                 ; preds = %land.rhs21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end33.critedge.i:                              ; preds = %do.body8.i20
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.22) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end33.critedge.i, %land.rhs21.i.sw.epilog_crit_edge, %do.end23.i, %do.end18.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @artpec6_pcie_init_phy_a7(ptr nocapture noundef readonly %artpec6_pcie) unnamed_addr #2 align 64 {
entry:
  %val.i47 = alloca i32, align 4
  %val.i42 = alloca i32, align 4
  %val.i37 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %artpec6_pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %artpec6_pcie, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  %regmap.i = getelementptr inbounds %struct.artpec6_pcie, ptr %artpec6_pcie, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 28, ptr noundef nonnull %val.i) #5
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @artpec6_pcie_init_phy_a7.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@artpec6_pcie_init_phy_a7, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %cond = select i1 %tobool.not, ptr @.str.14, ptr @.str.13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @artpec6_pcie_init_phy_a7.__UNIQUE_ID_ddebug236, ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i37) #5
  %9 = ptrtoint ptr %val.i37 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i37, align 4, !annotation !81
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i39 = call i32 @regmap_read(ptr noundef %11, i32 noundef 24, ptr noundef nonnull %val.i37) #5
  %12 = ptrtoint ptr %val.i37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i37, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i37) #5
  %or14 = or i32 %13, 8388880
  %or = and i32 %13, -8388881
  %and15 = or i32 %or, 272
  %val.0 = select i1 %tobool.not, i32 %and15, i32 %or14
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i41 = call i32 @regmap_write(ptr noundef %15, i32 noundef 24, i32 noundef %val.0) #5
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i42) #5
  %16 = ptrtoint ptr %val.i42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i42, align 4, !annotation !81
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call.i44 = call i32 @regmap_read(ptr noundef %18, i32 noundef 64, ptr noundef nonnull %val.i42) #5
  %19 = ptrtoint ptr %val.i42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i42, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i42) #5
  %or18 = or i32 %20, 16
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i46 = call i32 @regmap_write(ptr noundef %22, i32 noundef 64, i32 noundef %or18) #5
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i47) #5
  %23 = ptrtoint ptr %val.i47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i47, align 4, !annotation !81
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i49 = call i32 @regmap_read(ptr noundef %25, i32 noundef 64, ptr noundef nonnull %val.i47) #5
  %26 = ptrtoint ptr %val.i47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val.i47, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i47) #5
  %and20 = and i32 %27, -3
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i51 = call i32 @regmap_write(ptr noundef %29, i32 noundef 64, i32 noundef %and20) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artpec6_pcie_ep_init(ptr noundef %ep) #2 align 64 {
entry:
  %val.i.i7 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i.i, align 4, !annotation !81
  %regmap.i.i = getelementptr inbounds %struct.artpec6_pcie, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 24, ptr noundef nonnull %val.i.i) #5
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  %variant.i = getelementptr inbounds %struct.artpec6_pcie, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %variant.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %10, label %entry.artpec6_pcie_assert_core_reset.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.artpec6_pcie_assert_core_reset.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %artpec6_pcie_assert_core_reset.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or.i = or i32 %8, 2097152
  br label %artpec6_pcie_assert_core_reset.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %8, -9
  br label %artpec6_pcie_assert_core_reset.exit

artpec6_pcie_assert_core_reset.exit:              ; preds = %sw.bb1.i, %sw.bb.i, %entry.artpec6_pcie_assert_core_reset.exit_crit_edge
  %val.0.i = phi i32 [ %8, %entry.artpec6_pcie_assert_core_reset.exit_crit_edge ], [ %and.i, %sw.bb1.i ], [ %or.i, %sw.bb.i ]
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %call.i7.i = call i32 @regmap_write(ptr noundef %13, i32 noundef 24, i32 noundef %val.0.i) #5
  call fastcc void @artpec6_pcie_init_phy(ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i7) #5
  %14 = ptrtoint ptr %val.i.i7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i.i7, align 4, !annotation !81
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i9 = call i32 @regmap_read(ptr noundef %16, i32 noundef 24, ptr noundef nonnull %val.i.i7) #5
  %17 = ptrtoint ptr %val.i.i7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i.i7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i7) #5
  %19 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %variant.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %20, label %artpec6_pcie_assert_core_reset.exit.artpec6_pcie_deassert_core_reset.exit_crit_edge [
    i32 0, label %sw.bb.i12
    i32 1, label %sw.bb1.i14
  ]

artpec6_pcie_assert_core_reset.exit.artpec6_pcie_deassert_core_reset.exit_crit_edge: ; preds = %artpec6_pcie_assert_core_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %artpec6_pcie_deassert_core_reset.exit

sw.bb.i12:                                        ; preds = %artpec6_pcie_assert_core_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and.i11 = and i32 %18, -2097153
  br label %artpec6_pcie_deassert_core_reset.exit

sw.bb1.i14:                                       ; preds = %artpec6_pcie_assert_core_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or.i13 = or i32 %18, 8
  br label %artpec6_pcie_deassert_core_reset.exit

artpec6_pcie_deassert_core_reset.exit:            ; preds = %sw.bb1.i14, %sw.bb.i12, %artpec6_pcie_assert_core_reset.exit.artpec6_pcie_deassert_core_reset.exit_crit_edge
  %val.0.i15 = phi i32 [ %18, %artpec6_pcie_assert_core_reset.exit.artpec6_pcie_deassert_core_reset.exit_crit_edge ], [ %or.i13, %sw.bb1.i14 ], [ %and.i11, %sw.bb.i12 ]
  %22 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i, align 4
  %call.i7.i16 = call i32 @regmap_write(ptr noundef %23, i32 noundef 24, i32 noundef %val.0.i15) #5
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #5
  call fastcc void @artpec6_pcie_wait_for_phy(ptr noundef %3)
  call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 0) #5
  call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 1) #5
  call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 2) #5
  call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 3) #5
  call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 4) #5
  call void @dw_pcie_ep_reset_bar(ptr noundef %add.ptr, i32 noundef 5) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artpec6_pcie_raise_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i32 noundef %type, i16 noundef zeroext %interrupt_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ep, i32 -216
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %type, label %do.end4 [
    i32 1, label %do.end
    i32 2, label %sw.bb1
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24) #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i16 %interrupt_num to i8
  %call = tail call i32 @dw_pcie_ep_raise_msi_irq(ptr noundef %ep, i8 noundef zeroext %func_no, i8 noundef zeroext %conv) #5
  br label %cleanup

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.27) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end4, %sw.bb1, %do.end
  %retval.0 = phi i32 [ 0, %do.end4 ], [ %call, %sw.bb1 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_pcie_ep_reset_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_pcie_ep_raise_msi_irq(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_pcie_artpec6__237_500_artpec6_pcie_driver_init6, !1, !"__initcall__kmod_pcie_artpec6__237_500_artpec6_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 500, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 495, i32 11}
!4 = !{ptr @artpec6_pcie_driver, !5, !"artpec6_pcie_driver", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 492, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 411, i32 47}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 417, i32 7}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 446, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @artpec6_pcie_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @artpec6_pcie_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @dw_pcie_ops, !19, !"dw_pcie_ops", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 136, i32 33}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 109, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @artpec6_pcie_cpu_addr_fixup._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @artpec6_pcie_cpu_addr_fixup._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @artpec6_pcie_host_ops, !26, !"artpec6_pcie_host_ops", i1 false, i1 false}
!26 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 335, i32 38}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 250, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @artpec6_pcie_init_phy_a7.__UNIQUE_ID_ddebug236, !28, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!32 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 157, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @artpec6_pcie_wait_for_phy_a6._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @artpec6_pcie_wait_for_phy_a6._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 166, i32 3}
!41 = !{ptr @artpec6_pcie_wait_for_phy_a6._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @artpec6_pcie_wait_for_phy_a6._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 185, i32 3}
!45 = !{ptr @artpec6_pcie_wait_for_phy_a7._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @artpec6_pcie_wait_for_phy_a7._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 196, i32 3}
!49 = !{ptr @artpec6_pcie_wait_for_phy_a7._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @artpec6_pcie_wait_for_phy_a7._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @pcie_ep_ops, !52, !"pcie_ep_ops", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 372, i32 36}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 361, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @artpec6_pcie_raise_irq._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @artpec6_pcie_raise_irq._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 366, i32 3}
!60 = !{ptr @artpec6_pcie_raise_irq._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @artpec6_pcie_raise_irq._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @artpec6_pcie_of_match, !63, !"artpec6_pcie_of_match", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 472, i32 34}
!64 = !{ptr @artpec6_pcie_rc_of_data, !65, !"artpec6_pcie_rc_of_data", i1 false, i1 false}
!65 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 452, i32 41}
!66 = !{ptr @artpec6_pcie_ep_of_data, !67, !"artpec6_pcie_ep_of_data", i1 false, i1 false}
!67 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 457, i32 41}
!68 = !{ptr @artpec7_pcie_rc_of_data, !69, !"artpec7_pcie_rc_of_data", i1 false, i1 false}
!69 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 462, i32 41}
!70 = !{ptr @artpec7_pcie_ep_of_data, !71, !"artpec7_pcie_ep_of_data", i1 false, i1 false}
!71 = !{!"../drivers/pci/controller/dwc/pcie-artpec6.c", i32 467, i32 41}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i64 5143087}
!83 = !{i64 2154747350}
!84 = !{i64 5142249}
!85 = !{i64 2154751511}
!86 = !{i64 2154752060}
!87 = !{i64 2148767487, i64 2148767492, i64 2148767505, i64 2148767549, i64 2148767583, i64 2148767604}
