; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hclge_vport = type { i16, i16, i32, i8, i8, i8, [128 x i32], %struct.hclge_port_base_vlan_config, %struct.hclge_tx_vtag_cfg, %struct.hclge_rx_vtag_cfg, i16, i16, ptr, %struct.hnae3_handle, %struct.hnae3_handle, i32, i32, i32, %struct.hclge_vf_info, i8, i8, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.hclge_port_base_vlan_config = type { i16, %struct.hclge_vlan_info }
%struct.hclge_vlan_info = type { i16, i16, i16 }
%struct.hclge_tx_vtag_cfg = type { i8, i8, i8, i8, i8, i8, i16, i16, i8 }
%struct.hclge_rx_vtag_cfg = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.hnae3_handle = type { ptr, ptr, ptr, ptr, i64, %union.anon.148, i32, i32, i8, ptr, %struct.mutex, i32, i32, i32 }
%union.anon.148 = type { %struct.hnae3_knic_private_info }
%struct.hnae3_knic_private_info = type { ptr, i16, i16, i16, i16, i16, i32, %struct.hnae3_tc_info, i16, ptr, ptr, i16, i32, ptr }
%struct.hnae3_tc_info = type { [8 x i8], [8 x i16], [8 x i16], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hclge_vf_info = type { i32, [6 x i8], i32, i32, i32, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hclge_dev = type { ptr, ptr, %struct.hclge_hw, %struct.hclge_misc_vector, %struct.hclge_mac_stats, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hclge_rst_stats, %struct.semaphore, i32, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i16, i16, i16, i8, i32, i8, i8, i8, i8, i8, i8, %struct.hclge_tm_info, i16, i16, i16, ptr, ptr, i16, i16, i32, i32, %struct.timer_list, %struct.delayed_work, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.mutex, %struct.hclge_vlan_type_cfg, [4096 x [8 x i32]], [8 x i32], [8 x i32], %struct.hclge_fd_cfg, %struct.hlist_head, %struct.spinlock, i16, i32, i32, i32, i32, [128 x i32], i32, i8, i8, i16, i16, i16, i16, i16, %struct.anon.153, %struct.cpumask, ptr, ptr, %struct.hclge_comm_rss_cfg }
%struct.hclge_hw = type { %struct.hclge_comm_hw, %struct.hclge_mac, i32 }
%struct.hclge_comm_hw = type { ptr, ptr, %struct.hclge_comm_cmq, i32 }
%struct.hclge_comm_cmq = type { %struct.hclge_comm_cmq_ring, %struct.hclge_comm_cmq_ring, i16, i32 }
%struct.hclge_comm_cmq_ring = type { i32, ptr, ptr, i32, i32, i16, i16, i32, i32, i8, %struct.spinlock }
%struct.hclge_mac = type { i8, i8, i8, i8, [6 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [3 x i32], [3 x i32] }
%struct.hclge_misc_vector = type { ptr, i32, [32 x i8] }
%struct.hclge_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hclge_rst_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.hclge_tm_info = type { i8, i8, [4 x i8], [8 x i8], [4 x %struct.hclge_pg_info], [8 x %struct.hclge_tc_info], i32, i8, i8 }
%struct.hclge_pg_info = type { i8, i8, i8, i32, [8 x i8] }
%struct.hclge_tc_info = type { i8, i8, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hclge_vlan_type_cfg = type { i16, i16, i16, i16, i16, i16 }
%struct.hclge_fd_cfg = type { i8, i16, [2 x i32], [2 x i16], [2 x %struct.hclge_fd_key_cfg], [3 x %struct.hclge_fd_user_def_cfg] }
%struct.hclge_fd_key_cfg = type { i8, i8, i8, i8, i8, i32, i32 }
%struct.hclge_fd_user_def_cfg = type { i16, i16 }
%struct.hlist_head = type { ptr }
%struct.anon.153 = type { %union.anon.154, [8 x %struct.hclge_mac_tnl_stats] }
%union.anon.154 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.hclge_mac_tnl_stats = type { i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.hclge_comm_rss_cfg = type { [40 x i8], ptr, i32, %struct.hclge_comm_rss_tuple_cfg, i32 }
%struct.hclge_comm_rss_tuple_cfg = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hclge_ptp = type { ptr, ptr, ptr, i32, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, %struct.spinlock, i32, i32, %struct.hclge_ptp_cycle, i32, i32, i32, i32, i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.hclge_ptp_cycle = type { i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
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
%struct.skb_shared_hwtstamps = type { i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ifreq = type { %union.anon.102, %union.anon.103 }
%union.anon.102 = type { [16 x i8] }
%union.anon.103 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.hclge_desc = type { i16, i16, i16, i16, [6 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.101, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.101 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.timespec64 = type { i64, i32 }
%struct.hnae3_ae_dev = type { ptr, ptr, %struct.list_head, i32, i32, %struct.hnae3_dev_specs, i32, [3 x i32], ptr }
%struct.hnae3_dev_specs = type { i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, i16, i16, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@hclge_ptp_cfg_qry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 254, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to query ptp config, ret = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclge_ptp_cfg_qry\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hclge_ptp_cfg_qry._entry_ptr = internal global ptr @hclge_ptp_cfg_qry._entry, section ".printk_index", align 4
@hclge_ptp_set_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 376, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phc is unsupported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hclge_ptp_set_cfg\00", [46 x i8] zeroinitializer }, align 32
@hclge_ptp_set_cfg._entry_ptr = internal global ptr @hclge_ptp_set_cfg._entry, section ".printk_index", align 4
@hclge_ptp_get_ts_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.2, i32 399, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hclge_ptp_get_ts_info\00", [42 x i8] zeroinitializer }, align 32
@hclge_ptp_get_ts_info._entry_ptr = internal global ptr @hclge_ptp_get_ts_info._entry, section ".printk_index", align 4
@hclge_ptp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 510, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init freq, ret = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hclge_ptp_init\00", [17 x i8] zeroinitializer }, align 32
@hclge_ptp_init._entry_ptr = internal global ptr @hclge_ptp_init._entry, section ".printk_index", align 4
@hclge_ptp_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 517, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init ts mode, ret = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@hclge_ptp_init._entry_ptr.12 = internal global ptr @hclge_ptp_init._entry.10, section ".printk_index", align 4
@hclge_ptp_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 525, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init ts time, ret = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@hclge_ptp_init._entry_ptr.15 = internal global ptr @hclge_ptp_init._entry.13, section ".printk_index", align 4
@hclge_ptp_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 530, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phc initializes ok!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hclge_ptp_init._entry_ptr.19 = internal global ptr @hclge_ptp_init._entry.16, section ".printk_index", align 4
@hclge_ptp_uninit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 554, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to disable phc\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hclge_ptp_uninit\00", [47 x i8] zeroinitializer }, align 32
@hclge_ptp_uninit._entry_ptr = internal global ptr @hclge_ptp_uninit._entry, section ".printk_index", align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@hclge_ptp_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 275, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to config ptp, ret = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hclge_ptp_cfg\00", [18 x i8] zeroinitializer }, align 32
@hclge_ptp_cfg._entry_ptr = internal global ptr @hclge_ptp_cfg._entry, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hclge\00", [26 x i8] zeroinitializer }, align 32
@hclge_ptp_create_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%d failed to register ptp clock, ret = %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hclge_ptp_create_clock\00", [41 x i8] zeroinitializer }, align 32
@hclge_ptp_create_clock._entry_ptr = internal global ptr @hclge_ptp_create_clock._entry, section ".printk_index", align 4
@hclge_ptp_create_clock._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 462, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register ptp clock\0A\00", [34 x i8] zeroinitializer }, align 32
@hclge_ptp_create_clock._entry_ptr.33 = internal global ptr @hclge_ptp_create_clock._entry.31, section ".printk_index", align 4
@hclge_ptp_create_clock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ptp->lock\00", [21 x i8] zeroinitializer }, align 32
@hclge_ptp_get_cycle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 18, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid ptp cycle denominator!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hclge_ptp_get_cycle\00", [44 x i8] zeroinitializer }, align 32
@hclge_ptp_get_cycle._entry_ptr = internal global ptr @hclge_ptp_get_cycle._entry, section ".printk_index", align 4
@hclge_ptp_int_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to %s ptp interrupt, ret = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hclge_ptp_int_en\00", [47 x i8] zeroinitializer }, align 32
@hclge_ptp_int_en._entry_ptr = internal global ptr @hclge_ptp_int_en._entry, section ".printk_index", align 4
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 253, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 376, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 399, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 509, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 516, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 524, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 530, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 554, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 174, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 274, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 444, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 457, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 462, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 466, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 18, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [58 x i8] c"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 236, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @hclge_ptp_cfg._entry, ptr @hclge_ptp_cfg._entry_ptr, ptr @hclge_ptp_cfg_qry._entry, ptr @hclge_ptp_cfg_qry._entry_ptr, ptr @hclge_ptp_create_clock._entry, ptr @hclge_ptp_create_clock._entry.31, ptr @hclge_ptp_create_clock._entry_ptr, ptr @hclge_ptp_create_clock._entry_ptr.33, ptr @hclge_ptp_get_cycle._entry, ptr @hclge_ptp_get_cycle._entry_ptr, ptr @hclge_ptp_get_ts_info._entry, ptr @hclge_ptp_get_ts_info._entry_ptr, ptr @hclge_ptp_init._entry, ptr @hclge_ptp_init._entry.10, ptr @hclge_ptp_init._entry.13, ptr @hclge_ptp_init._entry.16, ptr @hclge_ptp_init._entry_ptr, ptr @hclge_ptp_init._entry_ptr.12, ptr @hclge_ptp_init._entry_ptr.15, ptr @hclge_ptp_init._entry_ptr.19, ptr @hclge_ptp_int_en._entry, ptr @hclge_ptp_int_en._entry_ptr, ptr @hclge_ptp_set_cfg._entry, ptr @hclge_ptp_set_cfg._entry_ptr, ptr @hclge_ptp_uninit._entry, ptr @hclge_ptp_uninit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @hclge_ptp_create_clock.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_cfg_qry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_set_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_get_ts_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_uninit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_create_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_create_clock._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_create_clock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_get_cycle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclge_ptp_int_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @hclge_ptp_set_tx_info(ptr noundef %handle, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %handle) #7
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %ptp1 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 85
  %2 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp1, align 4
  %flags = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_test_and_set_bit(i32 noundef 19, ptr noundef %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tx_skipped = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %tx_start = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %tx_start to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_start, align 4
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #7
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #7, !srcloc !90
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !91

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !92

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #7
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %tx_skb = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skb, ptr %tx_skb, align 4
  %tx_cnt = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 12
  br label %cleanup

cleanup:                                          ; preds = %skb_get.exit, %if.then
  %tx_cnt.sink14 = phi ptr [ %tx_cnt, %skb_get.exit ], [ %tx_skipped, %if.then ]
  %retval.0 = phi i1 [ true, %skb_get.exit ], [ false, %if.then ]
  %12 = ptrtoint ptr %tx_cnt.sink14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_cnt.sink14, align 4
  %inc6 = add i32 %13, 1
  store i32 %inc6, ptr %tx_cnt.sink14, align 4
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hclge_get_vport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_ptp_clean_tx_hwts(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %hwts = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 85
  %0 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp, align 4
  %tx_skb = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwts) #7
  %4 = ptrtoint ptr %hwts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %hwts, align 8, !annotation !93
  %io_base = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %8 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp, align 4
  %io_base6 = getelementptr inbounds %struct.hclge_ptp, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %io_base6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base6, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %13 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp, align 4
  %io_base14 = getelementptr inbounds %struct.hclge_ptp, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %io_base14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base14, align 4
  %add.ptr15 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %18 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp, align 4
  %io_base23 = getelementptr inbounds %struct.hclge_ptp, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %io_base23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base23, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !94
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %24 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ptp, align 4
  %last_tx_seqid = getelementptr inbounds %struct.hclge_ptp, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %last_tx_seqid to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %last_tx_seqid, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %27 = and i32 %17, -65536
  %28 = and i32 %7, -193
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %conv = zext i32 %29 to i64
  %30 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptp, align 4
  %tx_skb30 = getelementptr inbounds %struct.hclge_ptp, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %tx_skb30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %tx_skb30, align 4
  %33 = load ptr, ptr %ptp, align 4
  %tx_cleaned = getelementptr inbounds %struct.hclge_ptp, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %tx_cleaned to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_cleaned, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %tx_cleaned, align 4
  %36 = zext i32 %27 to i64
  %37 = zext i32 %12 to i64
  %38 = shl nuw i64 %37, 32
  %39 = or i64 %38, %36
  %40 = tail call i64 @llvm.bswap.i64(i64 %39)
  %mul = mul i64 %40, 1000000000
  %add = add i64 %mul, %conv
  %41 = ptrtoint ptr %hwts to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %add, ptr %hwts, align 8
  call void @skb_tstamp_tx(ptr noundef nonnull %3, ptr noundef nonnull %hwts) #7
  call void @__dev_kfree_skb_any(ptr noundef nonnull %3, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 5
  call void @_clear_bit(i32 noundef 19, ptr noundef %state) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwts) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_ptp_get_rx_hwts(ptr noundef %handle, ptr nocapture noundef readonly %skb, i32 noundef %nsec, i32 noundef %sec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %handle) #7
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %ptp = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 85
  %2 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp, align 4
  %flags1 = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags1, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i32 %nsec to i64
  %lock = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 7
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %7 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp, align 4
  %io_base = getelementptr inbounds %struct.hclge_ptp, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 116
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  %13 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ptp, align 4
  %lock15 = getelementptr inbounds %struct.hclge_ptp, ptr %14, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock15, i32 noundef %call7) #7
  %conv16 = zext i32 %12 to i64
  %shl = shl nuw i64 %conv16, 32
  %conv17 = zext i32 %sec to i64
  %or = or i64 %shl, %conv17
  %mul = mul i64 %or, 1000000000
  %add = add i64 %mul, %conv
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %hwtstamps.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ptp, align 4
  %last_rx = getelementptr inbounds %struct.hclge_ptp, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %last_rx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %last_rx, align 4
  %22 = load ptr, ptr %ptp, align 4
  %rx_cnt = getelementptr inbounds %struct.hclge_ptp, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %rx_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_cnt, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %rx_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_ptp_get_cfg(ptr noundef %hdev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %3 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ifr_ifru, align 4
  %ptp = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 85
  %5 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp, align 4
  %ts_cfg = getelementptr inbounds %struct.hclge_ptp, ptr %6, i32 0, i32 6
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.return_crit_edge, label %if.end.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i.i:                                       ; preds = %if.end
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1226833920) #10, !srcloc !100
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ts_cfg, i32 noundef 12) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef %ts_cfg, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool2.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 -14
  br label %return

return:                                           ; preds = %copy_to_user.exit, %if.end.i.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -14, %if.end.return_crit_edge ], [ -14, %if.end.i.i.return_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_ptp_cfg_qry(ptr noundef %hdev, ptr nocapture noundef writeonly %cfg) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc) #7
  %0 = call ptr @memset(ptr %desc, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc, i32 noundef 1287, i1 noundef zeroext true) #7
  %hw = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call = call i32 @hclge_cmd_send(ptr noundef %hw, ptr noundef nonnull %desc, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = getelementptr inbounds %struct.hclge_desc, ptr %desc, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hclge_comm_cmd_setup_basic_desc(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hclge_cmd_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_ptp_set_cfg(ptr noundef %hdev, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #7
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cfg, align 4, !annotation !93
  %1 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !93
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !93
  %state = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %10 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %11, i32 12, i32 -1226833920) #10, !srcloc !101
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !92

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg, i32 noundef 12) #7
  %13 = call i32 @llvm.read_register.i32(metadata !80) #7
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !102
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg, ptr noundef %11, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #7, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !92

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cfg, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %call5 = call fastcc i32 @hclge_ptp_set_ts_mode(ptr noundef %hdev, ptr noundef nonnull %cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.i21, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i21:                                      ; preds = %if.end4
  %ptp = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 85
  %17 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ptp, align 4
  %ts_cfg = getelementptr inbounds %struct.hclge_ptp, ptr %18, i32 0, i32 6
  %19 = call ptr @memcpy(ptr %ts_cfg, ptr %cfg, i32 12)
  %20 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.24, i32 noundef 174) #7
  %call.i.i20 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i20, label %if.then.i21.cleanup_crit_edge, label %if.end.i.i24

if.then.i21.cleanup_crit_edge:                    ; preds = %if.then.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i24:                                     ; preds = %if.then.i21
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 12, i32 -1226833920) #10, !srcloc !100
  %asmresult.i.i22 = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i22)
  %cmp.i.i23 = icmp eq i32 %asmresult.i.i22, 0
  br i1 %cmp.i.i23, label %copy_to_user.exit, label %if.end.i.i24.cleanup_crit_edge

if.end.i.i24.cleanup_crit_edge:                   ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i25 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cfg, i32 noundef 12) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %cfg, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool11.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i24.cleanup_crit_edge, %if.then.i21.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then11.i.i, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %call5, %if.end4.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i21.cleanup_crit_edge ], [ -14, %if.end.i.i24.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hclge_ptp_set_ts_mode(ptr noundef %hdev, ptr nocapture noundef %cfg) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %ptp = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 85
  %0 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp, align 4
  %flags1 = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flags, align 4
  %5 = load volatile i32, ptr %flags1, align 4
  %and1.i = and i32 %5, 1
  %tx_type.i = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %tx_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %flags) #7
  br label %if.end7

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 1, ptr noundef nonnull %flags) #7
  %or.i = or i32 %and1.i, 2
  br label %if.end7

if.end7:                                          ; preds = %sw.bb1.i, %sw.bb.i
  %ptp_cfg.1.ph = phi i32 [ %and1.i, %sw.bb.i ], [ %or.i, %sw.bb1.i ]
  %rx_filter1.i = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %rx_filter1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_filter1.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %10, label %if.end7.cleanup_crit_edge [
    i32 0, label %sw.bb.i32
    i32 4, label %if.end7.sw.bb3.i_crit_edge
    i32 5, label %if.end7.sw.bb3.i_crit_edge47
    i32 3, label %if.end7.sw.bb3.i_crit_edge48
    i32 12, label %if.end7.sw.bb5.i_crit_edge
    i32 6, label %if.end7.sw.bb5.i_crit_edge49
    i32 13, label %if.end7.sw.bb5.i_crit_edge50
    i32 7, label %if.end7.sw.bb5.i_crit_edge51
    i32 14, label %if.end7.sw.bb5.i_crit_edge52
    i32 8, label %if.end7.sw.bb5.i_crit_edge53
    i32 9, label %if.end7.sw.bb5.i_crit_edge54
    i32 10, label %if.end7.sw.bb5.i_crit_edge55
    i32 11, label %if.end7.sw.bb5.i_crit_edge56
  ]

if.end7.sw.bb5.i_crit_edge56:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end7.sw.bb5.i_crit_edge55:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end7.sw.bb5.i_crit_edge54:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end7.sw.bb5.i_crit_edge53:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end7.sw.bb5.i_crit_edge52:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end7.sw.bb5.i_crit_edge51:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end7.sw.bb5.i_crit_edge50:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end7.sw.bb5.i_crit_edge49:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end7.sw.bb5.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5.i

if.end7.sw.bb3.i_crit_edge48:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end7.sw.bb3.i_crit_edge47:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end7.sw.bb3.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i32:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 2, ptr noundef nonnull %flags) #7
  br label %if.end11

sw.bb3.i:                                         ; preds = %if.end7.sw.bb3.i_crit_edge, %if.end7.sw.bb3.i_crit_edge47, %if.end7.sw.bb3.i_crit_edge48
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %flags) #7
  %or4.i = or i32 %ptp_cfg.1.ph, 28
  br label %if.end11

sw.bb5.i:                                         ; preds = %if.end7.sw.bb5.i_crit_edge, %if.end7.sw.bb5.i_crit_edge49, %if.end7.sw.bb5.i_crit_edge50, %if.end7.sw.bb5.i_crit_edge51, %if.end7.sw.bb5.i_crit_edge52, %if.end7.sw.bb5.i_crit_edge53, %if.end7.sw.bb5.i_crit_edge54, %if.end7.sw.bb5.i_crit_edge55, %if.end7.sw.bb5.i_crit_edge56
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %flags) #7
  %or10.i = or i32 %ptp_cfg.1.ph, 251724060
  br label %if.end11

if.end11:                                         ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb.i32
  %ptp_cfg.2 = phi i32 [ %or10.i, %sw.bb5.i ], [ %or4.i, %sw.bb3.i ], [ %ptp_cfg.1.ph, %sw.bb.i32 ]
  %rx_filter.0.i = phi i32 [ 12, %sw.bb5.i ], [ 3, %sw.bb3.i ], [ 0, %sw.bb.i32 ]
  %12 = ptrtoint ptr %rx_filter1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %rx_filter.0.i, ptr %rx_filter1.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %13 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %14 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 1287, i1 noundef zeroext false) #7
  %15 = call i32 @llvm.bswap.i32(i32 %ptp_cfg.2) #7
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %13, align 4
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end15, label %hclge_ptp_cfg.exit

hclge_ptp_cfg.exit:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %21 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptp, align 4
  %flags17 = getelementptr inbounds %struct.hclge_ptp, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %flags17, align 4
  %24 = load ptr, ptr %ptp, align 4
  %ptp_cfg19 = getelementptr inbounds %struct.hclge_ptp, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %ptp_cfg19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %ptp_cfg.2, ptr %ptp_cfg19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %hclge_ptp_cfg.exit, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %call.i, %hclge_ptp_cfg.exit ], [ -34, %entry.cleanup_crit_edge ], [ -34, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_ptp_get_ts_info(ptr noundef %handle, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hclge_get_vport(ptr noundef %handle) #7
  %back = getelementptr inbounds %struct.hclge_vport, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %state = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 95, ptr %so_timestamping, align 4
  %ptp = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 85
  %8 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp, align 4
  %clock = getelementptr inbounds %struct.hclge_ptp, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clock, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @ptp_clock_index(ptr noundef nonnull %11) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %call6.sink = phi i32 [ %call6, %if.then3 ], [ -1, %if.end.if.end8_crit_edge ]
  %12 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call6.sink, ptr %12, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %15 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32753, ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -95, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hclge_ptp_init(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #7
  %4 = call ptr @memset(ptr %ts, i32 255, i32 16)
  %caps = getelementptr inbounds %struct.hnae3_ae_dev, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %caps, align 4
  %7 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 85
  %8 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then3:                                         ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 232, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then3.cleanup_crit_edge, label %if.end.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hdev, ptr %call.i.i, align 4
  %info.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5
  %name.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5, i32 1
  %11 = call ptr @memcpy(ptr %name.i, ptr @.str.28, i32 6)
  %12 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %info.i, align 4
  %max_adj.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %max_adj.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 500000000, ptr %max_adj.i, align 4
  %n_ext_ts.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %n_ext_ts.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %n_ext_ts.i, align 4
  %pps.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5, i32 7
  %15 = ptrtoint ptr %pps.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pps.i, align 4
  %adjfreq.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5, i32 10
  %16 = ptrtoint ptr %adjfreq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hclge_ptp_adjfreq, ptr %adjfreq.i, align 4
  %adjtime.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5, i32 12
  %17 = ptrtoint ptr %adjtime.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @hclge_ptp_adjtime, ptr %adjtime.i, align 4
  %gettimex64.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5, i32 14
  %18 = ptrtoint ptr %gettimex64.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hclge_ptp_gettimex, ptr %gettimex64.i, align 4
  %settime64.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5, i32 16
  %19 = ptrtoint ptr %settime64.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @hclge_ptp_settime, ptr %settime64.i, align 4
  %n_alarm.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %n_alarm.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %n_alarm.i, align 4
  %21 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev, align 8
  %dev14.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %call15.i = tail call ptr @ptp_clock_register(ptr noundef %info.i, ptr noundef %dev14.i) #7
  %clock.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call15.i, ptr %clock.i, align 4
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hdev, align 8
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %n_alarm.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_alarm.i, align 4
  %28 = ptrtoint ptr %call15.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.29, i32 noundef %27, i32 noundef %28) #11
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i
  %tobool26.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool26.not.i, label %do.end30.i, label %if.end7

do.end30.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hdev, align 8
  %dev32.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i, ptr noundef nonnull @.str.32) #11
  br label %cleanup

if.end7:                                          ; preds = %if.else.i
  %lock.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @hclge_ptp_create_clock.__key, i16 noundef signext 3) #7
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %31 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %32, i32 167936
  %io_base40.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %io_base40.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr.i, ptr %io_base40.i, align 4
  %rx_filter.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %rx_filter.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rx_filter.i, align 4
  %tx_type.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %tx_type.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %tx_type.i, align 4
  %36 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %ptp, align 4
  %add.ptr.i78 = getelementptr i8, ptr %32, i32 168036
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #7, !srcloc !94
  %38 = lshr i32 %37, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  %cycle.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %cycle.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %cycle.i, align 4
  %40 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ptp, align 4
  %io_base7.i = getelementptr inbounds %struct.hclge_ptp, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %io_base7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base7.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %43, i32 108
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !94
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  %numer.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %numer.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %numer.i, align 4
  %47 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ptp, align 4
  %io_base16.i = getelementptr inbounds %struct.hclge_ptp, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %io_base16.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_base16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %50, i32 104
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #7, !srcloc !94
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %den.i = getelementptr inbounds %struct.hclge_ptp, ptr %call.i.i, i32 0, i32 10, i32 2
  %53 = ptrtoint ptr %den.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %den.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i = icmp eq i32 %51, 0
  br i1 %cmp.i, label %hclge_ptp_get_cycle.exit, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

hclge_ptp_get_cycle.exit:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hdev, align 8
  %dev.i79 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i79, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %56 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %57 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 1281, i1 noundef zeroext false) #7
  %58 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %56, align 4
  %hw.i82 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i82, ptr noundef nonnull %desc.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end16, label %hclge_ptp_int_en.exit

hclge_ptp_int_en.exit:                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hdev, align 8
  %dev.i83 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i83, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  br label %out

if.end16:                                         ; preds = %if.end12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  %61 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ptp, align 4
  %flags = getelementptr inbounds %struct.hclge_ptp, ptr %62, i32 0, i32 3
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #7
  %63 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ptp, align 4
  %info = getelementptr inbounds %struct.hclge_ptp, ptr %64, i32 0, i32 5
  %call19 = call i32 @hclge_ptp_adjfreq(ptr noundef %info, i32 noundef 0)
  %65 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ptp, align 4
  %ts_cfg = getelementptr inbounds %struct.hclge_ptp, ptr %66, i32 0, i32 6
  %call25 = call fastcc i32 @hclge_ptp_set_ts_mode(ptr noundef %hdev, ptr noundef %ts_cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end33, label %do.end30

do.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hdev, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.11, i32 noundef %call25) #11
  br label %out

if.end33:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts) #7
  %69 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ptp, align 4
  %info35 = getelementptr inbounds %struct.hclge_ptp, ptr %70, i32 0, i32 5
  %call36 = call i32 @hclge_ptp_settime(ptr noundef %info35, ptr noundef nonnull %ts)
  %state = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 5
  call void @_set_bit(i32 noundef 18, ptr noundef %state) #7
  %71 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hdev, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %72, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.17) #11
  br label %cleanup

out:                                              ; preds = %do.end30, %hclge_ptp_int_en.exit
  %ret.0 = phi i32 [ %call.i, %hclge_ptp_int_en.exit ], [ %call25, %do.end30 ]
  %73 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ptp, align 4
  %clock.i86 = getelementptr inbounds %struct.hclge_ptp, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %clock.i86 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clock.i86, align 4
  %call.i87 = call i32 @ptp_clock_unregister(ptr noundef %76) #7
  %77 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ptp, align 4
  %clock2.i = getelementptr inbounds %struct.hclge_ptp, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %clock2.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %clock2.i, align 4
  %80 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hdev, align 8
  %dev.i88 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %82 = load ptr, ptr %ptp, align 4
  call void @devm_kfree(ptr noundef %dev.i88, ptr noundef %82) #7
  %83 = ptrtoint ptr %ptp to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %ptp, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end33, %hclge_ptp_get_cycle.exit, %do.end30.i, %do.end.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end33 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %hclge_ptp_get_cycle.exit ], [ -12, %if.then3.cleanup_crit_edge ], [ -19, %do.end30.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_ptp_adjfreq(ptr nocapture noundef readonly %ptp, i32 noundef %ppb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %ptp1 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 85
  %2 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp1, align 4
  %cycle2 = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ppb)
  %cmp = icmp slt i32 %ppb, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %ppb, i1 false)
  %5 = ptrtoint ptr %cycle2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cycle2, align 4
  %conv = zext i32 %6 to i64
  %den = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %den, align 4
  %conv4 = zext i32 %8 to i64
  %mul = mul nuw i64 %conv4, %conv
  %numer = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %numer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %numer, align 4
  %conv5 = zext i32 %10 to i64
  %add = add nuw i64 %mul, %conv5
  %conv6 = sext i32 %4 to i64
  %mul7 = mul i64 %add, %conv6
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul7, i32 0) #10, !srcloc !108
  %asmresult.i.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul7, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !109
  %asmresult10.i.i.i = extractvalue { i64, i32 } %12, 0
  %div158.i1.i = lshr i64 %asmresult10.i.i.i, 29
  %13 = sub nsw i64 0, %div158.i1.i
  %adj_val.0.p = select i1 %cmp, i64 %13, i64 %div158.i1.i
  %adj_val.0 = add i64 %adj_val.0.p, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %adj_val.0)
  %cmp164.i = icmp ult i64 %adj_val.0, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !92

if.then168.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i = trunc i64 %adj_val.0 to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %8
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %14 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %14
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %adj_val.0) #10, !srcloc !110
  %asmresult.i261.i = extractvalue { i64, i64 } %15, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %15, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t66 = trunc i64 %asmresult1.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t66, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %lock = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 7
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %and = shl i32 %dividend.addr.0.i.off0, 24
  %16 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptp1, align 4
  %io_base = getelementptr inbounds %struct.hclge_ptp, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %and) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %__rem.0.i)
  %21 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptp1, align 4
  %io_base32 = getelementptr inbounds %struct.hclge_ptp, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %io_base32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base32, align 4
  %add.ptr33 = getelementptr i8, ptr %24, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %20) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %den, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ptp1, align 4
  %io_base39 = getelementptr inbounds %struct.hclge_ptp, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %io_base39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base39, align 4
  %add.ptr40 = getelementptr i8, ptr %31, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %27) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ptp1, align 4
  %io_base45 = getelementptr inbounds %struct.hclge_ptp, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %io_base45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base45, align 4
  %add.ptr46 = getelementptr i8, ptr %35, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 16777216) #7, !srcloc !112
  %36 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptp1, align 4
  %lock48 = getelementptr inbounds %struct.hclge_ptp, ptr %37, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock48, i32 noundef %call21) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_ptp_settime(ptr nocapture noundef readonly %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %ptp2 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 85
  %2 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp2, align 4
  %lock = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp2, align 4
  %io_base = getelementptr inbounds %struct.hclge_ptp, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ts, align 8
  %13 = lshr i64 %12, 32
  %conv14 = trunc i64 %13 to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv14)
  %15 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptp2, align 4
  %io_base16 = getelementptr inbounds %struct.hclge_ptp, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %io_base16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base16, align 4
  %add.ptr17 = getelementptr i8, ptr %18, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %14) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ts, align 8
  %conv22 = trunc i64 %20 to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv22)
  %22 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptp2, align 4
  %io_base24 = getelementptr inbounds %struct.hclge_ptp, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %io_base24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base24, align 4
  %add.ptr25 = getelementptr i8, ptr %25, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %21) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptp2, align 4
  %io_base30 = getelementptr inbounds %struct.hclge_ptp, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %io_base30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base30, align 4
  %add.ptr31 = getelementptr i8, ptr %29, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 16777216) #7, !srcloc !112
  %30 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ptp2, align 4
  %lock33 = getelementptr inbounds %struct.hclge_ptp, ptr %31, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock33, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hclge_ptp_uninit(ptr noundef %hdev) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.hclge_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp1 = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 85
  %0 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %desc.i) #7
  %2 = getelementptr inbounds %struct.hclge_desc, ptr %desc.i, i32 0, i32 4
  %3 = call ptr @memset(ptr %desc.i, i32 255, i32 32)
  call void @hclge_comm_cmd_setup_basic_desc(ptr noundef nonnull %desc.i, i32 noundef 1281, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %2, align 4
  %hw.i = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 2
  %call.i = call i32 @hclge_cmd_send(ptr noundef %hw.i, ptr noundef nonnull %desc.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.hclge_ptp_int_en.exit_crit_edge, label %do.end.i

if.end.hclge_ptp_int_en.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hclge_ptp_int_en.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.40, i32 noundef %call.i) #11
  br label %hclge_ptp_int_en.exit

hclge_ptp_int_en.exit:                            ; preds = %do.end.i, %if.end.hclge_ptp_int_en.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %desc.i) #7
  %state = getelementptr inbounds %struct.hclge_dev, ptr %hdev, i32 0, i32 5
  call void @_clear_bit(i32 noundef 18, ptr noundef %state) #7
  %flags = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 3
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #7
  %ts_cfg = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 6
  %rx_filter = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rx_filter, align 4
  %tx_type = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %tx_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_type, align 4
  %call4 = call fastcc i32 @hclge_ptp_set_ts_mode(ptr noundef %hdev, ptr noundef %ts_cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %hclge_ptp_int_en.exit.if.end7_crit_edge, label %do.end

hclge_ptp_int_en.exit.if.end7_crit_edge:          ; preds = %hclge_ptp_int_en.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %hclge_ptp_int_en.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %hclge_ptp_int_en.exit.if.end7_crit_edge
  %tx_skb = getelementptr inbounds %struct.hclge_ptp, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_skb, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %tx_skb, align 4
  call void @__dev_kfree_skb_any(ptr noundef nonnull %12, i32 noundef 1) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %14 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptp1, align 4
  %clock.i = getelementptr inbounds %struct.hclge_ptp, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clock.i, align 4
  %call.i26 = call i32 @ptp_clock_unregister(ptr noundef %17) #7
  %18 = ptrtoint ptr %ptp1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp1, align 4
  %clock2.i = getelementptr inbounds %struct.hclge_ptp, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %clock2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %clock2.i, align 4
  %21 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev, align 8
  %dev.i27 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = load ptr, ptr %ptp1, align 4
  call void @devm_kfree(ptr noundef %dev.i27, ptr noundef %23) #7
  %24 = ptrtoint ptr %ptp1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ptp1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_ptp_adjtime(ptr nocapture noundef readonly %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %tmp32.i = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp = icmp slt i64 %delta, 0
  %2 = tail call i64 @llvm.abs.i64(i64 %delta, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741823, i64 %2)
  %cmp1 = icmp sgt i64 %2, 1073741823
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %entry
  %ptp2.i = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 85
  %3 = ptrtoint ptr %ptp2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptp2.i, align 4
  %lock.i = getelementptr inbounds %struct.hclge_ptp, ptr %4, i32 0, i32 7
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %5 = ptrtoint ptr %ptp2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ptp2.i, align 4
  %io_base.i = getelementptr inbounds %struct.hclge_ptp, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %8, i32 124
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #7, !srcloc !94
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %conv11.i = zext i32 %10 to i64
  %11 = ptrtoint ptr %ptp2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp2.i, align 4
  %io_base15.i = getelementptr inbounds %struct.hclge_ptp, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %io_base15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base15.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %14, i32 116
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %16 = ptrtoint ptr %ptp2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptp2.i, align 4
  %io_base23.i = getelementptr inbounds %struct.hclge_ptp, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %io_base23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base23.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %19, i32 120
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %21 = ptrtoint ptr %ptp2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptp2.i, align 4
  %lock29.i = getelementptr inbounds %struct.hclge_ptp, ptr %22, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock29.i, i32 noundef %call4.i) #7
  %23 = zext i32 %15 to i64
  %24 = zext i32 %20 to i64
  %25 = shl nuw i64 %24, 32
  %26 = or i64 %25, %23
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #7
  %mul.i = mul i64 %27, 1000000000
  %add.i = add i64 %mul.i, %conv11.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp32.i) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp32.i, i64 noundef %add.i) #7
  %28 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %ts.sroa.0.0.copyload62 = load i64, ptr %tmp32.i, align 8
  %ts.sroa.8.0.tmp32.i.sroa_idx = getelementptr inbounds i8, ptr %tmp32.i, i32 8
  %29 = ptrtoint ptr %ts.sroa.8.0.tmp32.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %ts.sroa.8.0.copyload64 = load i32, ptr %ts.sroa.8.0.tmp32.i.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp32.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %ts.sroa.0.0.copyload62)
  %cmp.i = icmp sgt i64 %ts.sroa.0.0.copyload62, 9223372035
  br i1 %cmp.i, label %if.then2.timespec64_to_ns.exit_crit_edge, label %if.end.i

if.then2.timespec64_to_ns.exit_crit_edge:         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts.sroa.0.0.copyload62)
  %cmp2.i = icmp slt i64 %ts.sroa.0.0.copyload62, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i50 = mul nsw i64 %ts.sroa.0.0.copyload62, 1000000000
  %conv.i = sext i32 %ts.sroa.8.0.copyload64 to i64
  %add.i51 = add i64 %mul.i50, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %if.then2.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i51, %if.end4.i ], [ 9223372036854775807, %if.then2.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %30 = sub nsw i64 0, %2
  %cond.p = select i1 %cmp, i64 %30, i64 %2
  %cond = add i64 %retval.0.i, %cond.p
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %cond) #7
  %31 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %31)
  %ts.sroa.0.0.copyload61 = load i64, ptr %tmp, align 8
  %ts.sroa.8.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %32 = ptrtoint ptr %ts.sroa.8.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %ts.sroa.8.0.copyload63 = load i32, ptr %ts.sroa.8.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %ptp2.i53 = getelementptr inbounds %struct.hclge_dev, ptr %34, i32 0, i32 85
  %35 = ptrtoint ptr %ptp2.i53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptp2.i53, align 4
  %lock.i54 = getelementptr inbounds %struct.hclge_ptp, ptr %36, i32 0, i32 7
  %call4.i55 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i54) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  call void @arm_heavy_mb() #7
  %37 = call i32 @llvm.bswap.i32(i32 %ts.sroa.8.0.copyload63) #7
  %38 = ptrtoint ptr %ptp2.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ptp2.i53, align 4
  %io_base.i57 = getelementptr inbounds %struct.hclge_ptp, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %io_base.i57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %41, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %37) #7, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  call void @arm_heavy_mb() #7
  %42 = lshr i64 %ts.sroa.0.0.copyload61, 32
  %conv14.i = trunc i64 %42 to i32
  %43 = call i32 @llvm.bswap.i32(i32 %conv14.i) #7
  %44 = ptrtoint ptr %ptp2.i53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ptp2.i53, align 4
  %io_base16.i = getelementptr inbounds %struct.hclge_ptp, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %io_base16.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %47, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %43) #7, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  call void @arm_heavy_mb() #7
  %conv22.i = trunc i64 %ts.sroa.0.0.copyload61 to i32
  %48 = call i32 @llvm.bswap.i32(i32 %conv22.i) #7
  %49 = ptrtoint ptr %ptp2.i53 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ptp2.i53, align 4
  %io_base24.i = getelementptr inbounds %struct.hclge_ptp, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %io_base24.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_base24.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %52, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %48) #7, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %ptp2.i53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ptp2.i53, align 4
  %io_base30.i = getelementptr inbounds %struct.hclge_ptp, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %io_base30.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io_base30.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %56, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 16777216) #7, !srcloc !112
  %57 = ptrtoint ptr %ptp2.i53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ptp2.i53, align 4
  %lock33.i = getelementptr inbounds %struct.hclge_ptp, ptr %58, i32 0, i32 7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock33.i, i32 noundef %call4.i55) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %59 = lshr i64 %delta, 32
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, -2147483648
  %62 = trunc i64 %2 to i32
  %63 = and i32 %62, 1073741823
  %conv9 = or i32 %63, %61
  %ptp14 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 85
  %64 = ptrtoint ptr %ptp14 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ptp14, align 4
  %lock = getelementptr inbounds %struct.hclge_ptp, ptr %65, i32 0, i32 7
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %conv9)
  %67 = ptrtoint ptr %ptp14 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ptp14, align 4
  %io_base = getelementptr inbounds %struct.hclge_ptp, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %70, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %66) #7, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %ptp14 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ptp14, align 4
  %io_base27 = getelementptr inbounds %struct.hclge_ptp, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %io_base27 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %io_base27, align 4
  %add.ptr28 = getelementptr i8, ptr %74, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 16777216) #7, !srcloc !112
  %75 = ptrtoint ptr %ptp14 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ptp14, align 4
  %lock30 = getelementptr inbounds %struct.hclge_ptp, ptr %76, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock30, i32 noundef %call16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %timespec64_to_ns.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hclge_ptp_gettimex(ptr nocapture noundef readonly %ptp, ptr nocapture noundef writeonly %ts, ptr nocapture noundef readnone %sts) #0 align 64 {
entry:
  %tmp32 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ptp, i32 -20
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %ptp2 = getelementptr inbounds %struct.hclge_dev, ptr %1, i32 0, i32 85
  %2 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp2, align 4
  %lock = getelementptr inbounds %struct.hclge_ptp, ptr %3, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %4 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp2, align 4
  %io_base = getelementptr inbounds %struct.hclge_ptp, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 124
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !94
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %conv11 = zext i32 %9 to i64
  %10 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp2, align 4
  %io_base15 = getelementptr inbounds %struct.hclge_ptp, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %io_base15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base15, align 4
  %add.ptr16 = getelementptr i8, ptr %13, i32 116
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %15 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ptp2, align 4
  %io_base23 = getelementptr inbounds %struct.hclge_ptp, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %io_base23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_base23, align 4
  %add.ptr24 = getelementptr i8, ptr %18, i32 120
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  %20 = ptrtoint ptr %ptp2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptp2, align 4
  %lock29 = getelementptr inbounds %struct.hclge_ptp, ptr %21, i32 0, i32 7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock29, i32 noundef %call4) #7
  %22 = zext i32 %14 to i64
  %23 = zext i32 %19 to i64
  %24 = shl nuw i64 %23, 32
  %25 = or i64 %24, %22
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %mul = mul i64 %26, 1000000000
  %add = add i64 %mul, %conv11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp32) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp32, i64 noundef %add) #7
  %27 = call ptr @memcpy(ptr %ts, ptr %tmp32, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp32) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 253, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hclge_ptp_cfg_qry._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hclge_ptp_cfg_qry._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 376, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @hclge_ptp_set_cfg._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @hclge_ptp_set_cfg._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 399, i32 3}
!15 = !{ptr @hclge_ptp_get_ts_info._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @hclge_ptp_get_ts_info._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 509, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hclge_ptp_init._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @hclge_ptp_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 516, i32 3}
!24 = !{ptr @hclge_ptp_init._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @hclge_ptp_init._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 524, i32 3}
!28 = !{ptr @hclge_ptp_init._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hclge_ptp_init._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 530, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hclge_ptp_init._entry.16, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hclge_ptp_init._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 554, i32 3}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hclge_ptp_uninit._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hclge_ptp_uninit._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!42 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 274, i32 3}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @hclge_ptp_cfg._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @hclge_ptp_cfg._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 443, i32 51}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 444, i32 4}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 457, i32 3}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @hclge_ptp_create_clock._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @hclge_ptp_create_clock._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 462, i32 3}
!63 = !{ptr @hclge_ptp_create_clock._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @hclge_ptp_create_clock._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @hclge_ptp_create_clock.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 466, i32 2}
!67 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 18, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @hclge_ptp_get_cycle._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @hclge_ptp_get_cycle._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/hisilicon/hns3/hns3pf/hclge_ptp.c", i32 236, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @hclge_ptp_int_en._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @hclge_ptp_int_en._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148362940, i64 2148362972, i64 2148363001, i64 2148363035, i64 2148363066, i64 2148363089}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{!"auto-init"}
!94 = !{i64 6037052}
!95 = !{i64 2158031837}
!96 = !{i64 2158033038}
!97 = !{i64 2158033556}
!98 = !{i64 2158034757}
!99 = !{i64 2158035830}
!100 = !{i64 2152335110, i64 2152335135}
!101 = !{i64 2152334429, i64 2152334454}
!102 = !{i64 4829984}
!103 = !{i64 4830181}
!104 = !{i64 2152315414}
!105 = !{i64 2158023652}
!106 = !{i64 2158024849}
!107 = !{i64 2158025372}
!108 = !{i64 1266400, i64 1266427, i64 1266449, i64 1266477}
!109 = !{i64 1266808, i64 1266835, i64 1266868, i64 1266889, i64 1266916, i64 1266942}
!110 = !{i64 2148751944, i64 2148752224, i64 2148752558, i64 2148752892}
!111 = !{i64 2158028632}
!112 = !{i64 6036634}
!113 = !{i64 2158029909}
!114 = !{i64 2158030344}
!115 = !{i64 2158030881}
!116 = !{i64 2158038394}
!117 = !{i64 2158038846}
!118 = !{i64 2158040278}
!119 = !{i64 2158041685}
!120 = !{i64 2158036733}
!121 = !{i64 2158037256}
!122 = !{i64 2158037779}
!123 = !{i64 2158043997}
!124 = !{i64 2158044525}
