; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/cpsw_priv.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_priv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.137 }
%struct.atomic_t = type { i32 }
%union.anon.137 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.cpsw_vector = type { ptr, i32 }
%struct.cpsw_wr_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.138, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.161, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.138 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.161 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.cpsw_ale = type { %struct.cpsw_ale_params, %struct.timer_list, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.cpsw_ale_params = type { ptr, ptr, i32, i32, i32, i8, i32, ptr, i32 }
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [72 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [104 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.cpdma_params = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.cpsw_slave_data = type { ptr, ptr, [61 x i8], i32, [6 x i8], i16, ptr, i8 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ifreq = type { %union.anon.139, %union.anon.140 }
%union.anon.139 = type { [16 x i8] }
%union.anon.140 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpsw_ss_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tc_cbs_qopt_offload = type { i8, i32, i32, i32, i32, i32 }
%struct.tc_mqprio_qopt_offload = type { %struct.tc_mqprio_qopt, i16, i16, i32, [16 x i64], [16 x i64] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.page = type { i32, %union.anon.2, %union.anon.135, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.135 = type { %struct.atomic_t }
%struct.page_pool_params = type { i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.netdev_bpf = type { i32, %union.anon.145 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i32, ptr, ptr }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { %struct.anon.101, [0 x %struct.sock_filter] }
%struct.anon.101 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/ethernet/ti/cpsw_priv.c\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to soft-reset %s\0A\00", [39 x i8] zeroinitializer }, align 32
@cpsw_ndo_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"transmit timeout, restarting dma\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpsw_ndo_tx_timeout\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpsw_ndo_tx_timeout._entry_ptr = internal global ptr @cpsw_ndo_tx_timeout._entry, section ".printk_index", align 4
@cpsw_init_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown version 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpsw_init_common\00", [47 x i8] zeroinitializer }, align 32
@cpsw_init_common._entry_ptr = internal global ptr @cpsw_init_common._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpsw\00", [27 x i8] zeroinitializer }, align 32
@cpsw_init_common._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error initializing ale engine\0A\00", [33 x i8] zeroinitializer }, align 32
@cpsw_init_common._entry_ptr.11 = internal global ptr @cpsw_init_common._entry.9, section ".printk_index", align 4
@cpsw_init_common._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str, i32 531, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error initializing dma\0A\00", [40 x i8] zeroinitializer }, align 32
@cpsw_init_common._entry_ptr.14 = internal global ptr @cpsw_init_common._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpts\00", [27 x i8] zeroinitializer }, align 32
@cpsw_slave_index = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cpsw_ndo_set_tx_maxrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 748, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"The channel rate cannot be less than %dMbps\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpsw_ndo_set_tx_maxrate\00", [40 x i8] zeroinitializer }, align 32
@cpsw_ndo_set_tx_maxrate._entry_ptr = internal global ptr @cpsw_ndo_set_tx_maxrate._entry, section ".printk_index", align 4
@cpsw_ndo_set_tx_maxrate._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str, i32 753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"The channel rate cannot be more than 2Gbps\00", [53 x i8] zeroinitializer }, align 32
@cpsw_ndo_set_tx_maxrate._entry_ptr.20 = internal global ptr @cpsw_ndo_set_tx_maxrate._entry.18, section ".printk_index", align 4
@cpsw_fill_rx_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 1117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"allocate rx page err\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpsw_fill_rx_channels\00", [42 x i8] zeroinitializer }, align 32
@cpsw_fill_rx_channels._entry_ptr = internal global ptr @cpsw_fill_rx_channels._entry, section ".printk_index", align 4
@cpsw_fill_rx_channels._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str, i32 1133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cannot submit page to channel %d rx, error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cpsw_fill_rx_channels._entry_ptr.25 = internal global ptr @cpsw_fill_rx_channels._entry.23, section ".printk_index", align 4
@cpsw_fill_rx_channels._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str, i32 1140, ptr @.str.28, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ch %d rx, submitted %d descriptors\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cpsw_fill_rx_channels._entry_ptr.29 = internal global ptr @cpsw_fill_rx_channels._entry.26, section ".printk_index", align 4
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@cpsw_set_cbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str, i32 950, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Last tc%d can't be rate limited\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpsw_set_cbs\00", [19 x i8] zeroinitializer }, align 32
@cpsw_set_cbs._entry_ptr = internal global ptr @cpsw_set_cbs._entry, section ".printk_index", align 4
@cpsw_set_cbs._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str, i32 969, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Link speed is not known\00", [40 x i8] zeroinitializer }, align 32
@cpsw_set_cbs._entry_ptr.37 = internal global ptr @cpsw_set_cbs._entry.35, section ".printk_index", align 4
@cpsw_set_cbs._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str, i32 988, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Speed was changed, CBS shaper speeds are changed!\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cpsw_set_cbs._entry_ptr.41 = internal global ptr @cpsw_set_cbs._entry.38, section ".printk_index", align 4
@cpsw_set_fifo_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 842, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Prev FIFO%d is shaped\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpsw_set_fifo_bw\00", [47 x i8] zeroinitializer }, align 32
@cpsw_set_fifo_bw._entry_ptr = internal global ptr @cpsw_set_fifo_bw._entry, section ".printk_index", align 4
@cpsw_set_fifo_bw._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str, i32 847, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Upper FIFO%d is not shaped\00", [37 x i8] zeroinitializer }, align 32
@cpsw_set_fifo_bw._entry_ptr.46 = internal global ptr @cpsw_set_fifo_bw._entry.44, section ".printk_index", align 4
@cpsw_set_fifo_bw._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str, i32 874, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"set FIFO%d bw = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cpsw_set_fifo_bw._entry_ptr.49 = internal global ptr @cpsw_set_fifo_bw._entry.47, section ".printk_index", align 4
@cpsw_set_fifo_bw._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str, i32 878, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Bandwidth doesn't fit in tc configuration\00", [54 x i8] zeroinitializer }, align 32
@cpsw_set_fifo_bw._entry_ptr.52 = internal global ptr @cpsw_set_fifo_bw._entry.50, section ".printk_index", align 4
@cpsw_create_page_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 1161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot create rx page pool\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpsw_create_page_pool\00", [42 x i8] zeroinitializer }, align 32
@cpsw_create_page_pool._entry_ptr = internal global ptr @cpsw_create_page_pool._entry, section ".printk_index", align 4
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1638666, i64 1638668, i64 1638671, i64 1638674]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1638666, i64 1638668, i64 1638671]
@__sancov_gen_cov_switch_values.63 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 1638666, i64 1638668, i64 1638671]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 1638666, i64 1638668, i64 1638671]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.67 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 286, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 295, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 481, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 493, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 508, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 531, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 535, i32 55 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"cpsw_slave_index\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 33, i32 7 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 747, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 753, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1117, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1131, i32 5 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1139, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 156, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 950, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 969, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 987, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 842, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 847, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 873, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 878, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private constant [39 x i8] c"../drivers/net/ethernet/ti/cpsw_priv.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1161, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 613, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 271, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 200, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 28, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 108, i32 2 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @cpsw_create_page_pool._entry, ptr @cpsw_create_page_pool._entry_ptr, ptr @cpsw_fill_rx_channels._entry, ptr @cpsw_fill_rx_channels._entry.23, ptr @cpsw_fill_rx_channels._entry.26, ptr @cpsw_fill_rx_channels._entry_ptr, ptr @cpsw_fill_rx_channels._entry_ptr.25, ptr @cpsw_fill_rx_channels._entry_ptr.29, ptr @cpsw_init_common._entry, ptr @cpsw_init_common._entry.12, ptr @cpsw_init_common._entry.9, ptr @cpsw_init_common._entry_ptr, ptr @cpsw_init_common._entry_ptr.11, ptr @cpsw_init_common._entry_ptr.14, ptr @cpsw_ndo_set_tx_maxrate._entry, ptr @cpsw_ndo_set_tx_maxrate._entry.18, ptr @cpsw_ndo_set_tx_maxrate._entry_ptr, ptr @cpsw_ndo_set_tx_maxrate._entry_ptr.20, ptr @cpsw_ndo_tx_timeout._entry, ptr @cpsw_ndo_tx_timeout._entry_ptr, ptr @cpsw_set_cbs._entry, ptr @cpsw_set_cbs._entry.35, ptr @cpsw_set_cbs._entry.38, ptr @cpsw_set_cbs._entry_ptr, ptr @cpsw_set_cbs._entry_ptr.37, ptr @cpsw_set_cbs._entry_ptr.41, ptr @cpsw_set_fifo_bw._entry, ptr @cpsw_set_fifo_bw._entry.44, ptr @cpsw_set_fifo_bw._entry.47, ptr @cpsw_set_fifo_bw._entry.50, ptr @cpsw_set_fifo_bw._entry_ptr, ptr @cpsw_set_fifo_bw._entry_ptr.46, ptr @cpsw_set_fifo_bw._entry_ptr.49, ptr @cpsw_set_fifo_bw._entry_ptr.52, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @cpsw_slave_index, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_init_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_init_common._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_init_common._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_slave_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_set_tx_maxrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_set_tx_maxrate._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_fill_rx_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_fill_rx_channels._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_fill_rx_channels._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_cbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_cbs._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_cbs._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_fifo_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_fifo_bw._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_fifo_bw._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_fifo_bw._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_create_page_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_intr_enable(ptr nocapture noundef readonly %cpsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 5
  %0 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_regs, align 4
  %tx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_en, i32 -16777216) #9, !srcloc !121
  %2 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_regs, align 4
  %rx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rx_en, i32 -16777216) #9, !srcloc !121
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 14
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 8
  %call = tail call i32 @cpdma_ctlr_int_ctrl(ptr noundef %5, i1 noundef zeroext true) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_int_ctrl(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_intr_disable(ptr nocapture noundef readonly %cpsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 5
  %0 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_regs, align 4
  %tx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_en, i32 0) #9, !srcloc !121
  %2 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_regs, align 4
  %rx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rx_en, i32 0) #9, !srcloc !121
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 14
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 8
  %call = tail call i32 @cpdma_ctlr_int_ctrl(ptr noundef %5, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_tx_handler(ptr noundef %token, i32 noundef %len, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %token to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and.i24 = and i32 %0, -2
  %1 = inttoptr i32 %and.i24 to ptr
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %ch3 = getelementptr i8, ptr %1, i32 28
  %4 = ptrtoint ptr %ch3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch3, align 4
  tail call void @xdp_return_frame(ptr noundef %1) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = getelementptr inbounds %struct.anon.44, ptr %token, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %token, i32 0, i32 10
  %9 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %10 to i32
  %cpsw = getelementptr i8, ptr %8, i32 3468
  %11 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpsw, align 4
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpts, align 8
  tail call void @cpts_tx_timestamp(ptr noundef %14, ptr noundef %token) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %token, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ndev.0 = phi ptr [ %3, %if.then ], [ %8, %if.else ]
  %ch.0 = phi i32 [ %5, %if.then ], [ %conv, %if.else ]
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %ndev.0, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %16, i32 %ch.0, i32 13
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end11_crit_edge, label %if.then10, !prof !122

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %16, i32 %ch.0
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev.0, i32 0, i32 36, i32 1
  %19 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev.0, i32 0, i32 36, i32 3
  %21 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %22, %len
  store i32 %add, ptr %tx_bytes, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_tx_interrupt(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_regs, align 4
  %tx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %1, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_en, i32 0) #9, !srcloc !121
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 14
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 8
  tail call void @cpdma_ctlr_eoi(ptr noundef %3, i32 noundef 2) #9
  %quirk_irq = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 18
  %4 = ptrtoint ptr %quirk_irq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %quirk_irq, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.cpsw_common, ptr %dev_id, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #9
  %tx_irq_disabled = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 20
  %8 = ptrtoint ptr %tx_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %tx_irq_disabled, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %napi_tx = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 3
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_tx) #9
  br i1 %call.i, label %if.then.i, label %if.end.napi_schedule.exit_crit_edge

if.end.napi_schedule.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi_tx) #9
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %if.end.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpdma_ctlr_eoi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_rx_interrupt(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_regs, align 4
  %rx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rx_en, i32 0) #9, !srcloc !121
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 14
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 8
  tail call void @cpdma_ctlr_eoi(ptr noundef %3, i32 noundef 1) #9
  %quirk_irq = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 18
  %4 = ptrtoint ptr %quirk_irq to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %quirk_irq, align 8, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %irqs_table = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 21
  %6 = ptrtoint ptr %irqs_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqs_table, align 4
  tail call void @disable_irq_nosync(i32 noundef %7) #9
  %rx_irq_disabled = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 19
  %8 = ptrtoint ptr %rx_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %rx_irq_disabled, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %napi_rx = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 2
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_rx) #9
  br i1 %call.i, label %if.then.i, label %if.end.napi_schedule.exit_crit_edge

if.end.napi_schedule.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__napi_schedule(ptr noundef %napi_rx) #9
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %if.end.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_misc_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_regs, align 4
  %misc_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %1, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %misc_en, i32 0) #9, !srcloc !121
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 14
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 8
  tail call void @cpdma_ctlr_eoi(ptr noundef %3, i32 noundef 3) #9
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %dev_id, i32 0, i32 23
  %4 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpts, align 8
  tail call void @cpts_misc_interrupt(ptr noundef %5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr_regs, align 4
  %misc_en5 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %7, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %misc_en5, i32 268435456) #9, !srcloc !121
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_misc_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_tx_mq_poll(ptr noundef %napi_tx, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr i8, ptr %napi_tx, i32 264
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 8
  %call = tail call i32 @cpdma_ctrl_txchs_state(ptr noundef %1) #9
  %txv3 = getelementptr i8, ptr %napi_tx, i32 268
  %and36 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool.not37 = icmp eq i32 %and36, 0
  br i1 %tobool.not37, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ch_map.040 = phi i32 [ %shl, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %ch.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %num_tx.038 = phi i32 [ %num_tx.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %and1 = and i32 %ch_map.040, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [8 x %struct.cpsw_vector], ptr %txv3, i32 0, i32 %ch.039
  %budget4 = getelementptr inbounds %struct.cpsw_vector, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %budget4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %budget4, align 4
  %sub = sub i32 %budget, %num_tx.038
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 %sub)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call12 = tail call i32 @cpdma_chan_process(ptr noundef %6, i32 noundef %4) #9
  %add = add i32 %call12, %num_tx.038
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp13.not = icmp slt i32 %add, %budget
  br i1 %cmp13.not, label %if.end.for.inc_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %num_tx.1 = phi i32 [ %add, %if.end.for.inc_crit_edge ], [ %num_tx.038, %for.body.for.inc_crit_edge ]
  %shl = shl i32 %ch_map.040, 1
  %inc = add i32 %ch.039, 1
  %7 = and i32 %ch_map.040, 127
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %num_tx.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end.for.end_crit_edge ], [ %num_tx.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num_tx.2, i32 %budget)
  %cmp16 = icmp slt i32 %num_tx.2, %budget
  br i1 %cmp16, label %if.then17, label %for.end.if.end19_crit_edge

for.end.if.end19_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi_tx, i32 noundef 0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %wr_regs = getelementptr i8, ptr %napi_tx, i32 228
  %8 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr_regs, align 4
  %tx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %9, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_en, i32 -16777216) #9, !srcloc !121
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.end.if.end19_crit_edge
  ret i32 %num_tx.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctrl_txchs_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_process(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_tx_poll(ptr noundef %napi_tx, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %txv = getelementptr i8, ptr %napi_tx, i32 268
  %0 = ptrtoint ptr %txv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txv, align 4
  %call = tail call i32 @cpdma_chan_process(ptr noundef %1, i32 noundef %budget) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi_tx, i32 noundef 0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @arm_heavy_mb() #9
  %wr_regs = getelementptr i8, ptr %napi_tx, i32 228
  %2 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_regs, align 4
  %tx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_en, i32 -16777216) #9, !srcloc !121
  %tx_irq_disabled = getelementptr i8, ptr %napi_tx, i32 402
  %4 = ptrtoint ptr %tx_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_irq_disabled, align 2, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %tx_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_irq_disabled, align 2
  %arrayidx4 = getelementptr i8, ptr %napi_tx, i32 408
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4, align 4
  tail call void @enable_irq(i32 noundef %8) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_rx_mq_poll(ptr noundef %napi_rx, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma = getelementptr i8, ptr %napi_rx, i32 488
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma, align 8
  %call = tail call i32 @cpdma_ctrl_rxchs_state(ptr noundef %1) #9
  %rxv2 = getelementptr i8, ptr %napi_rx, i32 556
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not36 = icmp eq i32 %call, 0
  br i1 %tobool.not36, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ch_map.039 = phi i32 [ %shr, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %ch.038 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %num_rx.037 = phi i32 [ %num_rx.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %and = and i32 %ch_map.039, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [8 x %struct.cpsw_vector], ptr %rxv2, i32 0, i32 %ch.038
  %budget3 = getelementptr inbounds %struct.cpsw_vector, ptr %arrayidx, i32 0, i32 1
  %2 = ptrtoint ptr %budget3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %budget3, align 4
  %sub = sub i32 %budget, %num_rx.037
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 %sub)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 @cpdma_chan_process(ptr noundef %6, i32 noundef %4) #9
  %add = add i32 %call11, %num_rx.037
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %budget)
  %cmp12.not = icmp slt i32 %add, %budget
  br i1 %cmp12.not, label %if.end.for.inc_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %num_rx.1 = phi i32 [ %add, %if.end.for.inc_crit_edge ], [ %num_rx.037, %for.body.for.inc_crit_edge ]
  %shr = lshr i32 %ch_map.039, 1
  %inc = add nuw nsw i32 %ch.038, 1
  %tobool.not = icmp ult i32 %ch_map.039, 2
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %num_rx.2 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %if.end.for.end_crit_edge ], [ %num_rx.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num_rx.2, i32 %budget)
  %cmp15 = icmp slt i32 %num_rx.2, %budget
  br i1 %cmp15, label %if.then16, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi_rx, i32 noundef %num_rx.2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %wr_regs = getelementptr i8, ptr %napi_rx, i32 452
  %7 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wr_regs, align 4
  %rx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %8, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rx_en, i32 -16777216) #9, !srcloc !121
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end.if.end18_crit_edge
  ret i32 %num_rx.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctrl_rxchs_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_rx_poll(ptr noundef %napi_rx, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rxv = getelementptr i8, ptr %napi_rx, i32 556
  %0 = ptrtoint ptr %rxv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rxv, align 4
  %call = tail call i32 @cpdma_chan_process(ptr noundef %1, i32 noundef %budget) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi_rx, i32 noundef %call) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %wr_regs = getelementptr i8, ptr %napi_rx, i32 452
  %2 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_regs, align 4
  %rx_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %3, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rx_en, i32 -16777216) #9, !srcloc !121
  %rx_irq_disabled = getelementptr i8, ptr %napi_rx, i32 625
  %4 = ptrtoint ptr %rx_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rx_irq_disabled, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %rx_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %rx_irq_disabled, align 1
  %irqs_table = getelementptr i8, ptr %napi_rx, i32 628
  %7 = ptrtoint ptr %irqs_table to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irqs_table, align 4
  tail call void @enable_irq(i32 noundef %8) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_rx_vlan_encap(ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %cpsw1 = getelementptr i8, ptr %2, i32 3468
  %7 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpsw1, align 4
  %call2 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #9
  %9 = lshr i32 %6, 8
  %conv = and i32 %9, 3
  %conv.off = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv.off)
  %switch = icmp ult i32 %conv.off, 2
  br i1 %switch, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr8 = lshr i32 %6, 16
  %10 = trunc i32 %shr8 to i16
  %conv10 = and i16 %10, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv10)
  %tobool.not = icmp eq i16 %conv10, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %8, i32 0, i32 17
  %11 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ale, align 4
  %conv.i = zext i16 %conv10 to i32
  %p0_untag_vid_mask.i = getelementptr inbounds %struct.cpsw_ale, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %p0_untag_vid_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %p0_untag_vid_mask.i, align 4
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %14, i32 %div3.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %17 = shl nuw i32 1, %and.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %conv21 = and i16 %10, -4097
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %19 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %20 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv21, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %21 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.end12.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp24 = icmp eq i32 %conv, 0
  br i1 %cmp24, label %if.then26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 4
  %24 = call ptr @memmove(ptr %add.ptr, ptr %23, i32 12)
  %call29 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_set_slave_mac(ptr nocapture noundef readonly %slave, ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_addr = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mac_addr, align 4
  %conv = zext i8 %1 to i32
  %arrayidx2 = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %shl4 = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl4, %conv
  %arrayidx6 = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 2
  %conv7 = zext i8 %5 to i32
  %shl8 = shl nuw nsw i32 %conv7, 16
  %or9 = or i32 %or, %shl8
  %arrayidx11 = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %shl13 = shl nuw i32 %conv12, 24
  %or14 = or i32 %or9, %shl13
  %8 = tail call i32 @llvm.bswap.i32(i32 %or14) #9
  %9 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #9, !srcloc !121
  %arrayidx16 = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 4
  %conv17 = zext i8 %12 to i32
  %arrayidx20 = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %14 to i32
  %shl22 = shl nuw nsw i32 %conv21, 8
  %or23 = or i32 %shl22, %conv17
  %15 = tail call i32 @llvm.bswap.i32(i32 %or23) #9
  %16 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave, align 4
  %add.ptr.i30 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %15) #9, !srcloc !121
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @soft_reset(ptr noundef %module, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 16777216) #9, !srcloc !121
  %add.neg = sub i32 -100, %0
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !133
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #9, !srcloc !134
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %land.rhs

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.rhs:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %3
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.rhs.do.body_crit_edge, label %land.rhs.do.end9_crit_edge

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end9:                                          ; preds = %land.rhs.do.end9_crit_edge, %do.body.do.end9_crit_edge
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #9, !srcloc !134
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not = icmp eq i32 %5, 0
  br i1 %tobool14.not, label %do.end9.if.end_crit_edge, label %do.end25, !prof !122

do.end9.if.end_crit_edge:                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end25:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 286, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %module) #9
  br label %if.end

if.end:                                           ; preds = %do.end25, %do.end9.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_ndo_tx_timeout(ptr nocapture noundef %ndev, i32 noundef %txqueue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %land.lhs.true

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end6_crit_edge, label %do.end

land.lhs.true.do.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %land.lhs.true.do.end6_crit_edge, %entry.do.end6_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_errors, align 4
  %wr_regs.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %wr_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr_regs.i, align 4
  %tx_en.i = getelementptr inbounds %struct.cpsw_wr_regs, ptr %9, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_en.i, i32 0) #9, !srcloc !121
  %10 = ptrtoint ptr %wr_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr_regs.i, align 4
  %rx_en.i = getelementptr inbounds %struct.cpsw_wr_regs, ptr %11, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rx_en.i, i32 0) #9, !srcloc !121
  %dma.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma.i, align 8
  %call.i = tail call i32 @cpdma_ctlr_int_ctrl(ptr noundef %13, i1 noundef zeroext false) #9
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp32 = icmp sgt i32 %15, 0
  br i1 %cmp32, label %do.end6.for.body_crit_edge, label %do.end6.for.end_crit_edge

do.end6.for.end_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end6.for.body_crit_edge:                       ; preds = %do.end6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end6.for.body_crit_edge
  %ch.033 = phi i32 [ %inc13, %for.body.for.body_crit_edge ], [ 0, %do.end6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 15, i32 %ch.033
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 @cpdma_chan_stop(ptr noundef %17) #9
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call12 = tail call i32 @cpdma_chan_start(ptr noundef %19) #9
  %inc13 = add nuw nsw i32 %ch.033, 1
  %20 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_ch_num, align 4
  %cmp = icmp slt i32 %inc13, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end6.for.end_crit_edge
  %22 = ptrtoint ptr %wr_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr_regs.i, align 4
  %tx_en.i27 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %23, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_en.i27, i32 -16777216) #9, !srcloc !121
  %24 = ptrtoint ptr %wr_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr_regs.i, align 4
  %rx_en.i28 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %25, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rx_en.i28, i32 -16777216) #9, !srcloc !121
  %26 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma.i, align 8
  %call.i30 = tail call i32 @cpdma_ctlr_int_ctrl(ptr noundef %27, i1 noundef zeroext true) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %28 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 12
  %31 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.not.i.i = icmp eq i32 %32, %30
  br i1 %cmp.not.i.i, label %for.end.netif_trans_update.exit_crit_edge, label %do.body5.i.i

for.end.netif_trans_update.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %30, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %for.end.netif_trans_update.exit_crit_edge
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %34 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.not.i = icmp eq i32 %35, 0
  br i1 %cmp4.not.i, label %netif_trans_update.exit.netif_tx_wake_all_queues.exit_crit_edge, label %netif_trans_update.exit.for.body.i_crit_edge

netif_trans_update.exit.for.body.i_crit_edge:     ; preds = %netif_trans_update.exit
  br label %for.body.i

netif_trans_update.exit.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_wake_all_queues.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %netif_trans_update.exit.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %netif_trans_update.exit.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %37, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #9
  %inc.i = add nuw i32 %i.05.i, 1
  %38 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %39
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %netif_trans_update.exit.netif_tx_wake_all_queues.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_need_resplit(ptr nocapture noundef %cpsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slaves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18.not.i = icmp eq i32 %1, 0
  br i1 %cmp18.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %slaves1.i = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 13
  %2 = ptrtoint ptr %slaves1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slaves1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %speed.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %speed.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %phy.i = getelementptr %struct.cpsw_slave, ptr %3, i32 %i.019.i, i32 4
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %link.i = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %link.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %link.i, align 8
  %7 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool5.not.i = icmp eq i16 %7, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %speed9.i = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %speed9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed9.i, align 8
  %add.i = add i32 %9, %speed.020.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %speed.1.i = phi i32 [ %add.i, %if.then.i ], [ %speed.020.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %speed.020.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %cpsw_get_common_speed.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cpsw_get_common_speed.exit:                       ; preds = %for.inc.i
  %speed1 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 27
  %10 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %speed.1.i, i32 %11)
  %cmp = icmp eq i32 %speed.1.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %speed.1.i)
  %tobool.not = icmp eq i32 %speed.1.i, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %cpsw_get_common_speed.exit.cleanup_crit_edge, label %if.end

cpsw_get_common_speed.exit.cleanup_crit_edge:     ; preds = %cpsw_get_common_speed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cpsw_get_common_speed.exit
  %12 = ptrtoint ptr %speed1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %speed.1.i, ptr %speed1, align 8
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 26
  %13 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp334 = icmp sgt i32 %14, 0
  br i1 %cmp334, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %if.end.for.body_crit_edge
  %rlim_ch_num.036 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpsw_common, ptr %cpsw, i32 0, i32 15, i32 %rlim_ch_num.036
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @cpdma_chan_get_rate(ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.end, label %if.end7

if.end7:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %rlim_ch_num.036, 1
  %17 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_ch_num, align 4
  %cmp3 = icmp slt i32 %inc, %18
  br i1 %cmp3, label %if.end7.for.body_crit_edge, label %if.end7.lor.lhs.false10_crit_edge

if.end7.lor.lhs.false10_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false10

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlim_ch_num.036)
  %tobool9.not = icmp eq i32 %rlim_ch_num.036, 0
  br i1 %tobool9.not, label %for.end.cleanup_crit_edge, label %for.end.lor.lhs.false10_crit_edge

for.end.lor.lhs.false10_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false10:                                  ; preds = %for.end.lor.lhs.false10_crit_edge, %if.end7.lor.lhs.false10_crit_edge
  %rlim_ch_num.0.lcssa43 = phi i32 [ %rlim_ch_num.036, %for.end.lor.lhs.false10_crit_edge ], [ %inc, %if.end7.lor.lhs.false10_crit_edge ]
  %19 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_ch_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rlim_ch_num.0.lcssa43, i32 %20)
  %cmp12 = icmp ne i32 %rlim_ch_num.0.lcssa43, %20
  %spec.select = zext i1 %cmp12 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false10, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cpsw_get_common_speed.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_get_common_speed.exit.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_split_res(ptr nocapture noundef %cpsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %txv1 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 15
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 26
  %0 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp178 = icmp sgt i32 %1, 0
  br i1 %cmp178, label %entry.for.body_crit_edge, label %for.end.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %rlim_ch_num.0181 = phi i32 [ %rlim_ch_num.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0180 = phi i32 [ %inc2, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %consumed_rate.0179 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpsw_vector, ptr %txv1, i32 %i.0180
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @cpdma_chan_get_rate(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %add = add i32 %call, %consumed_rate.0179
  %inc = zext i1 %tobool.not to i32
  %rlim_ch_num.1 = add i32 %rlim_ch_num.0181, %inc
  %inc2 = add nuw nsw i32 %i.0180, 1
  %4 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_ch_num, align 4
  %cmp = icmp slt i32 %inc2, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rlim_ch_num.1)
  %cmp4 = icmp eq i32 %5, %rlim_ch_num.1
  br i1 %cmp4, label %for.end.if.end28_crit_edge, label %if.else

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4200 = icmp eq i32 %1, 0
  br i1 %cmp4200, label %for.end.thread.if.then81_crit_edge, label %for.end.thread.if.then7_crit_edge

for.end.thread.if.then7_crit_edge:                ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.end.thread.if.then81_crit_edge:               ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rlim_ch_num.1)
  %tobool6.not = icmp eq i32 %rlim_ch_num.1, 0
  br i1 %tobool6.not, label %if.else.if.then7_crit_edge, label %if.else9

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %if.else.if.then7_crit_edge, %for.end.thread.if.then7_crit_edge
  %consumed_rate.0.lcssa201209 = phi i32 [ %add, %if.else.if.then7_crit_edge ], [ 0, %for.end.thread.if.then7_crit_edge ]
  %.lcssa203208 = phi i32 [ %5, %if.else.if.then7_crit_edge ], [ %1, %for.end.thread.if.then7_crit_edge ]
  %div = sdiv i32 64, %.lcssa203208
  br label %if.end28thread-pre-split

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %speed = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 27
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  %mul = mul i32 %7, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %add)
  %cmp10 = icmp ult i32 %mul, %add
  %mul12 = mul i32 %7, 10000
  %spec.select = select i1 %cmp10, i32 %mul12, i32 %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %add)
  %cmp14 = icmp ult i32 %spec.select, %add
  %mul16 = mul i32 %spec.select, 10
  %max_rate.1 = select i1 %cmp14, i32 %mul16, i32 %spec.select
  %mul18 = shl i32 %add, 6
  %div19 = udiv i32 %mul18, %max_rate.1
  %sub = sub i32 64, %div19
  %sub21 = sub i32 %5, %rlim_ch_num.1
  %div22 = sdiv i32 %sub, %sub21
  %sub23 = sub i32 %max_rate.1, %add
  %div26 = udiv i32 %sub23, %sub21
  br label %if.end28thread-pre-split

if.end28thread-pre-split:                         ; preds = %if.else9, %if.then7
  %bigest_rate.0.ph = phi i32 [ 0, %if.then7 ], [ %div26, %if.else9 ]
  %max_rate.2.ph = phi i32 [ %consumed_rate.0.lcssa201209, %if.then7 ], [ %max_rate.1, %if.else9 ]
  %ch_budget.0.ph = phi i32 [ %div, %if.then7 ], [ %div22, %if.else9 ]
  %8 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %tx_ch_num, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28thread-pre-split, %for.end.if.end28_crit_edge
  %9 = phi i32 [ %.pr, %if.end28thread-pre-split ], [ %5, %for.end.if.end28_crit_edge ]
  %bigest_rate.0 = phi i32 [ %bigest_rate.0.ph, %if.end28thread-pre-split ], [ 0, %for.end.if.end28_crit_edge ]
  %max_rate.2 = phi i32 [ %max_rate.2.ph, %if.end28thread-pre-split ], [ %add, %for.end.if.end28_crit_edge ]
  %ch_budget.0 = phi i32 [ %ch_budget.0.ph, %if.end28thread-pre-split ], [ 0, %for.end.if.end28_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp31184 = icmp sgt i32 %9, 0
  br i1 %cmp31184, label %if.end28.for.body32_crit_edge, label %if.end28.if.then81_crit_edge

if.end28.if.then81_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

if.end28.for.body32_crit_edge:                    ; preds = %if.end28
  br label %for.body32

for.body32:                                       ; preds = %if.end73.for.body32_crit_edge, %if.end28.for.body32_crit_edge
  %bigest_rate_ch.0189 = phi i32 [ %bigest_rate_ch.3, %if.end73.for.body32_crit_edge ], [ 0, %if.end28.for.body32_crit_edge ]
  %budget.0188 = phi i32 [ %sub76, %if.end73.for.body32_crit_edge ], [ 64, %if.end28.for.body32_crit_edge ]
  %i.1186 = phi i32 [ %inc78, %if.end73.for.body32_crit_edge ], [ 0, %if.end28.for.body32_crit_edge ]
  %bigest_rate.1185 = phi i32 [ %bigest_rate.3, %if.end73.for.body32_crit_edge ], [ %bigest_rate.0, %if.end28.for.body32_crit_edge ]
  %arrayidx33 = getelementptr %struct.cpsw_vector, ptr %txv1, i32 %i.1186
  %10 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx33, align 4
  %call35 = tail call i32 @cpdma_chan_get_rate(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.else63, label %if.then37

if.then37:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  %mul38 = shl i32 %call35, 6
  %div39 = udiv i32 %mul38, %max_rate.2
  %budget41 = getelementptr %struct.cpsw_vector, ptr %txv1, i32 %i.1186, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %max_rate.2, i32 %mul38)
  %tobool44.not = icmp ugt i32 %max_rate.2, %mul38
  %spec.select176 = select i1 %tobool44.not, i32 1, i32 %div39
  %12 = ptrtoint ptr %budget41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select176, ptr %budget41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %bigest_rate.1185)
  %cmp50 = icmp ugt i32 %call35, %bigest_rate.1185
  %13 = tail call i32 @llvm.umax.i32(i32 %call35, i32 %bigest_rate.1185)
  %bigest_rate_ch.1 = select i1 %cmp50, i32 %i.1186, i32 %bigest_rate_ch.0189
  %mul53 = mul i32 %call35, 100
  %div54 = udiv i32 %mul53, %max_rate.2
  call void @__sanitizer_cov_trace_cmp4(i32 %max_rate.2, i32 %mul53)
  %tobool55.not = icmp ugt i32 %max_rate.2, %mul53
  %ch_weight.0 = select i1 %tobool55.not, i32 1, i32 %div54
  br label %if.end73

if.else63:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  %budget65 = getelementptr %struct.cpsw_vector, ptr %txv1, i32 %i.1186, i32 1
  %14 = ptrtoint ptr %budget65 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %ch_budget.0, ptr %budget65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bigest_rate_ch.0189)
  %tobool66.not = icmp eq i32 %bigest_rate_ch.0189, 0
  %spec.select177 = select i1 %tobool66.not, i32 %i.1186, i32 %bigest_rate_ch.0189
  br label %if.end73

if.end73:                                         ; preds = %if.else63, %if.then37
  %.sink222 = phi i32 [ 0, %if.else63 ], [ %ch_weight.0, %if.then37 ]
  %bigest_rate.3 = phi i32 [ %bigest_rate.1185, %if.else63 ], [ %13, %if.then37 ]
  %bigest_rate_ch.3 = phi i32 [ %spec.select177, %if.else63 ], [ %bigest_rate_ch.1, %if.then37 ]
  %arrayidx70 = getelementptr %struct.cpsw_common, ptr %cpsw, i32 0, i32 15, i32 %i.1186
  %15 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx70, align 4
  %call72 = tail call i32 @cpdma_chan_set_weight(ptr noundef %16, i32 noundef %.sink222) #9
  %budget75 = getelementptr %struct.cpsw_vector, ptr %txv1, i32 %i.1186, i32 1
  %17 = ptrtoint ptr %budget75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %budget75, align 4
  %sub76 = sub i32 %budget.0188, %18
  %inc78 = add nuw nsw i32 %i.1186, 1
  %19 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_ch_num, align 4
  %cmp31 = icmp slt i32 %inc78, %20
  br i1 %cmp31, label %if.end73.for.body32_crit_edge, label %for.end79

if.end73.for.body32_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

for.end79:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub76)
  %tobool80.not = icmp eq i32 %sub76, 0
  br i1 %tobool80.not, label %for.end79.if.end85_crit_edge, label %for.end79.if.then81_crit_edge

for.end79.if.then81_crit_edge:                    ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then81

for.end79.if.end85_crit_edge:                     ; preds = %for.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then81:                                        ; preds = %for.end79.if.then81_crit_edge, %if.end28.if.then81_crit_edge, %for.end.thread.if.then81_crit_edge
  %bigest_rate_ch.0.lcssa218 = phi i32 [ %bigest_rate_ch.3, %for.end79.if.then81_crit_edge ], [ 0, %if.end28.if.then81_crit_edge ], [ 0, %for.end.thread.if.then81_crit_edge ]
  %budget.0.lcssa217 = phi i32 [ %sub76, %for.end79.if.then81_crit_edge ], [ 64, %if.end28.if.then81_crit_edge ], [ 64, %for.end.thread.if.then81_crit_edge ]
  %budget83 = getelementptr %struct.cpsw_vector, ptr %txv1, i32 %bigest_rate_ch.0.lcssa218, i32 1
  %21 = ptrtoint ptr %budget83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %budget83, align 4
  %add84 = add i32 %22, %budget.0.lcssa217
  store i32 %add84, ptr %budget83, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %for.end79.if.end85_crit_edge
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 25
  %23 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_ch_num, align 8
  %div86 = sdiv i32 64, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp89192 = icmp sgt i32 %24, 0
  br i1 %cmp89192, label %if.end85.for.body90_crit_edge, label %if.end85.if.then98_crit_edge

if.end85.if.then98_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

if.end85.for.body90_crit_edge:                    ; preds = %if.end85
  br label %for.body90

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %if.end85.for.body90_crit_edge
  %budget.1194 = phi i32 [ %sub93, %for.body90.for.body90_crit_edge ], [ 64, %if.end85.for.body90_crit_edge ]
  %i.2193 = phi i32 [ %inc95, %for.body90.for.body90_crit_edge ], [ 0, %if.end85.for.body90_crit_edge ]
  %budget92 = getelementptr %struct.cpsw_common, ptr %cpsw, i32 0, i32 16, i32 %i.2193, i32 1
  %25 = ptrtoint ptr %budget92 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div86, ptr %budget92, align 4
  %sub93 = sub i32 %budget.1194, %div86
  %inc95 = add nuw nsw i32 %i.2193, 1
  %26 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_ch_num, align 8
  %cmp89 = icmp slt i32 %inc95, %27
  br i1 %cmp89, label %for.body90.for.body90_crit_edge, label %for.end96

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body90

for.end96:                                        ; preds = %for.body90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub93)
  %tobool97.not = icmp eq i32 %sub93, 0
  br i1 %tobool97.not, label %for.end96.if.end103_crit_edge, label %for.end96.if.then98_crit_edge

for.end96.if.then98_crit_edge:                    ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

for.end96.if.end103_crit_edge:                    ; preds = %for.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then98:                                        ; preds = %for.end96.if.then98_crit_edge, %if.end85.if.then98_crit_edge
  %budget.1.lcssa221 = phi i32 [ %sub93, %for.end96.if.then98_crit_edge ], [ 64, %if.end85.if.then98_crit_edge ]
  %budget101 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 16, i32 0, i32 1
  %28 = ptrtoint ptr %budget101 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %budget101, align 4
  %add102 = add i32 %29, %budget.1.lcssa221
  store i32 %add102, ptr %budget101, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %for.end96.if.end103_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_set_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_init_common(ptr noundef %cpsw, ptr noundef %ss_regs, i32 noundef %ale_ageout, i32 noundef %desc_mem_phys, i32 noundef %descs_pool_size) local_unnamed_addr #0 align 64 {
entry:
  %ale_params = alloca %struct.cpsw_ale_params, align 4
  %dma_params = alloca %struct.cpdma_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ale_params) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %dma_params) #9
  %0 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw, align 8
  %data2 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 25
  %2 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %rx_ch_num, align 8
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 26
  %3 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %tx_ch_num, align 4
  %regs = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !134
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  %version = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 8
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %version, align 8
  %9 = call ptr @memset(ptr %dma_params, i32 0, i32 72)
  %10 = getelementptr inbounds i8, ptr %ale_params, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 32)
  %12 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end [
    i32 1638666, label %sw.bb
    i32 1638668, label %entry.sw.bb11_crit_edge
    i32 1638671, label %entry.sw.bb11_crit_edge179
    i32 1638674, label %entry.sw.bb11_crit_edge180
  ]

entry.sw.bb11_crit_edge180:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb11_crit_edge179:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb11

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %ss_regs, i32 40
  %host_port_regs = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 7
  %13 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %host_port_regs, align 4
  %add.ptr5 = getelementptr i8, ptr %ss_regs, i32 1280
  %add.ptr6 = getelementptr i8, ptr %ss_regs, i32 1024
  %hw_stats = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 6
  %14 = ptrtoint ptr %hw_stats to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr6, ptr %hw_stats, align 8
  %add.ptr7 = getelementptr i8, ptr %ss_regs, i32 256
  %dmaregs = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 1
  %15 = ptrtoint ptr %dmaregs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr7, ptr %dmaregs, align 4
  %add.ptr8 = getelementptr i8, ptr %ss_regs, i32 512
  %txhdp = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 2
  %16 = ptrtoint ptr %txhdp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr8, ptr %txhdp, align 4
  %add.ptr9 = getelementptr i8, ptr %ss_regs, i32 1536
  %ale_regs = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale_params, i32 0, i32 1
  %17 = ptrtoint ptr %ale_regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr9, ptr %ale_regs, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge179, %entry.sw.bb11_crit_edge180
  %add.ptr12 = getelementptr i8, ptr %ss_regs, i32 264
  %host_port_regs13 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 7
  %18 = ptrtoint ptr %host_port_regs13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr12, ptr %host_port_regs13, align 4
  %add.ptr14 = getelementptr i8, ptr %ss_regs, i32 3072
  %add.ptr15 = getelementptr i8, ptr %ss_regs, i32 2304
  %hw_stats16 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 6
  %19 = ptrtoint ptr %hw_stats16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr15, ptr %hw_stats16, align 8
  %add.ptr17 = getelementptr i8, ptr %ss_regs, i32 2048
  %dmaregs18 = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 1
  %20 = ptrtoint ptr %dmaregs18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr17, ptr %dmaregs18, align 4
  %add.ptr19 = getelementptr i8, ptr %ss_regs, i32 2560
  %txhdp20 = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 2
  %21 = ptrtoint ptr %txhdp20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr19, ptr %txhdp20, align 4
  %add.ptr21 = getelementptr i8, ptr %ss_regs, i32 3328
  %ale_regs22 = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale_params, i32 0, i32 1
  %22 = ptrtoint ptr %ale_regs22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr21, ptr %ale_regs22, align 4
  %desc_mem_phys23 = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 11
  %23 = ptrtoint ptr %desc_mem_phys23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %desc_mem_phys, ptr %desc_mem_phys23, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %7) #12
  br label %cleanup93

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb
  %cpts_regs.0 = phi ptr [ %add.ptr14, %sw.bb11 ], [ %add.ptr5, %sw.bb ]
  %slave_size.0 = phi i32 [ 256, %sw.bb11 ], [ 64, %sw.bb ]
  %sliver_offset.0 = phi i32 [ 3456, %sw.bb11 ], [ 1792, %sw.bb ]
  %slave_offset.0 = phi i32 [ 512, %sw.bb11 ], [ 80, %sw.bb ]
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp170.not = icmp eq i32 %25, 0
  br i1 %cmp170.not, label %sw.epilog.for.end_crit_edge, label %for.body.lr.ph

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.epilog
  %slaves26 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %slave_offset.1173 = phi i32 [ %slave_offset.0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %sliver_offset.1172 = phi i32 [ %sliver_offset.0, %for.body.lr.ph ], [ %add41, %for.inc.for.body_crit_edge ]
  %i.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %slaves26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slaves26, align 4
  %arrayidx = getelementptr %struct.cpsw_slave, ptr %27, i32 %i.0171
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %slave_num = getelementptr %struct.cpsw_slave, ptr %27, i32 %i.0171, i32 1
  %30 = ptrtoint ptr %slave_num to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.0171, ptr %slave_num, align 4
  %31 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data2, align 4
  %arrayidx30 = getelementptr %struct.cpsw_slave_data, ptr %32, i32 %i.0171
  %data31 = getelementptr %struct.cpsw_slave, ptr %27, i32 %i.0171, i32 3
  %33 = ptrtoint ptr %data31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx30, ptr %data31, align 4
  %add.ptr32 = getelementptr i8, ptr %29, i32 %slave_offset.1173
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr32, ptr %arrayidx, align 4
  %dual_emac_res_vlan = getelementptr %struct.cpsw_slave_data, ptr %32, i32 %i.0171, i32 5
  %35 = ptrtoint ptr %dual_emac_res_vlan to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dual_emac_res_vlan, align 2
  %conv = zext i16 %36 to i32
  %port_vlan = getelementptr %struct.cpsw_slave, ptr %27, i32 %i.0171, i32 6
  %37 = ptrtoint ptr %port_vlan to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv, ptr %port_vlan, align 4
  %add.ptr35 = getelementptr i8, ptr %29, i32 %sliver_offset.1172
  %call36 = tail call ptr @cpsw_sl_get(ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef %add.ptr35) #9
  %mac_sl = getelementptr %struct.cpsw_slave, ptr %27, i32 %i.0171, i32 7
  %38 = ptrtoint ptr %mac_sl to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call36, ptr %mac_sl, align 4
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call36 to i32
  br label %cleanup93

for.inc:                                          ; preds = %for.body
  %add = add i32 %slave_offset.1173, %slave_size.0
  %add41 = add i32 %sliver_offset.1172, 64
  %inc = add nuw i32 %i.0171, 1
  %40 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog.for.end_crit_edge
  %42 = ptrtoint ptr %ale_params to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %1, ptr %ale_params, align 4
  %ale_ageout44 = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale_params, i32 0, i32 2
  %43 = ptrtoint ptr %ale_ageout44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %ale_ageout, ptr %ale_ageout44, align 4
  %ale_ports = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale_params, i32 0, i32 4
  %44 = ptrtoint ptr %ale_ports to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %ale_ports, align 4
  %dev_id = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale_params, i32 0, i32 7
  %45 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.8, ptr %dev_id, align 4
  %call45 = call ptr @cpsw_ale_create(ptr noundef nonnull %ale_params) #9
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 17
  %46 = ptrtoint ptr %ale to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call45, ptr %ale, align 4
  %cmp.i165 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %do.end51, label %if.end54

do.end51:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  %47 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ale, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup93

if.end54:                                         ; preds = %for.end
  %50 = ptrtoint ptr %dma_params to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %1, ptr %dma_params, align 4
  %dmaregs56 = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 1
  %51 = ptrtoint ptr %dmaregs56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dmaregs56, align 4
  %add.ptr57 = getelementptr i8, ptr %52, i32 192
  %rxthresh = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 6
  %53 = ptrtoint ptr %rxthresh to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr57, ptr %rxthresh, align 4
  %add.ptr59 = getelementptr i8, ptr %52, i32 224
  %rxfree = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 7
  %54 = ptrtoint ptr %rxfree to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr59, ptr %rxfree, align 4
  %txhdp60 = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 2
  %55 = ptrtoint ptr %txhdp60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %txhdp60, align 4
  %add.ptr61 = getelementptr i8, ptr %56, i32 32
  %rxhdp = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 3
  %57 = ptrtoint ptr %rxhdp to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr61, ptr %rxhdp, align 4
  %add.ptr63 = getelementptr i8, ptr %56, i32 64
  %txcp = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 4
  %58 = ptrtoint ptr %txcp to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr63, ptr %txcp, align 4
  %add.ptr65 = getelementptr i8, ptr %56, i32 96
  %rxcp = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 5
  %59 = ptrtoint ptr %rxcp to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr65, ptr %rxcp, align 4
  %channels = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 2
  %60 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channels, align 4
  %num_chan = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 8
  %62 = ptrtoint ptr %num_chan to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %num_chan, align 4
  %has_soft_reset = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 9
  %63 = ptrtoint ptr %has_soft_reset to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %has_soft_reset, align 4
  %min_packet_size = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 10
  %64 = ptrtoint ptr %min_packet_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 60, ptr %min_packet_size, align 4
  %bd_ram_size = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 5
  %65 = ptrtoint ptr %bd_ram_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bd_ram_size, align 4
  %desc_mem_size = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 13
  %67 = ptrtoint ptr %desc_mem_size to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %desc_mem_size, align 4
  %desc_align = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 14
  %68 = ptrtoint ptr %desc_align to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 16, ptr %desc_align, align 4
  %has_ext_regs = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 17
  %69 = ptrtoint ptr %has_ext_regs to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %has_ext_regs, align 4
  %desc_mem_phys66 = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 11
  %70 = ptrtoint ptr %desc_mem_phys66 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %desc_mem_phys66, align 4
  %desc_hw_addr = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 12
  %72 = ptrtoint ptr %desc_hw_addr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %desc_hw_addr, align 4
  %bus_freq_mhz = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 10
  %73 = ptrtoint ptr %bus_freq_mhz to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bus_freq_mhz, align 8
  %bus_freq_mhz67 = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 15
  %75 = ptrtoint ptr %bus_freq_mhz67 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %bus_freq_mhz67, align 4
  %descs_pool_size68 = getelementptr inbounds %struct.cpdma_params, ptr %dma_params, i32 0, i32 16
  %76 = ptrtoint ptr %descs_pool_size68 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %descs_pool_size, ptr %descs_pool_size68, align 4
  %call69 = call ptr @cpdma_ctlr_create(ptr noundef nonnull %dma_params) #9
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 14
  %77 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call69, ptr %dma, align 8
  %tobool.not = icmp eq ptr %call69, null
  br i1 %tobool.not, label %do.end74, label %if.end75

do.end74:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13) #12
  br label %cleanup93

if.end75:                                         ; preds = %if.end54
  %78 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cpsw, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %of_node, align 8
  %call77 = call ptr @of_get_child_by_name(ptr noundef %81, ptr noundef nonnull @.str.15) #9
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.then79, label %if.end75.if.end82_crit_edge

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cpsw, align 8
  %of_node81 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 27
  %84 = ptrtoint ptr %of_node81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_node81, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end75.if.end82_crit_edge
  %cpts_node.0 = phi ptr [ %call77, %if.end75.if.end82_crit_edge ], [ %85, %if.then79 ]
  %86 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %cpsw, align 8
  %call84 = call ptr @cpts_create(ptr noundef %87, ptr noundef %cpts_regs.0, ptr noundef %cpts_node.0, i32 noundef 4) #9
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 23
  %88 = ptrtoint ptr %cpts to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call84, ptr %cpts, align 8
  %cmp.i166 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then87, label %if.end82.if.end92_crit_edge

if.end82.if.end92_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %call84 to i32
  %90 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dma, align 8
  %call91 = call i32 @cpdma_ctlr_destroy(ptr noundef %91) #9
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end82.if.end92_crit_edge
  %ret.0 = phi i32 [ %89, %if.then87 ], [ 0, %if.end82.if.end92_crit_edge ]
  call void @of_node_put(ptr noundef %cpts_node.0) #9
  br label %cleanup93

cleanup93:                                        ; preds = %if.end92, %do.end74, %do.end51, %cleanup.thread, %do.end
  %retval.2 = phi i32 [ -19, %do.end ], [ %49, %do.end51 ], [ %ret.0, %if.end92 ], [ -12, %do.end74 ], [ %39, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %dma_params) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ale_params) #9
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpsw_sl_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpsw_ale_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_ctlr_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpts_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ndo_ioctl(ptr noundef %dev, ptr noundef %req, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i27 = alloca %struct.hwtstamp_config, align 4
  %cfg.i = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cpsw1 = getelementptr i8, ptr %dev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #9
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slaves, align 4
  %phy4 = getelementptr %struct.cpsw_slave, ptr %6, i32 %call2, i32 4
  %7 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy4, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.if.then6_crit_edge, label %land.lhs.true.i

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

land.lhs.true.i:                                  ; preds = %if.end
  %mii_ts.i = getelementptr inbounds %struct.phy_device, ptr %8, i32 0, i32 37
  %9 = ptrtoint ptr %mii_ts.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mii_ts.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then6_crit_edge, label %phy_has_hwtstamp.exit

land.lhs.true.i.if.then6_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

phy_has_hwtstamp.exit:                            ; preds = %land.lhs.true.i
  %hwtstamp.i = getelementptr inbounds %struct.mii_timestamper, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %hwtstamp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hwtstamp.i, align 4
  %tobool3.i.not = icmp eq ptr %12, null
  br i1 %tobool3.i.not, label %phy_has_hwtstamp.exit.if.then6_crit_edge, label %phy_has_hwtstamp.exit.if.then11_crit_edge

phy_has_hwtstamp.exit.if.then11_crit_edge:        ; preds = %phy_has_hwtstamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

phy_has_hwtstamp.exit.if.then6_crit_edge:         ; preds = %phy_has_hwtstamp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %phy_has_hwtstamp.exit.if.then6_crit_edge, %land.lhs.true.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %cmd, label %if.end10 [
    i32 35248, label %sw.bb
    i32 35249, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then6
  %14 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpsw1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg.i) #9
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %cfg.i, align 4, !annotation !136
  %17 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4, !annotation !136
  %19 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4, !annotation !136
  %version.i = getelementptr inbounds %struct.cpsw_common, ptr %15, i32 0, i32 8
  %21 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %version.i, align 8
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %22, label %sw.bb.cpsw_hwtstamp_set.exit_crit_edge [
    i32 1638666, label %sw.bb.if.end.i_crit_edge
    i32 1638668, label %sw.bb.if.end.i_crit_edge44
    i32 1638671, label %sw.bb.if.end.i_crit_edge45
  ]

sw.bb.if.end.i_crit_edge45:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sw.bb.if.end.i_crit_edge44:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

sw.bb.cpsw_hwtstamp_set.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpsw_hwtstamp_set.exit

if.end.i:                                         ; preds = %sw.bb.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge44, %sw.bb.if.end.i_crit_edge45
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %24 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ifr_ifru.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.if.then11.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %25, i32 12, i32 -1226833920) #13, !srcloc !137
  %asmresult.i.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !122

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg.i, i32 noundef 12) #9
  %27 = call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !138
  %and.i.i.i.i.i = and i32 %29, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !139
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg.i, ptr noundef %25, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #9, !srcloc !139
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end9.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !122

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %if.end.i.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %cfg.i, i32 %sub.i.i.i
  %30 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %cpsw_hwtstamp_set.exit

if.end9.i:                                        ; preds = %if.end.i.i.i
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %switch.i = icmp ult i32 %32, 2
  br i1 %switch.i, label %if.end15.i, label %if.end9.i.cpsw_hwtstamp_set.exit_crit_edge

if.end9.i.cpsw_hwtstamp_set.exit_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpsw_hwtstamp_set.exit

if.end15.i:                                       ; preds = %if.end9.i
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %19, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %34, label %if.end15.i.cpsw_hwtstamp_set.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 14, label %if.end15.i.sw.bb17.i_crit_edge
    i32 13, label %if.end15.i.sw.bb17.i_crit_edge46
    i32 12, label %if.end15.i.sw.bb17.i_crit_edge47
    i32 11, label %if.end15.i.sw.bb17.i_crit_edge48
    i32 10, label %if.end15.i.sw.bb17.i_crit_edge49
    i32 6, label %if.end15.i.sw.bb17.i_crit_edge50
    i32 7, label %if.end15.i.sw.bb17.i_crit_edge51
    i32 8, label %if.end15.i.sw.bb17.i_crit_edge52
    i32 9, label %if.end15.i.sw.bb17.i_crit_edge53
  ]

if.end15.i.sw.bb17.i_crit_edge53:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end15.i.sw.bb17.i_crit_edge52:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end15.i.sw.bb17.i_crit_edge51:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end15.i.sw.bb17.i_crit_edge50:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end15.i.sw.bb17.i_crit_edge49:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end15.i.sw.bb17.i_crit_edge48:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end15.i.sw.bb17.i_crit_edge47:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end15.i.sw.bb17.i_crit_edge46:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end15.i.sw.bb17.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

if.end15.i.cpsw_hwtstamp_set.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpsw_hwtstamp_set.exit

sw.bb.i:                                          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_ts_enabled.i = getelementptr i8, ptr %dev, i32 2352
  %36 = ptrtoint ptr %rx_ts_enabled.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %rx_ts_enabled.i, align 16
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end15.i.sw.bb17.i_crit_edge, %if.end15.i.sw.bb17.i_crit_edge46, %if.end15.i.sw.bb17.i_crit_edge47, %if.end15.i.sw.bb17.i_crit_edge48, %if.end15.i.sw.bb17.i_crit_edge49, %if.end15.i.sw.bb17.i_crit_edge50, %if.end15.i.sw.bb17.i_crit_edge51, %if.end15.i.sw.bb17.i_crit_edge52, %if.end15.i.sw.bb17.i_crit_edge53
  %rx_ts_enabled18.i = getelementptr i8, ptr %dev, i32 2352
  %37 = ptrtoint ptr %rx_ts_enabled18.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12, ptr %rx_ts_enabled18.i, align 16
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 12, ptr %19, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb17.i, %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp21.i = icmp eq i32 %32, 1
  %conv.i = zext i1 %cmp21.i to i32
  %tx_ts_enabled.i = getelementptr i8, ptr %dev, i32 2348
  %39 = ptrtoint ptr %tx_ts_enabled.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %tx_ts_enabled.i, align 4
  %40 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version.i, align 8
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %41, label %do.end.i [
    i32 1638666, label %sw.bb23.i
    i32 1638668, label %sw.epilog.i.sw.bb24.i_crit_edge
    i32 1638671, label %sw.epilog.i.sw.bb24.i_crit_edge54
  ]

sw.epilog.i.sw.bb24.i_crit_edge54:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24.i

sw.epilog.i.sw.bb24.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24.i

sw.bb23.i:                                        ; preds = %sw.epilog.i
  %43 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cpsw1, align 4
  %slaves.i.i = getelementptr inbounds %struct.cpsw_common, ptr %44, i32 0, i32 13
  %45 = ptrtoint ptr %slaves.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %slaves.i.i, align 4
  %47 = load ptr, ptr @cpsw_slave_index, align 4
  %call.i.i = call i32 %47(ptr noundef %44, ptr noundef %add.ptr.i) #9
  %arrayidx.i.i = getelementptr %struct.cpsw_slave, ptr %46, i32 %call.i.i
  %48 = ptrtoint ptr %tx_ts_enabled.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_ts_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.bb23.i.if.end.i.i_crit_edge

sw.bb23.i.if.end.i.i_crit_edge:                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb23.i
  %rx_ts_enabled.i.i = getelementptr i8, ptr %dev, i32 2352
  %50 = ptrtoint ptr %rx_ts_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_ts_enabled.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool2.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool2.not.i.i, label %if.then.i70.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i70.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i69.i = getelementptr i8, ptr %53, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i69.i, i32 0) #9, !srcloc !121
  br label %if.then.i63.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %sw.bb23.i.if.end.i.i_crit_edge
  %spec.select.i.i = phi i32 [ 983040, %land.lhs.true.i.i.if.end.i.i_crit_edge ], [ 983056, %sw.bb23.i.if.end.i.i_crit_edge ]
  %rx_ts_enabled7.i.i = getelementptr i8, ptr %dev, i32 2352
  %54 = ptrtoint ptr %rx_ts_enabled7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_ts_enabled7.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool8.not.i.i = icmp ne i32 %55, 0
  %or10.i.i = zext i1 %tobool8.not.i.i to i32
  %ts_en.1.i.i = or i32 %spec.select.i.i, %or10.i.i
  %56 = call i32 @llvm.bswap.i32(i32 %ts_en.1.i.i) #9
  %57 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i25.i.i = getelementptr i8, ptr %58, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i.i, i32 %56) #9, !srcloc !121
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i26.i.i = getelementptr i8, ptr %60, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i.i, i32 -142074368) #9, !srcloc !121
  br label %if.then.i63.i

sw.bb24.i:                                        ; preds = %sw.epilog.i.sw.bb24.i_crit_edge, %sw.epilog.i.sw.bb24.i_crit_edge54
  %61 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cpsw1, align 4
  %slaves.i72.i = getelementptr inbounds %struct.cpsw_common, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %slaves.i72.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %slaves.i72.i, align 4
  %65 = load ptr, ptr @cpsw_slave_index, align 4
  %call.i73.i = call i32 %65(ptr noundef %62, ptr noundef %add.ptr.i) #9
  %arrayidx.i74.i = getelementptr %struct.cpsw_slave, ptr %64, i32 %call.i73.i
  %66 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i74.i, align 4
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #9, !srcloc !134
  %69 = call i32 @llvm.bswap.i32(i32 %68) #9
  %version.i.i = getelementptr inbounds %struct.cpsw_common, ptr %62, i32 0, i32 8
  %70 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638668, i32 %71)
  %cond.i.i = icmp eq i32 %71, 1638668
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i = and i32 %69, -1081112
  %72 = ptrtoint ptr %tx_ts_enabled.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_ts_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i76.i = icmp eq i32 %73, 0
  %or.i.i = or i32 %and.i.i, 1081110
  %spec.select.i77.i = select i1 %tobool.not.i76.i, i32 %and.i.i, i32 %or.i.i
  %rx_ts_enabled.i78.i = getelementptr i8, ptr %dev, i32 2352
  %74 = ptrtoint ptr %rx_ts_enabled.i78.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_ts_enabled.i78.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool3.not.i.i = icmp eq i32 %75, 0
  %or5.i.i = or i32 %spec.select.i77.i, 1081109
  %spec.select38.i.i = select i1 %tobool3.not.i.i, i32 %spec.select.i77.i, i32 %or5.i.i
  br label %cpsw_hwtstamp_v2.exit.i

sw.default.i.i:                                   ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #11
  %and8.i.i = and i32 %69, -1113944
  %76 = ptrtoint ptr %tx_ts_enabled.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_ts_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool10.not.i.i = icmp eq i32 %77, 0
  %or12.i.i = or i32 %and8.i.i, 1113942
  %spec.select37.i.i = select i1 %tobool10.not.i.i, i32 %and8.i.i, i32 %or12.i.i
  %rx_ts_enabled14.i.i = getelementptr i8, ptr %dev, i32 2352
  %78 = ptrtoint ptr %rx_ts_enabled14.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_ts_enabled14.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool15.not.i.i = icmp eq i32 %79, 0
  %or17.i.i = or i32 %spec.select37.i.i, 1113941
  %spec.select39.i.i = select i1 %tobool15.not.i.i, i32 %spec.select37.i.i, i32 %or17.i.i
  br label %cpsw_hwtstamp_v2.exit.i

cpsw_hwtstamp_v2.exit.i:                          ; preds = %sw.default.i.i, %sw.bb.i.i
  %ctrl.2.i.i = phi i32 [ %spec.select38.i.i, %sw.bb.i.i ], [ %spec.select39.i.i, %sw.default.i.i ]
  %80 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i74.i, align 4
  %add.ptr.i.i79.i = getelementptr i8, ptr %81, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i79.i, i32 251665920) #9, !srcloc !121
  %82 = call i32 @llvm.bswap.i32(i32 %ctrl.2.i.i) #9
  %83 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i74.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #9, !srcloc !121
  %regs.i.i = getelementptr inbounds %struct.cpsw_common, ptr %62, i32 0, i32 4
  %85 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i, align 8
  %ts_ltype.i.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %86, i32 0, i32 11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ts_ltype.i.i, i32 -142082048) #9, !srcloc !121
  %87 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i, align 8
  %vlan_ltype.i.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %88, i32 0, i32 10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %vlan_ltype.i.i, i32 8454144) #9, !srcloc !121
  br label %if.then.i63.i

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 669, i32 noundef 9, ptr noundef null) #9
  br label %if.then.i63.i

if.then.i63.i:                                    ; preds = %do.end.i, %cpsw_hwtstamp_v2.exit.i, %if.end.i.i, %if.then.i70.i
  %89 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ifr_ifru.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i62.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i62.i, label %if.then.i63.i.cpsw_hwtstamp_set.exit_crit_edge, label %if.end.i.i66.i

if.then.i63.i.cpsw_hwtstamp_set.exit_crit_edge:   ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpsw_hwtstamp_set.exit

if.end.i.i66.i:                                   ; preds = %if.then.i63.i
  %91 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %90, i32 12, i32 -1226833920) #13, !srcloc !141
  %asmresult.i.i64.i = extractvalue { i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i64.i)
  %cmp.i.i65.i = icmp eq i32 %asmresult.i.i64.i, 0
  br i1 %cmp.i.i65.i, label %copy_to_user.exit.i, label %if.end.i.i66.i.cpsw_hwtstamp_set.exit_crit_edge

if.end.i.i66.i.cpsw_hwtstamp_set.exit_crit_edge:  ; preds = %if.end.i.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpsw_hwtstamp_set.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i67.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg.i, i32 noundef 12) #9
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %90, ptr noundef nonnull %cfg.i, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool46.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool46.not.i, i32 0, i32 -14
  br label %cpsw_hwtstamp_set.exit

cpsw_hwtstamp_set.exit:                           ; preds = %copy_to_user.exit.i, %if.end.i.i66.i.cpsw_hwtstamp_set.exit_crit_edge, %if.then.i63.i.cpsw_hwtstamp_set.exit_crit_edge, %if.end15.i.cpsw_hwtstamp_set.exit_crit_edge, %if.end9.i.cpsw_hwtstamp_set.exit_crit_edge, %if.then11.i.i.i, %sw.bb.cpsw_hwtstamp_set.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %sw.bb.cpsw_hwtstamp_set.exit_crit_edge ], [ -34, %if.end9.i.cpsw_hwtstamp_set.exit_crit_edge ], [ -34, %if.end15.i.cpsw_hwtstamp_set.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i63.i.cpsw_hwtstamp_set.exit_crit_edge ], [ -14, %if.end.i.i66.i.cpsw_hwtstamp_set.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.then6
  %92 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cpsw1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg.i27) #9
  %version.i29 = getelementptr inbounds %struct.cpsw_common, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %version.i29 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %version.i29, align 8
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %95, label %sw.bb8.cpsw_hwtstamp_get.exit_crit_edge [
    i32 1638666, label %sw.bb8.if.end.i35_crit_edge
    i32 1638668, label %sw.bb8.if.end.i35_crit_edge55
    i32 1638671, label %sw.bb8.if.end.i35_crit_edge56
  ]

sw.bb8.if.end.i35_crit_edge56:                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i35

sw.bb8.if.end.i35_crit_edge55:                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i35

sw.bb8.if.end.i35_crit_edge:                      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i35

sw.bb8.cpsw_hwtstamp_get.exit_crit_edge:          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpsw_hwtstamp_get.exit

if.end.i35:                                       ; preds = %sw.bb8.if.end.i35_crit_edge, %sw.bb8.if.end.i35_crit_edge55, %sw.bb8.if.end.i35_crit_edge56
  %97 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i27, i32 0, i32 2
  %98 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i27, i32 0, i32 1
  %99 = ptrtoint ptr %cfg.i27 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %cfg.i27, align 4
  %tx_ts_enabled.i30 = getelementptr i8, ptr %dev, i32 2348
  %100 = ptrtoint ptr %tx_ts_enabled.i30 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tx_ts_enabled.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i31 = icmp ne i32 %101, 0
  %cond.i = zext i1 %tobool.not.i31 to i32
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %cond.i, ptr %98, align 4
  %rx_ts_enabled.i32 = getelementptr i8, ptr %dev, i32 2352
  %103 = ptrtoint ptr %rx_ts_enabled.i32 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_ts_enabled.i32, align 16
  %105 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %97, align 4
  %ifr_ifru.i33 = getelementptr inbounds %struct.ifreq, ptr %req, i32 0, i32 1
  %106 = ptrtoint ptr %ifr_ifru.i33 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ifr_ifru.i33, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i.i34 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i34, label %if.end.i35.cpsw_hwtstamp_get.exit_crit_edge, label %if.end.i.i.i38

if.end.i35.cpsw_hwtstamp_get.exit_crit_edge:      ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpsw_hwtstamp_get.exit

if.end.i.i.i38:                                   ; preds = %if.end.i35
  %108 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %107, i32 12, i32 -1226833920) #13, !srcloc !141
  %asmresult.i.i.i36 = extractvalue { i32, i32 } %108, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i36)
  %cmp.i.i.i37 = icmp eq i32 %asmresult.i.i.i36, 0
  br i1 %cmp.i.i.i37, label %copy_to_user.exit.i42, label %if.end.i.i.i38.cpsw_hwtstamp_get.exit_crit_edge

if.end.i.i.i38.cpsw_hwtstamp_get.exit_crit_edge:  ; preds = %if.end.i.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpsw_hwtstamp_get.exit

copy_to_user.exit.i42:                            ; preds = %if.end.i.i.i38
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg.i27, i32 noundef 12) #9
  %call.i1.i.i.i40 = call i32 @arm_copy_to_user(ptr noundef %107, ptr noundef nonnull %cfg.i27, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i40)
  %tobool9.not.i = icmp eq i32 %call.i1.i.i.i40, 0
  %spec.select.i41 = select i1 %tobool9.not.i, i32 0, i32 -14
  br label %cpsw_hwtstamp_get.exit

cpsw_hwtstamp_get.exit:                           ; preds = %copy_to_user.exit.i42, %if.end.i.i.i38.cpsw_hwtstamp_get.exit_crit_edge, %if.end.i35.cpsw_hwtstamp_get.exit_crit_edge, %sw.bb8.cpsw_hwtstamp_get.exit_crit_edge
  %retval.0.i43 = phi i32 [ -95, %sw.bb8.cpsw_hwtstamp_get.exit_crit_edge ], [ -14, %if.end.i35.cpsw_hwtstamp_get.exit_crit_edge ], [ -14, %if.end.i.i.i38.cpsw_hwtstamp_get.exit_crit_edge ], [ %spec.select.i41, %copy_to_user.exit.i42 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i27) #9
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  br i1 %tobool.not.i, label %if.end10.cleanup_crit_edge, label %if.end10.if.then11_crit_edge

if.end10.if.then11_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %if.end10.if.then11_crit_edge, %phy_has_hwtstamp.exit.if.then11_crit_edge
  %call12 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %8, ptr noundef %req, i32 noundef %cmd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end10.cleanup_crit_edge, %cpsw_hwtstamp_get.exit, %cpsw_hwtstamp_set.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then11 ], [ %retval.0.i43, %cpsw_hwtstamp_get.exit ], [ %retval.0.i, %cpsw_hwtstamp_set.exit ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ndo_set_tx_maxrate(ptr nocapture noundef readonly %ndev, i32 noundef %queue, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %tx_maxrate = getelementptr %struct.netdev_queue, ptr %3, i32 %queue, i32 5
  %4 = ptrtoint ptr %tx_maxrate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_maxrate, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp = icmp eq i32 %5, %rate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %rate, 1000
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 8
  %call3 = tail call i32 @cpdma_chan_get_min_rate(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %call3)
  %cmp4 = icmp uge i32 %mul, %call3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  %or.cond = or i1 %tobool.not, %cmp4
  br i1 %or.cond, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef %call3) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %speed = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %rate)
  %cmp7 = icmp ult i32 %11, %rate
  br i1 %cmp7, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr i8, ptr %ndev, i32 2308
  %12 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !143
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then17.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !144
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %arrayidx = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 15, i32 %queue
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call20 = tail call i32 @cpdma_chan_set_rate(ptr noundef %20, i32 noundef %mul) #9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %call.i69 = tail call i32 @__pm_runtime_idle(ptr noundef %22, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool23.not = icmp eq i32 %call20, 0
  br i1 %tobool23.not, label %for.cond.preheader, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end19
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2672.not = icmp eq i32 %24, 0
  br i1 %cmp2672.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slaves27 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %25 = ptrtoint ptr %slaves27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slaves27, align 4
  %ndev29 = getelementptr %struct.cpsw_slave, ptr %26, i32 %i.073, i32 5
  %27 = ptrtoint ptr %ndev29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev29, align 4
  %tobool30.not = icmp eq ptr %28, null
  br i1 %tobool30.not, label %for.body.for.inc_crit_edge, label %if.end32

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end32:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %_tx.i70 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 103
  %29 = ptrtoint ptr %_tx.i70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %_tx.i70, align 128
  %tx_maxrate35 = getelementptr %struct.netdev_queue, ptr %30, i32 %queue, i32 5
  %31 = ptrtoint ptr %tx_maxrate35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rate, ptr %tx_maxrate35, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.073, 1
  %32 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %slaves, align 4
  %cmp26 = icmp ult i32 %inc, %33
  br i1 %cmp26, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @cpsw_split_res(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end19.cleanup_crit_edge, %do.end11.i.i.i.i, %if.then17.cleanup_crit_edge, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ 0, %for.end ], [ 0, %entry.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call.i, %if.then17.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_get_min_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cpsw_shp_is_off(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %regs = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %ptype = getelementptr inbounds %struct.cpsw_ss_regs, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptype) #9, !srcloc !134
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slaves, align 4
  %8 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %8(ptr noundef %1, ptr noundef %priv) #9
  %slave_num = getelementptr %struct.cpsw_slave, ptr %7, i32 %call2, i32 1
  %9 = ptrtoint ptr %slave_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slave_num, align 4
  %mul = mul i32 %10, 3
  %add = add i32 %mul, 16
  %shl = shl i32 7, %add
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ndo_setup_tc(ptr noundef %ndev, i32 noundef %type, ptr nocapture noundef readonly %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %type, label %entry.return_crit_edge [
    i32 6, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1.i = getelementptr i8, ptr %ndev, i32 3468
  %1 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpsw1.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %queue.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 1
  %5 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %queue.i, align 4
  %call3.i = tail call i32 @netdev_txq_to_tc(ptr noundef %4, i32 noundef %6) #9
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 140
  %7 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_tc.i, align 4
  %conv.i = sext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %call3.i)
  %cmp.i.i = icmp eq i32 %sub.i.i, %call3.i
  %sub1.i.i = sub i32 3, %call3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3.i)
  %tobool.not107.i = icmp eq i32 %call3.i, 3
  %tobool.not.i = or i1 %tobool.not107.i, %cmp.i.i
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr i8, ptr %ndev, i32 2308
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.33, i32 noundef %call3.i) #12
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %11 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not.i = icmp eq i8 %12, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.cpsw_priv, ptr %add.ptr.i.i, i32 0, i32 7, i32 %sub1.i.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not.i = icmp eq i32 %14, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end8.i_crit_edge

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end8.i:                                        ; preds = %land.lhs.true.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %2, i32 0, i32 13
  %15 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slaves.i, align 4
  %17 = load ptr, ptr @cpsw_slave_index, align 4
  %call9.i = tail call i32 %17(ptr noundef %2, ptr noundef %add.ptr.i.i) #9
  %phy.i = getelementptr %struct.cpsw_slave, ptr %16, i32 %call9.i, i32 4
  %18 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy.i, align 4
  %tobool11.not.i = icmp eq ptr %19, null
  br i1 %tobool11.not.i, label %if.end8.i.if.end27.i_crit_edge, label %land.lhs.true12.i

if.end8.i.if.end27.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

land.lhs.true12.i:                                ; preds = %if.end8.i
  %link.i = getelementptr inbounds %struct.phy_device, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %link.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %link.i, align 8
  %21 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool14.not.i = icmp eq i16 %21, 0
  br i1 %tobool14.not.i, label %land.lhs.true12.i.if.end27.i_crit_edge, label %if.then15.i

land.lhs.true12.i.if.end27.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.then15.i:                                      ; preds = %land.lhs.true12.i
  %shp_cfg_speed.i = getelementptr i8, ptr %ndev, i32 2344
  %22 = ptrtoint ptr %shp_cfg_speed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shp_cfg_speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool16.not.i = icmp eq i32 %23, 0
  br i1 %tobool16.not.i, label %if.then15.i.if.end23.i_crit_edge, label %land.lhs.true17.i

if.then15.i.if.end23.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

land.lhs.true17.i:                                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %speed.i = getelementptr inbounds %struct.phy_device, ptr %19, i32 0, i32 8
  %24 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not.i = icmp eq i32 %23, %25
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 %23
  br label %if.end23.i

if.end23.i:                                       ; preds = %land.lhs.true17.i, %if.then15.i.if.end23.i_crit_edge
  %prev_speed.0.i = phi i32 [ 0, %if.then15.i.if.end23.i_crit_edge ], [ %spec.select.i, %land.lhs.true17.i ]
  %speed25.i = getelementptr inbounds %struct.phy_device, ptr %19, i32 0, i32 8
  %26 = ptrtoint ptr %speed25.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed25.i, align 8
  %28 = ptrtoint ptr %shp_cfg_speed.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %shp_cfg_speed.i, align 8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end23.i, %land.lhs.true12.i.if.end27.i_crit_edge, %if.end8.i.if.end27.i_crit_edge
  %prev_speed.1.i = phi i32 [ %prev_speed.0.i, %if.end23.i ], [ 0, %land.lhs.true12.i.if.end27.i_crit_edge ], [ 0, %if.end8.i.if.end27.i_crit_edge ]
  %shp_cfg_speed28.i = getelementptr i8, ptr %ndev, i32 2344
  %29 = ptrtoint ptr %shp_cfg_speed28.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %shp_cfg_speed28.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool29.not.i = icmp eq i32 %30, 0
  br i1 %tobool29.not.i, label %do.end33.i, label %if.end35.i

do.end33.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev34.i = getelementptr i8, ptr %ndev, i32 2308
  %31 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev34.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.36) #12
  br label %return

if.end35.i:                                       ; preds = %if.end27.i
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %34, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp38.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp38.i, label %if.then40.i, label %if.end42.i

if.then40.i:                                      ; preds = %if.end35.i
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %2, align 8
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #9
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #9, !srcloc !143
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then40.i.return_crit_edge, label %do.end11.i.i.i.i.i

if.then40.i.return_crit_edge:                     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end11.i.i.i.i.i:                               ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !144
  br label %return

if.end42.i:                                       ; preds = %if.end35.i
  %38 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool45.not.i = icmp eq i8 %39, 0
  br i1 %tobool45.not.i, label %if.end42.i.cond.end.i_crit_edge, label %cond.true.i

if.end42.i.cond.end.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  %idleslope.i = getelementptr inbounds %struct.tc_cbs_qopt_offload, ptr %type_data, i32 0, i32 4
  %40 = ptrtoint ptr %idleslope.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idleslope.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end42.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %41, %cond.true.i ], [ 0, %if.end42.i.cond.end.i_crit_edge ]
  %call46.i = tail call fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %add.ptr.i.i, i32 noundef %sub1.i.i, i32 noundef %cond.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end50.i, label %if.end50.thread.i

if.end50.thread.i:                                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %shp_cfg_speed28.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %prev_speed.1.i, ptr %shp_cfg_speed28.i, align 8
  br label %if.end59.i

if.end50.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool51.not.i = icmp eq i32 %cond.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev_speed.1.i)
  %tobool53.not.i = icmp eq i32 %prev_speed.1.i, 0
  %or.cond.i = select i1 %tobool51.not.i, i1 true, i1 %tobool53.not.i
  br i1 %or.cond.i, label %if.end50.i.if.end59.i_crit_edge, label %do.end57.i

if.end50.i.if.end59.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59.i

do.end57.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev58.i = getelementptr i8, ptr %ndev, i32 2308
  %43 = ptrtoint ptr %dev58.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev58.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.39) #12
  br label %if.end59.i

if.end59.i:                                       ; preds = %do.end57.i, %if.end50.i.if.end59.i_crit_edge, %if.end50.thread.i
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %2, align 8
  %call.i102.i = tail call i32 @__pm_runtime_idle(ptr noundef %46, i32 noundef 4) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  %add.ptr.i.i5 = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1.i6 = getelementptr i8, ptr %ndev, i32 3468
  %47 = ptrtoint ptr %cpsw1.i6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cpsw1.i6, align 4
  %49 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %type_data, align 8
  %conv.i7 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %50)
  %cmp.i = icmp ugt i8 %50, 4
  br i1 %cmp.i, label %sw.bb1.return_crit_edge, label %if.end.i8

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i8:                                        ; preds = %sw.bb1
  %mode.i = getelementptr inbounds %struct.tc_mqprio_qopt_offload, ptr %type_data, i32 0, i32 1
  %51 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %cmp5.not.i = icmp eq i16 %52, 0
  br i1 %cmp5.not.i, label %if.end8.i10, label %if.end.i8.return_crit_edge

if.end.i8.return_crit_edge:                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end8.i10:                                      ; preds = %if.end.i8
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 8
  %call.i.i9 = tail call i32 @__pm_runtime_resume(ptr noundef %54, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %cmp10.i = icmp slt i32 %call.i.i9, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end8.i10
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %48, align 8
  %usage_count.i.i11 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 12, i32 13
  %call.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i11, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i11, i32 1, i32 3, i32 1) #9
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i11, ptr %usage_count.i.i11, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i11) #9, !srcloc !143
  %asmresult.i.i.i.i.i13 = extractvalue { i32, i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i13)
  %cmp.not.i.i.i.i.i14 = icmp eq i32 %asmresult.i.i.i.i.i13, 0
  br i1 %cmp.not.i.i.i.i.i14, label %if.then12.i.return_crit_edge, label %do.end11.i.i.i.i.i15

if.then12.i.return_crit_edge:                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end11.i.i.i.i.i15:                             ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !144
  br label %return

if.end14.i:                                       ; preds = %if.end8.i10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i16 = icmp eq i8 %50, 0
  br i1 %tobool.not.i16, label %if.end14.i.if.end42.i21_crit_edge, label %for.body26.preheader.i

if.end14.i.if.end42.i21_crit_edge:                ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i21

for.body26.preheader.i:                           ; preds = %if.end14.i
  %sub.i.i17 = add nsw i32 %conv.i7, -1
  %arrayidx.i18 = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 1, i32 0
  %58 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i18, align 1
  %conv19.i = zext i8 %59 to i32
  %sub1.i.i20 = sub nsw i32 3, %conv19.i
  %arrayidx.1.i = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.1.i, align 1
  %conv19.1.i = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i17, i32 %conv19.1.i)
  %cmp.i.1.i = icmp eq i32 %sub.i.i17, %conv19.1.i
  %.neg.i = mul nsw i32 %conv19.1.i, -16
  %sub1.i.1.op.i = add nsw i32 %.neg.i, 48
  %shl.1.i = select i1 %cmp.i.1.i, i32 0, i32 %sub1.i.1.op.i
  %arrayidx.2.i = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 1, i32 2
  %62 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.2.i, align 1
  %conv19.2.i = zext i8 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i17, i32 %conv19.2.i)
  %cmp.i.2.i = icmp eq i32 %sub.i.i17, %conv19.2.i
  %.neg104.i = mul nsw i32 %conv19.2.i, -256
  %sub1.i.2.op.i = add nsw i32 %.neg104.i, 768
  %shl.2.i = select i1 %cmp.i.2.i, i32 0, i32 %sub1.i.2.op.i
  %arrayidx.3.i = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 1, i32 3
  %64 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.3.i, align 1
  %conv19.3.i = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i17, i32 %conv19.3.i)
  %cmp.i.3.i = icmp eq i32 %sub.i.i17, %conv19.3.i
  %.neg105.i = mul nsw i32 %conv19.3.i, -4096
  %sub1.i.3.op.i = add nsw i32 %.neg105.i, 12288
  %shl.3.i = select i1 %cmp.i.3.i, i32 0, i32 %sub1.i.3.op.i
  %arrayidx.4.i = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.4.i, align 1
  %conv19.4.i = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i17, i32 %conv19.4.i)
  %cmp.i.4.i = icmp eq i32 %sub.i.i17, %conv19.4.i
  %.neg106.i = mul nsw i32 %conv19.4.i, -65536
  %sub1.i.4.op.i = add nsw i32 %.neg106.i, 196608
  %shl.4.i = select i1 %cmp.i.4.i, i32 0, i32 %sub1.i.4.op.i
  %arrayidx.5.i = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 1, i32 5
  %68 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.5.i, align 1
  %conv19.5.i = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i17, i32 %conv19.5.i)
  %cmp.i.5.i = icmp eq i32 %sub.i.i17, %conv19.5.i
  %.neg107.i = mul nsw i32 %conv19.5.i, -1048576
  %sub1.i.5.op.i = add nsw i32 %.neg107.i, 3145728
  %shl.5.i = select i1 %cmp.i.5.i, i32 0, i32 %sub1.i.5.op.i
  %arrayidx.6.i = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 1, i32 6
  %70 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.6.i, align 1
  %conv19.6.i = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i17, i32 %conv19.6.i)
  %cmp.i.6.i = icmp eq i32 %sub.i.i17, %conv19.6.i
  %.neg108.i = mul i32 %conv19.6.i, -16777216
  %sub1.i.6.op.i = add i32 %.neg108.i, 50331648
  %shl.6.i = select i1 %cmp.i.6.i, i32 0, i32 %sub1.i.6.op.i
  %arrayidx.7.i = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 1, i32 7
  %72 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.7.i, align 1
  %conv19.7.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i17, i32 %conv19.7.i)
  %cmp.i.7.i = icmp eq i32 %sub.i.i17, %conv19.7.i
  %.neg109.i = mul i32 %conv19.7.i, -268435456
  %sub1.i.7.op.i = add i32 %.neg109.i, 805306368
  %shl.7.i = select i1 %cmp.i.7.i, i32 0, i32 %sub1.i.7.op.i
  %call22.i = tail call i32 @netdev_set_num_tc(ptr noundef %ndev, i8 noundef zeroext %50) #9
  %arrayidx29.i = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 3, i32 0
  %74 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx29.i, align 2
  %arrayidx33.i = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 4, i32 0
  %76 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx33.i, align 2
  %call38.i = tail call i32 @netdev_set_tc_queue(ptr noundef %ndev, i8 noundef zeroext 0, i16 noundef zeroext %75, i16 noundef zeroext %77) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %exitcond.not.i = icmp eq i8 %50, 1
  br i1 %exitcond.not.i, label %for.body26.preheader.i.if.end42.i21.loopexit_crit_edge, label %for.body26.i.1

for.body26.preheader.i.if.end42.i21.loopexit_crit_edge: ; preds = %for.body26.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i21.loopexit

for.body26.i.1:                                   ; preds = %for.body26.preheader.i
  %arrayidx29.i.1 = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %arrayidx29.i.1 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx29.i.1, align 2
  %arrayidx33.i.1 = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %arrayidx33.i.1 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %arrayidx33.i.1, align 2
  %call38.i.1 = tail call i32 @netdev_set_tc_queue(ptr noundef %ndev, i8 noundef zeroext 1, i16 noundef zeroext %79, i16 noundef zeroext %81) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %exitcond.not.i.1 = icmp eq i8 %50, 2
  br i1 %exitcond.not.i.1, label %for.body26.i.1.if.end42.i21.loopexit_crit_edge, label %for.body26.i.2

for.body26.i.1.if.end42.i21.loopexit_crit_edge:   ; preds = %for.body26.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i21.loopexit

for.body26.i.2:                                   ; preds = %for.body26.i.1
  %arrayidx29.i.2 = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 3, i32 2
  %82 = ptrtoint ptr %arrayidx29.i.2 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx29.i.2, align 2
  %arrayidx33.i.2 = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 4, i32 2
  %84 = ptrtoint ptr %arrayidx33.i.2 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx33.i.2, align 2
  %call38.i.2 = tail call i32 @netdev_set_tc_queue(ptr noundef %ndev, i8 noundef zeroext 2, i16 noundef zeroext %83, i16 noundef zeroext %85) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %50)
  %exitcond.not.i.2 = icmp eq i8 %50, 3
  br i1 %exitcond.not.i.2, label %for.body26.i.2.if.end42.i21.loopexit_crit_edge, label %for.body26.i.3

for.body26.i.2.if.end42.i21.loopexit_crit_edge:   ; preds = %for.body26.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i21.loopexit

for.body26.i.3:                                   ; preds = %for.body26.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx29.i.3 = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 3, i32 3
  %86 = ptrtoint ptr %arrayidx29.i.3 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx29.i.3, align 2
  %arrayidx33.i.3 = getelementptr %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 4, i32 3
  %88 = ptrtoint ptr %arrayidx33.i.3 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx33.i.3, align 2
  %call38.i.3 = tail call i32 @netdev_set_tc_queue(ptr noundef %ndev, i8 noundef zeroext 3, i16 noundef zeroext %87, i16 noundef zeroext %89) #9
  br label %if.end42.i21.loopexit

if.end42.i21.loopexit:                            ; preds = %for.body26.i.3, %for.body26.i.2.if.end42.i21.loopexit_crit_edge, %for.body26.i.1.if.end42.i21.loopexit_crit_edge, %for.body26.preheader.i.if.end42.i21.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i17, i32 %conv19.i)
  %cmp.i.i19 = icmp eq i32 %sub.i.i17, %conv19.i
  %retval.0.i.i = select i1 %cmp.i.i19, i32 0, i32 %sub1.i.i20
  %or.1.i = or i32 %shl.1.i, %retval.0.i.i
  %or.2.i = or i32 %or.1.i, %shl.2.i
  %or.3.i = or i32 %or.2.i, %shl.3.i
  %or.4.i = or i32 %or.3.i, %shl.4.i
  %or.5.i = or i32 %or.4.i, %shl.5.i
  %or.6.i = or i32 %or.5.i, %shl.6.i
  %or.7.i = or i32 %or.6.i, %shl.7.i
  br label %if.end42.i21

if.end42.i21:                                     ; preds = %if.end42.i21.loopexit, %if.end14.i.if.end42.i21_crit_edge
  %tx_prio_map.1.i = phi i32 [ 0, %if.end14.i.if.end42.i21_crit_edge ], [ %or.7.i, %if.end42.i21.loopexit ]
  %hw.i = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 2
  %90 = ptrtoint ptr %hw.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %hw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool44.not.i = icmp eq i8 %91, 0
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end42.i21.if.end46.i_crit_edge

if.end42.i21.if.end46.i_crit_edge:                ; preds = %if.end42.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then45.i:                                      ; preds = %if.end42.i21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netdev_reset_tc(ptr noundef %ndev) #9
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then45.i, %if.end42.i21.if.end46.i_crit_edge
  %tx_prio_map.2.i = phi i32 [ %tx_prio_map.1.i, %if.end42.i21.if.end46.i_crit_edge ], [ 857870592, %if.then45.i ]
  %92 = ptrtoint ptr %hw.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %hw.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool49.i = icmp ne i8 %93, 0
  %mqprio_hw.i = getelementptr i8, ptr %ndev, i32 2324
  %frombool.i = zext i1 %tobool49.i to i8
  %94 = ptrtoint ptr %mqprio_hw.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %frombool.i, ptr %mqprio_hw.i, align 4
  %version.i = getelementptr inbounds %struct.cpsw_common, ptr %48, i32 0, i32 8
  %95 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %96)
  %cmp50.i = icmp eq i32 %96, 1638666
  %cond.i22 = select i1 %cmp50.i, i32 16, i32 24
  %slaves.i23 = getelementptr inbounds %struct.cpsw_common, ptr %48, i32 0, i32 13
  %97 = ptrtoint ptr %slaves.i23 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %slaves.i23, align 4
  %99 = load ptr, ptr @cpsw_slave_index, align 4
  %call52.i = tail call i32 %99(ptr noundef %48, ptr noundef %add.ptr.i.i5) #9
  %arrayidx53.i = getelementptr %struct.cpsw_slave, ptr %98, i32 %call52.i
  %100 = tail call i32 @llvm.bswap.i32(i32 %tx_prio_map.2.i) #9
  %101 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx53.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %102, i32 %cond.i22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i, i32 %100) #9, !srcloc !121
  %103 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %48, align 8
  %call.i99.i = tail call i32 @__pm_runtime_idle(ptr noundef %104, i32 noundef 4) #9
  br label %return

return:                                           ; preds = %if.end46.i, %do.end11.i.i.i.i.i15, %if.then12.i.return_crit_edge, %if.end.i8.return_crit_edge, %sw.bb1.return_crit_edge, %if.end59.i, %do.end11.i.i.i.i.i, %if.then40.i.return_crit_edge, %do.end33.i, %land.lhs.true.i.return_crit_edge, %do.end.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call46.i, %if.end59.i ], [ -1, %do.end33.i ], [ -22, %do.end.i ], [ 0, %land.lhs.true.i.return_crit_edge ], [ %call.i.i, %if.then40.i.return_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i ], [ 0, %if.end46.i ], [ -22, %sw.bb1.return_crit_edge ], [ -22, %if.end.i8.return_crit_edge ], [ %call.i.i9, %if.then12.i.return_crit_edge ], [ %call.i.i9, %do.end11.i.i.i.i.i15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_cbs_resume(ptr nocapture noundef readnone %slave, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %priv, i32 noundef 3, i32 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.1 = icmp eq i32 %3, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call.1 = tail call fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %priv, i32 noundef 2, i32 noundef %3)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.2 = icmp eq i32 %5, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %call.2 = tail call fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %priv, i32 noundef 1, i32 noundef %5)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_set_fifo_rlimit(ptr noundef %priv, i32 noundef %fifo, i32 noundef %bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %shp_cfg_speed.i = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %shp_cfg_speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shp_cfg_speed.i, align 8
  %mul.i = mul i32 %3, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %bw)
  %cmp.i = icmp slt i32 %mul.i, %bw
  br i1 %cmp.i, label %entry.do.end58.i_crit_edge, label %if.end.i

entry.do.end58.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58.i

if.end.i:                                         ; preds = %entry
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slaves.i, align 4
  %6 = load ptr, ptr @cpsw_slave_index, align 4
  %call.i = tail call i32 %6(ptr noundef %1, ptr noundef %priv) #9
  %arrayidx.i = getelementptr %struct.cpsw_slave, ptr %5, i32 %call.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 40
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !134
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bw)
  %tobool.not.i = icmp eq i32 %bw, 0
  %add.i = add i32 %bw, -1
  %dev.i = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  br i1 %tobool.not.i, label %if.then4.i, label %if.end10.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fifo)
  %cmp5.not.i = icmp sgt i32 %fifo, 3
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.then4.1.i

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %arrayidx6.i = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not.i = icmp eq i32 %12, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.lor.lhs.false.1.i_crit_edge, label %do.end.i

lor.lhs.false.i.lor.lhs.false.1.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.1.i

do.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.42, i32 noundef 3) #12
  br label %lor.lhs.false.1.i

if.end10.i:                                       ; preds = %if.end.i
  %arrayidx12.i = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not.i = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fifo)
  %cmp14.i = icmp slt i32 %fifo, 3
  %or.cond.i = and i1 %cmp14.i, %tobool13.not.i
  br i1 %or.cond.i, label %if.end10.i.do.end18.i_crit_edge, label %if.end20.i

if.end10.i.do.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.end10.2.i.do.end18.i_crit_edge, %if.end34.i.do.end18.i_crit_edge, %if.end10.i.do.end18.i_crit_edge
  %i.0116.lcssa.i = phi i32 [ 3, %if.end10.i.do.end18.i_crit_edge ], [ 2, %if.end34.i.do.end18.i_crit_edge ], [ 1, %if.end10.2.i.do.end18.i_crit_edge ]
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.45, i32 noundef %i.0116.lcssa.i) #12
  br label %cleanup

if.end20.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fifo)
  %cmp22.i = icmp eq i32 %fifo, 3
  br i1 %cmp22.i, label %if.end20.1.thread.i, label %if.end34.i

if.end20.1.thread.i:                              ; preds = %if.end20.i
  %and.i = and i32 %10, -8323073
  %19 = ptrtoint ptr %shp_cfg_speed.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shp_cfg_speed.i, align 8
  %mul25.i = mul i32 %20, 10
  %sub26.i = add i32 %mul25.i, %add.i
  %div.i = sdiv i32 %sub26.i, %mul25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %tobool29.not.i = icmp eq i32 %div.i, 0
  %spec.store.select.i = select i1 %tobool29.not.i, i32 1, i32 %div.i
  %shl32.i = shl i32 %spec.store.select.i, 16
  %or.i = or i32 %shl32.i, %and.i
  %arrayidx12.1129.i = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %arrayidx12.1129.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx12.1129.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not.1130.i = icmp eq i32 %22, 0
  br i1 %tobool13.not.1130.i, label %if.end20.1.thread.i.if.end20.2.thread.i_crit_edge, label %if.end20.1.thread.i.if.then38.1.i_crit_edge

if.end20.1.thread.i.if.then38.1.i_crit_edge:      ; preds = %if.end20.1.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.1.i

if.end20.1.thread.i.if.end20.2.thread.i_crit_edge: ; preds = %if.end20.1.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.2.thread.i

if.end34.i:                                       ; preds = %if.end20.i
  %shr.i = lshr i32 %10, 16
  %and39.i = and i32 %shr.i, 127
  %pct.1.i = select i1 %tobool13.not.i, i32 0, i32 %and39.i
  %arrayidx12.1.i = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx12.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool13.not.1.i = icmp eq i32 %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fifo)
  %cmp14.1.i = icmp slt i32 %fifo, 2
  %or.cond.1.i = and i1 %cmp14.1.i, %tobool13.not.1.i
  br i1 %or.cond.1.i, label %if.end34.i.do.end18.i_crit_edge, label %if.end20.1.i

if.end34.i.do.end18.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18.i

if.end20.1.i:                                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fifo)
  %cmp22.1.i = icmp eq i32 %fifo, 2
  br i1 %cmp22.1.i, label %if.then23.1.i, label %if.end34.1.i

if.end34.1.i:                                     ; preds = %if.end20.1.i
  br i1 %tobool13.not.1.i, label %if.end34.1.i.if.end10.2.i_crit_edge, label %if.end34.1.i.if.then38.1.i_crit_edge

if.end34.1.i.if.then38.1.i_crit_edge:             ; preds = %if.end34.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.1.i

if.end34.1.i.if.end10.2.i_crit_edge:              ; preds = %if.end34.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.2.i

if.then38.1.i:                                    ; preds = %if.end34.1.i.if.then38.1.i_crit_edge, %if.end20.1.thread.i.if.then38.1.i_crit_edge
  %val.1135143148.i = phi i32 [ %spec.store.select.i, %if.end20.1.thread.i.if.then38.1.i_crit_edge ], [ 0, %if.end34.1.i.if.then38.1.i_crit_edge ]
  %pct.1134144147.i = phi i32 [ %spec.store.select.i, %if.end20.1.thread.i.if.then38.1.i_crit_edge ], [ %pct.1.i, %if.end34.1.i.if.then38.1.i_crit_edge ]
  %send_pct.1133145146.i = phi i32 [ %or.i, %if.end20.1.thread.i.if.then38.1.i_crit_edge ], [ %10, %if.end34.1.i.if.then38.1.i_crit_edge ]
  %shr.1.i = lshr i32 %send_pct.1133145146.i, 8
  %and39.1.i = and i32 %shr.1.i, 127
  %add40.1.i = add i32 %and39.1.i, %pct.1134144147.i
  br label %if.end10.2.i

if.then23.1.i:                                    ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.1.i = and i32 %10, -32513
  %25 = ptrtoint ptr %shp_cfg_speed.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %shp_cfg_speed.i, align 8
  %mul25.1.i = mul i32 %26, 10
  %sub26.1.i = add i32 %mul25.1.i, %add.i
  %div.1.i = sdiv i32 %sub26.1.i, %mul25.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.1.i)
  %tobool29.not.1.i = icmp eq i32 %div.1.i, 0
  %spec.store.select.1.i = select i1 %tobool29.not.1.i, i32 1, i32 %div.1.i
  %shl32.1.i = shl i32 %spec.store.select.1.i, 8
  %or.1.i = or i32 %shl32.1.i, %and.1.i
  %add33.1.i = add i32 %spec.store.select.1.i, %pct.1.i
  br label %if.end20.2.thread.i

if.then4.1.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fifo)
  %cmp5.not.1.i = icmp eq i32 %fifo, 3
  br i1 %cmp5.not.1.i, label %if.then4.1.i.lor.lhs.false.1.i_crit_edge, label %if.then4.2.i

if.then4.1.i.lor.lhs.false.1.i_crit_edge:         ; preds = %if.then4.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.1.i

lor.lhs.false.1.i:                                ; preds = %if.then4.1.i.lor.lhs.false.1.i_crit_edge, %do.end.i, %lor.lhs.false.i.lor.lhs.false.1.i_crit_edge
  %arrayidx6.1.i = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx6.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool7.not.1.i = icmp eq i32 %28, 0
  br i1 %tobool7.not.1.i, label %lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge, label %do.end.1.i

lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge:    ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.2.i

do.end.1.i:                                       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.42, i32 noundef 2) #12
  br label %lor.lhs.false.2.i

if.end20.2.thread.i:                              ; preds = %if.then23.1.i, %if.end20.1.thread.i.if.end20.2.thread.i_crit_edge
  %send_pct.1.1.ph.ph.i = phi i32 [ %or.1.i, %if.then23.1.i ], [ %or.i, %if.end20.1.thread.i.if.end20.2.thread.i_crit_edge ]
  %pct.1.1.ph.ph.i = phi i32 [ %add33.1.i, %if.then23.1.i ], [ %spec.store.select.i, %if.end20.1.thread.i.if.end20.2.thread.i_crit_edge ]
  %val.1.1.ph.ph.i = phi i32 [ %spec.store.select.1.i, %if.then23.1.i ], [ %spec.store.select.i, %if.end20.1.thread.i.if.end20.2.thread.i_crit_edge ]
  %arrayidx12.2159.i = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx12.2159.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx12.2159.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool13.not.2160.i = icmp eq i32 %32, 0
  br i1 %tobool13.not.2160.i, label %if.end20.2.thread.i.for.inc.2.i_crit_edge, label %if.end20.2.thread.i.if.then38.2.i_crit_edge

if.end20.2.thread.i.if.then38.2.i_crit_edge:      ; preds = %if.end20.2.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.2.i

if.end20.2.thread.i.for.inc.2.i_crit_edge:        ; preds = %if.end20.2.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.end10.2.i:                                     ; preds = %if.then38.1.i, %if.end34.1.i.if.end10.2.i_crit_edge
  %send_pct.1.1.ph.i = phi i32 [ %10, %if.end34.1.i.if.end10.2.i_crit_edge ], [ %send_pct.1133145146.i, %if.then38.1.i ]
  %pct.1.1.ph.i = phi i32 [ %pct.1.i, %if.end34.1.i.if.end10.2.i_crit_edge ], [ %add40.1.i, %if.then38.1.i ]
  %val.1.1.ph.i = phi i32 [ 0, %if.end34.1.i.if.end10.2.i_crit_edge ], [ %val.1135143148.i, %if.then38.1.i ]
  %arrayidx12.2.i = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx12.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool13.not.2.i = icmp eq i32 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fifo)
  %cmp14.2.i = icmp slt i32 %fifo, 1
  %or.cond.2.i = and i1 %cmp14.2.i, %tobool13.not.2.i
  br i1 %or.cond.2.i, label %if.end10.2.i.do.end18.i_crit_edge, label %if.end20.2.i

if.end10.2.i.do.end18.i_crit_edge:                ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18.i

if.end20.2.i:                                     ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fifo)
  %cmp22.2.i = icmp eq i32 %fifo, 1
  br i1 %cmp22.2.i, label %if.then23.2.i, label %if.end34.2.i

if.end34.2.i:                                     ; preds = %if.end20.2.i
  br i1 %tobool13.not.2.i, label %if.end34.2.i.for.inc.2.i_crit_edge, label %if.end34.2.i.if.then38.2.i_crit_edge

if.end34.2.i.if.then38.2.i_crit_edge:             ; preds = %if.end34.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.2.i

if.end34.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end34.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then38.2.i:                                    ; preds = %if.end34.2.i.if.then38.2.i_crit_edge, %if.end20.2.thread.i.if.then38.2.i_crit_edge
  %val.1.1.ph165173178.i = phi i32 [ %val.1.1.ph.ph.i, %if.end20.2.thread.i.if.then38.2.i_crit_edge ], [ %val.1.1.ph.i, %if.end34.2.i.if.then38.2.i_crit_edge ]
  %pct.1.1.ph164174177.i = phi i32 [ %pct.1.1.ph.ph.i, %if.end20.2.thread.i.if.then38.2.i_crit_edge ], [ %pct.1.1.ph.i, %if.end34.2.i.if.then38.2.i_crit_edge ]
  %send_pct.1.1.ph163175176.i = phi i32 [ %send_pct.1.1.ph.ph.i, %if.end20.2.thread.i.if.then38.2.i_crit_edge ], [ %send_pct.1.1.ph.i, %if.end34.2.i.if.then38.2.i_crit_edge ]
  %and39.2.i = and i32 %send_pct.1.1.ph163175176.i, 127
  %add40.2.i = add i32 %and39.2.i, %pct.1.1.ph164174177.i
  br label %for.inc.2.i

if.then23.2.i:                                    ; preds = %if.end20.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.2.i = and i32 %send_pct.1.1.ph.i, -128
  %35 = ptrtoint ptr %shp_cfg_speed.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %shp_cfg_speed.i, align 8
  %mul25.2.i = mul i32 %36, 10
  %sub26.2.i = add i32 %mul25.2.i, %add.i
  %div.2.i = sdiv i32 %sub26.2.i, %mul25.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.2.i)
  %tobool29.not.2.i = icmp eq i32 %div.2.i, 0
  %spec.store.select.2.i = select i1 %tobool29.not.2.i, i32 1, i32 %div.2.i
  %or.2.i = or i32 %spec.store.select.2.i, %and.2.i
  %add33.2.i = add i32 %spec.store.select.2.i, %pct.1.1.ph.i
  br label %for.inc.2.i

if.then4.2.i:                                     ; preds = %if.then4.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fifo)
  %cmp5.not.2.i = icmp sgt i32 %fifo, 1
  br i1 %cmp5.not.2.i, label %if.then4.2.i.lor.lhs.false.2.i_crit_edge, label %if.then4.2.i.if.end_crit_edge

if.then4.2.i.if.end_crit_edge:                    ; preds = %if.then4.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then4.2.i.lor.lhs.false.2.i_crit_edge:         ; preds = %if.then4.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.2.i

lor.lhs.false.2.i:                                ; preds = %if.then4.2.i.lor.lhs.false.2.i_crit_edge, %do.end.1.i, %lor.lhs.false.1.i.lor.lhs.false.2.i_crit_edge
  %arrayidx6.2.i = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx6.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool7.not.2.i = icmp eq i32 %38, 0
  br i1 %tobool7.not.2.i, label %lor.lhs.false.2.i.if.end_crit_edge, label %do.end.2.i

lor.lhs.false.2.i.if.end_crit_edge:               ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end.2.i:                                       ; preds = %lor.lhs.false.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.42, i32 noundef 1) #12
  br label %if.end

for.inc.2.i:                                      ; preds = %if.then23.2.i, %if.then38.2.i, %if.end34.2.i.for.inc.2.i_crit_edge, %if.end20.2.thread.i.for.inc.2.i_crit_edge
  %send_pct.1.2.i = phi i32 [ %or.2.i, %if.then23.2.i ], [ %send_pct.1.1.ph163175176.i, %if.then38.2.i ], [ %send_pct.1.1.ph.i, %if.end34.2.i.for.inc.2.i_crit_edge ], [ %send_pct.1.1.ph.ph.i, %if.end20.2.thread.i.for.inc.2.i_crit_edge ]
  %pct.1.2.i = phi i32 [ %add33.2.i, %if.then23.2.i ], [ %add40.2.i, %if.then38.2.i ], [ %pct.1.1.ph.i, %if.end34.2.i.for.inc.2.i_crit_edge ], [ %pct.1.1.ph.ph.i, %if.end20.2.thread.i.for.inc.2.i_crit_edge ]
  %val.1.2.i = phi i32 [ %spec.store.select.2.i, %if.then23.2.i ], [ %val.1.1.ph165173178.i, %if.then38.2.i ], [ %val.1.1.ph.i, %if.end34.2.i.for.inc.2.i_crit_edge ], [ %val.1.1.ph.ph.i, %if.end20.2.thread.i.for.inc.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %pct.1.2.i)
  %cmp42.i = icmp sgt i32 %pct.1.2.i, 99
  br i1 %cmp42.i, label %for.inc.2.i.do.end58.i_crit_edge, label %for.inc.2.i.if.end_crit_edge

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.2.i.do.end58.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58.i

do.end58.i:                                       ; preds = %for.inc.2.i.do.end58.i_crit_edge, %entry.do.end58.i_crit_edge
  %dev59.i = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  %41 = ptrtoint ptr %dev59.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev59.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.51) #12
  br label %cleanup

if.end:                                           ; preds = %for.inc.2.i.if.end_crit_edge, %do.end.2.i, %lor.lhs.false.2.i.if.end_crit_edge, %if.then4.2.i.if.end_crit_edge
  %val.1.2191.i = phi i32 [ %val.1.2.i, %for.inc.2.i.if.end_crit_edge ], [ 0, %lor.lhs.false.2.i.if.end_crit_edge ], [ 0, %do.end.2.i ], [ 0, %if.then4.2.i.if.end_crit_edge ]
  %send_pct.1.2190.i = phi i32 [ %send_pct.1.2.i, %for.inc.2.i.if.end_crit_edge ], [ %10, %lor.lhs.false.2.i.if.end_crit_edge ], [ %10, %do.end.2.i ], [ %10, %if.then4.2.i.if.end_crit_edge ]
  %43 = tail call i32 @llvm.bswap.i32(i32 %send_pct.1.2190.i) #9
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %45, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %43) #9, !srcloc !121
  %arrayidx46.i = getelementptr %struct.cpsw_priv, ptr %priv, i32 0, i32 7, i32 %fifo
  %46 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bw, ptr %arrayidx46.i, align 4
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %49 = ptrtoint ptr %shp_cfg_speed.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %shp_cfg_speed.i, align 8
  %mul52.i = mul i32 %50, %val.1.2191.i
  %add54.i = add i32 %mul52.i, 50
  %div55.i = udiv i32 %add54.i, 100
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.48, i32 noundef %fifo, i32 noundef %div55.i) #12
  %51 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %slaves.i, align 4
  %53 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %53(ptr noundef %1, ptr noundef %priv) #9
  %arrayidx = getelementptr %struct.cpsw_slave, ptr %52, i32 %call2
  %version = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %55)
  %cmp = icmp eq i32 %55, 1638666
  %cond = select i1 %cmp, i32 8, i32 16
  br i1 %tobool.not.i, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cpsw1, align 4
  %regs.i = getelementptr inbounds %struct.cpsw_common, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 8
  %ptype.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %59, i32 0, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptype.i) #9, !srcloc !134
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  %slaves.i52 = getelementptr inbounds %struct.cpsw_common, ptr %57, i32 0, i32 13
  %62 = ptrtoint ptr %slaves.i52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %slaves.i52, align 4
  %64 = load ptr, ptr @cpsw_slave_index, align 4
  %call2.i = tail call i32 %64(ptr noundef %57, ptr noundef %priv) #9
  %slave_num.i = getelementptr %struct.cpsw_slave, ptr %63, i32 %call2.i, i32 1
  %65 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slave_num.i, align 4
  %mul.i53 = mul i32 %66, 3
  %add.i54 = add i32 %mul.i53, 16
  %dec.i = add i32 %fifo, -1
  %shl.i = shl nuw i32 1, %dec.i
  %shl3.i = shl i32 %shl.i, %add.i54
  %neg.i = xor i32 %shl3.i, -1
  %and.i56 = and i32 %61, %neg.i
  %67 = tail call i32 @llvm.bswap.i32(i32 %and.i56) #9
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 8
  %ptype5.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %69, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptype5.i, i32 %67) #9, !srcloc !121
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %71, i32 %cond
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !134
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  %74 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cpsw1, align 4
  %regs.i58 = getelementptr inbounds %struct.cpsw_common, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %regs.i58 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i58, align 8
  %ptype.i59 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %77, i32 0, i32 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptype.i59) #9, !srcloc !134
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  %slaves.i60 = getelementptr inbounds %struct.cpsw_common, ptr %75, i32 0, i32 13
  %80 = ptrtoint ptr %slaves.i60 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %slaves.i60, align 4
  %82 = load ptr, ptr @cpsw_slave_index, align 4
  %call2.i61 = tail call i32 %82(ptr noundef %75, ptr noundef %priv) #9
  %slave_num.i62 = getelementptr %struct.cpsw_slave, ptr %81, i32 %call2.i61, i32 1
  %83 = ptrtoint ptr %slave_num.i62 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %slave_num.i62, align 4
  %mul.i63 = mul i32 %84, 3
  %add.i64 = add i32 %mul.i63, 16
  %shl.i65 = shl i32 7, %add.i64
  %and.i66 = and i32 %shl.i65, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool.not.i67 = icmp eq i32 %and.i66, 0
  br i1 %tobool.not.i67, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end5
  %and9 = and i32 %73, -15925249
  br i1 %tobool.not.i, label %if.end13.thread, label %if.end13.thread89

if.end13.thread89:                                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %and9, 131072
  br label %if.then15

if.end13.thread:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %shp_cfg_speed.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %shp_cfg_speed.i, align 8
  br label %if.else17

if.end13:                                         ; preds = %if.end5
  br i1 %tobool.not.i, label %if.end13.if.else17_crit_edge, label %if.end13.if.then15_crit_edge

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

if.end13.if.else17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else17

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.end13.thread89
  %val.091 = phi i32 [ %or, %if.end13.thread89 ], [ %73, %if.end13.if.then15_crit_edge ]
  %add = add i32 %fifo, 20
  %shl = shl nuw i32 1, %add
  %or16 = or i32 %val.091, %shl
  br label %if.end21

if.else17:                                        ; preds = %if.end13.if.else17_crit_edge, %if.end13.thread
  %val.088 = phi i32 [ %and9, %if.end13.thread ], [ %73, %if.end13.if.else17_crit_edge ]
  %add18 = add i32 %fifo, 20
  %shl19 = shl nuw i32 1, %add18
  %neg = xor i32 %shl19, -1
  %and20 = and i32 %val.088, %neg
  br label %if.end21

if.end21:                                         ; preds = %if.else17, %if.then15
  %val.1 = phi i32 [ %or16, %if.then15 ], [ %and20, %if.else17 ]
  %86 = tail call i32 @llvm.bswap.i32(i32 %val.1) #9
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i68 = getelementptr i8, ptr %88, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 %86) #9, !srcloc !121
  %89 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cpsw1, align 4
  %regs.i70 = getelementptr inbounds %struct.cpsw_common, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %regs.i70 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i70, align 8
  %ptype.i71 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %92, i32 0, i32 4
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptype.i71) #9, !srcloc !134
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #9
  %slaves.i72 = getelementptr inbounds %struct.cpsw_common, ptr %90, i32 0, i32 13
  %95 = ptrtoint ptr %slaves.i72 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %slaves.i72, align 4
  %97 = load ptr, ptr @cpsw_slave_index, align 4
  %call2.i73 = tail call i32 %97(ptr noundef %90, ptr noundef %priv) #9
  %slave_num.i74 = getelementptr %struct.cpsw_slave, ptr %96, i32 %call2.i73, i32 1
  %98 = ptrtoint ptr %slave_num.i74 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %slave_num.i74, align 4
  %mul.i75 = mul i32 %99, 3
  %add.i76 = add i32 %mul.i75, 16
  %dec.i77 = add i32 %fifo, -1
  %shl.i78 = shl nuw i32 1, %dec.i77
  %shl3.i79 = shl i32 %shl.i78, %add.i76
  %or.i81 = or i32 %shl3.i79, %94
  %neg.i82 = xor i32 %shl3.i79, -1
  %and.i83 = and i32 %94, %neg.i82
  %cond.i = select i1 %tobool.not.i, i32 %and.i83, i32 %or.i81
  %100 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #9
  %101 = ptrtoint ptr %regs.i70 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i70, align 8
  %ptype5.i84 = getelementptr inbounds %struct.cpsw_ss_regs, ptr %102, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptype5.i84, i32 %100) #9, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end58.i, %do.end18.i
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %do.end58.i ], [ -22, %do.end18.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_mqprio_resume(ptr nocapture noundef readonly %slave, ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mqprio_hw = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %mqprio_hw to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mqprio_hw, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw1, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 128
  %arrayidx.i = getelementptr %struct.net_device, ptr %5, i32 0, i32 142, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %sub = sub nsw i32 3, %conv.i
  %arrayidx.i.1 = getelementptr %struct.net_device, ptr %5, i32 0, i32 142, i32 1
  %8 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %9 to i32
  %.neg = mul nsw i32 %conv.i.1, -16
  %shl.1 = add nsw i32 %.neg, 48
  %or.1 = or i32 %shl.1, %sub
  %arrayidx.i.2 = getelementptr %struct.net_device, ptr %5, i32 0, i32 142, i32 2
  %10 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %11 to i32
  %.neg16 = mul nsw i32 %conv.i.2, -256
  %shl.2 = add nsw i32 %.neg16, 768
  %or.2 = or i32 %shl.2, %or.1
  %arrayidx.i.3 = getelementptr %struct.net_device, ptr %5, i32 0, i32 142, i32 3
  %12 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %13 to i32
  %.neg17 = mul nsw i32 %conv.i.3, -4096
  %shl.3 = add nsw i32 %.neg17, 12288
  %or.3 = or i32 %shl.3, %or.2
  %arrayidx.i.4 = getelementptr %struct.net_device, ptr %5, i32 0, i32 142, i32 4
  %14 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.4, align 1
  %conv.i.4 = zext i8 %15 to i32
  %.neg18 = mul nsw i32 %conv.i.4, -65536
  %shl.4 = add nsw i32 %.neg18, 196608
  %or.4 = or i32 %shl.4, %or.3
  %arrayidx.i.5 = getelementptr %struct.net_device, ptr %5, i32 0, i32 142, i32 5
  %16 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.5, align 1
  %conv.i.5 = zext i8 %17 to i32
  %.neg19 = mul nsw i32 %conv.i.5, -1048576
  %shl.5 = add nsw i32 %.neg19, 3145728
  %or.5 = or i32 %shl.5, %or.4
  %arrayidx.i.6 = getelementptr %struct.net_device, ptr %5, i32 0, i32 142, i32 6
  %18 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.6, align 1
  %conv.i.6 = zext i8 %19 to i32
  %.neg20 = mul i32 %conv.i.6, -16777216
  %shl.6 = add i32 %.neg20, 50331648
  %or.6 = or i32 %shl.6, %or.5
  %arrayidx.i.7 = getelementptr %struct.net_device, ptr %5, i32 0, i32 142, i32 7
  %20 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.7, align 1
  %conv.i.7 = zext i8 %21 to i32
  %.neg21 = mul i32 %conv.i.7, -268435456
  %shl.7 = add i32 %.neg21, 805306368
  %or.7 = or i32 %shl.7, %or.6
  %version = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %23)
  %cmp2 = icmp eq i32 %23, 1638666
  %cond = select i1 %cmp2, i32 16, i32 24
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.7) #9
  %25 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #9, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_fill_rx_channels(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ch_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp102 = icmp sgt i32 %3, 0
  br i1 %cmp102, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rx_packet_max = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 11
  %msg_enable43 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 2
  %dev53 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc57.for.body_crit_edge, %for.body.lr.ph
  %ch.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc58, %for.inc57.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 29, i32 %ch.0103
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 16, i32 %ch.0103
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %call = tail call i32 @cpdma_chan_get_rx_buf_num(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5100 = icmp sgt i32 %call, 0
  br i1 %cmp5100, label %for.body.for.body6_crit_edge, label %for.body.do.body42_crit_edge

for.body.do.body42_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body42

for.body.for.body6_crit_edge:                     ; preds = %for.body
  br label %for.body6

for.cond4:                                        ; preds = %if.end15
  %inc = add nuw nsw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.cond4.do.body42_crit_edge, label %for.cond4.for.body6_crit_edge

for.cond4.for.body6_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.cond4.do.body42_crit_edge:                    ; preds = %for.cond4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body42

for.body6:                                        ; preds = %for.cond4.for.body6_crit_edge, %for.body.for.body6_crit_edge
  %i.0101 = phi i32 [ %inc, %for.cond4.for.body6_crit_edge ], [ 0, %for.body.for.body6_crit_edge ]
  %call.i = tail call ptr @page_pool_alloc_pages(ptr noundef %5, i32 noundef 10784) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.body, label %if.end15

do.body:                                          ; preds = %for.body6
  %8 = ptrtoint ptr %msg_enable43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable43, align 8
  %and = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %land.lhs.true

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %do.body
  %call9 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.end15:                                         ; preds = %for.body6
  %call16 = tail call ptr @page_address(ptr noundef nonnull %call.i) #9
  %add.ptr = getelementptr i8, ptr %call16, i32 24
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 128
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %add.ptr, align 4
  %ch18 = getelementptr i8, ptr %call16, i32 28
  %15 = ptrtoint ptr %ch18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ch.0103, ptr %ch18, align 4
  %dma_addr.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_addr.i, align 4
  %add = add i32 %17, 258
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2, align 4
  %20 = ptrtoint ptr %rx_packet_max to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_packet_max, align 4
  %call23 = tail call i32 @cpdma_chan_idle_submit_mapped(ptr noundef %19, ptr noundef nonnull %call.i, i32 noundef %add, i32 noundef %21, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.body26, label %for.cond4

do.body26:                                        ; preds = %if.end15
  %22 = ptrtoint ptr %msg_enable43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable43, align 8
  %and28 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.body26.do.end40_crit_edge, label %land.lhs.true30

do.body26.do.end40_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

land.lhs.true30:                                  ; preds = %do.body26
  %call31 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %land.lhs.true30.do.end40_crit_edge, label %do.end36

land.lhs.true30.do.end40_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.end36:                                         ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.24, i32 noundef %ch.0103, i32 noundef %call23) #12
  br label %do.end40

do.end40:                                         ; preds = %do.end36, %land.lhs.true30.do.end40_crit_edge, %do.body26.do.end40_crit_edge
  tail call void @page_pool_put_page(ptr noundef %5, ptr noundef nonnull %call.i, i32 noundef -1, i1 noundef zeroext true) #9
  br label %cleanup

do.body42:                                        ; preds = %for.cond4.do.body42_crit_edge, %for.body.do.body42_crit_edge
  %26 = ptrtoint ptr %msg_enable43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable43, align 8
  %and44 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body42.for.inc57_crit_edge, label %land.lhs.true46

do.body42.for.inc57_crit_edge:                    ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

land.lhs.true46:                                  ; preds = %do.body42
  %call47 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.for.inc57_crit_edge, label %do.end52

land.lhs.true46.for.inc57_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc57

do.end52:                                         ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.27, i32 noundef %ch.0103, i32 noundef %call) #12
  br label %for.inc57

for.inc57:                                        ; preds = %do.end52, %land.lhs.true46.for.inc57_crit_edge, %do.body42.for.inc57_crit_edge
  %inc58 = add nuw nsw i32 %ch.0103, 1
  %30 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_ch_num, align 8
  %cmp = icmp slt i32 %inc58, %31
  br i1 %cmp, label %for.inc57.for.body_crit_edge, label %for.inc57.cleanup_crit_edge

for.inc57.cleanup_crit_edge:                      ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc57.for.body_crit_edge:                     ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc57.cleanup_crit_edge, %do.end40, %do.end, %land.lhs.true.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end40 ], [ -12, %do.end ], [ -12, %land.lhs.true.cleanup_crit_edge ], [ -12, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_get_rx_buf_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_idle_submit_mapped(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_destroy_xdp_rxqs(ptr nocapture noundef %cpsw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 25
  %0 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ch_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %for.cond1.preheader.lr.ph, label %entry.for.end11_crit_edge

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end11

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 3
  %slaves4 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 13
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %ch.026 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc10, %for.end.for.cond1.preheader_crit_edge ]
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp223.not = icmp eq i32 %3, 0
  br i1 %cmp223.not, label %for.cond1.preheader.for.end_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.024 = phi i32 [ %inc, %for.inc.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %4 = ptrtoint ptr %slaves4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slaves4, align 4
  %ndev5 = getelementptr %struct.cpsw_slave, ptr %5, i32 %i.024, i32 5
  %6 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body3.for.inc_crit_edge, label %if.end

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body3
  %add.ptr.i = getelementptr i8, ptr %7, i32 2304
  %arrayidx.i = getelementptr %struct.cpsw_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %ch.026
  %call.i = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %arrayidx.i) #9
  br i1 %call.i, label %if.end.i, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xdp_rxq_info_unreg(ptr noundef %arrayidx.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.end.for.inc_crit_edge, %for.body3.for.inc_crit_edge
  %inc = add nuw i32 %i.024, 1
  %8 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slaves, align 4
  %cmp2 = icmp ult i32 %inc, %9
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %arrayidx6 = getelementptr %struct.cpsw_common, ptr %cpsw, i32 0, i32 29, i32 %ch.026
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6, align 4
  tail call void @page_pool_destroy(ptr noundef %11) #9
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx6, align 4
  %inc10 = add nuw nsw i32 %ch.026, 1
  %13 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_ch_num, align 8
  %cmp = icmp slt i32 %inc10, %14
  br i1 %cmp, label %for.end.for.cond1.preheader_crit_edge, label %for.end.for.end11_crit_edge

for.end.for.end11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end11

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

for.end11:                                        ; preds = %for.end.for.end11_crit_edge, %entry.for.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_create_xdp_rxqs(ptr nocapture noundef %cpsw) local_unnamed_addr #0 align 64 {
entry:
  %pp_params.i.i = alloca %struct.page_pool_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 25
  %0 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ch_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp53 = icmp sgt i32 %1, 0
  br i1 %cmp53, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %pp_params.i.i, i32 4
  %pool_size.i.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i.i, i32 0, i32 2
  %nid.i.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i.i, i32 0, i32 3
  %dev1.i.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i.i, i32 0, i32 4
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 3
  %slaves4 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc14.for.body_crit_edge, %for.body.lr.ph
  %ch.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc14.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.cpsw_common, ptr %cpsw, i32 0, i32 16, i32 %ch.054
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @cpdma_chan_get_rx_buf_num(ptr noundef %4) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pp_params.i.i) #9
  %5 = call ptr @memset(ptr %2, i32 0, i32 36)
  %6 = ptrtoint ptr %pp_params.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %pp_params.i.i, align 4
  %7 = ptrtoint ptr %pool_size.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call.i, ptr %pool_size.i.i, align 4
  %8 = ptrtoint ptr %nid.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %nid.i.i, align 4
  %9 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpsw, align 8
  %11 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev1.i.i, align 4
  %call.i.i = call ptr @page_pool_create(ptr noundef nonnull %pp_params.i.i) #9
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %cpsw_create_rx_pool.exit, label %cpsw_create_rx_pool.exit.thread

cpsw_create_rx_pool.exit.thread:                  ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pp_params.i.i) #9
  %arrayidx5.i = getelementptr %struct.cpsw_common, ptr %cpsw, i32 0, i32 29, i32 %ch.054
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %arrayidx5.i, align 4
  %13 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp249.not = icmp eq i32 %14, 0
  br i1 %cmp249.not, label %cpsw_create_rx_pool.exit.thread.for.inc14_crit_edge, label %cpsw_create_rx_pool.exit.thread.for.body3_crit_edge

cpsw_create_rx_pool.exit.thread.for.body3_crit_edge: ; preds = %cpsw_create_rx_pool.exit.thread
  br label %for.body3

cpsw_create_rx_pool.exit.thread.for.inc14_crit_edge: ; preds = %cpsw_create_rx_pool.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14

cpsw_create_rx_pool.exit:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpsw, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.53) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pp_params.i.i) #9
  %17 = ptrtoint ptr %call.i.i to i32
  br label %err_cleanup

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %cpsw_create_rx_pool.exit.thread.for.body3_crit_edge
  %i.050 = phi i32 [ %inc, %for.inc.for.body3_crit_edge ], [ 0, %cpsw_create_rx_pool.exit.thread.for.body3_crit_edge ]
  %18 = ptrtoint ptr %slaves4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slaves4, align 4
  %ndev5 = getelementptr %struct.cpsw_slave, ptr %19, i32 %i.050, i32 5
  %20 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev5, align 4
  %tobool6.not = icmp eq ptr %21, null
  br i1 %tobool6.not, label %for.body3.for.inc_crit_edge, label %if.end8

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %for.body3
  %add.ptr.i = getelementptr i8, ptr %21, i32 2304
  %cpsw1.i = getelementptr i8, ptr %21, i32 3468
  %22 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpsw1.i, align 4
  %arrayidx.i32 = getelementptr %struct.cpsw_common, ptr %23, i32 0, i32 29, i32 %ch.054
  %24 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i32, align 4
  %arrayidx2.i = getelementptr %struct.cpsw_priv, ptr %add.ptr.i, i32 0, i32 13, i32 %ch.054
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 128
  %call.i33 = call i32 @xdp_rxq_info_reg(ptr noundef %arrayidx2.i, ptr noundef %27, i32 noundef %ch.054, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.err_cleanup_crit_edge

if.end8.err_cleanup_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cleanup

if.end.i:                                         ; preds = %if.end8
  %call3.i = call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %arrayidx2.i, i32 noundef 2, ptr noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.for.inc_crit_edge, label %if.then5.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @xdp_rxq_info_unreg(ptr noundef %arrayidx2.i) #9
  br label %err_cleanup

for.inc:                                          ; preds = %if.end.i.for.inc_crit_edge, %for.body3.for.inc_crit_edge
  %inc = add nuw i32 %i.050, 1
  %28 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slaves, align 4
  %cmp2 = icmp ult i32 %inc, %29
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc.for.inc14_crit_edge

for.inc.for.inc14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.inc14:                                        ; preds = %for.inc.for.inc14_crit_edge, %cpsw_create_rx_pool.exit.thread.for.inc14_crit_edge
  %inc15 = add nuw nsw i32 %ch.054, 1
  %30 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_ch_num, align 8
  %cmp = icmp slt i32 %inc15, %31
  br i1 %cmp, label %for.inc14.for.body_crit_edge, label %for.inc14.cleanup_crit_edge

for.inc14.cleanup_crit_edge:                      ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc14.for.body_crit_edge:                     ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

err_cleanup:                                      ; preds = %if.then5.i, %if.end8.err_cleanup_crit_edge, %cpsw_create_rx_pool.exit
  %ret.0 = phi i32 [ %call3.i, %if.then5.i ], [ %17, %cpsw_create_rx_pool.exit ], [ %call.i33, %if.end8.err_cleanup_crit_edge ]
  %32 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_ch_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp25.i = icmp sgt i32 %33, 0
  br i1 %cmp25.i, label %err_cleanup.for.cond1.preheader.i_crit_edge, label %err_cleanup.cleanup_crit_edge

err_cleanup.cleanup_crit_edge:                    ; preds = %err_cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_cleanup.for.cond1.preheader.i_crit_edge:      ; preds = %err_cleanup
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i.for.cond1.preheader.i_crit_edge, %err_cleanup.for.cond1.preheader.i_crit_edge
  %ch.026.i = phi i32 [ %inc10.i, %for.end.i.for.cond1.preheader.i_crit_edge ], [ 0, %err_cleanup.for.cond1.preheader.i_crit_edge ]
  %34 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp223.not.i = icmp eq i32 %35, 0
  br i1 %cmp223.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %36 = ptrtoint ptr %slaves4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %slaves4, align 4
  %ndev5.i = getelementptr %struct.cpsw_slave, ptr %37, i32 %i.024.i, i32 5
  %38 = ptrtoint ptr %ndev5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev5.i, align 4
  %tobool.not.i34 = icmp eq ptr %39, null
  br i1 %tobool.not.i34, label %for.body3.i.for.inc.i_crit_edge, label %if.end.i36

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i36:                                       ; preds = %for.body3.i
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 2304
  %arrayidx.i.i = getelementptr %struct.cpsw_priv, ptr %add.ptr.i.i, i32 0, i32 13, i32 %ch.026.i
  %call.i.i35 = call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %arrayidx.i.i) #9
  br i1 %call.i.i35, label %if.end.i.i, label %if.end.i36.for.inc.i_crit_edge

if.end.i36.for.inc.i_crit_edge:                   ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #11
  call void @xdp_rxq_info_unreg(ptr noundef %arrayidx.i.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %if.end.i36.for.inc.i_crit_edge, %for.body3.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.024.i, 1
  %40 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %slaves, align 4
  %cmp2.i = icmp ult i32 %inc.i, %41
  br i1 %cmp2.i, label %for.inc.i.for.body3.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %arrayidx6.i = getelementptr %struct.cpsw_common, ptr %cpsw, i32 0, i32 29, i32 %ch.026.i
  %42 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx6.i, align 4
  call void @page_pool_destroy(ptr noundef %43) #9
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx6.i, align 4
  %inc10.i = add nuw nsw i32 %ch.026.i, 1
  %45 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_ch_num, align 8
  %cmp.i = icmp slt i32 %inc10.i, %46
  br i1 %cmp.i, label %for.end.i.for.cond1.preheader.i_crit_edge, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.i.for.cond1.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i

cleanup:                                          ; preds = %for.end.i.cleanup_crit_edge, %err_cleanup.cleanup_crit_edge, %for.inc14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_cleanup.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %for.end.i.cleanup_crit_edge ], [ 0, %for.inc14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ndo_bpf(ptr noundef %ndev, ptr noundef %bpf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bpf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %prog1.i = getelementptr inbounds %struct.netdev_bpf, ptr %bpf, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prog1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog1.i, align 4
  %xdpi.i = getelementptr i8, ptr %ndev, i32 3456
  %4 = ptrtoint ptr %xdpi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xdpi.i, align 128
  %tobool.not.i = icmp eq ptr %5, null
  %tobool3.not.i = icmp eq ptr %3, null
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool3.not.i, i1 false
  br i1 %or.cond.i, label %sw.bb.cleanup_crit_edge, label %do.body5.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body5.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %xdp_prog.i = getelementptr i8, ptr %ndev, i32 2356
  %6 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %xdp_prog.i, align 4
  tail call void @xdp_attachment_setup(ptr noundef %xdpi.i, ptr noundef %bpf) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body5.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %do.body5.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_xdp_tx_frame(ptr nocapture noundef readonly %priv, ptr noundef %xdpf, ptr noundef readonly %page, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %add.ptr = getelementptr i8, ptr %xdpf, i32 24
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 128
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %add.ptr, align 4
  %ch = getelementptr i8, ptr %xdpf, i32 28
  %5 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ch, align 4
  %txv = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %txv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txv, align 4
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dma_addr.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr.i, align 4
  %headroom = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 2
  %10 = ptrtoint ptr %headroom to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %headroom, align 2
  %conv = zext i16 %11 to i32
  %add = add i32 %9, 24
  %add4 = add i32 %add, %conv
  %12 = ptrtoint ptr %xdpf to i32
  %or.i = or i32 %12, 1
  %13 = inttoptr i32 %or.i to ptr
  %len = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  %conv6 = zext i16 %15 to i32
  %call7 = tail call i32 @cpdma_chan_submit_mapped(ptr noundef %7, ptr noundef nonnull %13, i32 noundef %add4, i32 noundef %conv6, i32 noundef %port) #9
  br label %if.end16

if.else:                                          ; preds = %entry
  %headroom8 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 2
  %16 = ptrtoint ptr %headroom8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %headroom8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %17)
  %cmp = icmp ult i16 %17, 8
  br i1 %cmp, label %if.else.cleanup_crit_edge, label %if.end

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %xdpf to i32
  %or.i40 = or i32 %18, 1
  %19 = inttoptr i32 %or.i40 to ptr
  %20 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xdpf, align 4
  %len13 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %22 = ptrtoint ptr %len13 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len13, align 4
  %conv14 = zext i16 %23 to i32
  %call15 = tail call i32 @cpdma_chan_submit(ptr noundef %7, ptr noundef nonnull %19, ptr noundef %21, i32 noundef %conv14, i32 noundef %port) #9
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  %ret.0 = phi i32 [ %call7, %if.then ], [ %call15, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool17.not = icmp eq i32 %ret.0, 0
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 128
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 7
  %26 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end16.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %ret.0, %if.then18 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit_mapped(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_run_xdp(ptr noundef %priv, i32 noundef %ch, ptr noundef %xdp, ptr noundef %page, i32 noundef %port, ptr nocapture noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 128
  %xdp_prog = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 11
  %4 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %xdp_prog, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__cant_migrate(ptr noundef nonnull @.str.55, i32 noundef 613) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@cpsw_run_xdp, %if.then.i.i)) #9
          to label %if.else.i.i [label %if.then.i.i], !srcloc !145

if.then.i.i:                                      ; preds = %if.end
  %call3.i.i = tail call i64 @sched_clock() #9
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi.i.i, ptr noundef %7) #9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats9.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %17, i32 0, i32 3
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !146
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %19 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %20 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !147
  %24 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %29, ptrtoint (ptr @lockdep_recursion to i32)
  %30 = inttoptr i32 %add.i.i.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !148
  %33 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i7.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool20.not.i.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %41 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i9.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %44, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !149
  %45 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %48, ptrtoint (ptr @hardirqs_enabled to i32)
  %49 = inttoptr i32 %add47.i.i.i.i to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !150
  %52 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i12.i.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %55, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool54.not.i.i.i.i = icmp eq i32 %51, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !122

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %56 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !151
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %17, i32 0, i32 3, i32 0, i32 1
  %58 = tail call ptr @llvm.returnaddress(i32 0) #9
  %59 = ptrtoint ptr %58 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %59) #9
  %60 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %17, align 8
  %inc.i.i.i = add i64 %61, 1
  store i64 %inc.i.i.i, ptr %17, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %17, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #9
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %62 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %63
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %59) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !152
  %64 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %65, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !153
  %and.i.i.i3.i.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !154

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #9, !srcloc !155
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %5, i32 0, i32 9
  %67 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi15.i.i, ptr noundef %68) #9
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@cpsw_run_xdp, %l_yes.i.i)) #9
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !145

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %69 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rxq.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 14
  %73 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %74, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.bpf_prog_run_xdp.exit.thread_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.bpf_prog_run_xdp.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_prog_run_xdp.exit.thread

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 15
  %75 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %76, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit.thread_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit.thread_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_prog_run_xdp.exit.thread

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i = tail call i32 @xdp_master_redirect(ptr noundef %xdp) #9
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit.thread:                     ; preds = %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit.thread_crit_edge, %land.lhs.true.i.bpf_prog_run_xdp.exit.thread_crit_edge
  %data_end67 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %77 = ptrtoint ptr %data_end67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data_end67, align 4
  %79 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast68 = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast69 = ptrtoint ptr %80 to i32
  %sub.ptr.sub70 = sub i32 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %81 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.ptr.sub70, ptr %len, align 4
  br label %sw.bb3

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %82 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data_end, align 4
  %84 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %85 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %86 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %sub.ptr.sub, ptr %len, align 4
  %87 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %bpf_prog_run_xdp.exit.cleanup_crit_edge
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb3_crit_edge
    i32 4, label %sw.bb15
    i32 0, label %bpf_prog_run_xdp.exit.sw.bb20_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb21_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb21_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb21

bpf_prog_run_xdp.exit.sw.bb20_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

bpf_prog_run_xdp.exit.sw.bb3_crit_edge:           ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

bpf_prog_run_xdp.exit.cleanup_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %bpf_prog_run_xdp.exit.sw.bb3_crit_edge, %bpf_prog_run_xdp.exit.thread
  %data_end71 = phi ptr [ %data_end67, %bpf_prog_run_xdp.exit.thread ], [ %data_end, %bpf_prog_run_xdp.exit.sw.bb3_crit_edge ]
  %rxq.i59 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %88 = ptrtoint ptr %rxq.i59 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rxq.i59, align 4
  %mem.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %cmp.i60 = icmp eq i32 %91, 3
  br i1 %cmp.i60, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %xdp) #9
  br label %xdp_convert_buff_to_frame.exit

if.end.i:                                         ; preds = %sw.bb3
  %data_hard_start.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %92 = ptrtoint ptr %data_hard_start.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data_hard_start.i, align 4
  %94 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %data_meta.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %96 = ptrtoint ptr %data_meta.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data_meta.i.i, align 4
  %sub.ptr.rhs.cast3.i.i = ptrtoint ptr %97 to i32
  %sub.ptr.sub4.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast3.i.i
  %98 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i.i, i32 0) #9
  %sub.i.i61 = sub i32 %sub.ptr.sub.i.i, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i61)
  %cmp5.i.i = icmp ult i32 %sub.i.i61, 24
  br i1 %cmp5.i.i, label %if.end.i.drop_crit_edge, label %if.end.i.i, !prof !154

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end.i.i:                                       ; preds = %if.end.i
  %99 = ptrtoint ptr %data_end71 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data_end71, align 4
  %frame_sz.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %101 = ptrtoint ptr %frame_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %frame_sz.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %93, i32 %102
  %add.ptr8.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -256
  %cmp9.i.i = icmp ugt ptr %100, %add.ptr8.i.i
  br i1 %cmp9.i.i, label %if.then16.i.i, label %if.end5.i, !prof !154

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xdp_warn(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #9
  br label %drop

if.end5.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %95, ptr %93, align 4
  %104 = ptrtoint ptr %data_end71 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data_end71, align 4
  %106 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i.i = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast23.i.i = ptrtoint ptr %107 to i32
  %sub.ptr.sub24.i.i = sub i32 %sub.ptr.lhs.cast22.i.i, %sub.ptr.rhs.cast23.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub24.i.i to i16
  %len.i.i = getelementptr inbounds %struct.xdp_frame, ptr %93, i32 0, i32 1
  %108 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv.i.i, ptr %len.i.i, align 4
  %109 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv26.i.i = add i16 %109, -24
  %headroom27.i.i = getelementptr inbounds %struct.xdp_frame, ptr %93, i32 0, i32 2
  %110 = ptrtoint ptr %headroom27.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv26.i.i, ptr %headroom27.i.i, align 2
  %metasize28.i.i = getelementptr inbounds %struct.xdp_frame, ptr %93, i32 0, i32 3
  %111 = ptrtoint ptr %metasize28.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load.i.i = load i32, ptr %metasize28.i.i, align 4
  %bf.shl.i.i = shl i32 %98, 24
  %bf.clear.i.i = and i32 %bf.load.i.i, 16777215
  %bf.set.i.i = or i32 %bf.clear.i.i, %bf.shl.i.i
  store i32 %bf.set.i.i, ptr %metasize28.i.i, align 4
  %112 = ptrtoint ptr %frame_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %frame_sz.i.i, align 4
  %bf.value32.i.i = and i32 %113, 16777215
  %bf.set34.i.i = or i32 %bf.value32.i.i, %bf.shl.i.i
  store i32 %bf.set34.i.i, ptr %metasize28.i.i, align 4
  %mem6.i = getelementptr inbounds %struct.xdp_frame, ptr %93, i32 0, i32 4
  %114 = ptrtoint ptr %rxq.i59 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rxq.i59, align 4
  %mem8.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %mem8.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 8)
  %117 = load i64, ptr %mem8.i, align 4
  %118 = ptrtoint ptr %mem6.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 8)
  store i64 %117, ptr %mem6.i, align 4
  br label %xdp_convert_buff_to_frame.exit

xdp_convert_buff_to_frame.exit:                   ; preds = %if.end5.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %93, %if.end5.i ]
  %tobool5.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool5.not, label %xdp_convert_buff_to_frame.exit.drop_crit_edge, label %if.end10, !prof !154

xdp_convert_buff_to_frame.exit.drop_crit_edge:    ; preds = %xdp_convert_buff_to_frame.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end10:                                         ; preds = %xdp_convert_buff_to_frame.exit
  %119 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cpsw1, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 24
  %121 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %priv, align 128
  %123 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %add.ptr.i, align 4
  %ch.i = getelementptr i8, ptr %retval.0.i, i32 28
  %124 = ptrtoint ptr %ch.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %ch.i, align 4
  %txv.i = getelementptr inbounds %struct.cpsw_common, ptr %120, i32 0, i32 15
  %125 = ptrtoint ptr %txv.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %txv.i, align 4
  %tobool.not.i = icmp eq ptr %page, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i62

if.then.i62:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %dma_addr.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %127 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %dma_addr.i.i, align 4
  %headroom.i = getelementptr inbounds %struct.xdp_frame, ptr %retval.0.i, i32 0, i32 2
  %129 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %headroom.i, align 2
  %conv.i = zext i16 %130 to i32
  %add.i = add i32 %128, 24
  %add4.i = add i32 %add.i, %conv.i
  %131 = ptrtoint ptr %retval.0.i to i32
  %or.i.i = or i32 %131, 1
  %132 = inttoptr i32 %or.i.i to ptr
  %len.i = getelementptr inbounds %struct.xdp_frame, ptr %retval.0.i, i32 0, i32 1
  %133 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %len.i, align 4
  %conv6.i = zext i16 %134 to i32
  %call7.i = tail call i32 @cpdma_chan_submit_mapped(ptr noundef %126, ptr noundef nonnull %132, i32 noundef %add4.i, i32 noundef %conv6.i, i32 noundef %port) #9
  br label %if.end16.i

if.else.i:                                        ; preds = %if.end10
  %headroom8.i = getelementptr inbounds %struct.xdp_frame, ptr %retval.0.i, i32 0, i32 2
  %135 = ptrtoint ptr %headroom8.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %headroom8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %136)
  %cmp.i63 = icmp ult i16 %136, 8
  br i1 %cmp.i63, label %if.else.i.if.then13_crit_edge, label %if.end.i64

if.else.i.if.then13_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end.i64:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %retval.0.i to i32
  %or.i40.i = or i32 %137, 1
  %138 = inttoptr i32 %or.i40.i to ptr
  %139 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %retval.0.i, align 4
  %len13.i = getelementptr inbounds %struct.xdp_frame, ptr %retval.0.i, i32 0, i32 1
  %141 = ptrtoint ptr %len13.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %len13.i, align 4
  %conv14.i = zext i16 %142 to i32
  %call15.i = tail call i32 @cpdma_chan_submit(ptr noundef %126, ptr noundef nonnull %138, ptr noundef %140, i32 noundef %conv14.i, i32 noundef %port) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i64, %if.then.i62
  %ret.0.i = phi i32 [ %call7.i, %if.then.i62 ], [ %call15.i, %if.end.i64 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool17.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool17.not.i, label %if.end16.i.sw.epilog_crit_edge, label %if.then18.i

if.end16.i.sw.epilog_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %priv, align 128
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %144, i32 0, i32 36, i32 7
  %145 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %146, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %if.then13

if.then13:                                        ; preds = %if.then18.i, %if.else.i.if.then13_crit_edge
  tail call void @xdp_return_frame_rx_napi(ptr noundef nonnull %retval.0.i) #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %bpf_prog_run_xdp.exit
  %call16 = tail call i32 @xdp_do_redirect(ptr noundef %3, ptr noundef %xdp, ptr noundef nonnull %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %sw.bb15.drop_crit_edge

sw.bb15.drop_crit_edge:                           ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end19:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @xdp_do_flush() #9
  br label %sw.epilog

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %3, ptr noundef nonnull %5, i32 noundef %act.0.i) #9
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.default, %bpf_prog_run_xdp.exit.sw.bb20_crit_edge
  tail call fastcc void @trace_xdp_exception(ptr noundef %3, ptr noundef nonnull %5, i32 noundef %act.0.i)
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.bb20, %bpf_prog_run_xdp.exit.sw.bb21_crit_edge
  %147 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 2
  %149 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %150, %148
  store i32 %add, ptr %rx_bytes, align 8
  %151 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %stats, align 8
  %inc = add i32 %152, 1
  store i32 %inc, ptr %stats, align 8
  br label %drop

sw.epilog:                                        ; preds = %if.end19, %if.then13, %if.end16.i.sw.epilog_crit_edge
  %153 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len, align 4
  %stats23 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36
  %rx_bytes24 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 2
  %155 = ptrtoint ptr %rx_bytes24 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %rx_bytes24, align 8
  %add25 = add i32 %156, %154
  store i32 %add25, ptr %rx_bytes24, align 8
  %157 = ptrtoint ptr %stats23 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %stats23, align 8
  %inc28 = add i32 %158, 1
  store i32 %inc28, ptr %stats23, align 8
  br label %cleanup

drop:                                             ; preds = %sw.bb21, %sw.bb15.drop_crit_edge, %xdp_convert_buff_to_frame.exit.drop_crit_edge, %if.then16.i.i, %if.end.i.drop_crit_edge
  %arrayidx = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 29, i32 %ch
  %159 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx, align 4
  tail call void @page_pool_put_page(ptr noundef %160, ptr noundef %page, i32 noundef -1, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %drop, %sw.epilog, %bpf_prog_run_xdp.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %drop ], [ 0, %entry.cleanup_crit_edge ], [ 1, %sw.epilog ], [ 0, %bpf_prog_run_xdp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_rx_napi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !145

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !122

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !156
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !157
  %13 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !122

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 51, ptr noundef nonnull @.str.59) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !159
  %31 = tail call i32 @llvm.read_register.i32(metadata !111) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_txq_to_tc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_attachment_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !99, !100, !102, !103, !105, !106, !107, !108, !110}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 286, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 295, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cpsw_ndo_tx_timeout._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @cpsw_ndo_tx_timeout._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 481, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cpsw_init_common._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @cpsw_init_common._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 493, i32 31}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 508, i32 3}
!19 = !{ptr @cpsw_init_common._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cpsw_init_common._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 531, i32 3}
!23 = !{ptr @cpsw_init_common._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cpsw_init_common._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 535, i32 55}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 747, i32 3}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cpsw_ndo_set_tx_maxrate._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @cpsw_ndo_set_tx_maxrate._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 753, i32 3}
!34 = !{ptr @cpsw_ndo_set_tx_maxrate._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cpsw_ndo_set_tx_maxrate._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 1117, i32 5}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cpsw_fill_rx_channels._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cpsw_fill_rx_channels._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 1131, i32 5}
!43 = !{ptr @cpsw_fill_rx_channels._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cpsw_fill_rx_channels._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 1139, i32 3}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cpsw_fill_rx_channels._entry.26, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @cpsw_fill_rx_channels._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @cpsw_slave_index, !51, !"cpsw_slave_index", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 33, i32 7}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!54 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 950, i32 3}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cpsw_set_cbs._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cpsw_set_cbs._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 969, i32 3}
!66 = !{ptr @cpsw_set_cbs._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cpsw_set_cbs._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 987, i32 3}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cpsw_set_cbs._entry.38, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cpsw_set_cbs._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 842, i32 4}
!75 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cpsw_set_fifo_bw._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @cpsw_set_fifo_bw._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 847, i32 4}
!80 = !{ptr @cpsw_set_fifo_bw._entry.44, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cpsw_set_fifo_bw._entry_ptr.46, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 873, i32 2}
!84 = !{ptr @cpsw_set_fifo_bw._entry.47, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @cpsw_set_fifo_bw._entry_ptr.49, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 878, i32 2}
!88 = !{ptr @cpsw_set_fifo_bw._entry.50, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cpsw_set_fifo_bw._entry_ptr.52, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/ti/cpsw_priv.c", i32 1161, i32 3}
!92 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cpsw_create_page_pool._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @cpsw_create_page_pool._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../include/linux/filter.h", i32 613, i32 2}
!97 = distinct !{null, !98, !"__already_done", i1 false, i1 false}
!98 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!99 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../include/net/xdp.h", i32 200, i32 3}
!102 = !{ptr @__func__.xdp_update_frame_from_buff, !101, !"<string literal>", i1 false, i1 false}
!103 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!104 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!105 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!106 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!107 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!110 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 7353889}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2158295715}
!124 = !{i8 0, i8 2}
!125 = !{i64 2158296108}
!126 = !{i64 2158296503}
!127 = !{i64 2158296903}
!128 = !{i64 2158298647}
!129 = !{i64 2158300332}
!130 = !{i64 2158302074}
!131 = !{i64 2158303759}
!132 = !{i64 2158306061}
!133 = !{i64 2158305903}
!134 = !{i64 7354307}
!135 = !{i64 2158310204}
!136 = !{!"auto-init"}
!137 = !{i64 2153346510, i64 2153346535}
!138 = !{i64 5842065}
!139 = !{i64 5842262}
!140 = !{i64 2153327495}
!141 = !{i64 2153347191, i64 2153347216}
!142 = !{i64 2148714982}
!143 = !{i64 1200602, i64 1200627, i64 1200649, i64 1200665, i64 1200677, i64 1200697, i64 1200721, i64 1200737, i64 1200749}
!144 = !{i64 2148715170}
!145 = !{i64 2149276889, i64 2149276894, i64 2149276907, i64 2149276951, i64 2149276985, i64 2149277006}
!146 = !{i64 1119263, i64 1119324}
!147 = !{i64 2150075061}
!148 = !{i64 2150079993}
!149 = !{i64 2150101705}
!150 = !{i64 2150106597}
!151 = !{i64 2150187115}
!152 = !{i64 2150187440}
!153 = !{i64 1121995}
!154 = !{!"branch_weights", i32 1, i32 2000}
!155 = !{i64 1122280}
!156 = !{i64 2157118478}
!157 = !{i64 2157118693}
!158 = !{i64 2149715443}
!159 = !{i64 2149716479}
