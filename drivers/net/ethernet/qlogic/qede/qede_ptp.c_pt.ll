; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qede/qede_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qede/qede_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.qede_dev = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, ptr, i64, %struct.qed_dev_eth_info, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, %struct.qed_int_info, %struct.mutex, i32, i16, i32, %struct.qede_stats, i32, [128 x i16], [10 x i32], i8, i16, i16, i8, %struct.list_head, i16, i16, i8, %struct.delayed_work, i32, i16, i16, ptr, i8, %struct.qede_rdma_dev, ptr, i32, i32, %struct.qede_dump_info }
%struct.qed_dev_eth_info = type { %struct.qed_dev_info, i8, i8, [6 x i8], i16, i16, i8, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qede_stats = type { %struct.qede_stats_common, %union.anon.171 }
%struct.qede_stats_common = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.171 = type { %struct.qede_stats_bb }
%struct.qede_stats_bb = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qede_rdma_dev = type { ptr, %struct.list_head, %struct.list_head, ptr, %struct.kref, %struct.completion, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.qede_dump_info = type { i32, i8, [4 x i32] }
%struct.ifreq = type { %union.anon.19, %union.anon.20 }
%union.anon.19 = type { [16 x i8] }
%union.anon.20 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.qede_ptp = type { ptr, %struct.ptp_clock_info, %struct.cyclecounter, %struct.timecounter, ptr, %struct.work_struct, i32, ptr, ptr, %struct.spinlock, i8, i16, i16 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.qed_eth_ptp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_eth_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.161, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.161 = type { ptr }
%struct.timespec64 = type { i64, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@qede_ptp_hw_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\015[%s:%d(%s)]HWTSTAMP IOCTL: Requested tx_type = %d, requested rx_filters = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_ptp_hw_ts\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/qlogic/qede/qede_ptp.c\00", [52 x i8] zeroinitializer }, align 32
@qede_ptp_hw_ts._entry_ptr = internal global ptr @qede_ptp_hw_ts._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qede_ptp_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Failed to allocate struct for PTP\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qede_ptp_enable\00", [16 x i8] zeroinitializer }, align 32
@qede_ptp_enable._entry_ptr = internal global ptr @qede_ptp_enable._entry, section ".printk_index", align 4
@qede_ptp_enable._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015[%s:%d(%s)]PTP enable failed\0A\00", [32 x i8] zeroinitializer }, align 32
@qede_ptp_enable._entry_ptr.8 = internal global ptr @qede_ptp_enable._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@qede_ptp_enable._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[%s:%d(%s)]PTP clock registration failed\0A\00", [52 x i8] zeroinitializer }, align 32
@qede_ptp_enable._entry_ptr.12 = internal global ptr @qede_ptp_enable._entry.10, section ".printk_index", align 4
@qede_ptp_tx_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]Timestamping in progress\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_ptp_tx_ts\00", [17 x i8] zeroinitializer }, align 32
@qede_ptp_tx_ts._entry_ptr = internal global ptr @qede_ptp_tx_ts._entry, section ".printk_index", align 4
@qede_ptp_tx_ts._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013[%s:%d(%s)]Tx timestamping was not enabled, this packet will not be timestamped\0A\00", [45 x i8] zeroinitializer }, align 32
@qede_ptp_tx_ts._entry_ptr.17 = internal global ptr @qede_ptp_tx_ts._entry.15, section ".printk_index", align 4
@qede_ptp_tx_ts._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\013[%s:%d(%s)]The device supports only a single outstanding packet to timestamp, this packet will not be timestamped\0A\00", [43 x i8] zeroinitializer }, align 32
@qede_ptp_tx_ts._entry_ptr.20 = internal global ptr @qede_ptp_tx_ts._entry.18, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qede_ptp_rx_ts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Invalid Rx timestamp\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_ptp_rx_ts\00", [17 x i8] zeroinitializer }, align 32
@qede_ptp_rx_ts._entry_ptr = internal global ptr @qede_ptp_rx_ts._entry, section ".printk_index", align 4
@qede_ptp_rx_ts._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)]Rx timestamp, timestamp cycles = %llu, ns = %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@qede_ptp_rx_ts._entry_ptr.25 = internal global ptr @qede_ptp_rx_ts._entry.23, section ".printk_index", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@qede_ptp_cfg_filters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]TS IOCTL not called\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qede_ptp_cfg_filters\00", [43 x i8] zeroinitializer }, align 32
@qede_ptp_cfg_filters._entry_ptr = internal global ptr @qede_ptp_cfg_filters._entry, section ".printk_index", align 4
@qede_ptp_cfg_filters._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[%s:%d(%s)]One-step timestamping is not supported\0A\00", [43 x i8] zeroinitializer }, align 32
@qede_ptp_cfg_filters._entry_ptr.34 = internal global ptr @qede_ptp_cfg_filters._entry.32, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qede_ptp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ptp->lock\00", [21 x i8] zeroinitializer }, align 32
@qede_ptp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]PTP HW enable failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qede_ptp_init\00", [18 x i8] zeroinitializer }, align 32
@qede_ptp_init._entry_ptr = internal global ptr @qede_ptp_init._entry, section ".printk_index", align 4
@qede_ptp_init.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ptp->work)\00", [34 x i8] zeroinitializer }, align 32
@qede_ptp_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Tx timestamp is not recorded\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qede_ptp_task\00", [18 x i8] zeroinitializer }, align 32
@qede_ptp_task._entry_ptr = internal global ptr @qede_ptp_task._entry, section ".printk_index", align 4
@qede_ptp_task._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\015[%s:%d(%s)]Tx timestamp, timestamp cycles = %llu, ns = %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@qede_ptp_task._entry_ptr.44 = internal global ptr @qede_ptp_task._entry.42, section ".printk_index", align 4
@qede_ptp_read_cc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PHC read err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@qede_ptp_read_cc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]PHC read cycles = %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_ptp_read_cc\00", [47 x i8] zeroinitializer }, align 32
@qede_ptp_read_cc._entry_ptr = internal global ptr @qede_ptp_read_cc._entry, section ".printk_index", align 4
@qede_ptp_adjfreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[%s:%d(%s)]PTP adjfreq called while interface is down\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_ptp_adjfreq\00", [47 x i8] zeroinitializer }, align 32
@qede_ptp_adjfreq._entry_ptr = internal global ptr @qede_ptp_adjfreq._entry, section ".printk_index", align 4
@qede_ptp_adjtime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]PTP adjtime called, delta = %llx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_ptp_adjtime\00", [47 x i8] zeroinitializer }, align 32
@qede_ptp_adjtime._entry_ptr = internal global ptr @qede_ptp_adjtime._entry, section ".printk_index", align 4
@qede_ptp_gettime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]PTP gettime called, ns = %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_ptp_gettime\00", [47 x i8] zeroinitializer }, align 32
@qede_ptp_gettime._entry_ptr = internal global ptr @qede_ptp_gettime._entry, section ".printk_index", align 4
@qede_ptp_settime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]PTP settime called, ns = %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_ptp_settime\00", [47 x i8] zeroinitializer }, align 32
@qede_ptp_settime._entry_ptr = internal global ptr @qede_ptp_settime._entry, section ".printk_index", align 4
@qede_ptp_ancillary_feature_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[%s:%d(%s)]PHC ancillary features are not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"qede_ptp_ancillary_feature_enable\00", [62 x i8] zeroinitializer }, align 32
@qede_ptp_ancillary_feature_enable._entry_ptr = internal global ptr @qede_ptp_ancillary_feature_enable._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.qede_ptp_cfg_filters = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 0, i16 0, i16 3, i16 3, i16 3, i16 6, i16 6, i16 6, i16 9, i16 9, i16 9, i16 12, i16 12, i16 12, i16 0], [34 x i8] zeroinitializer }, align 32
@switch.table.qede_ptp_cfg_filters.58 = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 1, i32 2, i32 3, i32 3, i32 4, i32 5, i32 5, i32 6, i32 7, i32 7, i32 8, i32 9, i32 9, i32 1], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 303, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 437, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 444, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 459, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 473, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 499, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 505, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 510, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 537, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 544, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 156, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 4963, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 209, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 226, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 406, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 411, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 416, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 154, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 175, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 192, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 194, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 50, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 66, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 89, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 108, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private constant [47 x i8] c"../drivers/net/ethernet/qlogic/qede/qede_ptp.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 129, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [34 x i8] c"switch.table.qede_ptp_cfg_filters\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [37 x i8] c"switch.table.qede_ptp_cfg_filters.58\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @qede_ptp_adjfreq._entry, ptr @qede_ptp_adjfreq._entry_ptr, ptr @qede_ptp_adjtime._entry, ptr @qede_ptp_adjtime._entry_ptr, ptr @qede_ptp_ancillary_feature_enable._entry, ptr @qede_ptp_ancillary_feature_enable._entry_ptr, ptr @qede_ptp_cfg_filters._entry, ptr @qede_ptp_cfg_filters._entry.32, ptr @qede_ptp_cfg_filters._entry_ptr, ptr @qede_ptp_cfg_filters._entry_ptr.34, ptr @qede_ptp_enable._entry, ptr @qede_ptp_enable._entry.10, ptr @qede_ptp_enable._entry.6, ptr @qede_ptp_enable._entry_ptr, ptr @qede_ptp_enable._entry_ptr.12, ptr @qede_ptp_enable._entry_ptr.8, ptr @qede_ptp_gettime._entry, ptr @qede_ptp_gettime._entry_ptr, ptr @qede_ptp_hw_ts._entry, ptr @qede_ptp_hw_ts._entry_ptr, ptr @qede_ptp_init._entry, ptr @qede_ptp_init._entry_ptr, ptr @qede_ptp_read_cc._entry, ptr @qede_ptp_read_cc._entry_ptr, ptr @qede_ptp_rx_ts._entry, ptr @qede_ptp_rx_ts._entry.23, ptr @qede_ptp_rx_ts._entry_ptr, ptr @qede_ptp_rx_ts._entry_ptr.25, ptr @qede_ptp_settime._entry, ptr @qede_ptp_settime._entry_ptr, ptr @qede_ptp_task._entry, ptr @qede_ptp_task._entry.42, ptr @qede_ptp_task._entry_ptr, ptr @qede_ptp_task._entry_ptr.44, ptr @qede_ptp_tx_ts._entry, ptr @qede_ptp_tx_ts._entry.15, ptr @qede_ptp_tx_ts._entry.18, ptr @qede_ptp_tx_ts._entry_ptr, ptr @qede_ptp_tx_ts._entry_ptr.17, ptr @qede_ptp_tx_ts._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @qede_ptp_init.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @qede_ptp_init.__key.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @switch.table.qede_ptp_cfg_filters, ptr @switch.table.qede_ptp_cfg_filters.58], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_hw_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_enable._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_enable._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_tx_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_tx_ts._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_tx_ts._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_rx_ts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_rx_ts._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_cfg_filters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_cfg_filters._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_init.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_task._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_read_cc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_adjfreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_adjtime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_gettime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_settime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ptp_ancillary_feature_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qede_ptp_cfg_filters to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qede_ptp_cfg_filters.58 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_ptp_hw_ts(ptr noundef %edev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #10
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !125
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !125
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !125
  %ptp1 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 8
  %5 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp1, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %7 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 12, i32 -1226833920) #13, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #10
  %10 = call i32 @llvm.read_register.i32(metadata !115) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !128
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %8, i32 noundef 12) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !129
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !127

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

do.body:                                          ; preds = %if.end.i.i
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %14 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  br i1 %cmp, label %land.rhs, label %do.body.do.end18_crit_edge

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  %16 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dp_module, align 8
  %and = and i32 %17, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.rhs.do.end18_crit_edge, label %do.end, !prof !127

land.rhs.do.end18_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %18 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call ptr @strchr(ptr noundef %19, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool12.not = icmp eq ptr %19, null
  %or.cond = and i1 %tobool12.not, %tobool2.not.i
  %spec.select.i61 = select i1 %tobool2.not.i, ptr %19, ptr @.str.29
  %spec.select72 = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i61
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select72, %lor.lhs.false.i ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 305, ptr noundef %cond, i32 noundef %23, i32 noundef %25) #14
  br label %do.end18

do.end18:                                         ; preds = %cond.end, %land.rhs.do.end18_crit_edge, %do.body.do.end18_crit_edge
  %hw_ts_ioctl_called = getelementptr inbounds %struct.qede_ptp, ptr %6, i32 0, i32 10
  %26 = ptrtoint ptr %hw_ts_ioctl_called to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %hw_ts_ioctl_called, align 8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %conv20 = trunc i32 %28 to i16
  %tx_type21 = getelementptr inbounds %struct.qede_ptp, ptr %6, i32 0, i32 11
  %29 = ptrtoint ptr %tx_type21 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv20, ptr %tx_type21, align 2
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %conv23 = trunc i32 %31 to i16
  %rx_filter24 = getelementptr inbounds %struct.qede_ptp, ptr %6, i32 0, i32 12
  %32 = ptrtoint ptr %rx_filter24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv23, ptr %rx_filter24, align 4
  %call25 = call fastcc i32 @qede_ptp_cfg_filters(ptr noundef %edev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then.i52, label %do.end18.cleanup_crit_edge

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i52:                                      ; preds = %do.end18
  %33 = ptrtoint ptr %rx_filter24 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rx_filter24, align 4
  %conv30 = zext i16 %34 to i32
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv30, ptr %3, align 4
  %36 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.28, i32 noundef 174) #10
  %call.i.i51 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i51, label %if.then.i52.cleanup_crit_edge, label %if.end.i.i55

if.then.i52.cleanup_crit_edge:                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i55:                                     ; preds = %if.then.i52
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %37, i32 12, i32 -1226833920) #13, !srcloc !131
  %asmresult.i.i53 = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i53)
  %cmp.i.i54 = icmp eq i32 %asmresult.i.i53, 0
  br i1 %cmp.i.i54, label %copy_to_user.exit, label %if.end.i.i55.cleanup_crit_edge

if.end.i.i55.cleanup_crit_edge:                   ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i56 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #10
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %37, ptr noundef nonnull %config, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool34.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool34.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i55.cleanup_crit_edge, %if.then.i52.cleanup_crit_edge, %do.end18.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call25, %do.end18.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i52.cleanup_crit_edge ], [ -14, %if.end.i.i55.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_ptp_cfg_filters(ptr noundef %edev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 8
  %0 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_ts_ioctl_called = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %hw_ts_ioctl_called to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_ts_ioctl_called, align 8, !range !132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %do.body, label %if.end16

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !133

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i91 = select i1 %tobool2.not.i, ptr %7, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i91
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 209, ptr noundef %cond) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %tx_type17 = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %tx_type17 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tx_type17, align 2
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %11, label %if.end16.sw.epilog_crit_edge [
    i16 1, label %sw.bb
    i16 0, label %sw.bb19
    i16 2, label %if.end16.do.end25_crit_edge
    i16 3, label %if.end16.do.end25_crit_edge120
  ]

if.end16.do.end25_crit_edge120:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.end16.do.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #10
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %flags20 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags20) #10
  br label %sw.epilog

do.end25:                                         ; preds = %if.end16.do.end25_crit_edge, %if.end16.do.end25_crit_edge120
  %ndev27 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %13 = ptrtoint ptr %ndev27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev27, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i95 = icmp eq i8 %16, 0
  br i1 %tobool.not.i95, label %do.end25.cond.end34_crit_edge, label %lor.lhs.false.i99

do.end25.cond.end34_crit_edge:                    ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end34

lor.lhs.false.i99:                                ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call.i96 = tail call ptr @strchr(ptr noundef %14, i32 noundef 37) #10
  %tobool2.not.i97 = icmp eq ptr %call.i96, null
  %tobool29.not = icmp eq ptr %14, null
  %or.cond116 = and i1 %tobool29.not, %tobool2.not.i97
  %spec.select.i105 = select i1 %tobool2.not.i97, ptr %14, ptr @.str.29
  %spec.select117 = select i1 %or.cond116, ptr @.str.3, ptr %spec.select.i105
  br label %cond.end34

cond.end34:                                       ; preds = %lor.lhs.false.i99, %do.end25.cond.end34_crit_edge
  %cond35 = phi ptr [ @.str.29, %do.end25.cond.end34_crit_edge ], [ %spec.select117, %lor.lhs.false.i99 ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 226, ptr noundef %cond35) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb, %if.end16.sw.epilog_crit_edge
  %tx_type.0 = phi i32 [ 1, %if.end16.sw.epilog_crit_edge ], [ 0, %sw.bb19 ], [ 1, %sw.bb ]
  %lock = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %rx_filter39 = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %rx_filter39 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rx_filter39, align 4
  %switch.tableidx = add i16 %18, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %switch.tableidx)
  %19 = icmp ult i16 %switch.tableidx, 15
  br i1 %19, label %switch.lookup, label %sw.epilog.sw.epilog60_crit_edge

sw.epilog.sw.epilog60_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog60

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %20 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [15 x i16], ptr @switch.table.qede_ptp_cfg_filters, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %21)
  %switch.load = load i16, ptr %switch.gep, align 2
  %22 = sext i16 %switch.tableidx to i32
  %switch.gep118 = getelementptr inbounds [15 x i32], ptr @switch.table.qede_ptp_cfg_filters.58, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep118 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load119 = load i32, ptr %switch.gep118, align 4
  %24 = ptrtoint ptr %rx_filter39 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %switch.load, ptr %rx_filter39, align 4
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog60_crit_edge
  %rx_filter.0 = phi i32 [ 0, %sw.epilog.sw.epilog60_crit_edge ], [ %switch.load119, %switch.lookup ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %edev, align 8
  %call61 = tail call i32 %28(ptr noundef %30, i32 noundef %rx_filter.0, i32 noundef %tx_type.0) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog60, %cond.end34, %cond.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog60 ], [ -34, %cond.end34 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %cond.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_ptp_get_ts_info(ptr nocapture noundef readonly %edev, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 8
  %0 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp1, align 8
  %tobool.not = icmp eq ptr %1, null
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 26, ptr %so_timestamping, align 4
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %phc_index, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 95, ptr %so_timestamping, align 4
  %clock = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clock, align 8
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ptp_clock_index(ptr noundef nonnull %6) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %call.sink = phi i32 [ %call, %if.then4 ], [ -1, %if.end.if.end8_crit_edge ]
  %7 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call.sink, ptr %7, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 32761, ptr %rx_filters, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %tx_types, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_ptp_disable(ptr noundef %edev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 8
  %0 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %clock = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ptp_clock_unregister(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %clock, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %work = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 5
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #10
  %tx_skb = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_skb, align 8
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %6, i32 noundef 1) #10
  %7 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tx_skb, align 8
  %flags = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 4, ptr elementtype(i32) %flags) #10, !srcloc !135
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %lock = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %disable = getelementptr inbounds %struct.qed_eth_ptp_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disable, align 4
  %13 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %edev, align 8
  %call13 = tail call i32 %12(ptr noundef %14) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  %15 = ptrtoint ptr %ptp1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ptp1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_bit_unlock(ptr noundef %addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %addr, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %addr, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %addr, ptr %addr, i32 4, ptr elementtype(i32) %addr) #10, !srcloc !135
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_ptp_enable(ptr noundef %edev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 288) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp ult i8 %2, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !133

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strchr(ptr noundef %4, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %4, null
  %or.cond = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i136 = select i1 %tobool2.not.i, ptr %4, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i136
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 437, ptr noundef %cond) #14
  br label %cleanup

if.end13:                                         ; preds = %entry
  %edev14 = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %edev14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %edev, ptr %edev14, align 4
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %ptp15 = getelementptr inbounds %struct.qed_eth_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ptp15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp15, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i, align 8
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %do.body20, label %do.body.i

do.body20:                                        ; preds = %if.end13
  %dp_level21 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %13 = ptrtoint ptr %dp_level21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp23 = icmp ult i8 %14, 2
  br i1 %cmp23, label %do.end34, label %do.body20.err1_crit_edge, !prof !133

do.body20.err1_crit_edge:                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

do.end34:                                         ; preds = %do.body20
  %ndev36 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %15 = ptrtoint ptr %ndev36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev36, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i140 = icmp eq i8 %18, 0
  br i1 %tobool.not.i140, label %do.end34.cond.end43_crit_edge, label %lor.lhs.false.i144

do.end34.cond.end43_crit_edge:                    ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end43

lor.lhs.false.i144:                               ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call.i141 = tail call ptr @strchr(ptr noundef %16, i32 noundef 37) #10
  %tobool2.not.i142 = icmp eq ptr %call.i141, null
  %tobool38.not = icmp eq ptr %16, null
  %or.cond185 = and i1 %tobool38.not, %tobool2.not.i142
  %spec.select.i150 = select i1 %tobool2.not.i142, ptr %16, ptr @.str.29
  %spec.select187 = select i1 %or.cond185, ptr @.str.3, ptr %spec.select.i150
  br label %cond.end43

cond.end43:                                       ; preds = %lor.lhs.false.i144, %do.end34.cond.end43_crit_edge
  %cond44 = phi ptr [ @.str.29, %do.end34.cond.end43_crit_edge ], [ %spec.select187, %lor.lhs.false.i144 ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 444, ptr noundef %cond44) #14
  br label %err1

do.body.i:                                        ; preds = %if.end13
  %ptp50 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 8
  %19 = ptrtoint ptr %ptp50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %ptp50, align 8
  %lock.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @qede_ptp_init.__key, i16 noundef signext 3) #10
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %enable.i = getelementptr inbounds %struct.qed_eth_ptp_ops, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enable.i, align 4
  %24 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edev, align 8
  %call2.i = tail call i32 %23(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end54, label %do.body5.i

do.body5.i:                                       ; preds = %do.body.i
  %dp_level.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %26 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp.i = icmp ult i8 %27, 2
  br i1 %cmp.i, label %do.end12.i, label %do.body5.i.err1_crit_edge, !prof !133

do.body5.i.err1_crit_edge:                        ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err1

do.end12.i:                                       ; preds = %do.body5.i
  %ndev.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %28 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %do.end12.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end12.i.cond.end.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @strchr(ptr noundef %29, i32 noundef 37) #10
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool14.not.i = icmp eq ptr %29, null
  %or.cond.i = and i1 %tobool14.not.i, %tobool2.not.i.i
  %spec.select.i60.i = select i1 %tobool2.not.i.i, ptr %29, ptr @.str.29
  %spec.select.i155 = select i1 %or.cond.i, ptr @.str.3, ptr %spec.select.i60.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end12.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.29, %do.end12.i.cond.end.i_crit_edge ], [ %spec.select.i155, %lor.lhs.false.i.i ]
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 411, ptr noundef %cond.i) #14
  br label %err1

if.end54:                                         ; preds = %do.body.i
  %work.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #10
  %32 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @qede_ptp_init.__key.38, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry26.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %entry26.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry26.i, ptr %entry26.i, align 8
  %prev.i.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 5, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry26.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 5, i32 2
  %35 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @qede_ptp_task, ptr %func.i, align 8
  %cc.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %cc.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %cc.i, align 8
  store ptr @qede_ptp_read_cc, ptr %cc.i, align 8
  %mask.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %mask.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %mask.i, align 8
  %shift.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %shift.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %shift.i, align 4
  %mult.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %mult.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %mult.i, align 8
  %tc.i = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 3
  %call.i64.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #10
  tail call void @timecounter_init(ptr noundef %tc.i, ptr noundef %cc.i, i64 noundef %call.i64.i) #10
  %call55 = tail call fastcc i32 @qede_ptp_cfg_filters(ptr noundef %edev)
  %clock_info = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %clock_info to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %clock_info, align 4
  %name = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 1
  %ndev57 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %41 = ptrtoint ptr %ndev57 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev57, align 4
  %call60 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str.9, ptr noundef %42)
  %max_adj = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 291666666, ptr %max_adj, align 8
  %n_alarm = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %n_alarm to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %n_alarm, align 4
  %n_ext_ts = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %n_ext_ts, align 8
  %n_per_out = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 5
  %46 = ptrtoint ptr %n_per_out to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %n_per_out, align 4
  %pps = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 7
  %47 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %pps, align 4
  %adjfreq = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 10
  %48 = ptrtoint ptr %adjfreq to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @qede_ptp_adjfreq, ptr %adjfreq, align 8
  %adjtime = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 12
  %49 = ptrtoint ptr %adjtime to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @qede_ptp_adjtime, ptr %adjtime, align 8
  %gettime64 = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 13
  %50 = ptrtoint ptr %gettime64 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @qede_ptp_gettime, ptr %gettime64, align 4
  %settime64 = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 16
  %51 = ptrtoint ptr %settime64 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @qede_ptp_settime, ptr %settime64, align 8
  %enable = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 1, i32 17
  %52 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @qede_ptp_ancillary_feature_enable, ptr %enable, align 4
  %pdev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 2
  %53 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %call72 = tail call ptr @ptp_clock_register(ptr noundef %clock_info, ptr noundef %dev) #10
  %clock = getelementptr inbounds %struct.qede_ptp, ptr %call7.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call72, ptr %clock, align 8
  %cmp.i157 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %do.end79, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end79:                                         ; preds = %if.end54
  %56 = ptrtoint ptr %ndev57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ndev57, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i158 = icmp eq i8 %59, 0
  br i1 %tobool.not.i158, label %do.end79.cond.end88_crit_edge, label %lor.lhs.false.i162

do.end79.cond.end88_crit_edge:                    ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end88

lor.lhs.false.i162:                               ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #12
  %call.i159 = tail call ptr @strchr(ptr noundef %57, i32 noundef 37) #10
  %tobool2.not.i160 = icmp eq ptr %call.i159, null
  %tobool83.not = icmp eq ptr %57, null
  %or.cond186 = and i1 %tobool83.not, %tobool2.not.i160
  %spec.select.i168 = select i1 %tobool2.not.i160, ptr %57, ptr @.str.29
  %spec.select188 = select i1 %or.cond186, ptr @.str.3, ptr %spec.select.i168
  br label %cond.end88

cond.end88:                                       ; preds = %lor.lhs.false.i162, %do.end79.cond.end88_crit_edge
  %cond89 = phi ptr [ @.str.29, %do.end79.cond.end88_crit_edge ], [ %spec.select188, %lor.lhs.false.i162 ]
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, i32 noundef 473, ptr noundef %cond89) #14
  tail call void @qede_ptp_disable(ptr noundef %edev)
  br label %err2

err1:                                             ; preds = %cond.end.i, %do.body5.i.err1_crit_edge, %cond.end43, %do.body20.err1_crit_edge
  %rc.0 = phi i32 [ -5, %cond.end43 ], [ -5, %do.body20.err1_crit_edge ], [ %call2.i, %cond.end.i ], [ %call2.i, %do.body5.i.err1_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %err2

err2:                                             ; preds = %err1, %cond.end88
  %rc.1 = phi i32 [ %rc.0, %err1 ], [ -22, %cond.end88 ]
  %ptp94 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 8
  %60 = ptrtoint ptr %ptp94 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %ptp94, align 8
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end54.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %err2 ], [ -12, %cond.end ], [ -12, %do.body.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_ptp_adjfreq(ptr noundef %info, i32 noundef %ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr i8, ptr %info, i32 224
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  tail call void @__qede_lock(ptr noundef %1) #10
  %state = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %info, i32 -4
  %lock = getelementptr i8, ptr %info, i32 232
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %adjfreq = getelementptr inbounds %struct.qed_eth_ptp_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %adjfreq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adjfreq, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call = tail call i32 %7(ptr noundef %9, i32 noundef %ppb) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.end

do.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool.not = icmp eq ptr %11, null
  %or.cond = and i1 %tobool.not, %tobool2.not.i
  %spec.select.i22 = select i1 %tobool2.not.i, ptr %11, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i22
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, i32 noundef 50, ptr noundef %cond) #14
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %rc.0 = phi i32 [ %call, %if.then ], [ -14, %cond.end ]
  tail call void @__qede_unlock(ptr noundef %1) #10
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_ptp_adjtime(ptr noundef %info, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr i8, ptr %info, i32 224
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module, align 8
  %and = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end12_crit_edge, label %do.end, !prof !127

land.rhs.do.end12_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i24 = select i1 %tobool2.not.i, ptr %7, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i24
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 67, ptr noundef %cond, i64 noundef %delta) #14
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %land.rhs.do.end12_crit_edge, %entry.do.end12_crit_edge
  %lock = getelementptr i8, ptr %info, i32 232
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %nsec.i = getelementptr i8, ptr %info, i32 148
  %10 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %11, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_ptp_gettime(ptr noundef %info, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %tmp15 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr i8, ptr %info, i32 224
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %lock = getelementptr i8, ptr %info, i32 232
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %tc = getelementptr i8, ptr %info, i32 132
  %call = tail call i64 @timecounter_read(ptr noundef %tc) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module, align 8
  %and = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end14_crit_edge, label %do.end, !prof !127

land.rhs.do.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i26 = select i1 %tobool2.not.i, ptr %7, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i26
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef 89, ptr noundef %cond, i64 noundef %call) #14
  br label %do.end14

do.end14:                                         ; preds = %cond.end, %land.rhs.do.end14_crit_edge, %entry.do.end14_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp15) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp15, i64 noundef %call) #10
  %10 = call ptr @memcpy(ptr %ts, ptr %tmp15, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp15) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_ptp_settime(ptr noundef %info, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr i8, ptr %info, i32 224
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %3)
  %cmp.i = icmp sgt i64 %3, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %3)
  %cmp2.i = icmp slt i64 %3, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = mul nsw i64 %3, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %5 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %land.rhs, label %timespec64_to_ns.exit.do.end13_crit_edge

timespec64_to_ns.exit.do.end13_crit_edge:         ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

land.rhs:                                         ; preds = %timespec64_to_ns.exit
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_module, align 8
  %and = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end13_crit_edge, label %do.end, !prof !127

land.rhs.do.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool8.not = icmp eq ptr %11, null
  %or.cond = and i1 %tobool8.not, %tobool2.not.i
  %spec.select.i27 = select i1 %tobool2.not.i, ptr %11, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i27
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef 108, ptr noundef %cond, i64 noundef %retval.0.i) #14
  br label %do.end13

do.end13:                                         ; preds = %cond.end, %land.rhs.do.end13_crit_edge, %timespec64_to_ns.exit.do.end13_crit_edge
  %lock = getelementptr i8, ptr %info, i32 232
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %tc = getelementptr i8, ptr %info, i32 132
  %cc = getelementptr i8, ptr %info, i32 108
  tail call void @timecounter_init(ptr noundef %tc, ptr noundef %cc, i64 noundef %retval.0.i) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_ptp_ancillary_feature_enable(ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %rq, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr i8, ptr %info, i32 224
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.cond.end_crit_edge, label %lor.lhs.false.i

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strchr(ptr noundef %3, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool.not = icmp eq ptr %3, null
  %or.cond = and i1 %tobool.not, %tobool2.not.i
  %spec.select.i13 = select i1 %tobool2.not.i, ptr %3, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i13
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %entry.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %entry.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 129, ptr noundef %cond) #14
  ret i32 -524
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_ptp_tx_ts(ptr noundef %edev, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 8
  %0 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %and.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

test_and_set_bit_lock.exit:                       ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 4, ptr elementtype(i32) %flags) #10, !srcloc !136
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !137
  %5 = and i32 %asmresult.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp.i.not = icmp eq i32 %5, 0
  br i1 %phi.cmp.i.not, label %if.end11, label %test_and_set_bit_lock.exit.do.end_crit_edge

test_and_set_bit_lock.exit.do.end_crit_edge:      ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %test_and_set_bit_lock.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %6 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool5.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool5.not, %tobool2.not.i
  %spec.select.i96 = select i1 %tobool2.not.i, ptr %7, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i96
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 499, ptr noundef %cond) #14
  %ptp_skip_txts = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 9
  %10 = ptrtoint ptr %ptp_skip_txts to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ptp_skip_txts, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %ptp_skip_txts, align 8
  br label %cleanup

if.end11:                                         ; preds = %test_and_set_bit_lock.exit
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %do.end22, label %if.else, !prof !133

do.end22:                                         ; preds = %if.end11
  %ndev24 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %15 = ptrtoint ptr %ndev24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev24, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i100 = icmp eq i8 %18, 0
  br i1 %tobool.not.i100, label %do.end22.cond.end31_crit_edge, label %lor.lhs.false.i104

do.end22.cond.end31_crit_edge:                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end31

lor.lhs.false.i104:                               ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call.i101 = tail call ptr @strchr(ptr noundef %16, i32 noundef 37) #10
  %tobool2.not.i102 = icmp eq ptr %call.i101, null
  %tobool26.not = icmp eq ptr %16, null
  %or.cond141 = and i1 %tobool26.not, %tobool2.not.i102
  %spec.select.i110 = select i1 %tobool2.not.i102, ptr %16, ptr @.str.29
  %spec.select143 = select i1 %or.cond141, ptr @.str.3, ptr %spec.select.i110
  br label %cond.end31

cond.end31:                                       ; preds = %lor.lhs.false.i104, %do.end22.cond.end31_crit_edge
  %cond32 = phi ptr [ @.str.29, %do.end22.cond.end31_crit_edge ], [ %spec.select143, %lor.lhs.false.i104 ]
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef 506, ptr noundef %cond32) #14
  tail call fastcc void @clear_bit_unlock(ptr noundef %flags)
  %ptp_skip_txts37 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 9
  %19 = ptrtoint ptr %ptp_skip_txts37 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ptp_skip_txts37, align 8
  %inc38 = add i64 %20, 1
  store i64 %inc38, ptr %ptp_skip_txts37, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end11
  %tx_skb = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_skb, align 8
  %tobool39.not = icmp eq ptr %22, null
  br i1 %tobool39.not, label %if.else67, label %do.end50, !prof !127

do.end50:                                         ; preds = %if.else
  %ndev52 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %23 = ptrtoint ptr %ndev52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ndev52, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i114 = icmp eq i8 %26, 0
  br i1 %tobool.not.i114, label %do.end50.cond.end59_crit_edge, label %lor.lhs.false.i118

do.end50.cond.end59_crit_edge:                    ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end59

lor.lhs.false.i118:                               ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  %call.i115 = tail call ptr @strchr(ptr noundef %24, i32 noundef 37) #10
  %tobool2.not.i116 = icmp eq ptr %call.i115, null
  %tobool54.not = icmp eq ptr %24, null
  %or.cond142 = and i1 %tobool54.not, %tobool2.not.i116
  %spec.select.i124 = select i1 %tobool2.not.i116, ptr %24, ptr @.str.29
  %spec.select144 = select i1 %or.cond142, ptr @.str.3, ptr %spec.select.i124
  br label %cond.end59

cond.end59:                                       ; preds = %lor.lhs.false.i118, %do.end50.cond.end59_crit_edge
  %cond60 = phi ptr [ @.str.29, %do.end50.cond.end59_crit_edge ], [ %spec.select144, %lor.lhs.false.i118 ]
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14, i32 noundef 511, ptr noundef %cond60) #14
  tail call fastcc void @clear_bit_unlock(ptr noundef %flags)
  %ptp_skip_txts65 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 9
  %27 = ptrtoint ptr %ptp_skip_txts65 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ptp_skip_txts65, align 8
  %inc66 = add i64 %28, 1
  store i64 %inc66, ptr %ptp_skip_txts65, align 8
  br label %cleanup

if.else67:                                        ; preds = %if.else
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tx_flags, align 1
  %33 = or i8 %32, 4
  store i8 %33, ptr %tx_flags, align 1
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #10, !srcloc !138
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else67.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !133

if.else67.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else67
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !127

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else67.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else67.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #10
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %36 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %skb, ptr %tx_skb, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %ptp_tx_start = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %ptp_tx_start to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ptp_tx_start, align 8
  %work = getelementptr inbounds %struct.qede_ptp, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i128 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work) #10
  br label %cleanup

cleanup:                                          ; preds = %skb_get.exit, %cond.end59, %cond.end31, %cond.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_ptp_rx_ts(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  %timestamp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timestamp) #10
  %0 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %timestamp, align 8, !annotation !125
  %ptp1 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 8
  %1 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ptp1, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.qede_ptp, ptr %2, i32 0, i32 9
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %read_rx_ts = getelementptr inbounds %struct.qed_eth_ptp_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %read_rx_ts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_rx_ts, align 4
  %7 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edev, align 8
  %call = call i32 %6(ptr noundef %8, ptr noundef nonnull %timestamp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end18, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp = icmp ult i8 %10, 2
  br i1 %cmp, label %do.end, label %if.then3.cleanup_crit_edge, !prof !133

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then3
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %11 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call ptr @strchr(ptr noundef %12, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool11.not = icmp eq ptr %12, null
  %or.cond = and i1 %tobool11.not, %tobool2.not.i
  %spec.select.i73 = select i1 %tobool2.not.i, ptr %12, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i73
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 537, ptr noundef %cond) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %tc = getelementptr inbounds %struct.qede_ptp, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %timestamp, align 8
  %call19 = call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %16) #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %17 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call19, ptr %hwtstamps.i, align 8
  %dp_level24 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %20 = ptrtoint ptr %dp_level24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp26 = icmp eq i8 %21, 0
  br i1 %cmp26, label %land.rhs, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %if.end18
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  %22 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dp_module, align 8
  %and = and i32 %23, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %land.rhs.cleanup_crit_edge, label %do.end38, !prof !127

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end38:                                         ; preds = %land.rhs
  %ndev40 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %24 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev40, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i77 = icmp eq i8 %27, 0
  br i1 %tobool.not.i77, label %do.end38.cond.end47_crit_edge, label %lor.lhs.false.i81

do.end38.cond.end47_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end47

lor.lhs.false.i81:                                ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  %call.i78 = call ptr @strchr(ptr noundef %25, i32 noundef 37) #10
  %tobool2.not.i79 = icmp eq ptr %call.i78, null
  %tobool42.not = icmp eq ptr %25, null
  %or.cond98 = and i1 %tobool42.not, %tobool2.not.i79
  %spec.select.i87 = select i1 %tobool2.not.i79, ptr %25, ptr @.str.29
  %spec.select99 = select i1 %or.cond98, ptr @.str.3, ptr %spec.select.i87
  br label %cond.end47

cond.end47:                                       ; preds = %lor.lhs.false.i81, %do.end38.cond.end47_crit_edge
  %cond48 = phi ptr [ @.str.29, %do.end38.cond.end47_crit_edge ], [ %spec.select99, %lor.lhs.false.i81 ]
  %28 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %timestamp, align 8
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef 546, ptr noundef %cond48, i64 noundef %29, i64 noundef %call19) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end47, %land.rhs.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %cond.end, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_ptp_task(ptr noundef %work) #0 align 64 {
entry:
  %shhwtstamps = alloca %struct.skb_shared_hwtstamps, align 8
  %timestamp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timestamp) #10
  %0 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %timestamp, align 8, !annotation !125
  %add.ptr = getelementptr i8, ptr %work, i32 -180
  %edev1 = getelementptr i8, ptr %work, i32 48
  %1 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %edev1, align 4
  %ptp_tx_start = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %ptp_tx_start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ptp_tx_start, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %lock = getelementptr i8, ptr %work, i32 56
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %read_tx_ts = getelementptr inbounds %struct.qed_eth_ptp_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read_tx_ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_tx_ts, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  %call = call i32 %9(ptr noundef %11, ptr noundef nonnull %timestamp) #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end29, label %if.then

if.then:                                          ; preds = %entry
  %add = add i32 %4, 200
  %sub = sub i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body, label %if.else, !prof !133

do.body:                                          ; preds = %if.then
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp7 = icmp ult i8 %13, 2
  br i1 %cmp7, label %do.end, label %do.body.do.end24_crit_edge, !prof !133

do.body.do.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call ptr @strchr(ptr noundef %15, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool19.not = icmp eq ptr %15, null
  %or.cond = and i1 %tobool19.not, %tobool2.not.i
  %spec.select.i97 = select i1 %tobool2.not.i, ptr %15, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i97
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 154, ptr noundef %cond) #14
  br label %do.end24

do.end24:                                         ; preds = %cond.end, %do.body.do.end24_crit_edge
  %tx_skb = getelementptr i8, ptr %work, i32 52
  %18 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_skb, align 8
  call void @__dev_kfree_skb_any(ptr noundef %19, i32 noundef 1) #10
  %20 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx_skb, align 8
  %flags = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 6
  call fastcc void @clear_bit_unlock(ptr noundef %flags)
  %ptp_skip_txts = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 9
  %21 = ptrtoint ptr %ptp_skip_txts to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ptp_skip_txts, align 8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %ptp_skip_txts, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %work) #10
  br label %cleanup

if.end29:                                         ; preds = %entry
  %tc = getelementptr i8, ptr %work, i32 -44
  %24 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %timestamp, align 8
  %call30 = call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %25) #10
  %26 = ptrtoint ptr %shhwtstamps to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call30, ptr %shhwtstamps, align 8
  %tx_skb32 = getelementptr i8, ptr %work, i32 52
  %27 = ptrtoint ptr %tx_skb32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_skb32, align 8
  call void @skb_tstamp_tx(ptr noundef %28, ptr noundef nonnull %shhwtstamps) #10
  %29 = ptrtoint ptr %tx_skb32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_skb32, align 8
  call void @__dev_kfree_skb_any(ptr noundef %30, i32 noundef 1) #10
  %31 = ptrtoint ptr %tx_skb32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %tx_skb32, align 8
  %flags35 = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 6
  %call.i.i101 = call zeroext i1 @__kasan_check_write(ptr noundef %flags35, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !134
  call void @llvm.prefetch.p0(ptr %flags35, i32 1, i32 3, i32 1) #10
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags35, ptr %flags35, i32 4, ptr elementtype(i32) %flags35) #10, !srcloc !135
  %dp_level37 = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 5
  %33 = ptrtoint ptr %dp_level37 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dp_level37, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp39 = icmp eq i8 %34, 0
  br i1 %cmp39, label %land.rhs, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.rhs:                                         ; preds = %if.end29
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 4
  %35 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dp_module, align 8
  %and = and i32 %36, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %land.rhs.cleanup_crit_edge, label %do.end51, !prof !127

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end51:                                         ; preds = %land.rhs
  %ndev53 = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %ndev53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev53, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i102 = icmp eq i8 %40, 0
  br i1 %tobool.not.i102, label %do.end51.cond.end60_crit_edge, label %lor.lhs.false.i106

do.end51.cond.end60_crit_edge:                    ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end60

lor.lhs.false.i106:                               ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #12
  %call.i103 = call ptr @strchr(ptr noundef %38, i32 noundef 37) #10
  %tobool2.not.i104 = icmp eq ptr %call.i103, null
  %tobool55.not = icmp eq ptr %38, null
  %or.cond123 = and i1 %tobool55.not, %tobool2.not.i104
  %spec.select.i112 = select i1 %tobool2.not.i104, ptr %38, ptr @.str.29
  %spec.select124 = select i1 %or.cond123, ptr @.str.3, ptr %spec.select.i112
  br label %cond.end60

cond.end60:                                       ; preds = %lor.lhs.false.i106, %do.end51.cond.end60_crit_edge
  %cond61 = phi ptr [ @.str.29, %do.end51.cond.end60_crit_edge ], [ %spec.select124, %lor.lhs.false.i106 ]
  %41 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %timestamp, align 8
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef 177, ptr noundef %cond61, i64 noundef %42, i64 noundef %call30) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end60, %land.rhs.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.else, %do.end24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timestamp) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @qede_ptp_read_cc(ptr nocapture noundef readonly %cc) #0 align 64 {
entry:
  %phc_cycles = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %phc_cycles) #10
  %0 = ptrtoint ptr %phc_cycles to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %phc_cycles, align 8, !annotation !125
  %add.ptr = getelementptr i8, ptr %cc, i32 -112
  %edev1 = getelementptr i8, ptr %cc, i32 116
  %1 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %edev1, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %read_cc = getelementptr inbounds %struct.qed_eth_ptp_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %read_cc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_cc, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 8
  %call = call i32 %6(ptr noundef %8, ptr noundef nonnull %phc_cycles) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body38_crit_edge, label %land.end

entry.do.body38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

land.end:                                         ; preds = %entry
  %.b70 = load i1, ptr @qede_ptp_read_cc.__already_done, align 1
  br i1 %.b70, label %land.end.do.body38_crit_edge, label %if.then7, !prof !127

land.end.do.body38_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body38

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qede_ptp_read_cc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 9, ptr noundef nonnull @.str.45, i32 noundef %call) #10
  br label %do.body38

do.body38:                                        ; preds = %if.then7, %land.end.do.body38_crit_edge, %entry.do.body38_crit_edge
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 5
  %9 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %land.rhs40, label %do.body38.do.end61_crit_edge

do.body38.do.end61_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

land.rhs40:                                       ; preds = %do.body38
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 4
  %11 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dp_module, align 8
  %and = and i32 %12, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %land.rhs40.do.end61_crit_edge, label %do.end52, !prof !127

land.rhs40.do.end61_crit_edge:                    ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

do.end52:                                         ; preds = %land.rhs40
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %do.end52.cond.end_crit_edge, label %lor.lhs.false.i

do.end52.cond.end_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call ptr @strchr(ptr noundef %14, i32 noundef 37) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool55.not = icmp eq ptr %14, null
  %or.cond = and i1 %tobool55.not, %tobool2.not.i
  %spec.select.i74 = select i1 %tobool2.not.i, ptr %14, ptr @.str.29
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i74
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end52.cond.end_crit_edge
  %cond = phi ptr [ @.str.29, %do.end52.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %17 = ptrtoint ptr %phc_cycles to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %phc_cycles, align 8
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 194, ptr noundef %cond, i64 noundef %18) #14
  br label %do.end61

do.end61:                                         ; preds = %cond.end, %land.rhs40.do.end61_crit_edge, %do.body38.do.end61_crit_edge
  %19 = ptrtoint ptr %phc_cycles to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %phc_cycles, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %phc_cycles) #10
  ret i64 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qede_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qede_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114}
!llvm.named.register.sp = !{!115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 303, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qede_ptp_hw_ts._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qede_ptp_hw_ts._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 437, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @qede_ptp_enable._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @qede_ptp_enable._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 444, i32 3}
!14 = !{ptr @qede_ptp_enable._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @qede_ptp_enable._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 459, i32 37}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 473, i32 3}
!20 = !{ptr @qede_ptp_enable._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qede_ptp_enable._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 499, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @qede_ptp_tx_ts._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @qede_ptp_tx_ts._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 505, i32 3}
!29 = !{ptr @qede_ptp_tx_ts._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @qede_ptp_tx_ts._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 510, i32 3}
!33 = !{ptr @qede_ptp_tx_ts._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qede_ptp_tx_ts._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 537, i32 3}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qede_ptp_rx_ts._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @qede_ptp_rx_ts._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 544, i32 2}
!42 = !{ptr @qede_ptp_rx_ts._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @qede_ptp_rx_ts._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!46 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 209, i32 3}
!55 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @qede_ptp_cfg_filters._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @qede_ptp_cfg_filters._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 226, i32 3}
!60 = !{ptr @qede_ptp_cfg_filters._entry.32, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qede_ptp_cfg_filters._entry_ptr.34, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @qede_ptp_init.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 406, i32 2}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 411, i32 3}
!67 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qede_ptp_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @qede_ptp_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @qede_ptp_init.__key.38, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 416, i32 2}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 154, i32 4}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @qede_ptp_task._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @qede_ptp_task._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 175, i32 2}
!80 = !{ptr @qede_ptp_task._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @qede_ptp_task._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 192, i32 3}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 194, i32 2}
!87 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @qede_ptp_read_cc._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @qede_ptp_read_cc._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 50, i32 3}
!92 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @qede_ptp_adjfreq._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @qede_ptp_adjfreq._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 66, i32 2}
!97 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @qede_ptp_adjtime._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @qede_ptp_adjtime._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 89, i32 2}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @qede_ptp_gettime._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @qede_ptp_gettime._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 108, i32 2}
!107 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @qede_ptp_settime._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @qede_ptp_settime._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ptp.c", i32 129, i32 2}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @qede_ptp_ancillary_feature_enable._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @qede_ptp_ancillary_feature_enable._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{!"sp"}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
!126 = !{i64 2152851254, i64 2152851279}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 5346809}
!129 = !{i64 5347006}
!130 = !{i64 2152832239}
!131 = !{i64 2152851935, i64 2152851960}
!132 = !{i8 0, i8 2}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{i64 2148586401}
!135 = !{i64 2148496820, i64 2148496852, i64 2148496881, i64 2148496915, i64 2148496946, i64 2148496969}
!136 = !{i64 2148498433, i64 2148498465, i64 2148498494, i64 2148498528, i64 2148498559, i64 2148498582}
!137 = !{i64 2148587514}
!138 = !{i64 2148491105, i64 2148491137, i64 2148491166, i64 2148491200, i64 2148491231, i64 2148491254}
