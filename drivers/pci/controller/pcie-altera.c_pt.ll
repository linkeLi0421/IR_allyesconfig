; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-altera.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-altera.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.altera_pcie_data = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.altera_pcie_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.altera_pcie = type { ptr, ptr, ptr, i32, i8, ptr, %struct.resource, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__initcall__kmod_pcie_altera__236_831_altera_pcie_driver_init6 = internal global ptr @altera_pcie_driver_init, section ".initcall6.init", align 4
@altera_pcie_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @altera_pcie_probe, ptr @altera_pcie_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @altera_pcie_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_altera_pcie_driver_exit = internal global ptr @altera_pcie_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [52 x i8] c"pcie_altera.file=drivers/pci/controller/pcie-altera\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"pcie_altera.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"altera-pcie\00", [20 x i8] zeroinitializer }, align 32
@altera_pcie_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,pcie-root-port-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @altera_pcie_1_0_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,pcie-root-port-2.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @altera_pcie_2_0_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@altera_pcie_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 786, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Parsing DT failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"altera_pcie_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/pci/controller/pcie-altera.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@altera_pcie_probe._entry_ptr = internal global ptr @altera_pcie_probe._entry, section ".printk_index", align 4
@altera_pcie_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 792, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed creating IRQ Domain\0A\00", [36 x i8] zeroinitializer }, align 32
@altera_pcie_probe._entry_ptr.8 = internal global ptr @altera_pcie_probe._entry.6, section ".printk_index", align 4
@altera_pcie_ops = internal global { %struct.pci_ops, [44 x i8] } { %struct.pci_ops { ptr null, ptr null, ptr null, ptr @altera_pcie_cfg_read, ptr @altera_pcie_cfg_write }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Cra\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Hip\00", [28 x i8] zeroinitializer }, align 32
@altera_pcie_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.altera_pcie_isr = private unnamed_addr constant [16 x i8] c"altera_pcie_isr\00", align 1
@altera_pcie_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.altera_pcie_isr, ptr @.str.3, i32 661, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unexpected IRQ, INT%d\0A\00", [41 x i8] zeroinitializer }, align 32
@altera_pcie_isr._entry_ptr = internal global ptr @altera_pcie_isr._entry, section ".printk_index", align 4
@intx_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @altera_pcie_intx_map, ptr null, ptr @pci_irqd_intx_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@altera_pcie_init_irq_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 677, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get a INTx IRQ domain\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"altera_pcie_init_irq_domain\00", [36 x i8] zeroinitializer }, align 32
@altera_pcie_init_irq_domain._entry_ptr = internal global ptr @altera_pcie_init_irq_domain._entry, section ".printk_index", align 4
@dummy_irq_chip = external dso_local global %struct.irq_chip, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@altera_wait_link_retrain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"link retrain timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"altera_wait_link_retrain\00", [39 x i8] zeroinitializer }, align 32
@altera_wait_link_retrain._entry_ptr = internal global ptr @altera_wait_link_retrain._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@altera_wait_link_retrain._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 591, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"link up timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@altera_wait_link_retrain._entry_ptr.19 = internal global ptr @altera_wait_link_retrain._entry.17, section ".printk_index", align 4
@altera_pcie_1_0_data = internal constant { %struct.altera_pcie_data, [36 x i8] } { %struct.altera_pcie_data { ptr @altera_pcie_ops_1_0, i32 0, i32 128, i32 4, i32 5, i32 68, i32 69 }, [36 x i8] zeroinitializer }, align 32
@altera_pcie_2_0_data = internal constant { %struct.altera_pcie_data, [36 x i8] } { %struct.altera_pcie_data { ptr @altera_pcie_ops_2_0, i32 1, i32 112, i32 5, i32 4, i32 69, i32 68 }, [36 x i8] zeroinitializer }, align 32
@altera_pcie_ops_1_0 = internal constant { %struct.altera_pcie_ops, [44 x i8] } { %struct.altera_pcie_ops { ptr @tlp_read_packet, ptr @tlp_write_packet, ptr @altera_pcie_link_up, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@altera_pcie_ops_2_0 = internal constant { %struct.altera_pcie_ops, [44 x i8] } { %struct.altera_pcie_ops { ptr @s10_tlp_read_packet, ptr @s10_tlp_write_packet, ptr @s10_altera_pcie_link_up, ptr @s10_rp_read_cfg, ptr @s10_rp_write_cfg }, [44 x i8] zeroinitializer }, align 32
@s10_tlp_read_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 280, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Malformed TLP packet\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s10_tlp_read_packet\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@s10_tlp_read_packet._entry_ptr = internal global ptr @s10_tlp_read_packet._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"altera_pcie_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 821, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 825, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"altera_pcie_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 754, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 786, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 792, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"altera_pcie_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 535, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 695, i32 63 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 701, i32 48 }
@___asan_gen_.69 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 661, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"intx_domain_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 635, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 677, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 578, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 591, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"altera_pcie_1_0_data\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 734, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"altera_pcie_2_0_data\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 744, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"altera_pcie_ops_1_0\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 720, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"altera_pcie_ops_2_0\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 726, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [40 x i8] c"../drivers/pci/controller/pcie-altera.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 280, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_altera_pcie_driver_exit, ptr @__initcall__kmod_pcie_altera__236_831_altera_pcie_driver_init6, ptr @altera_pcie_driver_exit, ptr @altera_pcie_init_irq_domain._entry, ptr @altera_pcie_init_irq_domain._entry_ptr, ptr @altera_pcie_isr._entry, ptr @altera_pcie_isr._entry_ptr, ptr @altera_pcie_probe._entry, ptr @altera_pcie_probe._entry.6, ptr @altera_pcie_probe._entry_ptr, ptr @altera_pcie_probe._entry_ptr.8, ptr @altera_wait_link_retrain._entry, ptr @altera_wait_link_retrain._entry.17, ptr @altera_wait_link_retrain._entry_ptr, ptr @altera_wait_link_retrain._entry_ptr.19, ptr @s10_tlp_read_packet._entry, ptr @s10_tlp_read_packet._entry_ptr, ptr @altera_pcie_driver, ptr @.str, ptr @altera_pcie_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @altera_pcie_ops, ptr @.str.9, ptr @.str.10, ptr @altera_pcie_isr._rs, ptr @.str.11, ptr @.str.12, ptr @intx_domain_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @altera_pcie_1_0_data, ptr @altera_pcie_2_0_data, ptr @altera_pcie_ops_1_0, ptr @altera_pcie_ops_2_0, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intx_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_init_irq_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_wait_link_retrain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_wait_link_retrain._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_1_0_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_2_0_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_ops_1_0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_pcie_ops_2_0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s10_tlp_read_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_pcie_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @altera_pcie_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @altera_pcie_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @altera_pcie_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_pcie_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %data.i.i.i.i = alloca i32, align 4
  %data.i37.i.i = alloca i32, align 4
  %data.i31.i.i = alloca i32, align 4
  %data.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_pci_alloc_host_bridge(ptr noundef %dev1, i32 noundef 60) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %private.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %pcie_data = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %2 = ptrtoint ptr %pcie_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %pcie_data, align 4
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private.i, align 4
  %call.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %4, ptr noundef nonnull @.str.9) #7
  %cra_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %cra_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end8.altera_pcie_parse_dt.exit_crit_edge, label %if.end.i

if.end8.altera_pcie_parse_dt.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_parse_dt.exit

if.end.i:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcie_data, align 4
  %version.i = getelementptr inbounds %struct.altera_pcie_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.then6.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then6.i:                                       ; preds = %if.end.i
  %call7.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %4, ptr noundef nonnull @.str.10) #7
  %hip_base.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %hip_base.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %hip_base.i, align 4
  %cmp.i36.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36.i, label %if.then6.i.altera_pcie_parse_dt.exit_crit_edge, label %if.then6.i.if.end14.i_crit_edge

if.then6.i.if.end14.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

if.then6.i.altera_pcie_parse_dt.exit_crit_edge:   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_parse_dt.exit

if.end14.i:                                       ; preds = %if.then6.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %call15.i = tail call i32 @platform_get_irq(ptr noundef %4, i32 noundef 0) #7
  %irq.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 2
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call15.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp17.i = icmp slt i32 %call15.i, 0
  br i1 %cmp17.i, label %if.end14.i.do.end_crit_edge, label %altera_pcie_parse_dt.exit.thread

if.end14.i.do.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

altera_pcie_parse_dt.exit.thread:                 ; preds = %if.end14.i
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call15.i, ptr noundef nonnull @altera_pcie_isr, ptr noundef %private.i) #7
  %12 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %15, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i.i, i32 noundef 4, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @intx_domain_ops, ptr noundef %private.i) #7
  %irq_domain.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 4
  %16 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i.i, ptr %irq_domain.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %do.end18, label %if.end19

altera_pcie_parse_dt.exit:                        ; preds = %if.then6.i.altera_pcie_parse_dt.exit_crit_edge, %if.end8.altera_pcie_parse_dt.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i, %if.end8.altera_pcie_parse_dt.exit_crit_edge ], [ %call7.i, %if.then6.i.altera_pcie_parse_dt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %do.end

do.end:                                           ; preds = %altera_pcie_parse_dt.exit, %if.end14.i.do.end_crit_edge
  %retval.0.i59 = phi i32 [ %retval.0.i, %altera_pcie_parse_dt.exit ], [ %call15.i, %if.end14.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

do.end18:                                         ; preds = %altera_pcie_parse_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.13) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end19:                                         ; preds = %altera_pcie_parse_dt.exit.thread
  %17 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 12384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #7, !srcloc !76
  %19 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %20, i32 12400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 251658240) #7, !srcloc !76
  %21 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcie_data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %get_link_status.i.i = getelementptr inbounds %struct.altera_pcie_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %get_link_status.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_link_status.i.i, align 4
  %call.i.i = tail call zeroext i1 %26(ptr noundef %private.i) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.altera_pcie_host_init.exit_crit_edge

if.end19.altera_pcie_host_init.exit_crit_edge:    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_host_init.exit

if.end.i.i:                                       ; preds = %if.end19
  %root_bus_nr.i.i = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %27 = ptrtoint ptr %root_bus_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %root_bus_nr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i.i) #7
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %data.i.i.i, align 4, !annotation !77
  %30 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcie_data, align 4
  %cap_offset.i.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %cap_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cap_offset.i.i.i, align 4
  %add.i.i.i = add i32 %33, 12
  %call.i.i.i = call fastcc i32 @_altera_pcie_cfg_read(ptr noundef %private.i, i8 noundef zeroext %28, i32 noundef 0, i32 noundef %add.i.i.i, i32 noundef 2, ptr noundef nonnull %data.i.i.i) #7
  %34 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i.i) #7
  %36 = and i32 %35, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i52 = icmp eq i32 %36, 0
  br i1 %cmp.i.i52, label %if.end.i.i.altera_pcie_host_init.exit_crit_edge, label %if.end4.i.i

if.end.i.i.altera_pcie_host_init.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_host_init.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %37 = ptrtoint ptr %root_bus_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %root_bus_nr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i31.i.i) #7
  %39 = ptrtoint ptr %data.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %data.i31.i.i, align 4, !annotation !77
  %40 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcie_data, align 4
  %cap_offset.i33.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %cap_offset.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cap_offset.i33.i.i, align 4
  %add.i34.i.i = add i32 %43, 18
  %call.i35.i.i = call fastcc i32 @_altera_pcie_cfg_read(ptr noundef %private.i, i8 noundef zeroext %38, i32 noundef 0, i32 noundef %add.i34.i.i, i32 noundef 2, ptr noundef nonnull %data.i31.i.i) #7
  %44 = ptrtoint ptr %data.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data.i31.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i31.i.i) #7
  %46 = and i32 %45, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp9.i.i = icmp eq i32 %46, 1
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end4.i.i.altera_pcie_host_init.exit_crit_edge

if.end4.i.i.altera_pcie_host_init.exit_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_host_init.exit

if.then11.i.i:                                    ; preds = %if.end4.i.i
  %47 = ptrtoint ptr %root_bus_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %root_bus_nr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i37.i.i) #7
  %49 = ptrtoint ptr %data.i37.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %data.i37.i.i, align 4, !annotation !77
  %50 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcie_data, align 4
  %cap_offset.i39.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %cap_offset.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cap_offset.i39.i.i, align 4
  %add.i40.i.i = add i32 %53, 16
  %call.i41.i.i = call fastcc i32 @_altera_pcie_cfg_read(ptr noundef %private.i, i8 noundef zeroext %48, i32 noundef 0, i32 noundef %add.i40.i.i, i32 noundef 2, ptr noundef nonnull %data.i37.i.i) #7
  %54 = ptrtoint ptr %data.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data.i37.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i37.i.i) #7
  %56 = ptrtoint ptr %root_bus_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %root_bus_nr.i.i, align 4
  %58 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcie_data, align 4
  %cap_offset.i44.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %cap_offset.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cap_offset.i44.i.i, align 4
  %add.i45.i.i = add i32 %61, 16
  %62 = and i32 %55, 65503
  %conv.i46.i.i = or i32 %62, 32
  %call.i47.i.i = call fastcc i32 @_altera_pcie_cfg_write(ptr noundef %private.i, i8 noundef zeroext %57, i32 noundef 0, i32 noundef %add.i45.i.i, i32 noundef 2, i32 noundef %conv.i46.i.i) #7
  %63 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %private.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.platform_device, ptr %64, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %66 = ptrtoint ptr %root_bus_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %root_bus_nr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i.i.i) #7
  %68 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %data.i.i.i.i, align 4, !annotation !77
  %69 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcie_data, align 4
  %cap_offset.i29.i.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %cap_offset.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cap_offset.i29.i.i.i, align 4
  %add.i30.i.i.i = add i32 %72, 18
  %call.i31.i.i.i = call fastcc i32 @_altera_pcie_cfg_read(ptr noundef %private.i, i8 noundef zeroext %67, i32 noundef 0, i32 noundef %add.i30.i.i.i, i32 noundef 2, ptr noundef nonnull %data.i.i.i.i) #7
  %73 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i.i.i) #7
  %75 = and i32 %74, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not32.i.i.i = icmp eq i32 %75, 0
  br i1 %tobool.not32.i.i.i, label %if.then11.i.i.for.end.i.i.i_crit_edge, label %if.end.lr.ph.i.i.i

if.then11.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

if.end.lr.ph.i.i.i:                               ; preds = %if.then11.i.i
  %add.i48.i.i = add i32 %65, 100
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end4.i.i.i.if.end.i.i.i_crit_edge, %if.end.lr.ph.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i48.i.i, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end4.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.15) #10
  br label %for.end.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 21474800) #7
  %78 = ptrtoint ptr %root_bus_nr.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %root_bus_nr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i.i.i) #7
  %80 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %data.i.i.i.i, align 4, !annotation !77
  %81 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcie_data, align 4
  %cap_offset.i.i.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %cap_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cap_offset.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %84, 18
  %call.i.i.i.i = call fastcc i32 @_altera_pcie_cfg_read(ptr noundef %private.i, i8 noundef zeroext %79, i32 noundef 0, i32 noundef %add.i.i.i.i, i32 noundef 2, ptr noundef nonnull %data.i.i.i.i) #7
  %85 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i.i.i) #7
  %87 = and i32 %86, 2048
  %tobool.not.i.i.i53 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i.i53, label %if.end4.i.i.i.for.end.i.i.i_crit_edge, label %if.end4.i.i.i.if.end.i.i.i_crit_edge

if.end4.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.end4.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %if.end4.i.i.i.for.end.i.i.i_crit_edge, %do.end.i.i.i, %if.then11.i.i.for.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %89 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcie_data, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %get_link_status33.i.i.i = getelementptr inbounds %struct.altera_pcie_ops, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %get_link_status33.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %get_link_status33.i.i.i, align 4
  %call634.i.i.i = call zeroext i1 %94(ptr noundef %private.i) #7
  br i1 %call634.i.i.i, label %for.end.i.i.i.altera_pcie_host_init.exit_crit_edge, label %if.end8.lr.ph.i.i.i

for.end.i.i.i.altera_pcie_host_init.exit_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_host_init.exit

if.end8.lr.ph.i.i.i:                              ; preds = %for.end.i.i.i
  %add9.i.i.i = add i32 %88, 100
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end17.i.i.i.if.end8.i.i.i_crit_edge, %if.end8.lr.ph.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %sub10.i.i.i = sub i32 %add9.i.i.i, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i.i.i)
  %cmp11.i.i.i = icmp slt i32 %sub10.i.i.i, 0
  br i1 %cmp11.i.i.i, label %do.end16.i.i.i, label %if.end17.i.i.i

do.end16.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.18) #10
  br label %altera_pcie_host_init.exit

if.end17.i.i.i:                                   ; preds = %if.end8.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 21474800) #7
  %97 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pcie_data, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %get_link_status.i.i.i = getelementptr inbounds %struct.altera_pcie_ops, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %get_link_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %get_link_status.i.i.i, align 4
  %call6.i.i.i = call zeroext i1 %102(ptr noundef %private.i) #7
  br i1 %call6.i.i.i, label %if.end17.i.i.i.altera_pcie_host_init.exit_crit_edge, label %if.end17.i.i.i.if.end8.i.i.i_crit_edge

if.end17.i.i.i.if.end8.i.i.i_crit_edge:           ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

if.end17.i.i.i.altera_pcie_host_init.exit_crit_edge: ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_host_init.exit

altera_pcie_host_init.exit:                       ; preds = %if.end17.i.i.i.altera_pcie_host_init.exit_crit_edge, %do.end16.i.i.i, %for.end.i.i.i.altera_pcie_host_init.exit_crit_edge, %if.end4.i.i.altera_pcie_host_init.exit_crit_edge, %if.end.i.i.altera_pcie_host_init.exit_crit_edge, %if.end19.altera_pcie_host_init.exit_crit_edge
  %sysdata = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 4
  %103 = ptrtoint ptr %sysdata to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %private.i, ptr %sysdata, align 4
  %root_bus_nr = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 1, i32 0, i32 0, i32 3
  %104 = ptrtoint ptr %root_bus_nr to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %root_bus_nr, align 4
  %conv = zext i8 %105 to i32
  %busnr = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 5
  %106 = ptrtoint ptr %busnr to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %conv, ptr %busnr, align 16
  %ops = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 2
  %107 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @altera_pcie_ops, ptr %ops, align 4
  %call20 = call i32 @pci_host_probe(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %altera_pcie_host_init.exit, %do.end18, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i59, %do.end ], [ -12, %do.end18 ], [ %call20, %altera_pcie_host_init.exit ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_pcie_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bus = getelementptr i8, ptr %1, i32 -96
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 32
  tail call void @pci_stop_root_bus(ptr noundef %3) #7
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 32
  tail call void @pci_remove_root_bus(ptr noundef %5) #7
  %irq.i = getelementptr inbounds %struct.altera_pcie, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %7, ptr noundef null, ptr noundef null) #7
  %irq_domain.i = getelementptr inbounds %struct.altera_pcie, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %irq_domain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_domain.i, align 4
  tail call void @irq_domain_remove(ptr noundef %9) #7
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @irq_dispose_mapping(i32 noundef %11) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pci_alloc_host_bridge(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_host_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @altera_pcie_isr(ptr noundef %desc) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %10 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler_data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %cra_base.i = getelementptr inbounds %struct.altera_pcie, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %15, i32 12384
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #7, !srcloc !78
  %17 = lshr i32 %16, 24
  %and36 = and i32 %17, 15
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and36, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp.not37 = icmp eq i32 %and36, 0
  br i1 %cmp.not37, label %chained_irq_enter.exit.while.end_crit_edge, label %while.body.lr.ph

chained_irq_enter.exit.while.end_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %chained_irq_enter.exit
  %irq_domain = getelementptr inbounds %struct.altera_pcie, ptr %11, i32 0, i32 5
  br label %while.body

while.cond.loopexit:                              ; preds = %for.inc.while.cond.loopexit_crit_edge, %while.body.while.cond.loopexit_crit_edge
  %19 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 12384
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  %22 = lshr i32 %21, 24
  %and = and i32 %22, 15
  %23 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and, ptr %status, align 4
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %while.cond.loopexit.while.end_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.loopexit.while.end_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4)
  %cmp532 = icmp ult i32 %call4, 4
  br i1 %cmp532, label %while.body.for.body_crit_edge, label %while.body.while.cond.loopexit_crit_edge

while.body.while.cond.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.loopexit

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %bit.033 = phi i32 [ %call14, %for.inc.for.body_crit_edge ], [ %call4, %while.body.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %bit.033
  %24 = call i32 @llvm.bswap.i32(i32 %shl) #7
  %25 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %26, i32 12384
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %24) #7, !srcloc !76
  %27 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_domain, align 4
  %call6 = call i32 @generic_handle_domain_irq(ptr noundef %28, i32 noundef %bit.033) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body:                                          ; preds = %for.body
  %call7 = call i32 @___ratelimit(ptr noundef nonnull @altera_pcie_isr._rs, ptr noundef nonnull @__func__.altera_pcie_isr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.for.inc_crit_edge, label %do.end

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.12, i32 noundef %bit.033) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %do.body.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add = add nuw nsw i32 %bit.033, 1
  %call14 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 4, i32 noundef %add) #7
  %cmp5 = icmp ult i32 %call14, 4
  br i1 %cmp5, label %for.inc.for.body_crit_edge, label %for.inc.while.cond.loopexit_crit_edge

for.inc.while.cond.loopexit_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

while.end:                                        ; preds = %while.cond.loopexit.while.end_crit_edge, %chained_irq_enter.exit.while.end_crit_edge
  %29 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i29 = icmp eq ptr %30, null
  br i1 %tobool.not.i29, label %if.else.i30, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i30:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i30, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %32, %if.else.i30 ], [ %30, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_pcie_intx_map(ptr nocapture noundef readonly %domain, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @dummy_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #7
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pci_irqd_intx_xlate(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef readnone %out_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intspec, align 4
  %2 = add i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %2)
  %3 = icmp ult i32 %2, -4
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %1, -1
  %4 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %out_hwirq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_altera_pcie_cfg_read(ptr noundef %pcie, i8 noundef zeroext %busno, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  %headers.i = alloca [3 x i32], align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !77
  %root_bus_nr = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 4
  %1 = ptrtoint ptr %root_bus_nr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %root_bus_nr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %busno)
  %cmp = icmp eq i8 %2, %busno
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pcie_data = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 7
  %3 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcie_data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %rp_read_cfg = getelementptr inbounds %struct.altera_pcie_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %rp_read_cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rp_read_cfg, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %8(ptr noundef %pcie, i32 noundef %where, i32 noundef %size, ptr noundef %value) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %where, 3
  %shl = shl nuw nsw i32 1, %and
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = and i32 %where, 3
  %shl9 = shl nuw nsw i32 3, %and8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %if.end.sw.epilog_crit_edge
  %byte_en.0 = phi i32 [ %shl9, %sw.bb7 ], [ %shl, %sw.bb ], [ 15, %if.end.sw.epilog_crit_edge ]
  %and11 = and i32 %where, -4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %headers.i) #7
  %pcie_data.i.i = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 7
  %10 = ptrtoint ptr %pcie_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcie_data.i.i, align 4
  %cfgrd0.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %11, i32 0, i32 3
  %cfgrd1.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %cfgrd0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond77.i.i = load i32, ptr %cfgrd0.i.i, align 4
  %13 = ptrtoint ptr %cfgrd1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond9.i.i = load i32, ptr %cfgrd1.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i, label %sw.epilog.tlp_cfg_dword_read.exit_crit_edge, label %if.else.i.i

sw.epilog.tlp_cfg_dword_read.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %tlp_cfg_dword_read.exit

if.else.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %hip_base.i.i = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 2
  %16 = ptrtoint ptr %hip_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hip_base.i.i, align 4
  %add.ptr29.i.i = getelementptr i8, ptr %17, i32 1048601
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29.i.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %busno)
  %cmp32.i.i = icmp ult i8 %18, %busno
  br label %tlp_cfg_dword_read.exit

tlp_cfg_dword_read.exit:                          ; preds = %if.else.i.i, %sw.epilog.tlp_cfg_dword_read.exit_crit_edge
  %cmp32.sink.i.i = phi i1 [ %cmp32.i.i, %if.else.i.i ], [ %cmp, %sw.epilog.tlp_cfg_dword_read.exit_crit_edge ]
  %19 = getelementptr inbounds [3 x i32], ptr %headers.i, i32 0, i32 2
  %20 = getelementptr inbounds [3 x i32], ptr %headers.i, i32 0, i32 1
  %cond.cond974.i.i = select i1 %cmp32.sink.i.i, i32 %cond77.i.i, i32 %cond9.i.i
  %shl.i.i = shl i32 %cond.cond974.i.i, 24
  %or.i.i = or i32 %shl.i.i, 1
  %21 = ptrtoint ptr %headers.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i, ptr %headers.i, align 4
  %22 = ptrtoint ptr %root_bus_nr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %root_bus_nr, align 4
  %conv43.i.i = zext i8 %23 to i32
  %shl44.i.i = shl nuw i32 %conv43.i.i, 24
  %or49.i.i = or i32 %shl44.i.i, %byte_en.0
  %or51.i.i = or i32 %or49.i.i, 7424
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or51.i.i, ptr %20, align 4
  %conv53.i.i = zext i8 %busno to i32
  %shl54.i.i = shl nuw i32 %conv53.i.i, 24
  %shl55.i.i = shl i32 %devfn, 16
  %or56.i.i = or i32 %shl54.i.i, %shl55.i.i
  %or57.i.i = or i32 %or56.i.i, %and11
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or57.i.i, ptr %19, align 4
  %26 = ptrtoint ptr %pcie_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcie_data.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tlp_write_pkt.i = getelementptr inbounds %struct.altera_pcie_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %tlp_write_pkt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tlp_write_pkt.i, align 4
  call void %31(ptr noundef %pcie, ptr noundef nonnull %headers.i, i32 noundef 0, i1 noundef zeroext false) #7
  %32 = ptrtoint ptr %pcie_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcie_data.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call.i = call i32 %37(ptr noundef %pcie, ptr noundef nonnull %data) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %headers.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp13.not = icmp eq i32 %call.i, 0
  br i1 %cmp13.not, label %if.end16, label %tlp_cfg_dword_read.exit.cleanup_crit_edge

tlp_cfg_dword_read.exit.cleanup_crit_edge:        ; preds = %tlp_cfg_dword_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %tlp_cfg_dword_read.exit
  %38 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %size, label %sw.default25 [
    i32 1, label %sw.bb17
    i32 2, label %sw.bb20
  ]

sw.bb17:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data, align 4
  %and18 = shl i32 %where, 3
  %mul = and i32 %and18, 24
  %shr = lshr i32 %40, %mul
  %and19 = and i32 %shr, 255
  %41 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and19, ptr %value, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data, align 4
  %and21 = shl i32 %where, 3
  %mul22 = and i32 %and21, 16
  %shr23 = lshr i32 %43, %mul22
  %and24 = and i32 %shr23, 65535
  %44 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and24, ptr %value, align 4
  br label %cleanup

sw.default25:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data, align 4
  %47 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default25, %sw.bb20, %sw.bb17, %tlp_cfg_dword_read.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call.i, %tlp_cfg_dword_read.exit.cleanup_crit_edge ], [ 0, %sw.default25 ], [ 0, %sw.bb20 ], [ 0, %sw.bb17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_altera_pcie_cfg_write(ptr noundef %pcie, i8 noundef zeroext %busno, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  %headers.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %where, 3
  %mul = shl nuw nsw i32 %and, 3
  %root_bus_nr = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 4
  %0 = ptrtoint ptr %root_bus_nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %root_bus_nr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %busno)
  %cmp = icmp eq i8 %1, %busno
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pcie_data = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 7
  %2 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %rp_write_cfg = getelementptr inbounds %struct.altera_pcie_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rp_write_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rp_write_cfg, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %7(ptr noundef %pcie, i8 noundef zeroext %busno, i32 noundef %where, i32 noundef %size, i32 noundef %value) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %size, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and6 = and i32 %value, 255
  %shl = shl nuw i32 %and6, %mul
  %shl8 = shl nuw nsw i32 1, %and
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and11 = and i32 %value, 65535
  %shl12 = shl i32 %and11, %mul
  %shl14 = shl nuw nsw i32 3, %and
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb, %if.end.sw.epilog_crit_edge
  %data32.0 = phi i32 [ %shl12, %sw.bb10 ], [ %shl, %sw.bb ], [ %value, %if.end.sw.epilog_crit_edge ]
  %byte_en.0 = phi i32 [ %shl14, %sw.bb10 ], [ %shl8, %sw.bb ], [ 15, %if.end.sw.epilog_crit_edge ]
  %and16 = and i32 %where, -4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %headers.i) #7
  %9 = getelementptr inbounds [3 x i32], ptr %headers.i, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i32], ptr %headers.i, i32 0, i32 2
  %pcie_data.i.i = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 7
  %11 = ptrtoint ptr %pcie_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcie_data.i.i, align 4
  %cfgwr0.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %12, i32 0, i32 5
  %cfgwr1.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %cfgwr0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond77.i.i = load i32, ptr %cfgwr0.i.i, align 4
  %14 = ptrtoint ptr %cfgwr1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond9.i.i = load i32, ptr %cfgwr1.i.i, align 4
  %version.i.i = getelementptr inbounds %struct.altera_pcie_data, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i, label %sw.epilog.get_tlp_header.exit.i_crit_edge, label %if.else.i.i

sw.epilog.get_tlp_header.exit.i_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_tlp_header.exit.i

if.else.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %hip_base.i.i = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 2
  %17 = ptrtoint ptr %hip_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hip_base.i.i, align 4
  %add.ptr29.i.i = getelementptr i8, ptr %18, i32 1048601
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29.i.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %busno)
  %cmp32.i.i = icmp ult i8 %19, %busno
  br label %get_tlp_header.exit.i

get_tlp_header.exit.i:                            ; preds = %if.else.i.i, %sw.epilog.get_tlp_header.exit.i_crit_edge
  %cmp32.sink.i.i = phi i1 [ %cmp32.i.i, %if.else.i.i ], [ %cmp, %sw.epilog.get_tlp_header.exit.i_crit_edge ]
  %cond.cond974.i.i = select i1 %cmp32.sink.i.i, i32 %cond77.i.i, i32 %cond9.i.i
  %shl.i.i = shl i32 %cond.cond974.i.i, 24
  %or.i.i = or i32 %shl.i.i, 1
  %20 = ptrtoint ptr %headers.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i, ptr %headers.i, align 4
  %21 = ptrtoint ptr %root_bus_nr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %root_bus_nr, align 4
  %conv43.i.i = zext i8 %22 to i32
  %shl44.i.i = shl nuw i32 %conv43.i.i, 24
  %or49.i.i = or i32 %shl44.i.i, %byte_en.0
  %or51.i.i = or i32 %or49.i.i, 4096
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or51.i.i, ptr %9, align 4
  %conv53.i.i = zext i8 %busno to i32
  %shl54.i.i = shl nuw i32 %conv53.i.i, 24
  %shl55.i.i = shl i32 %devfn, 16
  %or56.i.i = or i32 %shl54.i.i, %shl55.i.i
  %or57.i.i = or i32 %or56.i.i, %and16
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or57.i.i, ptr %10, align 4
  %and.i = and i32 %where, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %25 = ptrtoint ptr %pcie_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcie_data.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tlp_write_pkt.i = getelementptr inbounds %struct.altera_pcie_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %tlp_write_pkt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tlp_write_pkt.i, align 4
  call void %30(ptr noundef %pcie, ptr noundef nonnull %headers.i, i32 noundef %data32.0, i1 noundef zeroext %cmp.i) #7
  %31 = ptrtoint ptr %pcie_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcie_data.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call.i = call i32 %36(ptr noundef %pcie, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp8.not.i, label %if.end10.i, label %get_tlp_header.exit.i.tlp_cfg_dword_write.exit_crit_edge

get_tlp_header.exit.i.tlp_cfg_dword_write.exit_crit_edge: ; preds = %get_tlp_header.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tlp_cfg_dword_write.exit

if.end10.i:                                       ; preds = %get_tlp_header.exit.i
  %37 = ptrtoint ptr %root_bus_nr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %root_bus_nr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %busno)
  %cmp12.i = icmp eq i8 %38, %busno
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and16)
  %cmp14.i = icmp eq i32 %and16, 24
  %or.cond.i = and i1 %cmp14.i, %cmp12.i
  br i1 %or.cond.i, label %if.then16.i, label %if.end10.i.tlp_cfg_dword_write.exit_crit_edge

if.end10.i.tlp_cfg_dword_write.exit_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tlp_cfg_dword_write.exit

if.then16.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv17.i = trunc i32 %data32.0 to i8
  %39 = ptrtoint ptr %root_bus_nr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv17.i, ptr %root_bus_nr, align 4
  br label %tlp_cfg_dword_write.exit

tlp_cfg_dword_write.exit:                         ; preds = %if.then16.i, %if.end10.i.tlp_cfg_dword_write.exit_crit_edge, %get_tlp_header.exit.i.tlp_cfg_dword_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %headers.i) #7
  br label %cleanup

cleanup:                                          ; preds = %tlp_cfg_dword_write.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call.i, %tlp_cfg_dword_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_pcie_cfg_read(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp.i = icmp eq i32 %devfn, 0
  %or.cond.i = and i1 %cmp.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %where)
  %cmp2.i = icmp eq i32 %where, 16
  %or.cond3.i = and i1 %cmp2.i, %or.cond.i
  br i1 %or.cond3.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number.i, align 4
  %root_bus_nr.i = getelementptr inbounds %struct.altera_pcie, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %root_bus_nr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %root_bus_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not.i = icmp eq i8 %5, %7
  br i1 %cmp.not.i, label %if.end.altera_pcie_valid_device.exit_crit_edge, label %if.then.i

if.end.altera_pcie_valid_device.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_valid_device.exit

if.then.i:                                        ; preds = %if.end
  %pcie_data.i = getelementptr inbounds %struct.altera_pcie, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %pcie_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %get_link_status.i = getelementptr inbounds %struct.altera_pcie_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %get_link_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_link_status.i, align 4
  %call.i = tail call zeroext i1 %13(ptr noundef %1) #7
  br i1 %call.i, label %if.then.i.altera_pcie_valid_device.exit_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.altera_pcie_valid_device.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_valid_device.exit

altera_pcie_valid_device.exit:                    ; preds = %if.then.i.altera_pcie_valid_device.exit_crit_edge, %if.end.altera_pcie_valid_device.exit_crit_edge
  %14 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %number.i, align 4
  %16 = ptrtoint ptr %root_bus_nr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %root_bus_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp9.i = icmp ne i8 %15, %17
  %18 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11.i = icmp eq i32 %18, 0
  %not.or.cond.i = or i1 %cmp11.i, %cmp9.i
  br i1 %not.or.cond.i, label %if.end3, label %altera_pcie_valid_device.exit.cleanup_crit_edge

altera_pcie_valid_device.exit.cleanup_crit_edge:  ; preds = %altera_pcie_valid_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %altera_pcie_valid_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %number.i, align 4
  %call4 = tail call fastcc i32 @_altera_pcie_cfg_read(ptr noundef %1, i8 noundef zeroext %20, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, ptr noundef %value)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %altera_pcie_valid_device.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 135, %entry.cleanup_crit_edge ], [ 134, %altera_pcie_valid_device.exit.cleanup_crit_edge ], [ 134, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @altera_pcie_cfg_write(ptr nocapture noundef readonly %bus, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %sysdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysdata, align 4
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devfn)
  %cmp.i = icmp eq i32 %devfn, 0
  %or.cond.i = and i1 %cmp.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %where)
  %cmp2.i = icmp eq i32 %where, 16
  %or.cond3.i = and i1 %cmp2.i, %or.cond.i
  br i1 %or.cond3.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %bus, i32 0, i32 12
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number.i, align 4
  %root_bus_nr.i = getelementptr inbounds %struct.altera_pcie, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %root_bus_nr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %root_bus_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not.i = icmp eq i8 %5, %7
  br i1 %cmp.not.i, label %if.end.altera_pcie_valid_device.exit_crit_edge, label %if.then.i

if.end.altera_pcie_valid_device.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_valid_device.exit

if.then.i:                                        ; preds = %if.end
  %pcie_data.i = getelementptr inbounds %struct.altera_pcie, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %pcie_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcie_data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %get_link_status.i = getelementptr inbounds %struct.altera_pcie_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %get_link_status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_link_status.i, align 4
  %call.i = tail call zeroext i1 %13(ptr noundef %1) #7
  br i1 %call.i, label %if.then.i.altera_pcie_valid_device.exit_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.altera_pcie_valid_device.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %altera_pcie_valid_device.exit

altera_pcie_valid_device.exit:                    ; preds = %if.then.i.altera_pcie_valid_device.exit_crit_edge, %if.end.altera_pcie_valid_device.exit_crit_edge
  %14 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %number.i, align 4
  %16 = ptrtoint ptr %root_bus_nr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %root_bus_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp9.i = icmp ne i8 %15, %17
  %18 = and i32 %devfn, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11.i = icmp eq i32 %18, 0
  %not.or.cond.i = or i1 %cmp11.i, %cmp9.i
  br i1 %not.or.cond.i, label %if.end3, label %altera_pcie_valid_device.exit.cleanup_crit_edge

altera_pcie_valid_device.exit.cleanup_crit_edge:  ; preds = %altera_pcie_valid_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %altera_pcie_valid_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %number.i, align 4
  %call4 = tail call fastcc i32 @_altera_pcie_cfg_write(ptr noundef %1, i8 noundef zeroext %20, i32 noundef %devfn, i32 noundef %where, i32 noundef %size, i32 noundef %value)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %altera_pcie_valid_device.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ 135, %entry.cleanup_crit_edge ], [ 134, %altera_pcie_valid_device.exit.cleanup_crit_edge ], [ 134, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_stop_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_root_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tlp_read_packet(ptr nocapture noundef readonly %pcie, ptr noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cra_base.i = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %entry
  %comp_status.044 = phi i32 [ 1, %entry ], [ %comp_status.2, %if.end21.for.body_crit_edge ]
  %sop.0.off043 = phi i1 [ false, %entry ], [ %sop.2.off0, %if.end21.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %if.end21.for.body_crit_edge ]
  %0 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %4 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp ne i32 %4, 0
  %brmerge = select i1 %5, i1 true, i1 %sop.0.off043
  br i1 %brmerge, label %if.then, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %for.body
  %and1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %7, i32 8212
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !78
  %9 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %10, i32 8216
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #7, !srcloc !78
  %12 = lshr i32 %11, 21
  %and10 = and i32 %12, 7
  %not.tobool.not = xor i1 %tobool.not, true
  %sop.1.off0 = select i1 %not.tobool.not, i1 true, i1 %sop.0.off043
  %comp_status.1 = select i1 %tobool.not, i32 %comp_status.044, i32 %and10
  br i1 %tobool2.not, label %if.then.if.end21_crit_edge, label %if.then13

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then13:                                        ; preds = %if.then
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %comp_status.1)
  %tobool14.not = icmp eq i32 %comp_status.1, 0
  br i1 %tobool14.not, label %if.end16, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.then13
  %tobool17.not = icmp eq ptr %value, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %value, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.then.if.end21_crit_edge, %for.body.if.end21_crit_edge
  %sop.2.off0 = phi i1 [ %sop.1.off0, %if.then.if.end21_crit_edge ], [ false, %for.body.if.end21_crit_edge ]
  %comp_status.2 = phi i32 [ %comp_status.1, %if.then.if.end21_crit_edge ], [ %comp_status.044, %for.body.if.end21_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 1073740) #7
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %if.end21.cleanup_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end21.cleanup_crit_edge, %if.then18, %if.end16.cleanup_crit_edge, %if.then13.cleanup_crit_edge
  %retval.0 = phi i32 [ 134, %if.then13.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end16.cleanup_crit_edge ], [ 134, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tlp_write_packet(ptr nocapture noundef readonly %pcie, ptr nocapture noundef readonly %headers, i32 noundef %data, i1 noundef zeroext %align) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %headers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %headers, align 4
  %arrayidx1 = getelementptr i32, ptr %headers, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %cra_base.i.i = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 1
  %5 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #7, !srcloc !76
  %7 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  %8 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %7) #7, !srcloc !76
  %10 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %11, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 16777216) #7, !srcloc !76
  %arrayidx2 = getelementptr i32, ptr %headers, i32 2
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  br i1 %align, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %15 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %16, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %14) #7, !srcloc !76
  %17 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i6.i23 = getelementptr i8, ptr %18, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i23, i32 0) #7, !srcloc !76
  %19 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i8.i24 = getelementptr i8, ptr %20, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i24, i32 0) #7, !srcloc !76
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge18 = phi i32 [ %data, %if.then ], [ %13, %entry.if.end_crit_edge ]
  %storemerge = phi i32 [ 0, %if.then ], [ %data, %entry.if.end_crit_edge ]
  %21 = tail call i32 @llvm.bswap.i32(i32 %storemerge18) #7
  %22 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %23, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27, i32 %21) #7, !srcloc !76
  %24 = tail call i32 @llvm.bswap.i32(i32 %storemerge) #7
  %25 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i6.i29 = getelementptr i8, ptr %26, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i29, i32 %24) #7, !srcloc !76
  %27 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i8.i30 = getelementptr i8, ptr %28, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i30, i32 33554432) #7, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @altera_pcie_link_up(ptr nocapture noundef readonly %pcie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cra_base.i = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 1
  %0 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 15460
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  %3 = and i32 %2, 520093696
  call void @__sanitizer_cov_trace_const_cmp4(i32 251658240, i32 %3)
  %cmp = icmp eq i32 %3, 251658240
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s10_tlp_read_packet(ptr nocapture noundef readonly %pcie, ptr noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcie, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %cra_base.i = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %count.054 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8204
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 1073740) #7
  %inc = add nuw nsw i32 %count.054, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.body
  %7 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %8, i32 8200
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #7, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %count.054)
  %cmp3 = icmp eq i32 %count.054, 500
  br i1 %cmp3, label %for.end.cleanup_crit_edge, label %while.cond.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %for.end
  %10 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %11, i32 8204
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #7, !srcloc !78
  %13 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %14, i32 8200
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #7, !srcloc !78
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %17 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %while.cond.1, label %while.cond.preheader.if.then13_crit_edge

while.cond.preheader.if.then13_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

while.cond.1:                                     ; preds = %while.cond.preheader
  %18 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i49.1 = getelementptr i8, ptr %19, i32 8204
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.1) #7, !srcloc !78
  %21 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i51.1 = getelementptr i8, ptr %22, i32 8200
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.1) #7, !srcloc !78
  %24 = and i32 %20, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not.1 = icmp eq i32 %24, 0
  br i1 %tobool12.not.1, label %while.cond.2, label %while.cond.1.if.then13_crit_edge

while.cond.1.if.then13_crit_edge:                 ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

while.cond.2:                                     ; preds = %while.cond.1
  %25 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i49.2 = getelementptr i8, ptr %26, i32 8204
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.2) #7, !srcloc !78
  %28 = ptrtoint ptr %cra_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cra_base.i, align 4
  %add.ptr.i51.2 = getelementptr i8, ptr %29, i32 8200
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.2) #7, !srcloc !78
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %32 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool12.not.2 = icmp eq i32 %32, 0
  br i1 %tobool12.not.2, label %do.end, label %while.cond.2.if.then13_crit_edge

while.cond.2.if.then13_crit_edge:                 ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then13:                                        ; preds = %while.cond.2.if.then13_crit_edge, %while.cond.1.if.then13_crit_edge, %while.cond.preheader.if.then13_crit_edge
  %dw.sroa.9.0 = phi i32 [ %31, %while.cond.2.if.then13_crit_edge ], [ -1, %while.cond.1.if.then13_crit_edge ], [ -1, %while.cond.preheader.if.then13_crit_edge ]
  %cmp25 = phi i1 [ true, %while.cond.2.if.then13_crit_edge ], [ false, %while.cond.1.if.then13_crit_edge ], [ false, %while.cond.preheader.if.then13_crit_edge ]
  %33 = and i32 %16, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool16.not = icmp eq i32 %33, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  %tobool19.not = icmp ne ptr %value, null
  %and22 = and i32 %16, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and22)
  %cmp23 = icmp eq i32 %and22, 4
  %or.cond = select i1 %tobool19.not, i1 %cmp23, i1 false
  %or.cond45 = and i1 %or.cond, %cmp25
  br i1 %or.cond45, label %if.then26, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %dw.sroa.9.0, ptr %value, align 4
  br label %cleanup

do.end:                                           ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then26, %if.end18.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 134, %do.end ], [ 134, %for.end.cleanup_crit_edge ], [ 134, %if.then13.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end18.cleanup_crit_edge ], [ 134, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s10_tlp_write_packet(ptr nocapture noundef readonly %pcie, ptr nocapture noundef readonly %headers, i32 noundef %data, i1 noundef zeroext %dummy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %headers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %headers, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %cra_base.i.i = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 1
  %3 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #7, !srcloc !76
  %5 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %6, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 16777216) #7, !srcloc !76
  %arrayidx1 = getelementptr i32, ptr %headers, i32 1
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %11, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i9, i32 %9) #7, !srcloc !76
  %12 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i3.i10 = getelementptr i8, ptr %13, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i10, i32 0) #7, !srcloc !76
  %arrayidx2 = getelementptr i32, ptr %headers, i32 2
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %17 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %18, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12, i32 %16) #7, !srcloc !76
  %19 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i3.i13 = getelementptr i8, ptr %20, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i13, i32 0) #7, !srcloc !76
  %21 = tail call i32 @llvm.bswap.i32(i32 %data) #7
  %22 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %23, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 %21) #7, !srcloc !76
  %24 = ptrtoint ptr %cra_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cra_base.i.i, align 4
  %add.ptr.i3.i16 = getelementptr i8, ptr %25, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i16, i32 33554432) #7, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @s10_altera_pcie_link_up(ptr nocapture noundef readonly %pcie) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hip_base = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 2
  %0 = ptrtoint ptr %hip_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hip_base, align 4
  %pcie_data = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 7
  %2 = ptrtoint ptr %pcie_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie_data, align 4
  %cap_offset = getelementptr inbounds %struct.altera_pcie_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cap_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cap_offset, align 4
  %add = add i32 %5, 18
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 1048576
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #7, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %7 = and i16 %6, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool = icmp ne i16 %7, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s10_rp_read_cfg(ptr nocapture noundef readonly %pcie, i32 noundef %where, i32 noundef %size, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hip_base = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 2
  %0 = ptrtoint ptr %hip_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hip_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %where
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 1048576
  %2 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %size, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %conv = zext i8 %3 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr1) #7, !srcloc !81
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %conv9 = zext i16 %5 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !78
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %.sink = phi i32 [ %7, %sw.default ], [ %conv9, %sw.bb3 ], [ %conv, %sw.bb ]
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %value, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s10_rp_write_cfg(ptr nocapture noundef %pcie, i8 noundef zeroext %busno, i32 noundef %where, i32 noundef %size, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hip_base = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 2
  %0 = ptrtoint ptr %hip_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hip_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %where
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 1048576
  %2 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %size, label %do.body7 [
    i32 1, label %do.body
    i32 2, label %do.body3
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %conv = trunc i32 %value to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %conv) #7, !srcloc !87
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %conv6 = trunc i32 %value to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1, i16 %3) #7, !srcloc !89
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %value)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %4) #7, !srcloc !76
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body7, %do.body3, %do.body
  %root_bus_nr = getelementptr inbounds %struct.altera_pcie, ptr %pcie, i32 0, i32 4
  %5 = ptrtoint ptr %root_bus_nr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %root_bus_nr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %busno)
  %cmp = icmp eq i8 %6, %busno
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %where)
  %cmp13 = icmp eq i32 %where, 24
  %or.cond = and i1 %cmp13, %cmp
  br i1 %or.cond, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = trunc i32 %value to i8
  %7 = ptrtoint ptr %root_bus_nr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv15, ptr %root_bus_nr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_pcie_altera__236_831_altera_pcie_driver_init6, !1, !"__initcall__kmod_pcie_altera__236_831_altera_pcie_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-altera.c", i32 831, i32 1}
!2 = !{ptr @__exitcall_altera_pcie_driver_exit, !1, !"__exitcall_altera_pcie_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/pci/controller/pcie-altera.c", i32 832, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pci/controller/pcie-altera.c", i32 825, i32 11}
!8 = !{ptr @altera_pcie_driver, !9, !"altera_pcie_driver", i1 false, i1 false}
!9 = !{!"../drivers/pci/controller/pcie-altera.c", i32 821, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pci/controller/pcie-altera.c", i32 786, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @altera_pcie_probe._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @altera_pcie_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/controller/pcie-altera.c", i32 792, i32 3}
!20 = !{ptr @altera_pcie_probe._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @altera_pcie_probe._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pci/controller/pcie-altera.c", i32 695, i32 63}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pcie-altera.c", i32 701, i32 48}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pci/controller/pcie-altera.c", i32 661, i32 5}
!28 = !{ptr @altera_pcie_isr._rs, !27, !"_rs", i1 false, i1 false}
!29 = !{ptr @__func__.altera_pcie_isr, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @altera_pcie_isr._entry, !27, !"_entry", i1 false, i1 false}
!32 = !{ptr @altera_pcie_isr._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pci/controller/pcie-altera.c", i32 677, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @altera_pcie_init_irq_domain._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @altera_pcie_init_irq_domain._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @intx_domain_ops, !39, !"intx_domain_ops", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pcie-altera.c", i32 635, i32 36}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pci/controller/pcie-altera.c", i32 578, i32 4}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @altera_wait_link_retrain._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @altera_wait_link_retrain._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pci/controller/pcie-altera.c", i32 591, i32 4}
!47 = !{ptr @altera_wait_link_retrain._entry.17, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @altera_wait_link_retrain._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @altera_pcie_ops, !50, !"altera_pcie_ops", i1 false, i1 false}
!50 = !{!"../drivers/pci/controller/pcie-altera.c", i32 535, i32 23}
!51 = !{ptr @altera_pcie_of_match, !52, !"altera_pcie_of_match", i1 false, i1 false}
!52 = !{!"../drivers/pci/controller/pcie-altera.c", i32 754, i32 34}
!53 = !{ptr @altera_pcie_1_0_data, !54, !"altera_pcie_1_0_data", i1 false, i1 false}
!54 = !{!"../drivers/pci/controller/pcie-altera.c", i32 734, i32 38}
!55 = !{ptr @altera_pcie_ops_1_0, !56, !"altera_pcie_ops_1_0", i1 false, i1 false}
!56 = !{!"../drivers/pci/controller/pcie-altera.c", i32 720, i32 37}
!57 = !{ptr @altera_pcie_2_0_data, !58, !"altera_pcie_2_0_data", i1 false, i1 false}
!58 = !{!"../drivers/pci/controller/pcie-altera.c", i32 744, i32 38}
!59 = !{ptr @altera_pcie_ops_2_0, !60, !"altera_pcie_ops_2_0", i1 false, i1 false}
!60 = !{!"../drivers/pci/controller/pcie-altera.c", i32 726, i32 37}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pci/controller/pcie-altera.c", i32 280, i32 2}
!63 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @s10_tlp_read_packet._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @s10_tlp_read_packet._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 4224677}
!77 = !{!"auto-init"}
!78 = !{i64 4225095}
!79 = !{i64 4224875}
!80 = !{i64 2154653562}
!81 = !{i64 4224257}
!82 = !{i64 2154649952}
!83 = !{i64 2154654100}
!84 = !{i64 2154654534}
!85 = !{i64 2154654968}
!86 = !{i64 2154655228}
!87 = !{i64 4224480}
!88 = !{i64 2154655473}
!89 = !{i64 4224057}
!90 = !{i64 2154655844}
