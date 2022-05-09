; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/src.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/src.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.85, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.adapter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr }
%struct.aac_adapter_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { [18 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], [12 x i8], i32, %struct.anon.90, i32, i32, i32, i32, i32, [12 x i8], [8 x i8], i32, i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i64, i32, [12 x i8], i16, i16, i32, i16, i16, i16, i16, [68 x i32] }
%struct.anon.90 = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.src_mu_registers = type { [6 x i32], [2 x i32], i32, i32, [3 x i32], i32, [25 x i32], i32, i32, [3 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.src_registers = type { %struct.src_mu_registers, %union.anon.87 }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { [130786 x i32], %struct.rx_inbound }
%struct.rx_inbound = type { [8 x i32] }
%struct._r7 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._r8 = type { i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct._rrq] }
%struct._rrq = type { i32, i32, i16, i16, i16, i16 }
%struct.fib = type { ptr, i16, i16, ptr, %struct.completion, %struct.spinlock, i32, ptr, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.aac_queue = type { i64, ptr, %struct.aac_qhdr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, ptr }
%struct.aac_qhdr = type { i64, ptr, ptr }
%struct.aac_fibhdr = type { i32, i16, i8, i8, i16, i16, i32, %union.anon, i32, i32, i32 }
%union.anon = type { i32 }
%struct.aac_hba_tm_req = type { i8, i8, i8, i8, i32, [8 x i8], i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_hba_reset_req = type { i8, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.aac_hba_cmd_req = type { i8, i8, i8, i8, i32, i32, i32, [16 x i8], [8 x i8], i32, i8, i8, i16, i32, i32, i32, i32, [92 x %struct.aac_hba_sgl] }
%struct.aac_hba_sgl = type { i32, i32, i32, i32 }

@aac_src_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: unable to map adapter.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aac_src_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/scsi/aacraid/src.c\00", [37 x i8] zeroinitializer }, align 32
@aac_src_init._entry_ptr = internal global ptr @aac_src_init._entry, section ".printk_index", align 4
@aac_src_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s%d: adapter self-test failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@aac_src_init._entry_ptr.5 = internal global ptr @aac_src_init._entry.3, section ".printk_index", align 4
@aac_src_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s%d: adapter monitor panic.\0A\00", [32 x i8] zeroinitializer }, align 32
@aac_src_init._entry_ptr.8 = internal global ptr @aac_src_init._entry.6, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@startup_timeout = external dso_local local_unnamed_addr global i32, align 4
@aac_src_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s%d: adapter kernel failed to start, init status = %lx.\0A\00", [36 x i8] zeroinitializer }, align 32
@aac_src_init._entry_ptr.11 = internal global ptr @aac_src_init._entry.9, section ".printk_index", align 4
@aac_commit = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aacraid\00", [24 x i8] zeroinitializer }, align 32
@aac_src_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s%d: Interrupt unavailable.\0A\00", [32 x i8] zeroinitializer }, align 32
@aac_src_init._entry_ptr.15 = internal global ptr @aac_src_init._entry.13, section ".printk_index", align 4
@aac_srcv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 1188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aac_srcv_init\00", [18 x i8] zeroinitializer }, align 32
@aac_srcv_init._entry_ptr = internal global ptr @aac_srcv_init._entry, section ".printk_index", align 4
@aac_srcv_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s%d: adapter flash update failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@aac_srcv_init._entry_ptr.19 = internal global ptr @aac_srcv_init._entry.17, section ".printk_index", align 4
@aac_srcv_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.16, ptr @.str.2, i32 1241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aac_srcv_init._entry_ptr.21 = internal global ptr @aac_srcv_init._entry.20, section ".printk_index", align 4
@aac_srcv_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.16, ptr @.str.2, i32 1248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aac_srcv_init._entry_ptr.23 = internal global ptr @aac_srcv_init._entry.22, section ".printk_index", align 4
@aac_srcv_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.16, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@aac_srcv_init._entry_ptr.25 = internal global ptr @aac_srcv_init._entry.24, section ".printk_index", align 4
@aac_sync_mode = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aac_src_restart_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 798, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adapter kernel panic'd %x.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aac_src_restart_adapter\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aac_src_restart_adapter._entry_ptr = internal global ptr @aac_src_restart_adapter._entry, section ".printk_index", align 4
@aac_src_restart_adapter._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.2, i32 808, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Controller reset type is %d\0A\00", [35 x i8] zeroinitializer }, align 32
@aac_src_restart_adapter._entry_ptr.32 = internal global ptr @aac_src_restart_adapter._entry.30, section ".printk_index", align 4
@aac_src_restart_adapter._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.27, ptr @.str.2, i32 811, ptr @.str.35, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Issuing IOP reset\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aac_src_restart_adapter._entry_ptr.36 = internal global ptr @aac_src_restart_adapter._entry.33, section ".printk_index", align 4
@aac_src_restart_adapter._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.27, ptr @.str.2, i32 819, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IOP reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@aac_src_restart_adapter._entry_ptr.39 = internal global ptr @aac_src_restart_adapter._entry.37, section ".printk_index", align 4
@aac_src_restart_adapter._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.27, ptr @.str.2, i32 821, ptr @.str.35, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IOP reset succeeded\0A\00", [43 x i8] zeroinitializer }, align 32
@aac_src_restart_adapter._entry_ptr.42 = internal global ptr @aac_src_restart_adapter._entry.40, section ".printk_index", align 4
@aac_src_restart_adapter._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.27, ptr @.str.2, i32 827, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ARC Reset attempt failed\0A\00", [38 x i8] zeroinitializer }, align 32
@aac_src_restart_adapter._entry_ptr.45 = internal global ptr @aac_src_restart_adapter._entry.43, section ".printk_index", align 4
@aac_src_restart_adapter._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.27, ptr @.str.2, i32 833, ptr @.str.35, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Issuing SOFT reset\0A\00", [44 x i8] zeroinitializer }, align 32
@aac_src_restart_adapter._entry_ptr.48 = internal global ptr @aac_src_restart_adapter._entry.46, section ".printk_index", align 4
@aac_src_restart_adapter._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.27, ptr @.str.2, i32 839, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SOFT reset failed\0A\00", [45 x i8] zeroinitializer }, align 32
@aac_src_restart_adapter._entry_ptr.51 = internal global ptr @aac_src_restart_adapter._entry.49, section ".printk_index", align 4
@aac_src_restart_adapter._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.27, ptr @.str.2, i32 843, ptr @.str.35, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SOFT reset succeeded\0A\00", [42 x i8] zeroinitializer }, align 32
@aac_src_restart_adapter._entry_ptr.54 = internal global ptr @aac_src_restart_adapter._entry.52, section ".printk_index", align 4
@aac_fib_dump = external dso_local local_unnamed_addr global i32, align 4
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GET_ADAPTER_PROPERTIES Failed\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"GET_ADAPTER_PROPERTIES timeout\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SOFT_RESET not supported\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DROP_IO Failed\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DROP_IO timeout\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Check Health failed\00", [44 x i8] zeroinitializer }, align 32
@__const.aac_src_soft_reset.state_str = private unnamed_addr constant [7 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr null], align 4
@aac_src_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1155, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: %d outstanding I/O pending\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aac_src_soft_reset\00", [45 x i8] zeroinitializer }, align 32
@aac_src_soft_reset._entry_ptr = internal global ptr @aac_src_soft_reset._entry, section ".printk_index", align 4
@aac_src_soft_reset._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 1165, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: %s status = %d\00", [45 x i8] zeroinitializer }, align 32
@aac_src_soft_reset._entry_ptr.65 = internal global ptr @aac_src_soft_reset._entry.63, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 6, i64 11, i64 13, i64 15, i64 16]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 896, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 925, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 933, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 946, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 997, i32 17 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1002, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1188, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1214, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1241, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1248, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1264, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 798, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 808, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 811, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 819, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 821, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 827, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 833, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 839, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 843, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1097, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1098, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1099, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1100, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1101, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1102, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1154, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [30 x i8] c"../drivers/scsi/aacraid/src.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1164, i32 3 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @aac_src_init._entry, ptr @aac_src_init._entry.13, ptr @aac_src_init._entry.3, ptr @aac_src_init._entry.6, ptr @aac_src_init._entry.9, ptr @aac_src_init._entry_ptr, ptr @aac_src_init._entry_ptr.11, ptr @aac_src_init._entry_ptr.15, ptr @aac_src_init._entry_ptr.5, ptr @aac_src_init._entry_ptr.8, ptr @aac_src_restart_adapter._entry, ptr @aac_src_restart_adapter._entry.30, ptr @aac_src_restart_adapter._entry.33, ptr @aac_src_restart_adapter._entry.37, ptr @aac_src_restart_adapter._entry.40, ptr @aac_src_restart_adapter._entry.43, ptr @aac_src_restart_adapter._entry.46, ptr @aac_src_restart_adapter._entry.49, ptr @aac_src_restart_adapter._entry.52, ptr @aac_src_restart_adapter._entry_ptr, ptr @aac_src_restart_adapter._entry_ptr.32, ptr @aac_src_restart_adapter._entry_ptr.36, ptr @aac_src_restart_adapter._entry_ptr.39, ptr @aac_src_restart_adapter._entry_ptr.42, ptr @aac_src_restart_adapter._entry_ptr.45, ptr @aac_src_restart_adapter._entry_ptr.48, ptr @aac_src_restart_adapter._entry_ptr.51, ptr @aac_src_restart_adapter._entry_ptr.54, ptr @aac_src_soft_reset._entry, ptr @aac_src_soft_reset._entry.63, ptr @aac_src_soft_reset._entry_ptr, ptr @aac_src_soft_reset._entry_ptr.65, ptr @aac_srcv_init._entry, ptr @aac_srcv_init._entry.17, ptr @aac_srcv_init._entry.20, ptr @aac_srcv_init._entry.22, ptr @aac_srcv_init._entry.24, ptr @aac_srcv_init._entry_ptr, ptr @aac_srcv_init._entry_ptr.19, ptr @aac_srcv_init._entry_ptr.21, ptr @aac_srcv_init._entry_ptr.23, ptr @aac_srcv_init._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_srcv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_srcv_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_srcv_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_srcv_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_srcv_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_restart_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_restart_adapter._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_restart_adapter._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_restart_adapter._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_restart_adapter._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_restart_adapter._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_restart_adapter._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_restart_adapter._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_restart_adapter._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_src_soft_reset._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_set_intx_mode(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %0 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs138.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %2 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs138.i, align 8
  %IDR141.i = getelementptr inbounds %struct.src_mu_registers, ptr %3, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR141.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %5 = or i32 %4, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs138.i, align 8
  %IDR152.i = getelementptr inbounds %struct.src_mu_registers, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR152.i, i32 %5) #7, !srcloc !114
  %8 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs138.i, align 8
  %IDR158.i = getelementptr inbounds %struct.src_mu_registers, ptr %9, i32 0, i32 2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR158.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs138.i, align 8
  %IOAR168.i = getelementptr inbounds %struct.src_mu_registers, ptr %12, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IOAR168.i, i32 520093852) #7, !srcloc !114
  %13 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs138.i, align 8
  %IOAR174.i = getelementptr inbounds %struct.src_mu_registers, ptr %14, i32 0, i32 1
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IOAR174.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %16 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs138.i, align 8
  %OIMR183.i = getelementptr inbounds %struct.src_mu_registers, ptr %17, i32 0, i32 5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OIMR183.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %19 = and i32 %18, -67108865
  %20 = ptrtoint ptr %regs138.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs138.i, align 8
  %OIMR194.i = getelementptr inbounds %struct.src_mu_registers, ptr %21, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR194.i, i32 %19) #7, !srcloc !114
  %22 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msi_enabled, align 8
  tail call void @msleep(i32 noundef 5000) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aac_src_access_devreg(ptr nocapture noundef %dev, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body3
    i32 2, label %sw.bb11
    i32 3, label %sw.bb54
    i32 4, label %sw.bb81
    i32 5, label %sw.bb108
    i32 6, label %sw.bb135
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %1 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %cond = select i1 %tobool.not, i32 -5, i32 -6
  %OIMR = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %3 = ptrtoint ptr %OIMR to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cond, ptr %OIMR, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %OIMR1 = getelementptr inbounds %struct.src_mu_registers, ptr %6, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR1, i32 %4) #7, !srcloc !114
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %OIMR6 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %7 = ptrtoint ptr %OIMR6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %OIMR6, align 4
  %regs7 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %8 = ptrtoint ptr %regs7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs7, align 8
  %OIMR10 = getelementptr inbounds %struct.src_mu_registers, ptr %9, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR10, i32 -1) #7, !srcloc !114
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs12 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %10 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs12, align 8
  %IDR = getelementptr inbounds %struct.src_mu_registers, ptr %11, i32 0, i32 2
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %13 = or i32 %12, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs12, align 8
  %IDR22 = getelementptr inbounds %struct.src_mu_registers, ptr %15, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR22, i32 %13) #7, !srcloc !114
  %16 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs12, align 8
  %IDR28 = getelementptr inbounds %struct.src_mu_registers, ptr %17, i32 0, i32 2
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR28) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs12, align 8
  %IOAR = getelementptr inbounds %struct.src_mu_registers, ptr %20, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IOAR, i32 520093852) #7, !srcloc !114
  %21 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs12, align 8
  %OIMR43 = getelementptr inbounds %struct.src_mu_registers, ptr %22, i32 0, i32 5
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OIMR43) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %24 = and i32 %23, -83886081
  %25 = ptrtoint ptr %regs12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs12, align 8
  %OIMR53 = getelementptr inbounds %struct.src_mu_registers, ptr %26, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR53, i32 %24) #7, !srcloc !114
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs57 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %27 = ptrtoint ptr %regs57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs57, align 8
  %IDR60 = getelementptr inbounds %struct.src_mu_registers, ptr %28, i32 0, i32 2
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR60) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %30 = and i32 %29, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %regs57 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs57, align 8
  %IDR71 = getelementptr inbounds %struct.src_mu_registers, ptr %32, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR71, i32 %30) #7, !srcloc !114
  %33 = ptrtoint ptr %regs57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs57, align 8
  %IDR77 = getelementptr inbounds %struct.src_mu_registers, ptr %34, i32 0, i32 2
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR77) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs84 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %36 = ptrtoint ptr %regs84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs84, align 8
  %IDR87 = getelementptr inbounds %struct.src_mu_registers, ptr %37, i32 0, i32 2
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR87) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %39 = or i32 %38, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %regs84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs84, align 8
  %IDR98 = getelementptr inbounds %struct.src_mu_registers, ptr %41, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR98, i32 %39) #7, !srcloc !114
  %42 = ptrtoint ptr %regs84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs84, align 8
  %IDR104 = getelementptr inbounds %struct.src_mu_registers, ptr %43, i32 0, i32 2
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR104) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  br label %sw.epilog

sw.bb108:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs111 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %45 = ptrtoint ptr %regs111 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs111, align 8
  %IDR114 = getelementptr inbounds %struct.src_mu_registers, ptr %46, i32 0, i32 2
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR114) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  %48 = or i32 %47, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %regs111 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs111, align 8
  %IDR125 = getelementptr inbounds %struct.src_mu_registers, ptr %50, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR125, i32 %48) #7, !srcloc !114
  %51 = ptrtoint ptr %regs111 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs111, align 8
  %IDR131 = getelementptr inbounds %struct.src_mu_registers, ptr %52, i32 0, i32 2
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR131) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  br label %sw.epilog

sw.bb135:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs138 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %54 = ptrtoint ptr %regs138 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs138, align 8
  %IDR141 = getelementptr inbounds %struct.src_mu_registers, ptr %55, i32 0, i32 2
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR141) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %57 = or i32 %56, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %regs138 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs138, align 8
  %IDR152 = getelementptr inbounds %struct.src_mu_registers, ptr %59, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR152, i32 %57) #7, !srcloc !114
  %60 = ptrtoint ptr %regs138 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs138, align 8
  %IDR158 = getelementptr inbounds %struct.src_mu_registers, ptr %61, i32 0, i32 2
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR158) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %regs138 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs138, align 8
  %IOAR168 = getelementptr inbounds %struct.src_mu_registers, ptr %64, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IOAR168, i32 520093852) #7, !srcloc !114
  %65 = ptrtoint ptr %regs138 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs138, align 8
  %IOAR174 = getelementptr inbounds %struct.src_mu_registers, ptr %66, i32 0, i32 1
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IOAR174) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %68 = ptrtoint ptr %regs138 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs138, align 8
  %OIMR183 = getelementptr inbounds %struct.src_mu_registers, ptr %69, i32 0, i32 5
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OIMR183) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %71 = and i32 %70, -67108865
  %72 = ptrtoint ptr %regs138 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs138, align 8
  %OIMR194 = getelementptr inbounds %struct.src_mu_registers, ptr %73, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR194, i32 %71) #7, !srcloc !114
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb135, %sw.bb108, %sw.bb81, %sw.bb54, %sw.bb11, %do.body3, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_src_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %name1 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 8
  %a_ops = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17
  %adapter_ioremap = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 8
  %4 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @aac_src_ioremap, ptr %adapter_ioremap, align 4
  %adapter_comm = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 15
  %5 = ptrtoint ptr %adapter_comm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aac_src_select_comm, ptr %adapter_comm, align 4
  %base_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 21
  %6 = ptrtoint ptr %base_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4194304, ptr %base_size, align 8
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  %call.i = tail call ptr @ioremap(i32 noundef %10, i32 noundef 2048) #7
  %bar17.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45, i32 0, i32 1
  %11 = ptrtoint ptr %bar17.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %bar17.i, align 4
  %base8.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %12 = ptrtoint ptr %base8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %base8.i, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end12.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end12.i:                                       ; preds = %entry
  %regs6.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %base_start.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %base_start.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_start.i, align 8
  %call13.i = tail call ptr @ioremap(i32 noundef %14, i32 noundef 4194304) #7
  %15 = ptrtoint ptr %regs6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13.i, ptr %regs6.i, align 8
  %16 = ptrtoint ptr %base8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13.i, ptr %base8.i, align 8
  %cmp18.i = icmp eq ptr %call13.i, null
  br i1 %cmp18.i, label %if.then19.i, label %if.end

if.then19.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %bar17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bar17.i, align 4
  tail call void @iounmap(ptr noundef %18) #7
  %19 = ptrtoint ptr %bar17.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bar17.i, align 4
  br label %do.end

do.end:                                           ; preds = %if.then19.i, %entry.do.end_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %if.end12.i
  %IndexRegs.i = getelementptr inbounds %struct.src_registers, ptr %call13.i, i32 0, i32 1, i32 0, i32 1
  %IndexRegs26.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 48
  %20 = ptrtoint ptr %IndexRegs26.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %IndexRegs.i, ptr %IndexRegs26.i, align 8
  %adapter_sync_cmd = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 4
  %21 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @src_sync_cmd, ptr %adapter_sync_cmd, align 4
  %adapter_enable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 3
  %22 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @aac_src_disable_interrupt, ptr %adapter_enable_int, align 4
  %init_reset = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 85
  %23 = ptrtoint ptr %init_reset to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %init_reset, align 8, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  br i1 %tobool9.not, label %if.end.if.end16_crit_edge, label %if.then10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %init_reset to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %init_reset, align 8
  %call12 = tail call i32 @aac_src_restart_adapter(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %spec.select = zext i1 %tobool13.not to i32
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end.if.end16_crit_edge
  %restart.0 = phi i32 [ 0, %if.end.if.end16_crit_edge ], [ %spec.select, %if.then10 ]
  %26 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs6.i, align 8
  %OMR = getelementptr inbounds %struct.src_mu_registers, ptr %27, i32 0, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %29 = and i32 %28, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool20.not = icmp eq i32 %29, 0
  br i1 %tobool20.not, label %if.end16.if.end28_crit_edge, label %if.then21

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then21:                                        ; preds = %if.end16
  %30 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs6.i, align 8
  %OMR.i = getelementptr inbounds %struct.src_mu_registers, ptr %31, i32 0, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR.i) #7, !srcloc !111
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and.i = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %err_blink.i, !prof !140

if.end.i:                                         ; preds = %if.then21
  %34 = and i32 %33, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %if.end23.i, label %if.end.i.aac_src_check_health.exit_crit_edge, !prof !141

if.end.i.aac_src_check_health.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_src_check_health.exit

if.end23.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and24.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %..i = select i1 %tobool25.not.i, i32 -3, i32 0, !prof !142
  br label %aac_src_check_health.exit

err_blink.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %33, 16
  %and36.i = and i32 %shr.i, 255
  br label %aac_src_check_health.exit

aac_src_check_health.exit:                        ; preds = %err_blink.i, %if.end23.i, %if.end.i.aac_src_check_health.exit_crit_edge
  %retval.0.i255 = phi i32 [ %and36.i, %err_blink.i ], [ %..i, %if.end23.i ], [ -1, %if.end.i.aac_src_check_health.exit_crit_edge ]
  %call23 = tail call i32 @aac_src_restart_adapter(ptr noundef %dev, i32 noundef %retval.0.i255, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %aac_src_check_health.exit.cleanup_crit_edge

aac_src_check_health.exit.cleanup_crit_edge:      ; preds = %aac_src_check_health.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %aac_src_check_health.exit
  call void @__sanitizer_cov_trace_pc() #9
  %inc27 = add nuw nsw i32 %restart.0, 1
  br label %if.end28

if.end28:                                         ; preds = %if.end26, %if.end16.if.end28_crit_edge
  %restart.1 = phi i32 [ %inc27, %if.end26 ], [ %restart.0, %if.end16.if.end28_crit_edge ]
  %36 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs6.i, align 8
  %OMR34 = getelementptr inbounds %struct.src_mu_registers, ptr %37, i32 0, i32 12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR34) #7, !srcloc !111
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %and38 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end47, label %do.end43

do.end43:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name1, align 8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %41, i32 noundef %1) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end28
  %and48 = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end57, label %do.end53

do.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %name1, align 8
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %43, i32 noundef %1) #10
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %45 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs6.i, align 8
  %OMR63276 = getelementptr inbounds %struct.src_mu_registers, ptr %46, i32 0, i32 12
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR63276) #7, !srcloc !111
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %and67277 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67277)
  %tobool68.not278 = icmp eq i32 %and67277, 0
  br i1 %tobool68.not278, label %if.end57.while.body_crit_edge, label %if.end57.while.end_crit_edge

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end57.while.body_crit_edge:                    ; preds = %if.end57
  br label %while.body

while.body:                                       ; preds = %if.end102.while.body_crit_edge, %if.end57.while.body_crit_edge
  %49 = phi i32 [ %65, %if.end102.while.body_crit_edge ], [ %48, %if.end57.while.body_crit_edge ]
  %start.0280 = phi i32 [ %start.2, %if.end102.while.body_crit_edge ], [ %44, %if.end57.while.body_crit_edge ]
  %restart.2279 = phi i32 [ %restart.3, %if.end102.while.body_crit_edge ], [ %restart.1, %if.end57.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.2279)
  %tobool69.not = icmp eq i32 %restart.2279, 0
  %and70 = and i32 %49, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %or.cond = select i1 %tobool69.not, i1 true, i1 %tobool71.not
  br i1 %or.cond, label %lor.lhs.false, label %while.body.do.end75_crit_edge

while.body.do.end75_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75

lor.lhs.false:                                    ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @startup_timeout to i32))
  %50 = load i32, ptr @startup_timeout, align 4
  %mul = mul i32 %50, 100
  %add = add i32 %mul, %start.0280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %lor.lhs.false.do.end75_crit_edge, label %if.end79

lor.lhs.false.do.end75_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75

do.end75:                                         ; preds = %lor.lhs.false.do.end75_crit_edge, %while.body.do.end75_crit_edge
  %52 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name1, align 8
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %53, i32 noundef %1, i32 noundef %49) #10
  br label %cleanup

if.end79:                                         ; preds = %lor.lhs.false
  br i1 %tobool69.not, label %land.lhs.true81, label %if.end79.if.end102_crit_edge

if.end79.if.end102_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

land.lhs.true81:                                  ; preds = %if.end79
  br i1 %tobool71.not, label %lor.lhs.false84, label %land.lhs.true81.if.then91_crit_edge

land.lhs.true81.if.then91_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91

lor.lhs.false84:                                  ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %50)
  %cmp85 = icmp sgt i32 %50, 60
  %sub86 = add i32 %50, -60
  %div = sdiv i32 %50, 2
  %cond = select i1 %cmp85, i32 %sub86, i32 %div
  %mul87 = mul i32 %cond, 100
  %add88 = add i32 %mul87, %start.0280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %sub89 = sub i32 %add88, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub89)
  %cmp90 = icmp slt i32 %sub89, 0
  br i1 %cmp90, label %lor.lhs.false84.if.then91_crit_edge, label %lor.lhs.false84.if.end102_crit_edge

lor.lhs.false84.if.end102_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

lor.lhs.false84.if.then91_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91

if.then91:                                        ; preds = %lor.lhs.false84.if.then91_crit_edge, %land.lhs.true81.if.then91_crit_edge
  %55 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs6.i, align 8
  %OMR.i257 = getelementptr inbounds %struct.src_mu_registers, ptr %56, i32 0, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR.i257) #7, !srcloc !111
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and.i258 = and i32 %58, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i258)
  %tobool.not.i259 = icmp eq i32 %and.i258, 0
  br i1 %tobool.not.i259, label %if.end.i260, label %err_blink.i267, !prof !140

if.end.i260:                                      ; preds = %if.then91
  %59 = and i32 %58, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %if.end23.i264, label %if.end.i260.aac_src_check_health.exit269_crit_edge, !prof !141

if.end.i260.aac_src_check_health.exit269_crit_edge: ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_src_check_health.exit269

if.end23.i264:                                    ; preds = %if.end.i260
  call void @__sanitizer_cov_trace_pc() #9
  %and24.i261 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i261)
  %tobool25.not.i262 = icmp eq i32 %and24.i261, 0
  %..i263 = select i1 %tobool25.not.i262, i32 -3, i32 0, !prof !142
  br label %aac_src_check_health.exit269

err_blink.i267:                                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i265 = lshr i32 %58, 16
  %and36.i266 = and i32 %shr.i265, 255
  br label %aac_src_check_health.exit269

aac_src_check_health.exit269:                     ; preds = %err_blink.i267, %if.end23.i264, %if.end.i260.aac_src_check_health.exit269_crit_edge
  %retval.0.i268 = phi i32 [ %and36.i266, %err_blink.i267 ], [ %..i263, %if.end23.i264 ], [ -1, %if.end.i260.aac_src_check_health.exit269_crit_edge ]
  %call93 = tail call i32 @aac_src_restart_adapter(ptr noundef %dev, i32 noundef %retval.0.i268, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then99, label %aac_src_check_health.exit269.if.end102_crit_edge, !prof !140

aac_src_check_health.exit269.if.end102_crit_edge: ; preds = %aac_src_check_health.exit269
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then99:                                        ; preds = %aac_src_check_health.exit269
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %aac_src_check_health.exit269.if.end102_crit_edge, %lor.lhs.false84.if.end102_crit_edge, %if.end79.if.end102_crit_edge
  %restart.3 = phi i32 [ %restart.2279, %if.end79.if.end102_crit_edge ], [ 0, %lor.lhs.false84.if.end102_crit_edge ], [ 1, %if.then99 ], [ 1, %aac_src_check_health.exit269.if.end102_crit_edge ]
  %start.2 = phi i32 [ %start.0280, %if.end79.if.end102_crit_edge ], [ %start.0280, %lor.lhs.false84.if.end102_crit_edge ], [ %61, %if.then99 ], [ %start.0280, %aac_src_check_health.exit269.if.end102_crit_edge ]
  tail call void @msleep(i32 noundef 1) #7
  %62 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs6.i, align 8
  %OMR63 = getelementptr inbounds %struct.src_mu_registers, ptr %63, i32 0, i32 12
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR63) #7, !srcloc !111
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %and67 = and i32 %65, 128
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end102.while.body_crit_edge, label %if.end102.while.end_crit_edge

if.end102.while.end_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end102.while.body_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end102.while.end_crit_edge, %if.end57.while.end_crit_edge
  %restart.2.lcssa = phi i32 [ %restart.1, %if.end57.while.end_crit_edge ], [ %restart.3, %if.end102.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.2.lcssa)
  %tobool103.not = icmp eq i32 %restart.2.lcssa, 0
  br i1 %tobool103.not, label %while.end.if.end107_crit_edge, label %land.lhs.true104

while.end.if.end107_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

land.lhs.true104:                                 ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_commit to i32))
  %66 = load i32, ptr @aac_commit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool105.not = icmp eq i32 %66, 0
  br i1 %tobool105.not, label %land.lhs.true104.if.end107_crit_edge, label %if.then106

land.lhs.true104.if.end107_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then106:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @aac_commit to i32))
  store i32 1, ptr @aac_commit, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %land.lhs.true104.if.end107_crit_edge, %while.end.if.end107_crit_edge
  %67 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @aac_src_interrupt_adapter, ptr %a_ops, align 4
  %adapter_disable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 2
  %68 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @aac_src_disable_interrupt, ptr %adapter_disable_int, align 4
  %69 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @aac_src_disable_interrupt, ptr %adapter_enable_int, align 4
  %adapter_notify = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 1
  %70 = ptrtoint ptr %adapter_notify to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @aac_src_notify_adapter, ptr %adapter_notify, align 4
  %71 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @src_sync_cmd, ptr %adapter_sync_cmd, align 4
  %adapter_check_health = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 5
  %72 = ptrtoint ptr %adapter_check_health to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @aac_src_check_health, ptr %adapter_check_health, align 4
  %adapter_restart = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 6
  %73 = ptrtoint ptr %adapter_restart to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @aac_src_restart_adapter, ptr %adapter_restart, align 4
  %adapter_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 7
  %74 = ptrtoint ptr %adapter_start to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @aac_src_start_adapter, ptr %adapter_start, align 4
  %75 = ptrtoint ptr %adapter_comm to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter_comm, align 4
  %call120 = tail call i32 %76(ptr noundef %dev, i32 noundef 1) #7
  %77 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter_disable_int, align 4
  tail call void %78(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %79 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs6.i, align 8
  %ODR_C = getelementptr inbounds %struct.src_mu_registers, ptr %80, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C, i32 -1) #7, !srcloc !114
  %81 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adapter_enable_int, align 4
  tail call void %82(ptr noundef %dev) #7
  %call131 = tail call ptr @aac_init_adapter(ptr noundef %dev) #7
  %cmp132 = icmp eq ptr %call131, null
  br i1 %cmp132, label %if.end107.cleanup_crit_edge, label %if.end134

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end134:                                        ; preds = %if.end107
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 59
  %83 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %comm_interface, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %84)
  %cmp135.not = icmp eq i8 %84, 3
  br i1 %cmp135.not, label %if.end138, label %if.end134.cleanup_crit_edge

if.end134.cleanup_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end138:                                        ; preds = %if.end134
  %85 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev.i, align 4
  %call139 = tail call i32 @pci_enable_msi(ptr noundef %86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  %conv143 = zext i1 %tobool140.not to i8
  %msi = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 65
  %87 = ptrtoint ptr %msi to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv143, ptr %msi, align 4
  %aac_msix = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 80
  %88 = ptrtoint ptr %aac_msix to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %aac_msix, align 4
  %dev146 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 80, i32 0, i32 1
  %89 = ptrtoint ptr %dev146 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %dev, ptr %dev146, align 4
  %90 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 46
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq, align 4
  %adapter_intr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 9
  %94 = ptrtoint ptr %adapter_intr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adapter_intr, align 4
  %call.i270 = tail call i32 @request_threaded_irq(i32 noundef %93, ptr noundef %95, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %aac_msix) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %cmp152 = icmp slt i32 %call.i270, 0
  br i1 %cmp152, label %if.then154, label %if.end165

if.then154:                                       ; preds = %if.end138
  %96 = ptrtoint ptr %msi to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool156.not = icmp eq i8 %97, 0
  br i1 %tobool156.not, label %if.then154.do.end162_crit_edge, label %if.then157

if.then154.do.end162_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end162

if.then157:                                       ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msi(ptr noundef %99) #7
  br label %do.end162

do.end162:                                        ; preds = %if.then157, %if.then154.do.end162_crit_edge
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %3, i32 noundef %1) #10
  br label %cleanup

if.end165:                                        ; preds = %if.end138
  %100 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdev.i, align 4
  %arrayidx167 = getelementptr %struct.pci_dev, ptr %101, i32 0, i32 47, i32 2
  %102 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx167, align 8
  %dbg_base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 20
  %104 = ptrtoint ptr %dbg_base to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %dbg_base, align 4
  %105 = ptrtoint ptr %bar17.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %bar17.i, align 4
  %dbg_base_mapped = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 47
  %107 = ptrtoint ptr %dbg_base_mapped to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %dbg_base_mapped, align 4
  %dbg_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 22
  %108 = ptrtoint ptr %dbg_size to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 2048, ptr %dbg_size, align 4
  %109 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @aac_src_enable_interrupt_message, ptr %adapter_enable_int, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %msi_enabled.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %110 = ptrtoint ptr %msi_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %msi_enabled.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i.i = icmp eq i32 %111, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 -5, i32 -6
  %OIMR.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %112 = ptrtoint ptr %OIMR.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %cond.i.i, ptr %OIMR.i.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %cond.i.i) #7
  %114 = ptrtoint ptr %regs6.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs6.i, align 8
  %OIMR1.i.i = getelementptr inbounds %struct.src_mu_registers, ptr %115, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR1.i.i, i32 %113) #7, !srcloc !114
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %116 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool174.not = icmp eq i32 %117, 0
  br i1 %tobool174.not, label %if.then175, label %if.end165.cleanup_crit_edge

if.end165.cleanup_crit_edge:                      ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then175:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @aac_src_start_adapter(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then175, %if.end165.cleanup_crit_edge, %do.end162, %if.end134.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %do.end75, %do.end53, %do.end43, %aac_src_check_health.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.then175 ], [ 0, %if.end165.cleanup_crit_edge ], [ -1, %if.end134.cleanup_crit_edge ], [ -1, %if.end107.cleanup_crit_edge ], [ -1, %aac_src_check_health.exit.cleanup_crit_edge ], [ -1, %do.end162 ], [ -1, %do.end75 ], [ -1, %do.end53 ], [ -1, %do.end43 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_src_ioremap(ptr nocapture noundef %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %bar1 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45, i32 0, i32 1
  %0 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bar1, align 4
  tail call void @iounmap(ptr noundef %1) #7
  %2 = ptrtoint ptr %bar1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bar1, align 4
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  tail call void @iounmap(ptr noundef %4) #7
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %regs, align 8
  %base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %base, align 8
  br label %return

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  %call = tail call ptr @ioremap(i32 noundef %10, i32 noundef 2048) #7
  %bar17 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45, i32 0, i32 1
  %11 = ptrtoint ptr %bar17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %bar17, align 4
  %base8 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %12 = ptrtoint ptr %base8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %base8, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end12

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end12:                                         ; preds = %if.end
  %regs6 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %base_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %base_start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_start, align 8
  %call13 = tail call ptr @ioremap(i32 noundef %14, i32 noundef %size) #7
  %15 = ptrtoint ptr %regs6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %regs6, align 8
  %16 = ptrtoint ptr %base8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %base8, align 8
  %cmp18 = icmp eq ptr %call13, null
  br i1 %cmp18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %bar17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bar17, align 4
  tail call void @iounmap(ptr noundef %18) #7
  %19 = ptrtoint ptr %bar17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bar17, align 4
  br label %return

if.end24:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %IndexRegs = getelementptr inbounds %struct.src_registers, ptr %call13, i32 0, i32 1, i32 0, i32 1
  %IndexRegs26 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 48
  %20 = ptrtoint ptr %IndexRegs26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %IndexRegs, ptr %IndexRegs26, align 8
  br label %return

return:                                           ; preds = %if.end24, %if.then19, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then19 ], [ 0, %if.end24 ], [ 0, %if.then ], [ -1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @aac_src_select_comm(ptr nocapture noundef writeonly %dev, i32 noundef %comm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %comm)
  %cond = icmp eq i32 %comm, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %adapter_intr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 9
  %0 = ptrtoint ptr %adapter_intr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @aac_src_intr_message, ptr %adapter_intr, align 4
  %adapter_deliver = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 10
  %1 = ptrtoint ptr %adapter_deliver to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @aac_src_deliver_message, ptr %adapter_deliver, align 4
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @src_sync_cmd(ptr noundef %dev, i32 noundef %command, i32 noundef %p1, i32 noundef %p2, i32 noundef %p3, i32 noundef %p4, i32 noundef %p5, i32 noundef %p6, ptr noundef writeonly %status, ptr noundef writeonly %r1, ptr noundef writeonly %r2, ptr noundef writeonly %r3, ptr noundef writeonly %r4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %command)
  %IndexRegs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 48
  %1 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %IndexRegs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %p1)
  %4 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %IndexRegs, align 8
  %arrayidx6 = getelementptr [8 x i32], ptr %5, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx6, i32 %3) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %p2)
  %7 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %IndexRegs, align 8
  %arrayidx12 = getelementptr [8 x i32], ptr %8, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12, i32 %6) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %p3)
  %10 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %IndexRegs, align 8
  %arrayidx18 = getelementptr [8 x i32], ptr %11, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx18, i32 %9) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %p4)
  %13 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %IndexRegs, align 8
  %arrayidx24 = getelementptr [8 x i32], ptr %14, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx24, i32 %12) #7, !srcloc !114
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %15 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %do.body25, label %entry.do.body28_crit_edge

entry.do.body28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body28

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %ODR_C = getelementptr inbounds %struct.src_mu_registers, ptr %18, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C, i32 1048576) #7, !srcloc !114
  br label %do.body28

do.body28:                                        ; preds = %do.body25, %entry.do.body28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %OIMR = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %19 = ptrtoint ptr %OIMR to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %OIMR, align 4
  %regs31 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %20 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs31, align 8
  %OIMR34 = getelementptr inbounds %struct.src_mu_registers, ptr %21, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR34, i32 -1) #7, !srcloc !114
  %22 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs31, align 8
  %OIMR38 = getelementptr inbounds %struct.src_mu_registers, ptr %23, i32 0, i32 5
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OIMR38) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs31, align 8
  %IDR = getelementptr inbounds %struct.src_mu_registers, ptr %26, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR, i32 131072) #7, !srcloc !114
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %27 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool46.not = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %command)
  %cmp.not = icmp eq i32 %command, 12
  %or.cond = and i1 %cmp.not, %tobool46.not
  br i1 %or.cond, label %do.body28.cleanup_crit_edge, label %land.lhs.true

do.body28.cleanup_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body28
  %in_soft_reset = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 64
  %29 = ptrtoint ptr %in_soft_reset to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %in_soft_reset, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool47.not = icmp eq i8 %30, 0
  br i1 %tobool47.not, label %if.then48, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then48:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %command)
  %cmp49 = icmp eq i32 %command, 4097
  %..neg197 = select i1 %cmp49, i32 -1000, i32 -30000
  %add.neg = sub i32 %..neg197, %31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub195 = add i32 %add.neg, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub195)
  %cmp52196 = icmp slt i32 %sub195, 0
  br i1 %cmp52196, label %if.then48.while.body_crit_edge, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then48.while.body_crit_edge:                   ; preds = %if.then48
  br label %while.body

while.body:                                       ; preds = %if.end68.while.body_crit_edge, %if.then48.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 1073740) #7
  %34 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs31, align 8
  %ODR_MSI.i = getelementptr inbounds %struct.src_mu_registers, ptr %35, i32 0, i32 15
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR_MSI.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  %37 = and i32 %36, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  %38 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool2.not.i = icmp eq i32 %39, 0
  br i1 %tobool2.not.i, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %while.body
  %40 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs31, align 8
  %ODR_R.i = getelementptr inbounds %struct.src_mu_registers, ptr %41, i32 0, i32 7
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR_R.i) #7, !srcloc !111
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %shr.i = lshr i32 %43, 12
  %44 = and i32 %43, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool12.not.i = icmp ne i32 %44, 0
  %brmerge.i = select i1 %tobool12.not.i, i1 true, i1 %tobool.not.i
  br i1 %brmerge.i, label %if.then.i.aac_src_get_sync_status.exit_crit_edge, label %if.then14.i

if.then.i.aac_src_get_sync_status.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_src_get_sync_status.exit

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %msi_enabled, align 8
  br label %aac_src_get_sync_status.exit

if.end16.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond.i = zext i1 %not.tobool.not.i to i32
  br label %aac_src_get_sync_status.exit

aac_src_get_sync_status.exit:                     ; preds = %if.end16.i, %if.then14.i, %if.then.i.aac_src_get_sync_status.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end16.i ], [ %shr.i, %if.then.i.aac_src_get_sync_status.exit_crit_edge ], [ %shr.i, %if.then14.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.end68, label %if.then55

if.then55:                                        ; preds = %aac_src_get_sync_status.exit
  %46 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool57.not = icmp eq i32 %47, 0
  br i1 %tobool57.not, label %do.body60, label %if.then58

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs31, align 8
  %IDR114.i = getelementptr inbounds %struct.src_mu_registers, ptr %49, i32 0, i32 2
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR114.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  %51 = or i32 %50, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs31, align 8
  %IDR125.i = getelementptr inbounds %struct.src_mu_registers, ptr %53, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR125.i, i32 %51) #7, !srcloc !114
  %54 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs31, align 8
  %IDR131.i = getelementptr inbounds %struct.src_mu_registers, ptr %55, i32 0, i32 2
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR131.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  br label %if.end73

do.body60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %57 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs31, align 8
  %ODR_C66 = getelementptr inbounds %struct.src_mu_registers, ptr %58, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C66, i32 1048576) #7, !srcloc !114
  br label %if.end73

if.end68:                                         ; preds = %aac_src_get_sync_status.exit
  tail call void @msleep(i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %59
  %cmp52 = icmp slt i32 %sub, 0
  br i1 %cmp52, label %if.end68.while.body_crit_edge, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68.while.body_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end73:                                         ; preds = %do.body60, %if.then58
  %tobool74.not = icmp eq ptr %status, null
  br i1 %tobool74.not, label %if.end73.if.end84_crit_edge, label %if.then75

if.end73.if.end84_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %IndexRegs, align 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #7, !srcloc !111
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %64 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %status, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then75, %if.end73.if.end84_crit_edge
  %tobool85.not = icmp eq ptr %r1, null
  br i1 %tobool85.not, label %if.end84.if.end95_crit_edge, label %if.then86

if.end84.if.end95_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %IndexRegs, align 8
  %arrayidx91 = getelementptr [8 x i32], ptr %66, i32 0, i32 1
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx91) #7, !srcloc !111
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  %69 = ptrtoint ptr %r1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %r1, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then86, %if.end84.if.end95_crit_edge
  %tobool96.not = icmp eq ptr %r2, null
  br i1 %tobool96.not, label %if.end95.if.end106_crit_edge, label %if.then97

if.end95.if.end106_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %IndexRegs, align 8
  %arrayidx102 = getelementptr [8 x i32], ptr %71, i32 0, i32 2
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx102) #7, !srcloc !111
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %74 = ptrtoint ptr %r2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %r2, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then97, %if.end95.if.end106_crit_edge
  %tobool107.not = icmp eq ptr %r3, null
  br i1 %tobool107.not, label %if.end106.if.end117_crit_edge, label %if.then108

if.end106.if.end117_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %IndexRegs, align 8
  %arrayidx113 = getelementptr [8 x i32], ptr %76, i32 0, i32 3
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx113) #7, !srcloc !111
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %79 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %r3, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then108, %if.end106.if.end117_crit_edge
  %tobool118.not = icmp eq ptr %r4, null
  br i1 %tobool118.not, label %if.end117.if.end128_crit_edge, label %if.then119

if.end117.if.end128_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %IndexRegs, align 8
  %arrayidx124 = getelementptr [8 x i32], ptr %81, i32 0, i32 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx124) #7, !srcloc !111
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %84 = ptrtoint ptr %r4 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %r4, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then119, %if.end117.if.end128_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %command)
  %cmp129 = icmp eq i32 %command, 38
  br i1 %cmp129, label %if.then130, label %if.end128.if.end140_crit_edge

if.end128.if.end140_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.then130:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %IndexRegs, align 8
  %arrayidx135 = getelementptr [8 x i32], ptr %86, i32 0, i32 5
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx135) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %88 = and i32 %87, -65536
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %90 = ptrtoint ptr %max_msix to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %max_msix, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then130, %if.end128.if.end140_crit_edge
  %91 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool142.not = icmp eq i32 %92, 0
  br i1 %tobool142.not, label %do.body144, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body144:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %93 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs31, align 8
  %ODR_C150 = getelementptr inbounds %struct.src_mu_registers, ptr %94, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C150, i32 1048576) #7, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %do.body144, %if.end140.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %do.body28.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then48.cleanup_crit_edge ], [ 0, %do.body28.cleanup_crit_edge ], [ 0, %if.end140.cleanup_crit_edge ], [ 0, %do.body144 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -110, %if.end68.cleanup_crit_edge ]
  %adapter_enable_int154 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 3
  %95 = ptrtoint ptr %adapter_enable_int154 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %adapter_enable_int154, align 4
  tail call void %96(ptr noundef %dev) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_src_disable_interrupt(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %OIMR = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %OIMR to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %OIMR, align 4
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %OIMR1 = getelementptr inbounds %struct.src_mu_registers, ptr %2, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR1, i32 -1) #7, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_src_restart_adapter(ptr noundef %dev, i32 noundef %bled, i8 noundef zeroext %reset_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bled)
  %cmp = icmp slt i32 %bled, 0
  br i1 %cmp, label %invalid_out, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bled)
  %tobool.not = icmp eq i32 %bled, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.end3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end3:                                          ; preds = %if.end
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.26, i32 noundef %bled) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bled)
  %cmp4.not = icmp eq i32 %bled, 1
  br i1 %cmp4.not, label %if.end3.if.end13_crit_edge, label %land.lhs.true

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %2 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  %4 = and i8 %reset_type, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool8.not = icmp eq i8 %4, 0
  %or.cond = or i1 %tobool8.not, %tobool5.not
  %and11 = and i8 %reset_type, -2
  %spec.select113 = select i1 %or.cond, i8 %reset_type, i8 %and11
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %if.end3.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %reset_type.addr.0 = phi i8 [ %reset_type, %if.end3.if.end13_crit_edge ], [ %spec.select113, %land.lhs.true ], [ %reset_type, %if.end.if.end13_crit_edge ]
  %adapter_enable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 3
  %5 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aac_src_disable_interrupt, ptr %adapter_enable_int, align 4
  %pdev17 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %6 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev17, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %conv19 = zext i8 %reset_type.addr.0 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.31, i32 noundef %conv19) #10
  %and21 = and i32 %conv19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end13.if.end42_crit_edge, label %do.end26

if.end13.if.end42_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end26:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev17, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev28, ptr noundef nonnull @.str.34) #10
  tail call fastcc void @aac_send_iop_reset(ptr noundef %dev)
  %call = tail call fastcc zeroext i1 @aac_is_ctrl_up_and_running(ptr noundef %dev)
  %10 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev17, align 4
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  br i1 %call, label %do.end38, label %do.end33

do.end33:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.38) #10
  br label %if.end42

do.end38:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev40, ptr noundef nonnull @.str.41) #10
  br label %set_startup

if.end42:                                         ; preds = %do.end33, %if.end13.if.end42_crit_edge
  %sa_firmware43 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %12 = ptrtoint ptr %sa_firmware43 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sa_firmware43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool44.not = icmp eq i8 %13, 0
  br i1 %tobool44.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev17, align 4
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.44) #10
  br label %out

if.end51:                                         ; preds = %if.end42
  %and53 = and i32 %conv19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.set_startup_crit_edge, label %do.end58

if.end51.set_startup_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_startup

do.end58:                                         ; preds = %if.end51
  %16 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev17, align 4
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev60, ptr noundef nonnull @.str.47) #10
  tail call fastcc void @aac_send_hardware_soft_reset(ptr noundef %dev)
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %18 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %msi_enabled, align 8
  %call61 = tail call fastcc zeroext i1 @aac_is_ctrl_up_and_running(ptr noundef %dev)
  %19 = ptrtoint ptr %pdev17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev17, align 4
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  br i1 %call61, label %do.end73, label %do.end67

do.end67:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75, ptr noundef nonnull @.str.50) #10
  br label %out

do.end73:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev75, ptr noundef nonnull @.str.53) #10
  br label %set_startup

set_startup:                                      ; preds = %do.end73, %if.end51.set_startup_crit_edge, %do.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @startup_timeout to i32))
  %21 = load i32, ptr @startup_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %21)
  %cmp78 = icmp slt i32 %21, 300
  br i1 %cmp78, label %if.then80, label %set_startup.out_crit_edge

set_startup.out_crit_edge:                        ; preds = %set_startup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then80:                                        ; preds = %set_startup
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @startup_timeout to i32))
  store i32 300, ptr @startup_timeout, align 4
  br label %out

out:                                              ; preds = %invalid_out, %if.then80, %set_startup.out_crit_edge, %do.end67, %do.end48
  %ret.0 = phi i32 [ 0, %if.then80 ], [ 0, %set_startup.out_crit_edge ], [ -19, %do.end67 ], [ -19, %do.end48 ], [ %spec.select, %invalid_out ]
  ret i32 %ret.0

invalid_out:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %OMR = getelementptr inbounds %struct.src_mu_registers, ptr %23, i32 0, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %25 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool85.not = icmp eq i32 %25, 0
  %spec.select = select i1 %tobool85.not, i32 0, i32 -19
  br label %out
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_src_check_health(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %OMR = getelementptr inbounds %struct.src_mu_registers, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR) #7, !srcloc !111
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %err_blink, !prof !140

if.end:                                           ; preds = %entry
  %4 = and i32 %3, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end23, label %if.end.cleanup_crit_edge, !prof !141

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and24 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %. = select i1 %tobool25.not, i32 -3, i32 0, !prof !142
  br label %cleanup

err_blink:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %3, 16
  %and36 = and i32 %shr, 255
  br label %cleanup

cleanup:                                          ; preds = %err_blink, %if.end23, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %and36, %err_blink ], [ %., %if.end23 ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_src_interrupt_adapter(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @src_sync_cmd(ptr noundef %dev, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_src_notify_adapter(ptr nocapture noundef readonly %dev, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %event, label %do.body36 [
    i32 2, label %do.body
    i32 11, label %do.body2
    i32 6, label %do.body9
    i32 13, label %do.body16
    i32 15, label %do.body23
    i32 16, label %do.body30
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %ODR_C = getelementptr inbounds %struct.src_mu_registers, ptr %2, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C, i32 2097152) #7, !srcloc !114
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %regs4 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %3 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs4, align 8
  %ODR_C7 = getelementptr inbounds %struct.src_mu_registers, ptr %4, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C7, i32 256) #7, !srcloc !114
  br label %sw.epilog

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @arm_heavy_mb() #7
  %regs11 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %5 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs11, align 8
  %ODR_C14 = getelementptr inbounds %struct.src_mu_registers, ptr %6, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C14, i32 4194304) #7, !srcloc !114
  br label %sw.epilog

do.body16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %regs18 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %7 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs18, align 8
  %ODR_C21 = getelementptr inbounds %struct.src_mu_registers, ptr %8, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C21, i32 8388608) #7, !srcloc !114
  br label %sw.epilog

do.body23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  tail call void @arm_heavy_mb() #7
  %regs25 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %9 = ptrtoint ptr %regs25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs25, align 8
  %ODR_C28 = getelementptr inbounds %struct.src_mu_registers, ptr %10, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C28, i32 1024) #7, !srcloc !114
  br label %sw.epilog

do.body30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %regs32 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %11 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs32, align 8
  %ODR_C35 = getelementptr inbounds %struct.src_mu_registers, ptr %12, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C35, i32 512) #7, !srcloc !114
  br label %sw.epilog

do.body36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/src.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 380, 0\0A.popsection", ""() #7, !srcloc !173
  unreachable

sw.epilog:                                        ; preds = %do.body30, %do.body23, %do.body16, %do.body9, %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_src_start_adapter(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 74
  %0 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32.not = icmp eq i32 %1, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vector_cap = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 75
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %vector_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vector_cap, align 4
  %mul = mul i32 %3, %i.033
  %arrayidx = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 27, i32 %i.033
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.aac_dev, ptr %dev, i32 0, i32 28, i32 %i.033
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx1, i32 noundef 4) #7
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %arrayidx1, align 4
  %inc = add nuw i32 %i.033, 1
  %6 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_msix, align 8
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %msix_counter = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 77
  %call.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %msix_counter, i32 noundef 4) #7
  %8 = ptrtoint ptr %msix_counter to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %msix_counter, align 4
  %fibs_pushed_no = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 29
  %9 = ptrtoint ptr %fibs_pushed_no to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %fibs_pushed_no, align 8
  %init2 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 23
  %10 = ptrtoint ptr %init2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init2, align 8
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 59
  %12 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %comm_interface, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %13)
  %cmp3 = icmp eq i8 %13, 5
  %call = tail call i64 @ktime_get_real_seconds() #7
  %conv5 = trunc i64 %call to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv5)
  %host_elapsed_seconds11 = getelementptr inbounds %struct._r7, ptr %11, i32 0, i32 12
  %host_elapsed_seconds = getelementptr inbounds %struct._r8, ptr %11, i32 0, i32 2
  %host_elapsed_seconds11.sink = select i1 %cmp3, ptr %host_elapsed_seconds, ptr %host_elapsed_seconds11
  %.sink34 = select i1 %cmp3, i32 1056, i32 0
  %15 = ptrtoint ptr %host_elapsed_seconds11.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %host_elapsed_seconds11.sink, align 4
  %init_pa12 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 24
  %16 = ptrtoint ptr %init_pa12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %init_pa12, align 4
  %call13 = tail call i32 @src_sync_cmd(ptr noundef %dev, i32 noundef 5, i32 noundef %17, i32 noundef 0, i32 noundef %.sink34, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_init_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_src_enable_interrupt_message(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %msi_enabled.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %0 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msi_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %cond.i = select i1 %tobool.not.i, i32 -5, i32 -6
  %OIMR.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %2 = ptrtoint ptr %OIMR.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond.i, ptr %OIMR.i, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #7
  %regs.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %OIMR1.i = getelementptr inbounds %struct.src_mu_registers, ptr %5, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR1.i, i32 %3) #7, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_srcv_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %status.i = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %name1 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 8
  %a_ops = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17
  %adapter_ioremap = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 8
  %4 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @aac_srcv_ioremap, ptr %adapter_ioremap, align 4
  %adapter_comm = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 15
  %5 = ptrtoint ptr %adapter_comm to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aac_src_select_comm, ptr %adapter_comm, align 4
  %base_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 21
  %6 = ptrtoint ptr %base_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1048576, ptr %base_size, align 8
  %pdev.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 4
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %8, i32 0, i32 47, i32 2
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 8
  %call.i = tail call ptr @ioremap(i32 noundef %10, i32 noundef 1024) #7
  %bar1.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45, i32 0, i32 1
  %11 = ptrtoint ptr %bar1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %bar1.i, align 4
  %base4.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %12 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %base4.i, align 8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.end8.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end8.i:                                        ; preds = %entry
  %regs3.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %base_start.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %base_start.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_start.i, align 8
  %call9.i = tail call ptr @ioremap(i32 noundef %14, i32 noundef 1048576) #7
  %15 = ptrtoint ptr %regs3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i, ptr %regs3.i, align 8
  %16 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i, ptr %base4.i, align 8
  %cmp14.i = icmp eq ptr %call9.i, null
  br i1 %cmp14.i, label %if.then15.i, label %if.end

if.then15.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bar1.i, align 4
  tail call void @iounmap(ptr noundef %18) #7
  %19 = ptrtoint ptr %bar1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %bar1.i, align 4
  br label %do.end

do.end:                                           ; preds = %if.then15.i, %entry.do.end_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %if.end8.i
  %IndexRegs.i = getelementptr inbounds %struct.src_registers, ptr %call9.i, i32 0, i32 1, i32 0, i32 0, i32 970
  %IndexRegs22.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 48
  %20 = ptrtoint ptr %IndexRegs22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %IndexRegs.i, ptr %IndexRegs22.i, align 8
  %adapter_sync_cmd = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 4
  %21 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @src_sync_cmd, ptr %adapter_sync_cmd, align 4
  %adapter_enable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 3
  %22 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @aac_src_disable_interrupt, ptr %adapter_enable_int, align 4
  %init_reset = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 85
  %23 = ptrtoint ptr %init_reset to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %init_reset, align 8, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool9.not = icmp eq i8 %24, 0
  br i1 %tobool9.not, label %if.end.if.end17_crit_edge, label %if.then10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then10:                                        ; preds = %if.end
  %25 = ptrtoint ptr %init_reset to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %init_reset, align 8
  %26 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs3.i, align 8
  %OMR.i = getelementptr inbounds %struct.src_mu_registers, ptr %27, i32 0, i32 12
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR.i) #7, !srcloc !111
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status.i) #7
  %30 = getelementptr inbounds [5 x i32], ptr %status.i, i32 0, i32 1
  %31 = getelementptr inbounds [5 x i32], ptr %status.i, i32 0, i32 2
  %32 = getelementptr inbounds [5 x i32], ptr %status.i, i32 0, i32 3
  %33 = getelementptr inbounds [5 x i32], ptr %status.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i291 = icmp eq i32 %28, -1
  %and.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.i291, i1 true, i1 %tobool.not.i
  %34 = call ptr @memset(ptr %status.i, i32 255, i32 20)
  br i1 %or.cond.i, label %if.then10.if.then14_crit_edge, label %if.end3.i

if.then10.if.then14_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end3.i:                                        ; preds = %if.then10
  %in_soft_reset.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 64
  %35 = ptrtoint ptr %in_soft_reset.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %in_soft_reset.i, align 1
  %and4.i = and i32 %29, 65536
  %msi_enabled.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %36 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and4.i, ptr %msi_enabled.i, align 8
  %37 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter_sync_cmd, align 4
  %call13.i = call i32 %38(ptr noundef %dev, i32 noundef 25, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %status.i, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end3.i.do.end76.i.sink.split_crit_edge

if.end3.i.do.end76.i.sink.split_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i.sink.split

if.end16.i:                                       ; preds = %if.end3.i
  %call18.i = call fastcc i32 @aac_src_wait_sync(ptr noundef %dev, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end16.i.do.end76.i.sink.split_crit_edge

if.end16.i.do.end76.i.sink.split_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i.sink.split

if.end21.i:                                       ; preds = %if.end16.i
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %30, align 4
  %and23.i = and i32 %40, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.do.end76.i.sink.split_crit_edge, label %land.lhs.true.i

if.end21.i.do.end76.i.sink.split_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i.sink.split

land.lhs.true.i:                                  ; preds = %if.end21.i
  %41 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %33, align 4
  %and26.i = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true.i.do.end76.i.sink.split_crit_edge, label %land.lhs.true33.i

land.lhs.true.i.do.end76.i.sink.split_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i.sink.split

land.lhs.true33.i:                                ; preds = %land.lhs.true.i
  %and35.i = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true33.i.if.end38.i_crit_edge, label %if.then37.i

land.lhs.true33.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then37.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  %sa_firmware.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 66
  %43 = ptrtoint ptr %sa_firmware.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %sa_firmware.i, align 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %land.lhs.true33.i.if.end38.i_crit_edge
  %44 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter_sync_cmd, align 4
  %call52.i = call i32 %45(ptr noundef %dev, i32 noundef 53, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %status.i, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end55.i, label %if.end38.i.do.end76.i.sink.split_crit_edge

if.end38.i.do.end76.i.sink.split_crit_edge:       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i.sink.split

if.end55.i:                                       ; preds = %if.end38.i
  %call58.i = call fastcc i32 @aac_src_wait_sync(ptr noundef %dev, ptr noundef nonnull %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end55.i.do.end76.i.sink.split_crit_edge

if.end55.i.do.end76.i.sink.split_crit_edge:       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i.sink.split

if.end61.i:                                       ; preds = %if.end55.i
  %46 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool63.not.i = icmp eq i32 %47, 0
  br i1 %tobool63.not.i, label %if.end61.i.out.i_crit_edge, label %do.end.i

if.end61.i.out.i_crit_edge:                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

do.end.i:                                         ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i, align 4
  %dev65.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef %47) #10
  br label %out.i

out.i:                                            ; preds = %do.end.i, %if.end61.i.out.i_crit_edge
  %50 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs3.i, align 8
  %OMR.i314 = getelementptr inbounds %struct.src_mu_registers, ptr %51, i32 0, i32 12
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR.i314) #7, !srcloc !111
  %53 = call i32 @llvm.bswap.i32(i32 %52) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and.i315 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i315)
  %tobool.not.i316 = icmp eq i32 %and.i315, 0
  br i1 %tobool.not.i316, label %if.end.i317, label %aac_src_check_health.exit326, !prof !140

if.end.i317:                                      ; preds = %out.i
  %54 = and i32 %53, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %if.end23.i321, label %if.end.i317.do.end76.i.sink.split_crit_edge, !prof !141

if.end.i317.do.end76.i.sink.split_crit_edge:      ; preds = %if.end.i317
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i.sink.split

if.end23.i321:                                    ; preds = %if.end.i317
  %and24.i318 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i318)
  %tobool25.not.i319 = icmp eq i32 %and24.i318, 0
  br i1 %tobool25.not.i319, label %if.end23.i321.do.end76.i.sink.split_crit_edge, label %aac_src_check_health.exit326.thread331

if.end23.i321.do.end76.i.sink.split_crit_edge:    ; preds = %if.end23.i321
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i.sink.split

aac_src_check_health.exit326.thread331:           ; preds = %if.end23.i321
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %in_soft_reset.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %in_soft_reset.i, align 1
  %57 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %msi_enabled.i, align 8
  br label %aac_src_soft_reset.exit.thread

aac_src_check_health.exit326:                     ; preds = %out.i
  %shr.i322 = lshr i32 %53, 16
  %and36.i323 = and i32 %shr.i322, 255
  %58 = ptrtoint ptr %in_soft_reset.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %in_soft_reset.i, align 1
  %59 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %msi_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i323)
  %tobool72.not.i = icmp eq i32 %and36.i323, 0
  br i1 %tobool72.not.i, label %aac_src_check_health.exit326.aac_src_soft_reset.exit.thread_crit_edge, label %aac_src_check_health.exit326.do.end76.i_crit_edge

aac_src_check_health.exit326.do.end76.i_crit_edge: ; preds = %aac_src_check_health.exit326
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i

aac_src_check_health.exit326.aac_src_soft_reset.exit.thread_crit_edge: ; preds = %aac_src_check_health.exit326
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_src_soft_reset.exit.thread

do.end76.i.sink.split:                            ; preds = %if.end23.i321.do.end76.i.sink.split_crit_edge, %if.end.i317.do.end76.i.sink.split_crit_edge, %if.end55.i.do.end76.i.sink.split_crit_edge, %if.end38.i.do.end76.i.sink.split_crit_edge, %land.lhs.true.i.do.end76.i.sink.split_crit_edge, %if.end21.i.do.end76.i.sink.split_crit_edge, %if.end16.i.do.end76.i.sink.split_crit_edge, %if.end3.i.do.end76.i.sink.split_crit_edge
  %state.0115.i.ph = phi i32 [ 4, %if.end55.i.do.end76.i.sink.split_crit_edge ], [ 2, %if.end21.i.do.end76.i.sink.split_crit_edge ], [ 2, %land.lhs.true.i.do.end76.i.sink.split_crit_edge ], [ 1, %if.end16.i.do.end76.i.sink.split_crit_edge ], [ 3, %if.end38.i.do.end76.i.sink.split_crit_edge ], [ 0, %if.end3.i.do.end76.i.sink.split_crit_edge ], [ 5, %if.end.i317.do.end76.i.sink.split_crit_edge ], [ 5, %if.end23.i321.do.end76.i.sink.split_crit_edge ]
  %rc.0114.i.ph = phi i32 [ 3, %if.end55.i.do.end76.i.sink.split_crit_edge ], [ 2, %if.end21.i.do.end76.i.sink.split_crit_edge ], [ 2, %land.lhs.true.i.do.end76.i.sink.split_crit_edge ], [ 1, %if.end16.i.do.end76.i.sink.split_crit_edge ], [ %call52.i, %if.end38.i.do.end76.i.sink.split_crit_edge ], [ %call13.i, %if.end3.i.do.end76.i.sink.split_crit_edge ], [ -1, %if.end.i317.do.end76.i.sink.split_crit_edge ], [ -3, %if.end23.i321.do.end76.i.sink.split_crit_edge ]
  %60 = ptrtoint ptr %in_soft_reset.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %in_soft_reset.i, align 1
  %61 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %msi_enabled.i, align 8
  br label %do.end76.i

do.end76.i:                                       ; preds = %do.end76.i.sink.split, %aac_src_check_health.exit326.do.end76.i_crit_edge
  %state.0115.i = phi i32 [ 5, %aac_src_check_health.exit326.do.end76.i_crit_edge ], [ %state.0115.i.ph, %do.end76.i.sink.split ]
  %rc.0114.i = phi i32 [ %and36.i323, %aac_src_check_health.exit326.do.end76.i_crit_edge ], [ %rc.0114.i.ph, %do.end76.i.sink.split ]
  %62 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i, align 4
  %dev78.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %arrayidx79.i = getelementptr [7 x ptr], ptr @__const.aac_src_soft_reset.state_str, i32 0, i32 %state.0115.i
  %64 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx79.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, ptr noundef %65, i32 noundef %rc.0114.i) #10
  br label %if.then14

aac_src_soft_reset.exit.thread:                   ; preds = %aac_src_check_health.exit326.aac_src_soft_reset.exit.thread_crit_edge, %aac_src_check_health.exit326.thread331
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status.i) #7
  br label %if.end17

if.then14:                                        ; preds = %do.end76.i, %if.then10.if.then14_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status.i) #7
  %call15 = call i32 @aac_src_restart_adapter(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 3)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %aac_src_soft_reset.exit.thread, %if.end.if.end17_crit_edge
  %restart.0 = phi i32 [ 1, %if.then14 ], [ 0, %if.end.if.end17_crit_edge ], [ 0, %aac_src_soft_reset.exit.thread ]
  %66 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs3.i, align 8
  %OMR = getelementptr inbounds %struct.src_mu_registers, ptr %67, i32 0, i32 12
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR) #7, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  %69 = and i32 %68, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool21.not = icmp eq i32 %69, 0
  br i1 %tobool21.not, label %if.end17.if.end47_crit_edge, label %if.then22

if.end17.if.end47_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then22:                                        ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %70, 30000
  br label %do.body23

do.body23:                                        ; preds = %do.cond41.do.body23_crit_edge, %if.then22
  %71 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs3.i, align 8
  %OMR29 = getelementptr inbounds %struct.src_mu_registers, ptr %72, i32 0, i32 12
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR29) #7, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end36, label %do.cond41

do.end36:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name1, align 8
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %76, i32 noundef %1) #10
  br label %cleanup

do.cond41:                                        ; preds = %do.body23
  %77 = and i32 %73, 12582912
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %do.cond41.do.body23_crit_edge, label %do.end46

do.cond41.do.body23_crit_edge:                    ; preds = %do.cond41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

do.end46:                                         ; preds = %do.cond41
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 10000) #7
  br label %if.end47

if.end47:                                         ; preds = %do.end46, %if.end17.if.end47_crit_edge
  %79 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs3.i, align 8
  %OMR53 = getelementptr inbounds %struct.src_mu_registers, ptr %80, i32 0, i32 12
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR53) #7, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  %82 = and i32 %81, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool58.not = icmp eq i32 %82, 0
  br i1 %tobool58.not, label %if.end47.if.end66_crit_edge, label %if.then59

if.end47.if.end66_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then59:                                        ; preds = %if.end47
  %83 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs3.i, align 8
  %OMR.i295 = getelementptr inbounds %struct.src_mu_registers, ptr %84, i32 0, i32 12
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR.i295) #7, !srcloc !111
  %86 = call i32 @llvm.bswap.i32(i32 %85) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and.i296 = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i296)
  %tobool.not.i297 = icmp eq i32 %and.i296, 0
  br i1 %tobool.not.i297, label %if.end.i, label %err_blink.i, !prof !140

if.end.i:                                         ; preds = %if.then59
  %87 = and i32 %86, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %if.end23.i, label %if.end.i.aac_src_check_health.exit_crit_edge, !prof !141

if.end.i.aac_src_check_health.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_src_check_health.exit

if.end23.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and24.i = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %..i = select i1 %tobool25.not.i, i32 -3, i32 0, !prof !142
  br label %aac_src_check_health.exit

err_blink.i:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %86, 16
  %and36.i = and i32 %shr.i, 255
  br label %aac_src_check_health.exit

aac_src_check_health.exit:                        ; preds = %err_blink.i, %if.end23.i, %if.end.i.aac_src_check_health.exit_crit_edge
  %retval.0.i298 = phi i32 [ %and36.i, %err_blink.i ], [ %..i, %if.end23.i ], [ -1, %if.end.i.aac_src_check_health.exit_crit_edge ]
  %call61 = call i32 @aac_src_restart_adapter(ptr noundef %dev, i32 noundef %retval.0.i298, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %aac_src_check_health.exit.cleanup_crit_edge

aac_src_check_health.exit.cleanup_crit_edge:      ; preds = %aac_src_check_health.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %aac_src_check_health.exit
  call void @__sanitizer_cov_trace_pc() #9
  %inc65 = add nuw nsw i32 %restart.0, 1
  br label %if.end66

if.end66:                                         ; preds = %if.end64, %if.end47.if.end66_crit_edge
  %restart.1 = phi i32 [ %inc65, %if.end64 ], [ %restart.0, %if.end47.if.end66_crit_edge ]
  %89 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs3.i, align 8
  %OMR72 = getelementptr inbounds %struct.src_mu_registers, ptr %90, i32 0, i32 12
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR72) #7, !srcloc !111
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  %and76 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end85, label %do.end81

do.end81:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name1, align 8
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %94, i32 noundef %1) #10
  br label %cleanup

if.end85:                                         ; preds = %if.end66
  %and86 = and i32 %92, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end95, label %do.end91

do.end91:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name1, align 8
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %96, i32 noundef %1) #10
  br label %cleanup

if.end95:                                         ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  br label %do.body96

do.body96:                                        ; preds = %if.end145.do.body96_crit_edge, %if.end95
  %restart.2 = phi i32 [ %restart.1, %if.end95 ], [ %restart.3, %if.end145.do.body96_crit_edge ]
  %start.0 = phi i32 [ %97, %if.end95 ], [ %start.2, %if.end145.do.body96_crit_edge ]
  %98 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regs3.i, align 8
  %OMR102 = getelementptr inbounds %struct.src_mu_registers, ptr %99, i32 0, i32 12
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR102) #7, !srcloc !111
  %101 = call i32 @llvm.bswap.i32(i32 %100)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %100)
  %cmp106 = icmp eq i32 %100, -1
  %spec.store.select = select i1 %cmp106, i32 0, i32 %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.2)
  %tobool109.not = icmp eq i32 %restart.2, 0
  %and110 = and i32 %spec.store.select, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  %or.cond290 = select i1 %tobool109.not, i1 true, i1 %tobool111.not
  br i1 %or.cond290, label %lor.lhs.false, label %do.body96.do.end118_crit_edge

do.body96.do.end118_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end118

lor.lhs.false:                                    ; preds = %do.body96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @startup_timeout to i32))
  %102 = load i32, ptr @startup_timeout, align 4
  %mul = mul i32 %102, 100
  %add112 = add i32 %mul, %start.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %sub113 = sub i32 %add112, %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub113)
  %cmp114 = icmp slt i32 %sub113, 0
  br i1 %cmp114, label %lor.lhs.false.do.end118_crit_edge, label %if.end122

lor.lhs.false.do.end118_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end118

do.end118:                                        ; preds = %lor.lhs.false.do.end118_crit_edge, %do.body96.do.end118_crit_edge
  %104 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name1, align 8
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %105, i32 noundef %1, i32 noundef %spec.store.select) #10
  br label %cleanup

if.end122:                                        ; preds = %lor.lhs.false
  br i1 %tobool109.not, label %land.lhs.true124, label %if.end122.if.end145_crit_edge

if.end122.if.end145_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

land.lhs.true124:                                 ; preds = %if.end122
  br i1 %tobool111.not, label %lor.lhs.false127, label %land.lhs.true124.if.then134_crit_edge

land.lhs.true124.if.then134_crit_edge:            ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then134

lor.lhs.false127:                                 ; preds = %land.lhs.true124
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %102)
  %cmp128 = icmp sgt i32 %102, 60
  %sub129 = add i32 %102, -60
  %div = sdiv i32 %102, 2
  %cond = select i1 %cmp128, i32 %sub129, i32 %div
  %mul130 = mul i32 %cond, 100
  %add131 = add i32 %mul130, %start.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %106 = load volatile i32, ptr @jiffies, align 128
  %sub132 = sub i32 %add131, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub132)
  %cmp133 = icmp slt i32 %sub132, 0
  br i1 %cmp133, label %lor.lhs.false127.if.then134_crit_edge, label %lor.lhs.false127.if.end145_crit_edge

lor.lhs.false127.if.end145_crit_edge:             ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

lor.lhs.false127.if.then134_crit_edge:            ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then134

if.then134:                                       ; preds = %lor.lhs.false127.if.then134_crit_edge, %land.lhs.true124.if.then134_crit_edge
  %107 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs3.i, align 8
  %OMR.i300 = getelementptr inbounds %struct.src_mu_registers, ptr %108, i32 0, i32 12
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR.i300) #7, !srcloc !111
  %110 = call i32 @llvm.bswap.i32(i32 %109) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %and.i301 = and i32 %110, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i301)
  %tobool.not.i302 = icmp eq i32 %and.i301, 0
  br i1 %tobool.not.i302, label %if.end.i303, label %err_blink.i310, !prof !140

if.end.i303:                                      ; preds = %if.then134
  %111 = and i32 %110, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %if.end23.i307, label %if.end.i303.aac_src_check_health.exit312_crit_edge, !prof !141

if.end.i303.aac_src_check_health.exit312_crit_edge: ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_src_check_health.exit312

if.end23.i307:                                    ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #9
  %and24.i304 = and i32 %110, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i304)
  %tobool25.not.i305 = icmp eq i32 %and24.i304, 0
  %..i306 = select i1 %tobool25.not.i305, i32 -3, i32 0, !prof !142
  br label %aac_src_check_health.exit312

err_blink.i310:                                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i308 = lshr i32 %110, 16
  %and36.i309 = and i32 %shr.i308, 255
  br label %aac_src_check_health.exit312

aac_src_check_health.exit312:                     ; preds = %err_blink.i310, %if.end23.i307, %if.end.i303.aac_src_check_health.exit312_crit_edge
  %retval.0.i311 = phi i32 [ %and36.i309, %err_blink.i310 ], [ %..i306, %if.end23.i307 ], [ -1, %if.end.i303.aac_src_check_health.exit312_crit_edge ]
  %call136 = call i32 @aac_src_restart_adapter(ptr noundef %dev, i32 noundef %retval.0.i311, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.then142, label %aac_src_check_health.exit312.if.end145_crit_edge, !prof !140

aac_src_check_health.exit312.if.end145_crit_edge: ; preds = %aac_src_check_health.exit312
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145

if.then142:                                       ; preds = %aac_src_check_health.exit312
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %113 = load volatile i32, ptr @jiffies, align 128
  br label %if.end145

if.end145:                                        ; preds = %if.then142, %aac_src_check_health.exit312.if.end145_crit_edge, %lor.lhs.false127.if.end145_crit_edge, %if.end122.if.end145_crit_edge
  %restart.3 = phi i32 [ %restart.2, %if.end122.if.end145_crit_edge ], [ 0, %lor.lhs.false127.if.end145_crit_edge ], [ 1, %if.then142 ], [ 1, %aac_src_check_health.exit312.if.end145_crit_edge ]
  %start.2 = phi i32 [ %start.0, %if.end122.if.end145_crit_edge ], [ %start.0, %lor.lhs.false127.if.end145_crit_edge ], [ %113, %if.then142 ], [ %start.0, %aac_src_check_health.exit312.if.end145_crit_edge ]
  call void @msleep(i32 noundef 1) #7
  %and147 = and i32 %spec.store.select, 128
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end145.do.body96_crit_edge, label %do.end151

if.end145.do.body96_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body96

do.end151:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.3)
  %tobool152.not = icmp eq i32 %restart.3, 0
  br i1 %tobool152.not, label %do.end151.if.end156_crit_edge, label %land.lhs.true153

do.end151.if.end156_crit_edge:                    ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

land.lhs.true153:                                 ; preds = %do.end151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_commit to i32))
  %114 = load i32, ptr @aac_commit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool154.not = icmp eq i32 %114, 0
  br i1 %tobool154.not, label %land.lhs.true153.if.end156_crit_edge, label %if.then155

land.lhs.true153.if.end156_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end156

if.then155:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @aac_commit to i32))
  store i32 1, ptr @aac_commit, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %land.lhs.true153.if.end156_crit_edge, %do.end151.if.end156_crit_edge
  %115 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @aac_src_interrupt_adapter, ptr %a_ops, align 4
  %adapter_disable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 2
  %116 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @aac_src_disable_interrupt, ptr %adapter_disable_int, align 4
  %117 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @aac_src_disable_interrupt, ptr %adapter_enable_int, align 4
  %adapter_notify = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 1
  %118 = ptrtoint ptr %adapter_notify to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @aac_src_notify_adapter, ptr %adapter_notify, align 4
  %119 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @src_sync_cmd, ptr %adapter_sync_cmd, align 4
  %adapter_check_health = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 5
  %120 = ptrtoint ptr %adapter_check_health to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @aac_src_check_health, ptr %adapter_check_health, align 4
  %adapter_restart = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 6
  %121 = ptrtoint ptr %adapter_restart to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @aac_src_restart_adapter, ptr %adapter_restart, align 4
  %adapter_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 7
  %122 = ptrtoint ptr %adapter_start to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @aac_src_start_adapter, ptr %adapter_start, align 4
  %123 = ptrtoint ptr %adapter_comm to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %adapter_comm, align 4
  %call169 = call i32 %124(ptr noundef %dev, i32 noundef 1) #7
  %125 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %adapter_disable_int, align 4
  call void %126(ptr noundef %dev) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  call void @arm_heavy_mb() #7
  %127 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs3.i, align 8
  %ODR_C = getelementptr inbounds %struct.src_mu_registers, ptr %128, i32 0, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C, i32 -1) #7, !srcloc !114
  %129 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %adapter_enable_int, align 4
  call void %130(ptr noundef %dev) #7
  %call180 = call ptr @aac_init_adapter(ptr noundef %dev) #7
  %cmp181 = icmp eq ptr %call180, null
  br i1 %cmp181, label %if.end156.cleanup_crit_edge, label %if.end183

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end183:                                        ; preds = %if.end156
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 59
  %131 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %comm_interface, align 2
  %133 = and i8 %132, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %133)
  %switch = icmp eq i8 %133, 4
  br i1 %switch, label %if.end192, label %if.end183.cleanup_crit_edge

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end192:                                        ; preds = %if.end183
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  %134 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool193.not = icmp eq i32 %135, 0
  br i1 %tobool193.not, label %if.end192.if.end195_crit_edge, label %if.then194

if.end192.if.end195_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.then194:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs3.i, align 8
  %IDR.i = getelementptr inbounds %struct.src_mu_registers, ptr %137, i32 0, i32 2
  %138 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR.i) #7, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %139 = or i32 %138, 1073741824
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  call void @arm_heavy_mb() #7
  %140 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs3.i, align 8
  %IDR22.i = getelementptr inbounds %struct.src_mu_registers, ptr %141, i32 0, i32 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR22.i, i32 %139) #7, !srcloc !114
  %142 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regs3.i, align 8
  %IDR28.i = getelementptr inbounds %struct.src_mu_registers, ptr %143, i32 0, i32 2
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR28.i) #7, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  call void @arm_heavy_mb() #7
  %145 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs3.i, align 8
  %IOAR.i = getelementptr inbounds %struct.src_mu_registers, ptr %146, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IOAR.i, i32 520093852) #7, !srcloc !114
  %147 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs3.i, align 8
  %OIMR43.i = getelementptr inbounds %struct.src_mu_registers, ptr %148, i32 0, i32 5
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OIMR43.i) #7, !srcloc !111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  call void @arm_heavy_mb() #7
  %150 = and i32 %149, -83886081
  %151 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs3.i, align 8
  %OIMR53.i = getelementptr inbounds %struct.src_mu_registers, ptr %152, i32 0, i32 5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR53.i, i32 %150) #7, !srcloc !114
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %if.end192.if.end195_crit_edge
  %call196 = call i32 @aac_acquire_irq(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.end199, label %if.end195.cleanup_crit_edge

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end199:                                        ; preds = %if.end195
  %153 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pdev.i, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %154, i32 0, i32 47, i32 2
  %155 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx, align 8
  %dbg_base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 20
  %157 = ptrtoint ptr %dbg_base to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %dbg_base, align 4
  %158 = ptrtoint ptr %bar1.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %bar1.i, align 4
  %dbg_base_mapped = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 47
  %160 = ptrtoint ptr %dbg_base_mapped to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %159, ptr %dbg_base_mapped, align 4
  %dbg_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 22
  %161 = ptrtoint ptr %dbg_size to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1024, ptr %dbg_size, align 4
  %162 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @aac_src_enable_interrupt_message, ptr %adapter_enable_int, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  call void @arm_heavy_mb() #7
  %163 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i.i = icmp eq i32 %164, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 -5, i32 -6
  %OIMR.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %165 = ptrtoint ptr %OIMR.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %cond.i.i, ptr %OIMR.i.i, align 4
  %166 = call i32 @llvm.bswap.i32(i32 %cond.i.i) #7
  %167 = ptrtoint ptr %regs3.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs3.i, align 8
  %OIMR1.i.i = getelementptr inbounds %struct.src_mu_registers, ptr %168, i32 0, i32 5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OIMR1.i.i, i32 %166) #7, !srcloc !114
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %169 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool206.not = icmp eq i32 %170, 0
  br i1 %tobool206.not, label %if.then207, label %if.end199.cleanup_crit_edge

if.end199.cleanup_crit_edge:                      ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then207:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #9
  call void @aac_src_start_adapter(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then207, %if.end199.cleanup_crit_edge, %if.end195.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %if.end156.cleanup_crit_edge, %do.end118, %do.end91, %do.end81, %aac_src_check_health.exit.cleanup_crit_edge, %do.end36, %do.end
  %retval.0 = phi i32 [ 0, %if.then207 ], [ 0, %if.end199.cleanup_crit_edge ], [ -1, %if.end183.cleanup_crit_edge ], [ -1, %if.end195.cleanup_crit_edge ], [ -1, %if.end156.cleanup_crit_edge ], [ -1, %aac_src_check_health.exit.cleanup_crit_edge ], [ -1, %do.end118 ], [ -1, %do.end91 ], [ -1, %do.end81 ], [ -1, %do.end36 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_srcv_ioremap(ptr nocapture noundef %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  tail call void @iounmap(ptr noundef %1) #7
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %regs, align 8
  %base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %base, align 8
  br label %return

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %call = tail call ptr @ioremap(i32 noundef %7, i32 noundef 1024) #7
  %bar1 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45, i32 0, i32 1
  %8 = ptrtoint ptr %bar1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %bar1, align 4
  %base4 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %9 = ptrtoint ptr %base4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %base4, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end8

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end8:                                          ; preds = %if.end
  %regs3 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %base_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %base_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_start, align 8
  %call9 = tail call ptr @ioremap(i32 noundef %11, i32 noundef %size) #7
  %12 = ptrtoint ptr %regs3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %regs3, align 8
  %13 = ptrtoint ptr %base4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %base4, align 8
  %cmp14 = icmp eq ptr %call9, null
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bar1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bar1, align 4
  tail call void @iounmap(ptr noundef %15) #7
  %16 = ptrtoint ptr %bar1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %bar1, align 4
  br label %return

if.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %IndexRegs = getelementptr inbounds %struct.src_registers, ptr %call9, i32 0, i32 1, i32 0, i32 0, i32 970
  %IndexRegs22 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 48
  %17 = ptrtoint ptr %IndexRegs22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %IndexRegs, ptr %IndexRegs22, align 8
  br label %return

return:                                           ; preds = %if.end20, %if.then15, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -1, %if.then15 ], [ 0, %if.end20 ], [ 0, %if.then ], [ -1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_acquire_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_src_intr_message(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.aac_msix_ctx, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_id, align 4
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 76
  %4 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then3, label %if.then.if.then191_crit_edge

if.then.if.then191_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 45
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %ODR_MSI = getelementptr inbounds %struct.src_mu_registers, ptr %7, i32 0, i32 15
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR_MSI) #7, !srcloc !111
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  %and = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool5.not, i32 2, i32 6
  %and7 = lshr i32 %9, 9
  %10 = and i32 %and7, 8
  %11 = or i32 %spec.select, %10
  br label %if.end65

if.else:                                          ; preds = %entry
  %regs15 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 45
  %12 = ptrtoint ptr %regs15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs15, align 8
  %ODR_R = getelementptr inbounds %struct.src_mu_registers, ptr %13, i32 0, i32 7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR_R) #7, !srcloc !111
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  %and21 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %regs15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs15, align 8
  %ODR_C43 = getelementptr inbounds %struct.src_mu_registers, ptr %17, i32 0, i32 8
  br i1 %tobool22.not, label %if.else36, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C43, i32 33554432) #7, !srcloc !114
  %18 = ptrtoint ptr %regs15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs15, align 8
  %ODR_C32 = getelementptr inbounds %struct.src_mu_registers, ptr %19, i32 0, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR_C32) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  br label %if.then191

if.else36:                                        ; preds = %if.else
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C43, i32 %14) #7, !srcloc !114
  %21 = ptrtoint ptr %regs15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs15, align 8
  %ODR_C49 = getelementptr inbounds %struct.src_mu_registers, ptr %22, i32 0, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR_C49) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %24 = and i32 %15, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool54.not = icmp eq i32 %24, 0
  br i1 %tobool54.not, label %if.else57, label %if.else36.if.then156_crit_edge

if.else36.if.then156_crit_edge:                   ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156

if.else57:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  %25 = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool59.not = icmp eq i32 %25, 0
  %spec.select304 = select i1 %tobool59.not, i32 1, i32 9
  br label %if.end65

if.end65:                                         ; preds = %if.else57, %if.then3
  %mode.1 = phi i32 [ %spec.select304, %if.else57 ], [ %11, %if.then3 ]
  %bellbits.0 = phi i32 [ %15, %if.else57 ], [ %9, %if.then3 ]
  %and66 = and i32 %mode.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end153_crit_edge, label %if.then68

if.end65.if.end153_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then68:                                        ; preds = %if.end65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_sync_mode to i32))
  %26 = load i32, ptr @aac_sync_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool70.not = icmp eq i32 %26, 0
  br i1 %tobool70.not, label %land.lhs.true, label %if.then68.if.end90_crit_edge

if.then68.if.end90_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

land.lhs.true:                                    ; preds = %if.then68
  %27 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool72.not = icmp eq i32 %28, 0
  br i1 %tobool72.not, label %do.body74, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.body74:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %bellbits.0)
  %regs77 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 45
  %30 = ptrtoint ptr %regs77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs77, align 8
  %ODR_C80 = getelementptr inbounds %struct.src_mu_registers, ptr %31, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C80, i32 %29) #7, !srcloc !114
  %32 = ptrtoint ptr %regs77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs77, align 8
  %ODR_C86 = getelementptr inbounds %struct.src_mu_registers, ptr %33, i32 0, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR_C86) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  br label %if.end90

if.end90:                                         ; preds = %do.body74, %land.lhs.true.if.end90_crit_edge, %if.then68.if.end90_crit_edge
  %sync_fib = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 71
  %35 = ptrtoint ptr %sync_fib to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sync_fib, align 8
  %tobool91.not = icmp eq ptr %36, null
  br i1 %tobool91.not, label %if.end90.if.end148_crit_edge, label %if.then92

if.end90.if.end148_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then92:                                        ; preds = %if.end90
  %callback = getelementptr inbounds %struct.fib, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %callback, align 4
  %tobool94.not = icmp eq ptr %38, null
  br i1 %tobool94.not, label %if.then92.do.body102_crit_edge, label %if.then95

if.then92.do.body102_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

if.then95:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %callback_data = getelementptr inbounds %struct.fib, ptr %36, i32 0, i32 8
  %39 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %callback_data, align 4
  tail call void %38(ptr noundef %40, ptr noundef nonnull %36) #7
  br label %do.body102

do.body102:                                       ; preds = %if.then95, %if.then92.do.body102_crit_edge
  %41 = ptrtoint ptr %sync_fib to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sync_fib, align 8
  %event_lock = getelementptr inbounds %struct.fib, ptr %42, i32 0, i32 5
  %call107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #7
  %43 = ptrtoint ptr %sync_fib to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sync_fib, align 8
  %flags = getelementptr inbounds %struct.fib, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and113 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %do.body102.if.end117_crit_edge, label %if.then115

do.body102.if.end117_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then115:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  %management_fib_count = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 67
  %47 = ptrtoint ptr %management_fib_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %management_fib_count, align 8
  %dec = add i32 %48, -1
  store i32 %dec, ptr %management_fib_count, align 8
  %event_wait = getelementptr inbounds %struct.fib, ptr %44, i32 0, i32 4
  tail call void @complete(ptr noundef %event_wait) #7
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %do.body102.if.end117_crit_edge
  %49 = ptrtoint ptr %sync_fib to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sync_fib, align 8
  %event_lock119 = getelementptr inbounds %struct.fib, ptr %50, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock119, i32 noundef %call107) #7
  %sync_lock = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 69
  %call128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sync_lock) #7
  %sync_fib_list = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 72
  %51 = ptrtoint ptr %sync_fib_list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %sync_fib_list, align 4
  %cmp.i.not = icmp eq ptr %52, %sync_fib_list
  br i1 %cmp.i.not, label %if.else139, label %if.then135

if.then135:                                       ; preds = %if.end117
  %add.ptr = getelementptr i8, ptr %52, i32 -128
  %53 = ptrtoint ptr %sync_fib to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr, ptr %sync_fib, align 8
  %call.i.i309 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %52) #7
  br i1 %call.i.i309, label %if.end.i.i, label %if.then135.list_del.exit_crit_edge

if.then135.list_del.exit_crit_edge:               ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %52, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then135.list_del.exit_crit_edge
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sync_lock, i32 noundef %call128) #7
  %adapter_sync_cmd = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 17, i32 4
  %62 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adapter_sync_cmd, align 4
  %64 = ptrtoint ptr %sync_fib to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sync_fib, align 8
  %hw_fib_pa = getelementptr inbounds %struct.fib, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %hw_fib_pa to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hw_fib_pa, align 4
  %call146 = tail call i32 %63(ptr noundef %1, i32 noundef 12, i32 noundef %67, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %if.end148

if.else139:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %sync_fib to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %sync_fib, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sync_lock, i32 noundef %call128) #7
  br label %if.end148

if.end148:                                        ; preds = %if.else139, %list_del.exit, %if.end90.if.end148_crit_edge
  %69 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool150.not = icmp eq i32 %70, 0
  %spec.select305 = select i1 %tobool150.not, i32 0, i32 %mode.1
  br label %if.end153

if.end153:                                        ; preds = %if.end148, %if.end65.if.end153_crit_edge
  %mode.3 = phi i32 [ %spec.select305, %if.end148 ], [ %mode.1, %if.end65.if.end153_crit_edge ]
  %and154 = and i32 %mode.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end189, label %if.end153.if.then156_crit_edge

if.end153.if.then156_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156

if.then156:                                       ; preds = %if.end153.if.then156_crit_edge, %if.else36.if.then156_crit_edge
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 66
  %71 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool157.not = icmp eq i8 %72, 0
  br i1 %tobool157.not, label %if.else177, label %if.then158

if.then158:                                       ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  %regs161 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 45
  %73 = ptrtoint ptr %regs161 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs161, align 8
  %SCR0 = getelementptr inbounds %struct.src_mu_registers, ptr %74, i32 0, i32 10
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %SCR0) #7, !srcloc !111
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  %call167 = tail call i32 @aac_intr_normal(ptr noundef %1, i32 noundef %76, i32 noundef 1, i32 noundef 0, ptr noundef null) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  %IndexRegs = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 48
  %77 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %IndexRegs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %75) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %79 = ptrtoint ptr %regs161 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs161, align 8
  %IDR = getelementptr inbounds %struct.src_mu_registers, ptr %80, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR, i32 32768) #7, !srcloc !114
  br label %if.end184

if.else177:                                       ; preds = %if.then156
  %aif_thread = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 50
  %81 = ptrtoint ptr %aif_thread to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %aif_thread, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool178.not = icmp eq i32 %82, 0
  br i1 %tobool178.not, label %if.else177.if.end184_crit_edge, label %land.lhs.true179

if.else177.if.end184_crit_edge:                   ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

land.lhs.true179:                                 ; preds = %if.else177
  %fsa_dev = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 39
  %83 = ptrtoint ptr %fsa_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fsa_dev, align 8
  %tobool180.not = icmp eq ptr %84, null
  br i1 %tobool180.not, label %land.lhs.true179.if.end184_crit_edge, label %if.then181

land.lhs.true179.if.end184_crit_edge:             ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

if.then181:                                       ; preds = %land.lhs.true179
  call void @__sanitizer_cov_trace_pc() #9
  %call182 = tail call i32 @aac_intr_normal(ptr noundef %1, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null) #7
  br label %if.end184

if.end184:                                        ; preds = %if.then181, %land.lhs.true179.if.end184_crit_edge, %if.else177.if.end184_crit_edge, %if.then158
  %85 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool186.not = icmp eq i32 %86, 0
  br i1 %tobool186.not, label %if.end184.if.end224_crit_edge, label %if.then187

if.end184.if.end224_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

if.then187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  %regs84.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 45
  %87 = ptrtoint ptr %regs84.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs84.i, align 8
  %IDR87.i = getelementptr inbounds %struct.src_mu_registers, ptr %88, i32 0, i32 2
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR87.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %90 = or i32 %89, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %91 = ptrtoint ptr %regs84.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs84.i, align 8
  %IDR98.i = getelementptr inbounds %struct.src_mu_registers, ptr %92, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR98.i, i32 %90) #7, !srcloc !114
  %93 = ptrtoint ptr %regs84.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs84.i, align 8
  %IDR104.i = getelementptr inbounds %struct.src_mu_registers, ptr %94, i32 0, i32 2
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR104.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  br label %if.end224

if.end189:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.3)
  %tobool190.not = icmp eq i32 %mode.3, 0
  br i1 %tobool190.not, label %if.end189.if.end224_crit_edge, label %if.end189.if.then191_crit_edge

if.end189.if.then191_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then191

if.end189.if.end224_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

if.then191:                                       ; preds = %if.end189.if.then191_crit_edge, %if.then23, %if.then.if.then191_crit_edge
  %arrayidx192 = getelementptr %struct.aac_dev, ptr %1, i32 0, i32 27, i32 %3
  %96 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx192, align 4
  %host_rrq = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 25
  %98 = ptrtoint ptr %host_rrq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %host_rrq, align 8
  %arrayidx193326 = getelementptr i32, ptr %99, i32 %97
  %100 = ptrtoint ptr %arrayidx193326 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx193326, align 4
  %and194327 = and i32 %101, 2147483647
  %102 = tail call i32 @llvm.bswap.i32(i32 %and194327)
  %and199330 = and i32 %102, 65407
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199330)
  %cmp200331 = icmp eq i32 %and199330, 0
  br i1 %cmp200331, label %if.then191.if.end224_crit_edge, label %if.end203.lr.ph

if.then191.if.end224_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

if.end203.lr.ph:                                  ; preds = %if.then191
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 74
  %arrayidx211 = getelementptr %struct.aac_dev, ptr %1, i32 0, i32 28, i32 %3
  %add = add i32 %3, 1
  %vector_cap = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 75
  br label %if.end203

if.end203:                                        ; preds = %if.end212.if.end203_crit_edge, %if.end203.lr.ph
  %and199334 = phi i32 [ %and199330, %if.end203.lr.ph ], [ %and199, %if.end212.if.end203_crit_edge ]
  %and195.lobit333.in.in = phi i32 [ %102, %if.end203.lr.ph ], [ %118, %if.end212.if.end203_crit_edge ]
  %index.0332 = phi i32 [ %97, %if.end203.lr.ph ], [ %spec.select307, %if.end212.if.end203_crit_edge ]
  %and195.lobit333.in = lshr i32 %and195.lobit333.in.in, 30
  %and195.lobit333 = and i32 %and195.lobit333.in, 1
  %shr204 = lshr i32 %and199334, 2
  %103 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool206.not = icmp eq i32 %104, 0
  br i1 %tobool206.not, label %if.end203.if.end212_crit_edge, label %land.lhs.true207

if.end203.if.end212_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

land.lhs.true207:                                 ; preds = %if.end203
  %105 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %106)
  %cmp208 = icmp ugt i32 %106, 1
  br i1 %cmp208, label %if.then210, label %land.lhs.true207.if.end212_crit_edge

land.lhs.true207.if.end212_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

if.then210:                                       ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx211, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx211, i32 1, i32 3, i32 1) #7
  %107 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx211, ptr %arrayidx211, i32 1, ptr elementtype(i32) %arrayidx211) #7, !srcloc !190
  br label %if.end212

if.end212:                                        ; preds = %if.then210, %land.lhs.true207.if.end212_crit_edge, %if.end203.if.end212_crit_edge
  %call213 = tail call i32 @aac_intr_normal(ptr noundef %1, i32 noundef %shr204, i32 noundef 0, i32 noundef %and195.lobit333, ptr noundef null) #7
  %108 = ptrtoint ptr %host_rrq to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %host_rrq, align 8
  %inc = add i32 %index.0332, 1
  %arrayidx215 = getelementptr i32, ptr %109, i32 %index.0332
  %110 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %arrayidx215, align 4
  %111 = ptrtoint ptr %vector_cap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %vector_cap, align 4
  %mul = mul i32 %112, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %mul)
  %cmp216 = icmp eq i32 %inc, %mul
  %mul220 = mul i32 %112, %3
  %spec.select307 = select i1 %cmp216, i32 %mul220, i32 %inc
  %113 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %spec.select307, ptr %arrayidx192, align 4
  %114 = ptrtoint ptr %host_rrq to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %host_rrq, align 8
  %arrayidx193 = getelementptr i32, ptr %115, i32 %spec.select307
  %116 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx193, align 4
  %and194 = and i32 %117, 2147483647
  %118 = tail call i32 @llvm.bswap.i32(i32 %and194)
  %and199 = and i32 %118, 65407
  %cmp200 = icmp eq i32 %and199, 0
  br i1 %cmp200, label %if.end212.if.end224_crit_edge, label %if.end212.if.end203_crit_edge

if.end212.if.end203_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

if.end212.if.end224_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

if.end224:                                        ; preds = %if.end212.if.end224_crit_edge, %if.then191.if.end224_crit_edge, %if.end189.if.end224_crit_edge, %if.then187, %if.end184.if.end224_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_src_deliver_message(ptr nocapture noundef readonly %fib) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %queues = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queues, align 8
  %numpending = getelementptr [8 x %struct.aac_queue], ptr %3, i32 0, i32 2, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %numpending, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %numpending, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %numpending, ptr %numpending, i32 1, ptr elementtype(i32) %numpending) #7, !srcloc !191
  %flags2 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 9
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags2, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %msi_enabled = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 76
  %7 = ptrtoint ptr %msi_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msi_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %entry.if.end61_crit_edge, label %land.lhs.true

entry.if.end61_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

land.lhs.true:                                    ; preds = %entry
  %max_msix = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 74
  %9 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_msix, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp ugt i32 %10, 1
  br i1 %cmp, label %land.lhs.true4, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

land.lhs.true4:                                   ; preds = %land.lhs.true
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true4.if.then_crit_edge

land.lhs.true4.if.then_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %11 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_fib_va, align 4
  %Command = getelementptr inbounds %struct.aac_fibhdr, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %Command to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %Command, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 700, i16 %14)
  %cmp6.not = icmp eq i16 %14, 700
  br i1 %cmp6.not, label %if.else92.critedge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true4.if.then_crit_edge
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 59
  %15 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %comm_interface, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp9 = icmp eq i8 %16, 5
  br i1 %cmp9, label %land.lhs.true11, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true11:                                  ; preds = %if.then
  %sa_firmware = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 66
  %17 = ptrtoint ptr %sa_firmware to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sa_firmware, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not = icmp eq i8 %18, 0
  br i1 %tobool13.not, label %land.lhs.true11.if.else_crit_edge, label %if.then14

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  %msix_counter.i = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 77
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %msix_counter.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void @llvm.prefetch.p0(ptr %msix_counter.i, i32 1, i32 3, i32 1) #7
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %msix_counter.i, ptr %msix_counter.i, i32 1, ptr elementtype(i32) %msix_counter.i) #7, !srcloc !193
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !194
  %20 = ptrtoint ptr %max_msix to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_msix, align 8
  %rem.i = urem i32 %asmresult.i.i.i.i.i, %21
  br label %if.end

if.else:                                          ; preds = %land.lhs.true11.if.else_crit_edge, %if.then.if.else_crit_edge
  %vector_no16 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 12
  %22 = ptrtoint ptr %vector_no16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vector_no16, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  %vector_no.0.in = phi i32 [ %rem.i, %if.then14 ], [ %23, %if.else ]
  br i1 %tobool.not, label %if.else53, label %if.then19

if.then19:                                        ; preds = %if.end
  %24 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags2, align 4
  %and21 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else43, label %if.then23

if.then23:                                        ; preds = %if.then19
  %hw_fib_va24 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %26 = ptrtoint ptr %hw_fib_va24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_fib_va24, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %29)
  %cmp26 = icmp eq i8 %29, 65
  %conv29 = trunc i32 %vector_no.0.in to i8
  br i1 %cmp26, label %if.then28, label %if.else33

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %reply_qid = getelementptr inbounds %struct.aac_hba_tm_req, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %reply_qid to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv29, ptr %reply_qid, align 1
  %shl = shl i32 %vector_no.0.in, 16
  %31 = ptrtoint ptr %hw_fib_va24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw_fib_va24, align 4
  %request_id = getelementptr inbounds %struct.aac_hba_tm_req, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %request_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %request_id, align 4
  %add = add i32 %34, %shl
  store i32 %add, ptr %request_id, align 4
  %idxprom.c = and i32 %vector_no.0.in, 65535
  %arrayidx62.c278 = getelementptr %struct.aac_dev, ptr %1, i32 0, i32 28, i32 %idxprom.c
  %call.i.i288 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx62.c278, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx62.c278, i32 1, i32 3, i32 1) #7
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx62.c278, ptr %arrayidx62.c278, i32 1, ptr elementtype(i32) %arrayidx62.c278) #7, !srcloc !191
  br label %if.then64

if.else33:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %reply_qid36 = getelementptr inbounds %struct.aac_hba_reset_req, ptr %27, i32 0, i32 2
  %36 = ptrtoint ptr %reply_qid36 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv29, ptr %reply_qid36, align 2
  %shl38 = shl i32 %vector_no.0.in, 16
  %37 = ptrtoint ptr %hw_fib_va24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_fib_va24, align 4
  %request_id40 = getelementptr inbounds %struct.aac_hba_reset_req, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %request_id40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %request_id40, align 4
  %add41 = add i32 %40, %shl38
  store i32 %add41, ptr %request_id40, align 4
  %idxprom.c280 = and i32 %vector_no.0.in, 65535
  %arrayidx62.c281 = getelementptr %struct.aac_dev, ptr %1, i32 0, i32 28, i32 %idxprom.c280
  %call.i.i289 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx62.c281, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx62.c281, i32 1, i32 3, i32 1) #7
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx62.c281, ptr %arrayidx62.c281, i32 1, ptr elementtype(i32) %arrayidx62.c281) #7, !srcloc !191
  br label %if.then64

if.else43:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %conv44 = trunc i32 %vector_no.0.in to i8
  %hw_fib_va45 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %42 = ptrtoint ptr %hw_fib_va45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw_fib_va45, align 4
  %reply_qid46 = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %reply_qid46 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv44, ptr %reply_qid46, align 2
  %shl48 = shl i32 %vector_no.0.in, 16
  %45 = load ptr, ptr %hw_fib_va45, align 4
  %request_id50 = getelementptr inbounds %struct.aac_hba_cmd_req, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %request_id50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %request_id50, align 4
  %add51 = add i32 %47, %shl48
  store i32 %add51, ptr %request_id50, align 4
  %idxprom.c286 = and i32 %vector_no.0.in, 65535
  %arrayidx62.c287 = getelementptr %struct.aac_dev, ptr %1, i32 0, i32 28, i32 %idxprom.c286
  %call.i.i290 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx62.c287, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx62.c287, i32 1, i32 3, i32 1) #7
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx62.c287, ptr %arrayidx62.c287, i32 1, ptr elementtype(i32) %arrayidx62.c287) #7, !srcloc !191
  br label %if.then64

if.else53:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl55 = shl i32 %vector_no.0.in, 16
  %hw_fib_va56 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %49 = ptrtoint ptr %hw_fib_va56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw_fib_va56, align 4
  %Handle = getelementptr inbounds %struct.aac_fibhdr, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %Handle to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %Handle, align 4
  %add58 = add i32 %52, %shl55
  store i32 %add58, ptr %Handle, align 4
  %idxprom.c283 = and i32 %vector_no.0.in, 65535
  %arrayidx62.c284 = getelementptr %struct.aac_dev, ptr %1, i32 0, i32 28, i32 %idxprom.c283
  %call.i.i291 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx62.c284, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx62.c284, i32 1, i32 3, i32 1) #7
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx62.c284, ptr %arrayidx62.c284, i32 1, ptr elementtype(i32) %arrayidx62.c284) #7, !srcloc !191
  br label %if.else92

if.end61:                                         ; preds = %land.lhs.true.if.end61_crit_edge, %entry.if.end61_crit_edge
  %arrayidx62 = getelementptr %struct.aac_dev, ptr %1, i32 0, i32 28, i32 0
  %call.i.i292 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx62, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx62, i32 1, i32 3, i32 1) #7
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx62, ptr %arrayidx62, i32 1, ptr elementtype(i32) %arrayidx62) #7, !srcloc !191
  br i1 %tobool.not, label %if.end61.if.else92_crit_edge, label %if.end61.if.then64_crit_edge

if.end61.if.then64_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then64

if.end61.if.else92_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else92

if.then64:                                        ; preds = %if.end61.if.then64_crit_edge, %if.else43, %if.else33, %if.then28
  %hw_fib_pa = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 14
  %55 = ptrtoint ptr %hw_fib_pa to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hw_fib_pa, align 4
  %hbacmd_size = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 17
  %57 = ptrtoint ptr %hbacmd_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hbacmd_size, align 4
  %add65 = add i32 %58, 127
  %div277 = lshr i32 %add65, 7
  %sub = add nsw i32 %div277, -1
  %59 = tail call i32 @llvm.umin.i32(i32 %sub, i32 31)
  %or = or i32 %59, %56
  %60 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1, align 4
  %iq_lock = getelementptr inbounds %struct.aac_dev, ptr %61, i32 0, i32 44
  %call75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iq_lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 45
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 8
  %IQN_H = getelementptr inbounds %struct.src_mu_registers, ptr %63, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IQN_H, i32 0) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !196
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %or)
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 8
  %IQN_L = getelementptr inbounds %struct.src_mu_registers, ptr %66, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IQN_L, i32 %64) #7, !srcloc !114
  br label %if.end209

if.else92.critedge:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx62.c = getelementptr %struct.aac_dev, ptr %1, i32 0, i32 28, i32 0
  %call.i.i293 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx62.c, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %arrayidx62.c, i32 1, i32 3, i32 1) #7
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx62.c, ptr %arrayidx62.c, i32 1, ptr elementtype(i32) %arrayidx62.c) #7, !srcloc !191
  br label %if.else92

if.else92:                                        ; preds = %if.else92.critedge, %if.end61.if.else92_crit_edge, %if.else53
  %comm_interface93 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 59
  %68 = ptrtoint ptr %comm_interface93 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %comm_interface93, align 2
  %70 = and i8 %69, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %70)
  %switch = icmp eq i8 %70, 4
  %hw_fib_va103 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %71 = ptrtoint ptr %hw_fib_va103 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw_fib_va103, align 4
  %Size = getelementptr inbounds %struct.aac_fibhdr, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %Size to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %Size, align 4
  br i1 %switch, label %if.then102, label %if.else145

if.then102:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #9
  %hw_fib_pa109 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 14
  %75 = ptrtoint ptr %hw_fib_pa109 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hw_fib_pa109, align 4
  %StructType = getelementptr inbounds %struct.aac_fibhdr, ptr %72, i32 0, i32 2
  %77 = ptrtoint ptr %StructType to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 4, ptr %StructType, align 2
  %78 = tail call i32 @llvm.bswap.i32(i32 %76)
  %79 = ptrtoint ptr %hw_fib_va103 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw_fib_va103, align 4
  %SenderFibAddress = getelementptr inbounds %struct.aac_fibhdr, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %SenderFibAddress to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %78, ptr %SenderFibAddress, align 4
  %82 = load ptr, ptr %hw_fib_va103, align 4
  %u = getelementptr inbounds %struct.aac_fibhdr, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %u, align 4
  %84 = tail call i16 @llvm.bswap.i16(i16 %74)
  %conv105 = zext i16 %84 to i32
  %add106 = add nuw nsw i32 %conv105, 127
  br label %if.end170

if.else145:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #9
  %85 = tail call i16 @llvm.bswap.i16(i16 %74)
  %conv149 = zext i16 %85 to i32
  %add151 = add nuw nsw i32 %conv149, 159
  %add.ptr = getelementptr i8, ptr %72, i32 -32
  %Handle157 = getelementptr inbounds %struct.aac_fibhdr, ptr %72, i32 0, i32 8
  %86 = ptrtoint ptr %Handle157 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %Handle157, align 4
  %Handle158 = getelementptr i8, ptr %72, i32 -20
  %88 = ptrtoint ptr %Handle158 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %Handle158, align 4
  %hw_fib_pa159 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 14
  %89 = ptrtoint ptr %hw_fib_pa159 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hw_fib_pa159, align 4
  %conv160 = zext i32 %90 to i64
  %91 = tail call i64 @llvm.bswap.i64(i64 %conv160)
  %92 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %add.ptr, align 8
  %93 = ptrtoint ptr %hw_fib_va103 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw_fib_va103, align 4
  %Size163 = getelementptr inbounds %struct.aac_fibhdr, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %Size163 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %Size163, align 4
  %97 = tail call i16 @llvm.bswap.i16(i16 %96)
  %conv164 = zext i16 %97 to i32
  %98 = tail call i32 @llvm.bswap.i32(i32 %conv164)
  %Size165 = getelementptr i8, ptr %72, i32 -24
  %99 = ptrtoint ptr %Size165 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %Size165, align 8
  %100 = ptrtoint ptr %hw_fib_pa159 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %hw_fib_pa159, align 4
  %sub168 = add i32 %101, -32
  br label %if.end170

if.end170:                                        ; preds = %if.else145, %if.then102
  %address.0 = phi i32 [ %76, %if.then102 ], [ %sub168, %if.else145 ]
  %fibsize.0.in.in = phi i32 [ %add106, %if.then102 ], [ %add151, %if.else145 ]
  %fibsize.0.in = lshr i32 %fibsize.0.in.in, 7
  %fibsize.0 = add nsw i32 %fibsize.0.in, -1
  %102 = tail call i32 @llvm.umin.i32(i32 %fibsize.0, i32 31)
  %or175 = or i32 %102, %address.0
  %103 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev1, align 4
  %iq_lock184 = getelementptr inbounds %struct.aac_dev, ptr %104, i32 0, i32 44
  %call186 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iq_lock184) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %regs197 = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 45
  %105 = ptrtoint ptr %regs197 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs197, align 8
  %IQ_H = getelementptr inbounds %struct.src_mu_registers, ptr %106, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IQ_H, i32 0) #7, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !198
  tail call void @arm_heavy_mb() #7
  %107 = tail call i32 @llvm.bswap.i32(i32 %or175)
  %108 = ptrtoint ptr %regs197 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regs197, align 8
  %IQ_L = getelementptr inbounds %struct.src_mu_registers, ptr %109, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IQ_L, i32 %107) #7, !srcloc !114
  br label %if.end209

if.end209:                                        ; preds = %if.end170, %if.then64
  %call186.sink = phi i32 [ %call186, %if.end170 ], [ %call75, %if.then64 ]
  %110 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev1, align 4
  %iq_lock208 = getelementptr inbounds %struct.aac_dev, ptr %111, i32 0, i32 44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iq_lock208, i32 noundef %call186.sink) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_intr_normal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aac_send_iop_reset(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_fib_dump to i32))
  %0 = load i32, ptr @aac_fib_dump, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.aac_dump_fw_fib_iop_reset.exit_crit_edge, label %if.end.i

entry.aac_dump_fw_fib_iop_reset.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_dump_fw_fib_iop_reset.exit

if.end.i:                                         ; preds = %entry
  %supported_options31.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52, i32 35
  %1 = ptrtoint ptr %supported_options31.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %supported_options31.i, align 4
  %and.i = and i32 %2, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.aac_dump_fw_fib_iop_reset.exit_crit_edge, label %if.end4.i

if.end.i.aac_dump_fw_fib_iop_reset.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_dump_fw_fib_iop_reset.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %adapter_sync_cmd.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 4
  %3 = ptrtoint ptr %adapter_sync_cmd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter_sync_cmd.i, align 4
  %call.i = tail call i32 %4(ptr noundef %dev, i32 noundef 52, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %aac_dump_fw_fib_iop_reset.exit

aac_dump_fw_fib_iop_reset.exit:                   ; preds = %if.end4.i, %if.end.i.aac_dump_fw_fib_iop_reset.exit_crit_edge, %entry.aac_dump_fw_fib_iop_reset.exit_crit_edge
  %adapter_sync_cmd.i5 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 4
  %5 = ptrtoint ptr %adapter_sync_cmd.i5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter_sync_cmd.i5, align 4
  %call.i6 = tail call i32 %6(ptr noundef %dev, i32 noundef 4097, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %soft_reset_support.i.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %soft_reset_support.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %soft_reset_support.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %aac_dump_fw_fib_iop_reset.exit.aac_notify_fw_of_iop_reset.exit_crit_edge, label %if.end.i.i

aac_dump_fw_fib_iop_reset.exit.aac_notify_fw_of_iop_reset.exit_crit_edge: ; preds = %aac_dump_fw_fib_iop_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_notify_fw_of_iop_reset.exit

if.end.i.i:                                       ; preds = %aac_dump_fw_fib_iop_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %adapter_sync_cmd.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter_sync_cmd.i5, align 4
  %call.i.i = tail call i32 %10(ptr noundef %dev, i32 noundef 53, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %aac_notify_fw_of_iop_reset.exit

aac_notify_fw_of_iop_reset.exit:                  ; preds = %if.end.i.i, %aac_dump_fw_fib_iop_reset.exit.aac_notify_fw_of_iop_reset.exit_crit_edge
  tail call void @aac_set_intx_mode(ptr noundef %dev)
  %regs.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 8
  %OMR.i = getelementptr inbounds %struct.src_mu_registers, ptr %12, i32 0, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i = icmp eq i32 %13, -1
  br i1 %cmp.i, label %aac_notify_fw_of_iop_reset.exit.if.then.i_crit_edge, label %lor.lhs.false.i

aac_notify_fw_of_iop_reset.exit.if.then.i_crit_edge: ; preds = %aac_notify_fw_of_iop_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %aac_notify_fw_of_iop_reset.exit
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %and.i7 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7)
  %tobool.not.i8 = icmp eq i32 %and.i7, 0
  br i1 %tobool.not.i8, label %lor.lhs.false.i.aac_clear_omr.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.aac_clear_omr.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_clear_omr.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %aac_notify_fw_of_iop_reset.exit.if.then.i_crit_edge
  br label %aac_clear_omr.exit

aac_clear_omr.exit:                               ; preds = %if.then.i, %lor.lhs.false.i.aac_clear_omr.exit_crit_edge
  %omr_value.0.i = phi i32 [ 0, %if.then.i ], [ %14, %lor.lhs.false.i.aac_clear_omr.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %and2.i = lshr i32 %omr_value.0.i, 8
  %15 = and i32 %and2.i, 256
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %OMR6.i = getelementptr inbounds %struct.src_mu_registers, ptr %17, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OMR6.i, i32 %15) #7, !srcloc !114
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %OMR12.i = getelementptr inbounds %struct.src_mu_registers, ptr %19, i32 0, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR12.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %IDR = getelementptr inbounds %struct.src_mu_registers, ptr %22, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR, i32 65536) #7, !srcloc !114
  tail call void @msleep(i32 noundef 5000) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @aac_is_ctrl_up_and_running(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  br label %do.body.outer

do.body.outer:                                    ; preds = %do.body.do.body.outer_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %start.0.ph = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %start.0.ph, 6000
  br label %do.body

do.body:                                          ; preds = %if.end3.do.body_crit_edge, %do.body.outer
  tail call void @schedule() #7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %OMR = getelementptr inbounds %struct.src_mu_registers, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR) #7, !srcloc !111
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  %spec.store.select = select i1 %cmp, i32 0, i32 %3
  %and = and i32 %spec.store.select, 64
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %do.body.do.body.outer_crit_edge

do.body.do.body.outer_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.outer

if.end3:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp4 = icmp sgt i32 %sub, -1
  %and7 = and i32 %spec.store.select, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %cmp4, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.end3.do.body_crit_edge, label %do.end

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  ret i1 %cmp4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aac_send_hardware_soft_reset(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %OMR.i = getelementptr inbounds %struct.src_mu_registers, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp.i = icmp eq i32 %2, -1
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %and.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.aac_clear_omr.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.aac_clear_omr.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_clear_omr.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  br label %aac_clear_omr.exit

aac_clear_omr.exit:                               ; preds = %if.then.i, %lor.lhs.false.i.aac_clear_omr.exit_crit_edge
  %omr_value.0.i = phi i32 [ 0, %if.then.i ], [ %3, %lor.lhs.false.i.aac_clear_omr.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !200
  tail call void @arm_heavy_mb() #7
  %and2.i = lshr i32 %omr_value.0.i, 8
  %4 = and i32 %and2.i, 256
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %OMR6.i = getelementptr inbounds %struct.src_mu_registers, ptr %6, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OMR6.i, i32 %4) #7, !srcloc !114
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 8
  %OMR12.i = getelementptr inbounds %struct.src_mu_registers, ptr %8, i32 0, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMR12.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  %base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 16384
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  %13 = or i32 %12, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %15, i32 16384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %13) #7, !srcloc !114
  %call4 = tail call i32 @msleep_interruptible(i32 noundef 20000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aac_src_wait_sync(ptr nocapture noundef %dev, ptr noundef writeonly %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -500, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub69 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub69)
  %cmp70 = icmp slt i32 %sub69, 0
  br i1 %cmp70, label %while.body.lr.ph, label %entry.if.end47_crit_edge

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

while.body.lr.ph:                                 ; preds = %entry
  %regs.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %msi_enabled.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 76
  br label %while.body

while.body:                                       ; preds = %if.end3.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 1073740) #7
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 8
  %ODR_MSI.i = getelementptr inbounds %struct.src_mu_registers, ptr %4, i32 0, i32 15
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR_MSI.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  %6 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msi_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not.i = icmp eq i32 %8, 0
  br i1 %tobool2.not.i, label %if.then.i, label %if.end16.i

if.then.i:                                        ; preds = %while.body
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %ODR_R.i = getelementptr inbounds %struct.src_mu_registers, ptr %10, i32 0, i32 7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR_R.i) #7, !srcloc !111
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %shr.i = lshr i32 %12, 12
  %13 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not.i = icmp ne i32 %13, 0
  %brmerge.i = select i1 %tobool12.not.i, i1 true, i1 %tobool.not.i
  br i1 %brmerge.i, label %if.then.i.aac_src_get_sync_status.exit_crit_edge, label %if.then14.i

if.then.i.aac_src_get_sync_status.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aac_src_get_sync_status.exit

if.then14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %msi_enabled.i, align 8
  br label %aac_src_get_sync_status.exit

if.end16.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond.i = zext i1 %not.tobool.not.i to i32
  br label %aac_src_get_sync_status.exit

aac_src_get_sync_status.exit:                     ; preds = %if.end16.i, %if.then14.i, %if.then.i.aac_src_get_sync_status.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end16.i ], [ %shr.i, %if.then.i.aac_src_get_sync_status.exit_crit_edge ], [ %shr.i, %if.then14.i ]
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %aac_src_get_sync_status.exit
  %15 = ptrtoint ptr %msi_enabled.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msi_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not = icmp eq i32 %16, 0
  br i1 %tobool1.not, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  %IDR114.i = getelementptr inbounds %struct.src_mu_registers, ptr %18, i32 0, i32 2
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR114.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  %20 = or i32 %19, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %IDR125.i = getelementptr inbounds %struct.src_mu_registers, ptr %22, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR125.i, i32 %20) #7, !srcloc !114
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %IDR131.i = getelementptr inbounds %struct.src_mu_registers, ptr %24, i32 0, i32 2
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %IDR131.i) #7, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  br label %while.end

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %ODR_C = getelementptr inbounds %struct.src_mu_registers, ptr %27, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR_C, i32 1048576) #7, !srcloc !114
  br label %while.end

if.end3:                                          ; preds = %aac_src_get_sync_status.exit
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1050, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %28
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end3.while.body_crit_edge, label %if.end3.if.end47_crit_edge

if.end3.if.end47_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end3.while.body_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %do.body, %if.then2
  %tobool5.not = icmp eq ptr %status, null
  br i1 %tobool5.not, label %while.end.if.end47_crit_edge, label %if.then7

while.end.if.end47_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %IndexRegs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 48
  %29 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %IndexRegs, align 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !111
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  %33 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %status, align 4
  %34 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %IndexRegs, align 8
  %arrayidx15 = getelementptr [8 x i32], ptr %35, i32 0, i32 1
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx15) #7, !srcloc !111
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  %arrayidx19 = getelementptr i32, ptr %status, i32 1
  %38 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx19, align 4
  %39 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %IndexRegs, align 8
  %arrayidx24 = getelementptr [8 x i32], ptr %40, i32 0, i32 2
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx24) #7, !srcloc !111
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !209
  %arrayidx28 = getelementptr i32, ptr %status, i32 2
  %43 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx28, align 4
  %44 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %IndexRegs, align 8
  %arrayidx33 = getelementptr [8 x i32], ptr %45, i32 0, i32 3
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx33) #7, !srcloc !111
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  %arrayidx37 = getelementptr i32, ptr %status, i32 3
  %48 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx37, align 4
  %49 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %IndexRegs, align 8
  %arrayidx42 = getelementptr [8 x i32], ptr %50, i32 0, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx42) #7, !srcloc !111
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  %arrayidx46 = getelementptr i32, ptr %status, i32 4
  %53 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then7, %while.end.if.end47_crit_edge, %if.end3.if.end47_crit_edge, %entry.if.end47_crit_edge
  %rc.067 = phi i32 [ 0, %while.end.if.end47_crit_edge ], [ 0, %if.then7 ], [ 1, %entry.if.end47_crit_edge ], [ 1, %if.end3.if.end47_crit_edge ]
  ret i32 %rc.067
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aacraid/src.c", i32 896, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @aac_src_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @aac_src_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aacraid/src.c", i32 925, i32 3}
!8 = !{ptr @aac_src_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @aac_src_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aacraid/src.c", i32 933, i32 3}
!12 = !{ptr @aac_src_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @aac_src_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aacraid/src.c", i32 946, i32 4}
!16 = !{ptr @aac_src_init._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @aac_src_init._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/aacraid/src.c", i32 997, i32 17}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/aacraid/src.c", i32 1002, i32 3}
!22 = !{ptr @aac_src_init._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @aac_src_init._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aacraid/src.c", i32 1188, i32 3}
!26 = !{ptr @aac_srcv_init._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @aac_srcv_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/aacraid/src.c", i32 1214, i32 5}
!30 = !{ptr @aac_srcv_init._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @aac_srcv_init._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @aac_srcv_init._entry.20, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/scsi/aacraid/src.c", i32 1241, i32 3}
!34 = !{ptr @aac_srcv_init._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @aac_srcv_init._entry.22, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../drivers/scsi/aacraid/src.c", i32 1248, i32 3}
!37 = !{ptr @aac_srcv_init._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @aac_srcv_init._entry.24, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/scsi/aacraid/src.c", i32 1264, i32 4}
!40 = !{ptr @aac_srcv_init._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/aacraid/src.c", i32 798, i32 3}
!43 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @aac_src_restart_adapter._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @aac_src_restart_adapter._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/aacraid/src.c", i32 808, i32 2}
!50 = !{ptr @aac_src_restart_adapter._entry.30, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @aac_src_restart_adapter._entry_ptr.32, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/scsi/aacraid/src.c", i32 811, i32 3}
!54 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @aac_src_restart_adapter._entry.33, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @aac_src_restart_adapter._entry_ptr.36, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/aacraid/src.c", i32 819, i32 4}
!59 = !{ptr @aac_src_restart_adapter._entry.37, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @aac_src_restart_adapter._entry_ptr.39, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/aacraid/src.c", i32 821, i32 4}
!63 = !{ptr @aac_src_restart_adapter._entry.40, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @aac_src_restart_adapter._entry_ptr.42, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.44, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/aacraid/src.c", i32 827, i32 3}
!67 = !{ptr @aac_src_restart_adapter._entry.43, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @aac_src_restart_adapter._entry_ptr.45, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.47, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/aacraid/src.c", i32 833, i32 3}
!71 = !{ptr @aac_src_restart_adapter._entry.46, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @aac_src_restart_adapter._entry_ptr.48, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.50, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/aacraid/src.c", i32 839, i32 4}
!75 = !{ptr @aac_src_restart_adapter._entry.49, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @aac_src_restart_adapter._entry_ptr.51, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.53, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/aacraid/src.c", i32 843, i32 4}
!79 = !{ptr @aac_src_restart_adapter._entry.52, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @aac_src_restart_adapter._entry_ptr.54, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.55, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/aacraid/src.c", i32 1097, i32 3}
!83 = !{ptr @.str.56, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/aacraid/src.c", i32 1098, i32 3}
!85 = !{ptr @.str.57, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/aacraid/src.c", i32 1099, i32 3}
!87 = !{ptr @.str.58, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/aacraid/src.c", i32 1100, i32 3}
!89 = !{ptr @.str.59, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/aacraid/src.c", i32 1101, i32 3}
!91 = !{ptr @.str.60, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/aacraid/src.c", i32 1102, i32 3}
!93 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/aacraid/src.c", i32 1154, i32 3}
!95 = !{ptr @.str.62, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @aac_src_soft_reset._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @aac_src_soft_reset._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.64, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/aacraid/src.c", i32 1164, i32 3}
!100 = !{ptr @aac_src_soft_reset._entry.63, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @aac_src_soft_reset._entry_ptr.65, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 5012815}
!112 = !{i64 2155162948}
!113 = !{i64 2155163253}
!114 = !{i64 5012397}
!115 = !{i64 2155164069}
!116 = !{i64 2155164779}
!117 = !{i64 2155165601}
!118 = !{i64 2155166226}
!119 = !{i64 2155166584}
!120 = !{i64 2155152172}
!121 = !{i64 2155152887}
!122 = !{i64 2155153761}
!123 = !{i64 2155154066}
!124 = !{i64 2155154882}
!125 = !{i64 2155155592}
!126 = !{i64 2155156414}
!127 = !{i64 2155156809}
!128 = !{i64 2155157725}
!129 = !{i64 2155158030}
!130 = !{i64 2155158846}
!131 = !{i64 2155159466}
!132 = !{i64 2155159771}
!133 = !{i64 2155160587}
!134 = !{i64 2155161207}
!135 = !{i64 2155161512}
!136 = !{i64 2155162328}
!137 = !{i8 0, i8 2}
!138 = !{i64 2155118741}
!139 = !{i64 2155090475}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{!"branch_weights", i32 4000000, i32 4001}
!142 = !{!"branch_weights", i32 1, i32 2000}
!143 = !{i64 2155119413}
!144 = !{i64 2155123047}
!145 = !{i64 2155126428}
!146 = !{i64 2155074593}
!147 = !{i64 2155075013}
!148 = !{i64 2155075418}
!149 = !{i64 2155075823}
!150 = !{i64 2155076228}
!151 = !{i64 2155076759}
!152 = !{i64 2155077341}
!153 = !{i64 2155078220}
!154 = !{i64 2155078562}
!155 = !{i64 2155167481}
!156 = !{i64 2155168118}
!157 = !{i64 2155080134}
!158 = !{i64 2155080981}
!159 = !{i64 2155081507}
!160 = !{i64 2155082033}
!161 = !{i64 2155082559}
!162 = !{i64 2155083085}
!163 = !{i64 2155083622}
!164 = !{i64 2155083971}
!165 = !{i64 2155074111}
!166 = !{i64 2155116547}
!167 = !{i64 2155084675}
!168 = !{i64 2155085264}
!169 = !{i64 2155085852}
!170 = !{i64 2155086441}
!171 = !{i64 2155087030}
!172 = !{i64 2155087619}
!173 = !{i64 2155088104, i64 2155088595, i64 2155088141, i64 2155088197, i64 2155088231, i64 2155088255, i64 2155088296, i64 2155088317, i64 2155088345, i64 2155088379}
!174 = !{i64 2155133086}
!175 = !{i64 2155140452}
!176 = !{i64 2155141083}
!177 = !{i64 2155143660}
!178 = !{i64 2155144332}
!179 = !{i64 2155147968}
!180 = !{i64 2155151361}
!181 = !{i64 2155065521}
!182 = !{i64 2155066172}
!183 = !{i64 2155067348}
!184 = !{i64 2155068513}
!185 = !{i64 2155068871}
!186 = !{i64 2155069714}
!187 = !{i64 2155072593}
!188 = !{i64 2155072832}
!189 = !{i64 2155073339}
!190 = !{i64 2148244757, i64 2148244783, i64 2148244812, i64 2148244846, i64 2148244877, i64 2148244900}
!191 = !{i64 2148242292, i64 2148242318, i64 2148242347, i64 2148242381, i64 2148242412, i64 2148242435}
!192 = !{i64 2148327703}
!193 = !{i64 2148243012, i64 2148243044, i64 2148243073, i64 2148243107, i64 2148243138, i64 2148243161}
!194 = !{i64 2148327932}
!195 = !{i64 2155091712}
!196 = !{i64 2155092385}
!197 = !{i64 2155095032}
!198 = !{i64 2155095702}
!199 = !{i64 2155096872}
!200 = !{i64 2155097239}
!201 = !{i64 2155098103}
!202 = !{i64 2155100357}
!203 = !{i64 2155099110}
!204 = !{i64 2155101123}
!205 = !{i64 2155101358}
!206 = !{i64 2155129593}
!207 = !{i64 2155130362}
!208 = !{i64 2155130888}
!209 = !{i64 2155131414}
!210 = !{i64 2155131940}
!211 = !{i64 2155132466}
