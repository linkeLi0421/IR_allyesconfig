; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/dpc.c_pt.bc'
source_filename = "../drivers/pci/pcie/dpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcie_port_service_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pci_cap_saved_state = type { %struct.hlist_node, %struct.pci_cap_saved_data }
%struct.pci_cap_saved_data = type { i16, i8, i32, [0 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [32 x i8], [0 x i32] }
%struct.aer_err_info = type { [5 x ptr], i32, i32, i32, i32, %struct.aer_header_log_regs }
%struct.aer_header_log_regs = type { i32, i32, i32, i32 }
%struct.pcie_device = type { i32, ptr, i32, ptr, %struct.device }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pci/pcie/dpc.c\00", [41 x i8] zeroinitializer }, align 32
@dpc_completed_waitqueue = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @dpc_completed_waitqueue, i64 44), ptr getelementptr (i8, ptr @dpc_completed_waitqueue, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@dpc_reset_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"DPC: Data Link Layer Link Active not cleared in 1000 msec\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpc_reset_link\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dpc_reset_link._entry_ptr = internal global ptr @dpc_reset_link._entry, section ".printk_index", align 4
@dpc_reset_link._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"DPC: Data Link Layer Link Active not set in 1000 msec\0A\00", [41 x i8] zeroinitializer }, align 32
@dpc_reset_link._entry_ptr.7 = internal global ptr @dpc_reset_link._entry.5, section ".printk_index", align 4
@dpc_process_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 272, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"DPC: containment event, status:%#06x source:%#06x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpc_process_error\00", [46 x i8] zeroinitializer }, align 32
@dpc_process_error._entry_ptr = internal global ptr @dpc_process_error._entry, section ".printk_index", align 4
@dpc_process_error._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 282, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DPC: %s detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dpc_process_error._entry_ptr.13 = internal global ptr @dpc_process_error._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unmasked uncorrectable error\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ERR_NONFATAL\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ERR_FATAL\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RP PIO error\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"software trigger\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reserved error\00", [17 x i8] zeroinitializer }, align 32
@pci_dpc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 341, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DPC: RP PIO log size %u is invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_dpc_init\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pci_dpc_init._entry_ptr = internal global ptr @pci_dpc_init._entry, section ".printk_index", align 4
@dpcdriver = internal global { %struct.pcie_port_service_driver, [40 x i8] } { %struct.pcie_port_service_driver { ptr @.str.54, ptr @dpc_probe, ptr @dpc_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i32 8, %struct.device_driver zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpc_completed_waitqueue.lock\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dpc_wait_rp_inactive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 138, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DPC: root port still busy\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpc_wait_rp_inactive\00", [43 x i8] zeroinitializer }, align 32
@dpc_wait_rp_inactive._entry_ptr = internal global ptr @dpc_wait_rp_inactive._entry, section ".printk_index", align 4
@dpc_process_rp_pio_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str, i32 196, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"DPC: rp_pio_status: %#010x, rp_pio_mask: %#010x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpc_process_rp_pio_error\00", [39 x i8] zeroinitializer }, align 32
@dpc_process_rp_pio_error._entry_ptr = internal global ptr @dpc_process_rp_pio_error._entry, section ".printk_index", align 4
@dpc_process_rp_pio_error._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str, i32 202, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"DPC: RP PIO severity=%#010x, syserror=%#010x, exception=%#010x\0A\00", [32 x i8] zeroinitializer }, align 32
@dpc_process_rp_pio_error._entry_ptr.30 = internal global ptr @dpc_process_rp_pio_error._entry.28, section ".printk_index", align 4
@dpc_process_rp_pio_error._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str, i32 211, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DPC: [%2d] %s%s\0A\00", [47 x i8] zeroinitializer }, align 32
@dpc_process_rp_pio_error._entry_ptr.33 = internal global ptr @dpc_process_rp_pio_error._entry.31, section ".printk_index", align 4
@rp_pio_error_string = internal constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.51, ptr @.str.52, ptr @.str.53], [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (First)\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dpc_process_rp_pio_error._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.27, ptr @.str, i32 225, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DPC: TLP Header: %#010x %#010x %#010x %#010x\0A\00", [50 x i8] zeroinitializer }, align 32
@dpc_process_rp_pio_error._entry_ptr.38 = internal global ptr @dpc_process_rp_pio_error._entry.36, section ".printk_index", align 4
@dpc_process_rp_pio_error._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.27, ptr @.str, i32 230, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DPC: RP PIO ImpSpec Log %#010x\0A\00", [32 x i8] zeroinitializer }, align 32
@dpc_process_rp_pio_error._entry_ptr.41 = internal global ptr @dpc_process_rp_pio_error._entry.39, section ".printk_index", align 4
@dpc_process_rp_pio_error._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.27, ptr @.str, i32 235, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DPC: TLP Prefix Header: dw%d, %#010x\0A\00", [58 x i8] zeroinitializer }, align 32
@dpc_process_rp_pio_error._entry_ptr.44 = internal global ptr @dpc_process_rp_pio_error._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Configuration Request received UR Completion\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Configuration Request received CA Completion\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Configuration Request Completion Timeout\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"I/O Request received UR Completion\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"I/O Request received CA Completion\00", [61 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"I/O Request Completion Timeout\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Memory Request received UR Completion\00", [58 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Memory Request received CA Completion\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Memory Request Completion Timeout\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dpc\00", [28 x i8] zeroinitializer }, align 32
@pcie_ports_dpc_native = external dso_local local_unnamed_addr global i8, align 1
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie-dpc\00", [23 x i8] zeroinitializer }, align 32
@dpc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 362, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DPC: request IRQ%d failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dpc_probe\00", [22 x i8] zeroinitializer }, align 32
@dpc_probe._entry_ptr = internal global ptr @dpc_probe._entry, section ".printk_index", align 4
@dpc_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str, i32 371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DPC: enabled with IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dpc_probe._entry_ptr.60 = internal global ptr @dpc_probe._entry.58, section ".printk_index", align 4
@dpc_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str, i32 377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"DPC: error containment capabilities: Int Msg #%d, RPExt%c PoisonedTLP%c SwTrigger%c RP PIO Log %d, DL_ActiveErr%c\0A\00", [45 x i8] zeroinitializer }, align 32
@dpc_probe._entry_ptr.63 = internal global ptr @dpc_probe._entry.61, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 119, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [24 x i8] c"dpc_completed_waitqueue\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 162, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 174, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 271, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 276, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 340, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [10 x i8] c"dpcdriver\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 393, i32 40 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 74, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 138, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 195, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 201, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"rp_pio_error_string\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 20, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 210, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 224, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 230, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 235, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 21, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 22, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 23, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 29, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 30, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 31, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 37, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 38, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 39, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 394, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 359, i32 9 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 361, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 371, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.254 = private constant [26 x i8] c"../drivers/pci/pcie/dpc.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 373, i32 2 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @dpc_probe._entry, ptr @dpc_probe._entry.58, ptr @dpc_probe._entry.61, ptr @dpc_probe._entry_ptr, ptr @dpc_probe._entry_ptr.60, ptr @dpc_probe._entry_ptr.63, ptr @dpc_process_error._entry, ptr @dpc_process_error._entry.10, ptr @dpc_process_error._entry_ptr, ptr @dpc_process_error._entry_ptr.13, ptr @dpc_process_rp_pio_error._entry, ptr @dpc_process_rp_pio_error._entry.28, ptr @dpc_process_rp_pio_error._entry.31, ptr @dpc_process_rp_pio_error._entry.36, ptr @dpc_process_rp_pio_error._entry.39, ptr @dpc_process_rp_pio_error._entry.42, ptr @dpc_process_rp_pio_error._entry_ptr, ptr @dpc_process_rp_pio_error._entry_ptr.30, ptr @dpc_process_rp_pio_error._entry_ptr.33, ptr @dpc_process_rp_pio_error._entry_ptr.38, ptr @dpc_process_rp_pio_error._entry_ptr.41, ptr @dpc_process_rp_pio_error._entry_ptr.44, ptr @dpc_reset_link._entry, ptr @dpc_reset_link._entry.5, ptr @dpc_reset_link._entry_ptr, ptr @dpc_reset_link._entry_ptr.7, ptr @dpc_wait_rp_inactive._entry, ptr @dpc_wait_rp_inactive._entry_ptr, ptr @pci_dpc_init._entry, ptr @pci_dpc_init._entry_ptr, ptr @.str, ptr @dpc_completed_waitqueue, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @dpcdriver, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @rp_pio_error_string, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_completed_waitqueue to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_reset_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_reset_link._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_process_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_process_error._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_dpc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpcdriver to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_wait_rp_inactive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_process_rp_pio_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_process_rp_pio_error._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_process_rp_pio_error._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rp_pio_error_string to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_process_rp_pio_error._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_process_rp_pio_error._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_process_rp_pio_error._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpc_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_save_dpc_state(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 29) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.pci_cap_saved_state, ptr %call1, i32 1
  %dpc_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 63
  %2 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dpc_cap, align 4
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 6
  %call5 = tail call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef %add, ptr noundef %data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_saved_ext_cap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_restore_dpc_state(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_cap.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i.not = icmp eq i8 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @pci_find_saved_ext_cap(ptr noundef %dev, i16 noundef zeroext 29) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.pci_cap_saved_state, ptr %call1, i32 1
  %dpc_cap = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 63
  %2 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dpc_cap, align 4
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data, align 2
  %call5 = tail call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef %add, i16 noundef zeroext %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_dpc_recovered(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %status.i57 = alloca i16, align 2
  %status.i = alloca i16, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpc_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 63
  %0 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dpc_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup44

if.end:                                           ; preds = %entry
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %call = tail call ptr @pci_find_host_bridge(ptr noundef %3) #5
  %native_dpc = getelementptr inbounds %struct.pci_host_bridge, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %native_dpc to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %native_dpc, align 8
  %5 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not = icmp eq i16 %5, 0
  br i1 %tobool1.not, label %if.end.cleanup44_crit_edge, label %if.end3

if.end.cleanup44_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup44

if.end3:                                          ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 120) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #5
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %status.i, align 2, !annotation !118
  %7 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dpc_cap, align 4
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add.i, ptr noundef nonnull %status.i) #5
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp.i = icmp eq i16 %10, -1
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %dpc_completed.exit, label %dpc_completed.exit.thread

dpc_completed.exit.thread:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #5
  br label %if.then16

dpc_completed.exit:                               ; preds = %if.end3
  %priv_flags.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 81
  %12 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %priv_flags.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not.i = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #5
  br i1 %tobool5.not.i, label %dpc_completed.exit.if.end40_crit_edge, label %dpc_completed.exit.if.then16_crit_edge

dpc_completed.exit.if.then16_crit_edge:           ; preds = %dpc_completed.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

dpc_completed.exit.if.end40_crit_edge:            ; preds = %dpc_completed.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then16:                                        ; preds = %dpc_completed.exit.if.then16_crit_edge, %dpc_completed.exit.thread
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %15 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %priv_flags.i65 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 81
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then16
  %__ret17.0 = phi i32 [ 400, %if.then16 ], [ %call38, %cleanup ]
  %call19 = call i32 @prepare_to_wait_event(ptr noundef nonnull @dpc_completed_waitqueue, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i57) #5
  %16 = ptrtoint ptr %status.i57 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %status.i57, align 2, !annotation !118
  %17 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dpc_cap, align 4
  %conv.i59 = zext i16 %18 to i32
  %add.i60 = add nuw nsw i32 %conv.i59, 8
  %call.i61 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add.i60, ptr noundef nonnull %status.i57) #5
  %19 = ptrtoint ptr %status.i57 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %status.i57, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %cmp.i62 = icmp eq i16 %20, -1
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i63 = icmp eq i16 %21, 0
  %or.cond.i64 = or i1 %cmp.i62, %tobool.not.i63
  br i1 %or.cond.i64, label %dpc_completed.exit69, label %dpc_completed.exit69.thread

dpc_completed.exit69.thread:                      ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i57) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret17.0)
  %tobool31.not.old = icmp eq i32 %__ret17.0, 0
  br i1 %tobool31.not.old, label %dpc_completed.exit69.thread.for.end_crit_edge, label %dpc_completed.exit69.thread.cleanup_crit_edge

dpc_completed.exit69.thread.cleanup_crit_edge:    ; preds = %dpc_completed.exit69.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dpc_completed.exit69.thread.for.end_crit_edge:    ; preds = %dpc_completed.exit69.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

dpc_completed.exit69:                             ; preds = %for.cond
  %22 = ptrtoint ptr %priv_flags.i65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %priv_flags.i65, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not.i66 = icmp eq i32 %24, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i57) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret17.0)
  %tobool31.not = icmp eq i32 %__ret17.0, 0
  %or.cond = select i1 %tobool5.not.i66, i1 true, i1 %tobool31.not
  br i1 %or.cond, label %dpc_completed.exit69.for.end_crit_edge, label %dpc_completed.exit69.cleanup_crit_edge

dpc_completed.exit69.cleanup_crit_edge:           ; preds = %dpc_completed.exit69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dpc_completed.exit69.for.end_crit_edge:           ; preds = %dpc_completed.exit69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup:                                          ; preds = %dpc_completed.exit69.cleanup_crit_edge, %dpc_completed.exit69.thread.cleanup_crit_edge
  %call38 = call i32 @schedule_timeout(i32 noundef %__ret17.0) #5
  br label %for.cond

for.end:                                          ; preds = %dpc_completed.exit69.for.end_crit_edge, %dpc_completed.exit69.thread.for.end_crit_edge
  call void @finish_wait(ptr noundef nonnull @dpc_completed_waitqueue, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end40

if.end40:                                         ; preds = %for.end, %dpc_completed.exit.if.end40_crit_edge
  %priv_flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 81
  %call42 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %priv_flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43 = icmp ne i32 %call42, 0
  br label %cleanup44

cleanup44:                                        ; preds = %if.end40, %if.end.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.0 = phi i1 [ %tobool43, %if.end40 ], [ false, %entry.cleanup44_crit_edge ], [ false, %if.end.cleanup44_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpc_reset_link(ptr noundef %pdev) #0 align 64 {
entry:
  %status.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 81
  tail call void @_set_bit(i32 noundef 2, ptr noundef %priv_flags) #5
  %dpc_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 63
  %0 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dpc_cap, align 4
  %call = tail call zeroext i1 @pcie_wait_for_link(ptr noundef %pdev, i1 noundef zeroext false) #5
  br i1 %call, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dpc_rp_extensions = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 64
  %2 = ptrtoint ptr %dpc_rp_extensions to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dpc_rp_extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %3, 100
  %4 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dpc_cap, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status.i) #5
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %status.i, align 2, !annotation !118
  %conv.i = zext i16 %5 to i32
  %add1.i = add nuw nsw i32 %conv.i, 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add1.i, ptr noundef nonnull %status.i) #5
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %status.i, align 2
  %9 = and i16 %8, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not16.i = icmp eq i16 %9, 0
  br i1 %tobool.not16.i, label %land.lhs.true.dpc_wait_rp_inactive.exit.thread_crit_edge, label %land.lhs.true.land.rhs.i_crit_edge

land.lhs.true.land.rhs.i_crit_edge:               ; preds = %land.lhs.true
  br label %land.rhs.i

land.lhs.true.dpc_wait_rp_inactive.exit.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpc_wait_rp_inactive.exit.thread

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.lhs.true.land.rhs.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %while.body.i, label %if.then3

while.body.i:                                     ; preds = %land.rhs.i
  call void @msleep(i32 noundef 10) #5
  %call6.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add1.i, ptr noundef nonnull %status.i) #5
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %status.i, align 2
  %13 = and i16 %12, 16
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %while.body.i.dpc_wait_rp_inactive.exit.thread_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.dpc_wait_rp_inactive.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpc_wait_rp_inactive.exit.thread

dpc_wait_rp_inactive.exit.thread:                 ; preds = %while.body.i.dpc_wait_rp_inactive.exit.thread_crit_edge, %land.lhs.true.dpc_wait_rp_inactive.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #5
  br label %if.end5

if.then3:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status.i) #5
  call void @_clear_bit(i32 noundef 1, ptr noundef %priv_flags) #5
  br label %out

if.end5:                                          ; preds = %dpc_wait_rp_inactive.exit.thread, %if.end.if.end5_crit_edge
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 8
  %call6 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef %add, i16 noundef zeroext 1) #5
  %call7 = call zeroext i1 @pcie_wait_for_link(ptr noundef %pdev, i1 noundef zeroext true) #5
  br i1 %call7, label %if.else, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.6) #8
  call void @_clear_bit(i32 noundef 1, ptr noundef %priv_flags) #5
  br label %out

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef 1, ptr noundef %priv_flags) #5
  br label %out

out:                                              ; preds = %if.else, %do.end11, %if.then3
  %ret.0 = phi i32 [ 4, %if.then3 ], [ 5, %if.else ], [ 4, %do.end11 ]
  call void @_clear_bit(i32 noundef 2, ptr noundef %priv_flags) #5
  call void @__wake_up(ptr noundef nonnull @dpc_completed_waitqueue, i32 noundef 3, i32 noundef 0, ptr noundef null) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pcie_wait_for_link(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpc_process_error(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %status.i81 = alloca i32, align 4
  %mask.i82 = alloca i32, align 4
  %sev.i83 = alloca i32, align 4
  %dpc_status.i = alloca i16, align 2
  %status.i = alloca i32, align 4
  %mask.i = alloca i32, align 4
  %sev.i = alloca i32, align 4
  %syserr.i = alloca i32, align 4
  %exc.i = alloca i32, align 4
  %dw0.i = alloca i32, align 4
  %dw1.i = alloca i32, align 4
  %dw2.i = alloca i32, align 4
  %dw3.i = alloca i32, align 4
  %log.i = alloca i32, align 4
  %prefix.i = alloca i32, align 4
  %status = alloca i16, align 2
  %source = alloca i16, align 2
  %info = alloca %struct.aer_err_info, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpc_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 63
  %0 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dpc_cap, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %status, align 2, !annotation !118
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %source) #5
  %3 = ptrtoint ptr %source to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %source, align 2, !annotation !118
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %info) #5
  %4 = call ptr @memset(ptr %info, i32 255, i32 52)
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 8
  %call = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add, ptr noundef nonnull %status) #5
  %add2 = add nuw nsw i32 %conv, 10
  %call3 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add2, ptr noundef nonnull %source) #5
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %status, align 2
  %conv4 = zext i16 %6 to i32
  %7 = ptrtoint ptr %source to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %source, align 2
  %conv5 = zext i16 %8 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv4, i32 noundef %conv5) #8
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %status, align 2
  %and = lshr i16 %10, 1
  %11 = and i16 %and, 3
  %12 = lshr i16 %10, 5
  %13 = and i16 %12, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp = icmp eq i16 %11, 0
  br i1 %cmp, label %entry.cond.end41_crit_edge, label %cond.false

entry.cond.end41_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end41

cond.false:                                       ; preds = %entry
  %trunc = trunc i16 %and to i2
  %14 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %cond.false27 [
    i2 1, label %cond.false.cond.end41_crit_edge
    i2 -2, label %cond.end41.fold.split
  ]

cond.false.cond.end41_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end41

cond.false27:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp29 = icmp eq i16 %13, 0
  br i1 %cmp29, label %cond.false27.cond.end41_crit_edge, label %cond.false32

cond.false27.cond.end41_crit_edge:                ; preds = %cond.false27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end41

cond.false32:                                     ; preds = %cond.false27
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp34 = icmp eq i16 %13, 1
  %cond = select i1 %cmp34, ptr @.str.18, ptr @.str.19
  br label %cond.end41

cond.end41.fold.split:                            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end41

cond.end41:                                       ; preds = %cond.end41.fold.split, %cond.false32, %cond.false27.cond.end41_crit_edge, %cond.false.cond.end41_crit_edge, %entry.cond.end41_crit_edge
  %cond42 = phi ptr [ @.str.14, %entry.cond.end41_crit_edge ], [ @.str.15, %cond.false.cond.end41_crit_edge ], [ %cond, %cond.false32 ], [ @.str.17, %cond.false27.cond.end41_crit_edge ], [ @.str.16, %cond.end41.fold.split ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond42) #8
  %dpc_rp_extensions = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 64
  %15 = ptrtoint ptr %dpc_rp_extensions to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %dpc_rp_extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not = icmp slt i8 %bf.load, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp44 = icmp eq i16 %11, 3
  %or.cond = select i1 %tobool.not, i1 %cmp44, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp48 = icmp eq i16 %13, 0
  %or.cond80 = select i1 %or.cond, i1 %cmp48, i1 false
  br i1 %or.cond80, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end41
  %16 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dpc_cap, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dpc_status.i) #5
  %18 = ptrtoint ptr %dpc_status.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %dpc_status.i, align 2, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #5
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %status.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #5
  %20 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %mask.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sev.i) #5
  %21 = ptrtoint ptr %sev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %sev.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %syserr.i) #5
  %22 = ptrtoint ptr %syserr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %syserr.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exc.i) #5
  %23 = ptrtoint ptr %exc.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %exc.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw0.i) #5
  %24 = ptrtoint ptr %dw0.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %dw0.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw1.i) #5
  %25 = ptrtoint ptr %dw1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %dw1.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw2.i) #5
  %26 = ptrtoint ptr %dw2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %dw2.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dw3.i) #5
  %27 = ptrtoint ptr %dw3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %dw3.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %log.i) #5
  %28 = ptrtoint ptr %log.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %log.i, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prefix.i) #5
  %29 = ptrtoint ptr %prefix.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %prefix.i, align 4, !annotation !118
  %conv.i = zext i16 %17 to i32
  %add.i = add nuw nsw i32 %conv.i, 12
  %call.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add.i, ptr noundef nonnull %status.i) #5
  %add2.i = add nuw nsw i32 %conv.i, 16
  %call3.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add2.i, ptr noundef nonnull %mask.i) #5
  %30 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status.i, align 4
  %32 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mask.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %31, i32 noundef %33) #8
  %add5.i = add nuw nsw i32 %conv.i, 20
  %call6.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add5.i, ptr noundef nonnull %sev.i) #5
  %add8.i = add nuw nsw i32 %conv.i, 24
  %call9.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add8.i, ptr noundef nonnull %syserr.i) #5
  %add11.i = add nuw nsw i32 %conv.i, 28
  %call12.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add11.i, ptr noundef nonnull %exc.i) #5
  %34 = ptrtoint ptr %sev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sev.i, align 4
  %36 = ptrtoint ptr %syserr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %syserr.i, align 4
  %38 = ptrtoint ptr %exc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %exc.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %35, i32 noundef %37, i32 noundef %39) #8
  %add18.i = add nuw nsw i32 %conv.i, 8
  %call19.i = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add18.i, ptr noundef nonnull %dpc_status.i) #5
  %40 = ptrtoint ptr %dpc_status.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %dpc_status.i, align 2
  %42 = lshr i16 %41, 8
  %43 = and i16 %42, 31
  %conv29.i = zext i16 %43 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then
  %i.0130.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status.i, align 4
  %46 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask.i, align 4
  %neg.i = xor i32 %47, -1
  %shl.i = shl nuw nsw i32 1, %i.0130.i
  %and23.i = and i32 %45, %shl.i
  %and24.i = and i32 %and23.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %do.end27.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end27.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [19 x ptr], ptr @rp_pio_error_string, i32 0, i32 %i.0130.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0130.i, i32 %conv29.i)
  %cmp30.i = icmp eq i32 %i.0130.i, %conv29.i
  %cond.i = select i1 %cmp30.i, ptr @.str.34, ptr @.str.35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %i.0130.i, ptr noundef %49, ptr noundef nonnull %cond.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end27.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0130.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %dpc_rp_log_size.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 65
  %50 = ptrtoint ptr %dpc_rp_log_size.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %dpc_rp_log_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %cmp33.i = icmp ult i8 %51, 4
  br i1 %cmp33.i, label %for.end.i.dpc_process_rp_pio_error.exit_crit_edge, label %if.end36.i

for.end.i.dpc_process_rp_pio_error.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpc_process_rp_pio_error.exit

if.end36.i:                                       ; preds = %for.end.i
  %add38.i = add nuw nsw i32 %conv.i, 32
  %call39.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add38.i, ptr noundef nonnull %dw0.i) #5
  %add42.i = add nuw nsw i32 %conv.i, 36
  %call43.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add42.i, ptr noundef nonnull %dw1.i) #5
  %add46.i = add nuw nsw i32 %conv.i, 40
  %call47.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add46.i, ptr noundef nonnull %dw2.i) #5
  %add50.i = add nuw nsw i32 %conv.i, 44
  %call51.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add50.i, ptr noundef nonnull %dw3.i) #5
  %52 = ptrtoint ptr %dw0.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dw0.i, align 4
  %54 = ptrtoint ptr %dw1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dw1.i, align 4
  %56 = ptrtoint ptr %dw2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dw2.i, align 4
  %58 = ptrtoint ptr %dw3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dw3.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59) #8
  %60 = ptrtoint ptr %dpc_rp_log_size.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %dpc_rp_log_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %61)
  %cmp58.i = icmp ult i8 %61, 5
  br i1 %cmp58.i, label %if.end36.i.dpc_process_rp_pio_error.exit_crit_edge, label %if.end61.i

if.end36.i.dpc_process_rp_pio_error.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpc_process_rp_pio_error.exit

if.end61.i:                                       ; preds = %if.end36.i
  %add63.i = add nuw nsw i32 %conv.i, 48
  %call64.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add63.i, ptr noundef nonnull %log.i) #5
  %62 = ptrtoint ptr %log.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %log.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %63) #8
  %64 = ptrtoint ptr %dpc_rp_log_size.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dpc_rp_log_size.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %65)
  %cmp72134.i = icmp ugt i8 %65, 5
  br i1 %cmp72134.i, label %for.body74.lr.ph.i, label %if.end61.i.dpc_process_rp_pio_error.exit_crit_edge

if.end61.i.dpc_process_rp_pio_error.exit_crit_edge: ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpc_process_rp_pio_error.exit

for.body74.lr.ph.i:                               ; preds = %if.end61.i
  %add76.i = add nuw nsw i32 %conv.i, 52
  br label %for.body74.i

for.body74.i:                                     ; preds = %for.body74.i.for.body74.i_crit_edge, %for.body74.lr.ph.i
  %i.1135.i = phi i32 [ 0, %for.body74.lr.ph.i ], [ %inc83.i, %for.body74.i.for.body74.i_crit_edge ]
  %call77.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add76.i, ptr noundef nonnull %prefix.i) #5
  %66 = ptrtoint ptr %prefix.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %prefix.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %i.1135.i, i32 noundef %67) #8
  %inc83.i = add nuw nsw i32 %i.1135.i, 1
  %68 = ptrtoint ptr %dpc_rp_log_size.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dpc_rp_log_size.i, align 1
  %conv71.i = zext i8 %69 to i32
  %sub.i = add nsw i32 %conv71.i, -5
  %cmp72.i = icmp slt i32 %inc83.i, %sub.i
  br i1 %cmp72.i, label %for.body74.i.for.body74.i_crit_edge, label %for.body74.i.dpc_process_rp_pio_error.exit_crit_edge

for.body74.i.dpc_process_rp_pio_error.exit_crit_edge: ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpc_process_rp_pio_error.exit

for.body74.i.for.body74.i_crit_edge:              ; preds = %for.body74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body74.i

dpc_process_rp_pio_error.exit:                    ; preds = %for.body74.i.dpc_process_rp_pio_error.exit_crit_edge, %if.end61.i.dpc_process_rp_pio_error.exit_crit_edge, %if.end36.i.dpc_process_rp_pio_error.exit_crit_edge, %for.end.i.dpc_process_rp_pio_error.exit_crit_edge
  %70 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status.i, align 4
  %call87.i = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %add.i, i32 noundef %71) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prefix.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %log.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw3.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw1.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dw0.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exc.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %syserr.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sev.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpc_status.i) #5
  br label %if.end61

if.else:                                          ; preds = %cond.end41
  br i1 %cmp, label %land.lhs.true53, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

land.lhs.true53:                                  ; preds = %if.else
  %aer_cap.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 14
  %72 = ptrtoint ptr %aer_cap.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %aer_cap.i, align 2
  %conv.i84 = zext i16 %73 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i81) #5
  %74 = ptrtoint ptr %status.i81 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %status.i81, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i82) #5
  %75 = ptrtoint ptr %mask.i82 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %mask.i82, align 4, !annotation !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sev.i83) #5
  %76 = ptrtoint ptr %sev.i83 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %sev.i83, align 4, !annotation !118
  %add.i85 = add nuw nsw i32 %conv.i84, 4
  %call.i86 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add.i85, ptr noundef nonnull %status.i81) #5
  %add1.i = add nuw nsw i32 %conv.i84, 8
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add1.i, ptr noundef nonnull %mask.i82) #5
  %77 = ptrtoint ptr %mask.i82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mask.i82, align 4
  %neg.i87 = xor i32 %78, -1
  %79 = ptrtoint ptr %status.i81 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %status.i81, align 4
  %and.i = and i32 %80, %neg.i87
  store i32 %and.i, ptr %status.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i88 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i88, label %dpc_get_aer_uncorrect_severity.exit.thread, label %land.lhs.true56

dpc_get_aer_uncorrect_severity.exit.thread:       ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sev.i83) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i82) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i81) #5
  br label %if.end61

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %add3.i = add nuw nsw i32 %conv.i84, 12
  %call4.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %add3.i, ptr noundef nonnull %sev.i83) #5
  %81 = ptrtoint ptr %sev.i83 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sev.i83, align 4
  %83 = ptrtoint ptr %status.i81 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %status.i81, align 4
  %and5.i = and i32 %84, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %severity8.i = getelementptr inbounds %struct.aer_err_info, ptr %info, i32 0, i32 2
  %85 = ptrtoint ptr %severity8.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %bf.load9.i = load i32, ptr %severity8.i, align 4
  %bf.clear10.i = and i32 %bf.load9.i, -49153
  %bf.set.i = or i32 %bf.clear10.i, 16384
  %bf.set.sink.i = select i1 %tobool6.not.i, i32 %bf.clear10.i, i32 %bf.set.i
  store i32 %bf.set.sink.i, ptr %severity8.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sev.i83) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i82) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i81) #5
  %call57 = call i32 @aer_get_device_error_info(ptr noundef %pdev, ptr noundef nonnull %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true56.if.end61_crit_edge, label %if.then59

land.lhs.true56.if.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then59:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #7
  call void @aer_print_error(ptr noundef %pdev, ptr noundef nonnull %info) #5
  %call60 = call i32 @pci_aer_clear_nonfatal_status(ptr noundef %pdev) #5
  call void @pci_aer_clear_fatal_status(ptr noundef %pdev) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %land.lhs.true56.if.end61_crit_edge, %dpc_get_aer_uncorrect_severity.exit.thread, %if.else.if.end61_crit_edge, %dpc_process_rp_pio_error.exit
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %info) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %source) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aer_get_device_error_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aer_print_error(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_aer_clear_nonfatal_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_aer_clear_fatal_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_dpc_init(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %cap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap) #5
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %cap, align 2, !annotation !118
  %call = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %pdev, i32 noundef 29) #5
  %dpc_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 63
  %1 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %call, ptr %dpc_cap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %call to i32
  %add = add nuw nsw i32 %conv, 4
  %call3 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef %add, ptr noundef nonnull %cap) #5
  %2 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cap, align 2
  %4 = and i16 %3, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool5.not = icmp eq i16 %4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dpc_rp_extensions = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 64
  %5 = ptrtoint ptr %dpc_rp_extensions to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %dpc_rp_extensions, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %dpc_rp_extensions, align 2
  %6 = lshr i16 %3, 8
  %7 = trunc i16 %6 to i8
  %conv10 = and i8 %7, 15
  %dpc_rp_log_size = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 65
  %8 = ptrtoint ptr %dpc_rp_log_size to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv10, ptr %dpc_rp_log_size, align 1
  %9 = add nsw i8 %conv10, -10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %9)
  %10 = icmp ult i8 %9, -6
  br i1 %10, label %do.end, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %conv20 = zext i8 %conv10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %conv20) #8
  %11 = ptrtoint ptr %dpc_rp_log_size to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %dpc_rp_log_size, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcie_dpc_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcie_port_service_register(ptr noundef nonnull @dpcdriver) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_port_service_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpc_probe(ptr noundef %dev) #0 align 64 {
entry:
  %ctl = alloca i16, align 2
  %cap = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %device1 = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctl) #5
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ctl, align 2, !annotation !118
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cap) #5
  %3 = ptrtoint ptr %cap to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %cap, align 2, !annotation !118
  %call = tail call i32 @pcie_aer_is_native(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @pcie_ports_dpc_native to i32))
  %4 = load i8, ptr @pcie_ports_dpc_native, align 1, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev, align 8
  %call3 = tail call i32 @devm_request_threaded_irq(ptr noundef %device1, i32 noundef %6, ptr noundef nonnull @dpc_irq, ptr noundef nonnull @dpc_handler, i32 noundef 128, ptr noundef nonnull @.str.55, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef nonnull @.str.56, i32 noundef %8, i32 noundef %call3) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dpc_cap = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 63
  %9 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dpc_cap, align 4
  %conv = zext i16 %10 to i32
  %add = add nuw nsw i32 %conv, 4
  %call9 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %cap) #5
  %11 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dpc_cap, align 4
  %conv11 = zext i16 %12 to i32
  %add12 = add nuw nsw i32 %conv11, 6
  %call13 = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef %add12, ptr noundef nonnull %ctl) #5
  %13 = ptrtoint ptr %ctl to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ctl, align 2
  %15 = and i16 %14, -12
  %16 = or i16 %15, 9
  store i16 %16, ptr %ctl, align 2
  %17 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dpc_cap, align 4
  %conv18 = zext i16 %18 to i32
  %add19 = add nuw nsw i32 %conv18, 6
  %call20 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef %add19, i16 noundef zeroext %16) #5
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.59, i32 noundef %20) #8
  %21 = ptrtoint ptr %cap to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cap, align 2
  %conv30 = zext i16 %22 to i32
  %and31 = and i32 %conv30, 31
  %and33 = and i32 %conv30, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond = select i1 %tobool34.not, i32 45, i32 43
  %and36 = and i32 %conv30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond38 = select i1 %tobool37.not, i32 45, i32 43
  %and40 = and i32 %conv30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %cond42 = select i1 %tobool41.not, i32 45, i32 43
  %dpc_rp_log_size = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 65
  %23 = ptrtoint ptr %dpc_rp_log_size to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dpc_rp_log_size, align 1
  %conv43 = zext i8 %24 to i32
  %and45 = and i32 %conv30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, i32 45, i32 43
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.62, i32 noundef %and31, i32 noundef %cond, i32 noundef %cond38, i32 noundef %cond42, i32 noundef %conv43, i32 noundef %cond47) #8
  %call48 = call i32 @pci_add_ext_cap_save_buffer(ptr noundef %1, i16 noundef zeroext 29, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %if.end8 ], [ -524, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cap) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctl) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpc_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %ctl = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.pcie_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ctl) #5
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ctl, align 2, !annotation !118
  %dpc_cap = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 63
  %3 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dpc_cap, align 4
  %conv = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv, 6
  %call = call i32 @pci_read_config_word(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %ctl) #5
  %5 = ptrtoint ptr %ctl to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ctl, align 2
  %7 = and i16 %6, -10
  store i16 %7, ptr %ctl, align 2
  %8 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dpc_cap, align 4
  %conv4 = zext i16 %9 to i32
  %add5 = add nuw nsw i32 %conv4, 6
  %call6 = call i32 @pci_write_config_word(ptr noundef %1, i32 noundef %add5, i16 noundef zeroext %7) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ctl) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_aer_is_native(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpc_irq(i32 noundef %irq, ptr noundef %context) #0 align 64 {
entry:
  %status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dpc_cap = getelementptr inbounds %struct.pci_dev, ptr %context, i32 0, i32 63
  %0 = ptrtoint ptr %dpc_cap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %dpc_cap, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %status) #5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %status, align 2, !annotation !118
  %conv = zext i16 %1 to i32
  %add = add nuw nsw i32 %conv, 8
  %call = call i32 @pci_read_config_word(ptr noundef %context, i32 noundef %add, ptr noundef nonnull %status) #5
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %status, align 2
  %5 = and i16 %4, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp = icmp eq i16 %4, -1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = call i32 @pci_write_config_word(ptr noundef %context, i32 noundef %add, i16 noundef zeroext 8) #5
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %status, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool9.not = icmp eq i16 %8, 0
  %. = select i1 %tobool9.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %status) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpc_handler(i32 noundef %irq, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dpc_process_error(ptr noundef %context)
  %call = tail call i32 @pcie_do_recovery(ptr noundef %context, i32 noundef 2, ptr noundef nonnull @dpc_reset_link) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_add_ext_cap_save_buffer(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_do_recovery(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/dpc.c", i32 119, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/pcie/dpc.c", i32 162, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dpc_reset_link._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @dpc_reset_link._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pci/pcie/dpc.c", i32 174, i32 3}
!11 = !{ptr @dpc_reset_link._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @dpc_reset_link._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pci/pcie/dpc.c", i32 271, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @dpc_process_error._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @dpc_process_error._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/pcie/dpc.c", i32 276, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dpc_process_error._entry.10, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @dpc_process_error._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.16, !19, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.17, !19, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.18, !19, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.19, !19, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pci/pcie/dpc.c", i32 340, i32 3}
!31 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.22, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pci_dpc_init._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @pci_dpc_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/pcie/dpc.c", i32 74, i32 8}
!37 = !{ptr @dpc_completed_waitqueue, !36, !"dpc_completed_waitqueue", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/pcie/dpc.c", i32 138, i32 3}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dpc_wait_rp_inactive._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @dpc_wait_rp_inactive._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/pcie/dpc.c", i32 195, i32 2}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dpc_process_rp_pio_error._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @dpc_process_rp_pio_error._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/pcie/dpc.c", i32 201, i32 2}
!50 = !{ptr @dpc_process_rp_pio_error._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dpc_process_rp_pio_error._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/pcie/dpc.c", i32 210, i32 4}
!54 = !{ptr @dpc_process_rp_pio_error._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dpc_process_rp_pio_error._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/pcie/dpc.c", i32 224, i32 2}
!60 = !{ptr @dpc_process_rp_pio_error._entry.36, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dpc_process_rp_pio_error._entry_ptr.38, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/pcie/dpc.c", i32 230, i32 2}
!64 = !{ptr @dpc_process_rp_pio_error._entry.39, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dpc_process_rp_pio_error._entry_ptr.41, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.43, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pci/pcie/dpc.c", i32 235, i32 3}
!68 = !{ptr @dpc_process_rp_pio_error._entry.42, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dpc_process_rp_pio_error._entry_ptr.44, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.45, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/pcie/dpc.c", i32 21, i32 2}
!72 = !{ptr @.str.46, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pci/pcie/dpc.c", i32 22, i32 2}
!74 = !{ptr @.str.47, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pci/pcie/dpc.c", i32 23, i32 2}
!76 = !{ptr @.str.48, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pci/pcie/dpc.c", i32 29, i32 2}
!78 = !{ptr @.str.49, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pci/pcie/dpc.c", i32 30, i32 2}
!80 = !{ptr @.str.50, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pci/pcie/dpc.c", i32 31, i32 2}
!82 = !{ptr @.str.51, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pci/pcie/dpc.c", i32 37, i32 2}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pci/pcie/dpc.c", i32 38, i32 2}
!86 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pci/pcie/dpc.c", i32 39, i32 2}
!88 = !{ptr @rp_pio_error_string, !89, !"rp_pio_error_string", i1 false, i1 false}
!89 = !{!"../drivers/pci/pcie/dpc.c", i32 20, i32 27}
!90 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pci/pcie/dpc.c", i32 394, i32 11}
!92 = !{ptr @dpcdriver, !93, !"dpcdriver", i1 false, i1 false}
!93 = !{!"../drivers/pci/pcie/dpc.c", i32 393, i32 40}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pci/pcie/dpc.c", i32 359, i32 9}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/pcie/dpc.c", i32 361, i32 3}
!98 = !{ptr @.str.57, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @dpc_probe._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @dpc_probe._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/pcie/dpc.c", i32 371, i32 2}
!103 = !{ptr @dpc_probe._entry.58, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @dpc_probe._entry_ptr.60, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pci/pcie/dpc.c", i32 373, i32 2}
!107 = !{ptr @dpc_probe._entry.61, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @dpc_probe._entry_ptr.63, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
!119 = !{i8 0, i8 2}
