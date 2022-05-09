; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c_pt.bc'
source_filename = "../drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.28 }
%union.anon.28 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.27 }
%union.anon.27 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aq_board_revision_s = type { i16, i16, ptr, ptr }
%struct.aq_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.aq_hw_caps_s = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.aq_nic_s = type { %struct.atomic_t, i32, [8 x ptr], [32 x ptr], ptr, ptr, i32, i32, i32, i8, ptr, ptr, %struct.aq_nic_cfg_s, %struct.timer_list, %struct.work_struct, %struct.timer_list, %struct.aq_hw_link_status_s, %struct.anon.130, [128 x i32], ptr, i32, i32, %struct.mutex, ptr, ptr, %struct.aq_hw_rx_fltrs_s }
%struct.aq_nic_cfg_s = type { ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, %struct.aq_fc_info, i32, i32, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, [8 x i8], [8 x i32], i32, [8 x i32], %struct.aq_rss_parameters, i32 }
%struct.aq_fc_info = type { i32, i32 }
%struct.aq_rss_parameters = type { i16, i16, i16, [10 x i32], [64 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.aq_hw_link_status_s = type { i32, i8, i32, i32 }
%struct.anon.130 = type { i32, [32 x [6 x i8]] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.aq_hw_rx_fltrs_s = type { %struct.hlist_head, i16, %struct.aq_hw_rx_fl2, %struct.aq_hw_rx_fl3l4, i8 }
%struct.hlist_head = type { ptr }
%struct.aq_hw_rx_fl2 = type { [16 x %struct.aq_rx_filter_vlan] }
%struct.aq_rx_filter_vlan = type { i8, i8, i16, i8 }
%struct.aq_hw_rx_fl3l4 = type { i8, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.131, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%union.anon.131 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.aq_hw_s = type { %struct.atomic_t, i8, ptr, ptr, ptr, %struct.aq_hw_link_status_s, %struct.hw_atl_utils_mbox, %struct.hw_atl_stats_s, %struct.aq_stats_s, i64, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.hw_atl_utils_fw_rpc, i64, i16, ptr }
%struct.hw_atl_utils_mbox = type { %struct.hw_atl_utils_mbox_header, %struct.hw_atl_stats_s, %struct.hw_atl_info }
%struct.hw_atl_utils_mbox_header = type { i32, i32, i32 }
%struct.hw_atl_info = type { [6 x i8], i16, i16, i8, i8, [4 x %struct.hw_atl_cable_diag], %struct.hw_atl_ptp_offset, [12 x i8], i32, i32, i32, [7 x i32], [3 x i32], [7 x i32], i32, [12 x i32], i32, i32, i32, i32, [3 x i32], [18 x i32], [4 x i16] }
%struct.hw_atl_cable_diag = type { i8, i8, i8, i8 }
%struct.hw_atl_ptp_offset = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.hw_atl_stats_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aq_stats_s = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.hw_atl_utils_fw_rpc = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.offload_info }
%struct.offload_info = type { i32, i32, [6 x i8], [2 x i8], %struct.offload_ip_info, %struct.offload_port_info, %struct.offload_ka_info, %struct.offload_rr_info, [0 x i8] }
%struct.offload_ip_info = type { i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.offload_port_info = type { i16, i16, i32, i32 }
%struct.offload_ka_info = type { i16, i16, i32, i32, i32, i32 }
%struct.offload_rr_info = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@aq_pci_ops = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @aq_pci_tbl, ptr @aq_pci_probe, ptr @aq_pci_remove, ptr null, ptr null, ptr @aq_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aq_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atlantic\00", [23 x i8] zeroinitializer }, align 32
@aq_pci_tbl = internal constant { [26 x %struct.pci_device_id], [192 x i8] } { [26 x %struct.pci_device_id] [%struct.pci_device_id { i32 7530, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 53504, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 53511, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 53512, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 53513, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 177, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 1969, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 2225, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 2481, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 4529, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 4785, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 32945, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 34737, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 34993, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 35249, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 37297, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 37553, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 192, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 38080, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 37824, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 1216, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 5312, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 4800, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 13504, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7530, i32 4544, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@aq_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @aq_pm_suspend_poweroff, ptr @aq_pm_resume_restore, ptr @aq_pm_freeze, ptr @aq_pm_thaw, ptr @aq_pm_suspend_poweroff, ptr @aq_pm_resume_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@aq_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&self->fwreq_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atlantic_mmio\00", [18 x i8] zeroinitializer }, align 32
@hw_atl_boards = internal constant { [30 x %struct.aq_board_revision_s], [88 x i8] } { [30 x %struct.aq_board_revision_s] [%struct.aq_board_revision_s { i16 1, i16 1, ptr @hw_atl_ops_a0, ptr @hw_atl_a0_caps_aqc107 }, %struct.aq_board_revision_s { i16 -12032, i16 1, ptr @hw_atl_ops_a0, ptr @hw_atl_a0_caps_aqc100 }, %struct.aq_board_revision_s { i16 -12025, i16 1, ptr @hw_atl_ops_a0, ptr @hw_atl_a0_caps_aqc107 }, %struct.aq_board_revision_s { i16 -12024, i16 1, ptr @hw_atl_ops_a0, ptr @hw_atl_a0_caps_aqc108 }, %struct.aq_board_revision_s { i16 -12023, i16 1, ptr @hw_atl_ops_a0, ptr @hw_atl_a0_caps_aqc109 }, %struct.aq_board_revision_s { i16 1, i16 2, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc107 }, %struct.aq_board_revision_s { i16 -12032, i16 2, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc100 }, %struct.aq_board_revision_s { i16 -12025, i16 2, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc107 }, %struct.aq_board_revision_s { i16 -12024, i16 2, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc108 }, %struct.aq_board_revision_s { i16 -12023, i16 2, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc109 }, %struct.aq_board_revision_s { i16 177, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc100 }, %struct.aq_board_revision_s { i16 1969, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc107 }, %struct.aq_board_revision_s { i16 2225, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc108 }, %struct.aq_board_revision_s { i16 2481, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc109 }, %struct.aq_board_revision_s { i16 4529, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc111 }, %struct.aq_board_revision_s { i16 4785, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc112 }, %struct.aq_board_revision_s { i16 -32591, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc100 }, %struct.aq_board_revision_s { i16 -30799, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc107 }, %struct.aq_board_revision_s { i16 -30543, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc108 }, %struct.aq_board_revision_s { i16 -30287, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc109 }, %struct.aq_board_revision_s { i16 -28239, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc111 }, %struct.aq_board_revision_s { i16 -27983, i16 0, ptr @hw_atl_ops_b0, ptr @hw_atl_b0_caps_aqc112 }, %struct.aq_board_revision_s { i16 192, i16 0, ptr @hw_atl2_ops, ptr @hw_atl2_caps_aqc113 }, %struct.aq_board_revision_s { i16 1216, i16 0, ptr @hw_atl2_ops, ptr @hw_atl2_caps_aqc113 }, %struct.aq_board_revision_s { i16 -27456, i16 0, ptr @hw_atl2_ops, ptr @hw_atl2_caps_aqc113 }, %struct.aq_board_revision_s { i16 -27712, i16 0, ptr @hw_atl2_ops, ptr @hw_atl2_caps_aqc113 }, %struct.aq_board_revision_s { i16 5312, i16 0, ptr @hw_atl2_ops, ptr @hw_atl2_caps_aqc113 }, %struct.aq_board_revision_s { i16 4800, i16 0, ptr @hw_atl2_ops, ptr @hw_atl2_caps_aqc115c }, %struct.aq_board_revision_s { i16 13504, i16 0, ptr @hw_atl2_ops, ptr @hw_atl2_caps_aqc113 }, %struct.aq_board_revision_s { i16 4544, i16 0, ptr @hw_atl2_ops, ptr @hw_atl2_caps_aqc116c }], [88 x i8] zeroinitializer }, align 32
@hw_atl_ops_a0 = external dso_local constant %struct.aq_hw_ops, align 4
@hw_atl_a0_caps_aqc107 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl_a0_caps_aqc100 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl_a0_caps_aqc108 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl_a0_caps_aqc109 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl_ops_b0 = external dso_local constant %struct.aq_hw_ops, align 4
@hw_atl_b0_caps_aqc107 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl_b0_caps_aqc100 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl_b0_caps_aqc108 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl_b0_caps_aqc109 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl_b0_caps_aqc111 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl_b0_caps_aqc112 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl2_ops = external dso_local constant %struct.aq_hw_ops, align 4
@hw_atl2_caps_aqc113 = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl2_caps_aqc115c = external dso_local constant %struct.aq_hw_caps_s, align 8
@hw_atl2_caps_aqc116c = external dso_local constant %struct.aq_hw_caps_s, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"aq_pci_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 474, i32 26 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 487, i32 9 }
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"aq_pci_tbl\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 25, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"aq_pm_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 465, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 240, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 135, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"hw_atl_boards\00", align 1
@___asan_gen_.25 = private constant [56 x i8] c"../drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 58, i32 41 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @aq_pci_ops, ptr @.str, ptr @aq_pci_tbl, ptr @aq_pm_ops, ptr @aq_pci_probe.__key, ptr @.str.1, ptr @.str.2, ptr @hw_atl_boards], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_pci_ops to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_pci_tbl to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_atl_boards to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_pci_func_alloc_irq(ptr nocapture noundef %self, i32 noundef %i, ptr noundef %name, ptr noundef %irq_handler, ptr noundef %irq_arg, ptr noundef %affinity_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 19
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %3 = and i40 %bf.load, 201326592
  %4 = icmp eq i40 %3, 0
  %call8 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i) #6
  br i1 %4, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call8, ptr noundef %irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %name, ptr noundef %irq_arg) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i37 = tail call i32 @request_threaded_irq(i32 noundef %call8, ptr noundef nonnull @aq_vec_isr_legacy, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef %irq_arg) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call.i, %if.then ], [ %call.i37, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err.0)
  %cmp = icmp sgt i32 %err.0, -1
  br i1 %cmp, label %if.then10, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then10:                                        ; preds = %if.end
  %shl = shl nuw i32 1, %i
  %msix_entry_mask = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 20
  %5 = ptrtoint ptr %msix_entry_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msix_entry_mask, align 4
  %or = or i32 %6, %shl
  store i32 %or, ptr %msix_entry_mask, align 4
  %7 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %7, i32 5)
  %bf.load12 = load i40, ptr %msix_enabled, align 1
  %8 = and i40 %bf.load12, 67108864
  %tobool16.not = icmp eq i40 %8, 0
  %tobool17.not = icmp eq ptr %affinity_mask, null
  %or.cond36 = or i1 %tobool17.not, %tobool16.not
  br i1 %or.cond36, label %if.then10.if.end22_crit_edge, label %if.then18

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i) #6
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %call19, ptr noundef nonnull %affinity_mask, i1 noundef zeroext true) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.then10.if.end22_crit_edge, %if.end.if.end22_crit_edge
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_vec_isr_legacy(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_pci_func_free_irqs(ptr noundef %self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 19
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %msix_entry_mask = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 20
  %link_irq_vec = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 12, i32 5
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry
  %dec36 = phi i32 [ 31, %entry ], [ %dec, %for.cond.backedge.for.body_crit_edge ]
  %shl = shl nuw i32 1, %dec36
  %2 = ptrtoint ptr %msix_entry_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msix_entry_mask, align 4
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.cond.backedge_crit_edge, label %if.end

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %link_irq_vec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %link_irq_vec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %dec36, i32 %5)
  %cmp = icmp eq i32 %dec36, %5
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.if.end11_crit_edge, label %if.else

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dec36)
  %cmp7 = icmp ult i32 %dec36, 8
  br i1 %cmp7, label %if.then8, label %if.else.for.cond.backedge_crit_edge

if.else.for.cond.backedge_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.backedge

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.aq_nic_s, ptr %self, i32 0, i32 2, i32 %dec36
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %irq_data.0 = phi ptr [ %7, %if.then8 ], [ %self, %if.end.if.end11_crit_edge ]
  %8 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %8, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %9 = and i40 %bf.load, 67108864
  %tobool12.not = icmp eq i40 %9, 0
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %dec36) #6
  %call.i.i = tail call i32 @__irq_apply_affinity_hint(i32 noundef %call, ptr noundef null, i1 noundef zeroext true) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %call16 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %dec36) #6
  %call17 = tail call ptr @free_irq(i32 noundef %call16, ptr noundef %irq_data.0) #6
  %neg = xor i32 %shl, -1
  %10 = ptrtoint ptr %msix_entry_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msix_entry_mask, align 4
  %and20 = and i32 %11, %neg
  store i32 %and20, ptr %msix_entry_mask, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end15, %if.else.for.cond.backedge_crit_edge, %for.body.for.cond.backedge_crit_edge
  %dec = add nsw i32 %dec36, -1
  %tobool.not = icmp eq i32 %dec36, 0
  br i1 %tobool.not, label %for.end, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @aq_pci_func_get_irq_type(ptr nocapture noundef readonly %self) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.aq_nic_s, ptr %self, i32 0, i32 19
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %msix_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_loadN_noabort(i32 %2, i32 5)
  %bf.load = load i40, ptr %msix_enabled, align 1
  %3 = and i40 %bf.load, 67108864
  %tobool.not = icmp eq i40 %3, 0
  %4 = and i40 %bf.load, 134217728
  %tobool6.not = icmp eq i40 %4, 0
  %. = select i1 %tobool6.not, i32 1, i32 2
  %retval.0 = select i1 %tobool.not, i32 %., i32 3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aq_pci_func_register_driver() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @aq_pci_ops, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aq_pci_func_unregister_driver() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_unregister_driver(ptr noundef nonnull @aq_pci_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup111_crit_edge

entry.cleanup111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup111

if.end:                                           ; preds = %entry
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.if.end5.i_crit_edge, label %if.then.i

if.end.if.end5.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end
  %call.i15.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %cmp.i16.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.err_pci_func_crit_edge

if.then.i.err_pci_func_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pci_func

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end.if.end5.i_crit_edge
  %.sink.i = phi i64 [ -1, %if.end.if.end5.i_crit_edge ], [ 4294967295, %if.then.i.if.end5.i_crit_edge ]
  %call1.i17.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef %.sink.i) #6
  %call6.i = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end5.i.err_pci_func_crit_edge, label %if.end4

if.end5.i.err_pci_func_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pci_func

if.end4:                                          ; preds = %if.end5.i
  tail call void @pci_set_master(ptr noundef %pdev) #6
  %call5 = tail call ptr @aq_ndev_alloc() #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.err_ndev_crit_edge, label %if.end8

if.end4.err_ndev_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ndev

if.end8:                                          ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %call5, i32 2304
  %pdev10 = getelementptr i8, ptr %call5, i32 3664
  %0 = ptrtoint ptr %pdev10 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev10, align 8
  %parent = getelementptr inbounds %struct.net_device, ptr %call5, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev.i, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %fwreq_mutex = getelementptr i8, ptr %call5, i32 3676
  tail call void @__mutex_init(ptr noundef %fwreq_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @aq_pci_probe.__key) #6
  %aq_hw_ops = getelementptr i8, ptr %call5, i32 2496
  %call12 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #6
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %3 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 7530, i16 %4)
  %cmp.not.i = icmp eq i16 %4, 7530
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end8.err_ioremap_crit_edge

if.end8.err_ioremap_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ioremap

for.cond.preheader.i:                             ; preds = %if.end8
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %5 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device.i, align 2
  %revision15.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.040.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [30 x %struct.aq_board_revision_s], ptr @hw_atl_boards, i32 0, i32 %i.040.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %6)
  %cmp6.i = icmp eq i16 %8, %6
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %9 = add nsw i32 %i.040.i, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %9)
  %cmp10.i = icmp ult i32 %9, 20
  br i1 %cmp10.i, label %land.lhs.true.i.for.end.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %revision.i = getelementptr [30 x %struct.aq_board_revision_s], ptr @hw_atl_boards, i32 0, i32 %i.040.i, i32 1
  %10 = ptrtoint ptr %revision.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %revision.i, align 2
  %12 = ptrtoint ptr %revision15.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %revision15.i, align 4
  %14 = zext i8 %13 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %14)
  %cmp17.i = icmp eq i16 %11, %14
  br i1 %cmp17.i, label %lor.lhs.false.i.for.end.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

lor.lhs.false.i.for.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.err_ioremap_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.err_ioremap_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ioremap

for.end.i:                                        ; preds = %lor.lhs.false.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge
  %ops21.i = getelementptr [30 x %struct.aq_board_revision_s], ptr @hw_atl_boards, i32 0, i32 %i.040.i, i32 2
  %15 = ptrtoint ptr %ops21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops21.i, align 4
  %17 = ptrtoint ptr %aq_hw_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %aq_hw_ops, align 4
  %caps23.i = getelementptr [30 x %struct.aq_board_revision_s], ptr @hw_atl_boards, i32 0, i32 %i.040.i, i32 3
  %18 = ptrtoint ptr %caps23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %caps23.i, align 4
  %20 = ptrtoint ptr %call12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %call12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %i.040.i)
  %cmp25.i = icmp eq i32 %i.040.i, 30
  br i1 %cmp25.i, label %for.end.i.err_ioremap_crit_edge, label %if.end16

for.end.i.err_ioremap_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ioremap

if.end16:                                         ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 792) #9
  %aq_hw = getelementptr i8, ptr %call5, i32 2472
  %22 = ptrtoint ptr %aq_hw to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %aq_hw, align 8
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end16.err_ioremap_crit_edge, label %if.end21

if.end16.err_ioremap_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_ioremap

if.end21:                                         ; preds = %if.end16
  %call22 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #6
  %23 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aq_hw, align 8
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call22, ptr %aq_nic_cfg, align 8
  %26 = load ptr, ptr %aq_hw, align 8
  %aq_nic_cfg25 = getelementptr inbounds %struct.aq_hw_s, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %aq_nic_cfg25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %aq_nic_cfg25, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %priv_data_len = getelementptr inbounds %struct.aq_hw_caps_s, ptr %30, i32 0, i32 26
  %31 = ptrtoint ptr %priv_data_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %priv_data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool27.not = icmp eq i32 %32, 0
  br i1 %tobool27.not, label %if.end21.if.end40_crit_edge, label %if.end8.i.i

if.end21.if.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end8.i.i:                                      ; preds = %if.end21
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #10
  %33 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aq_hw, align 8
  %priv = getelementptr inbounds %struct.aq_hw_s, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i, ptr %priv, align 4
  %36 = load ptr, ptr %aq_hw, align 8
  %priv36 = getelementptr inbounds %struct.aq_hw_s, ptr %36, i32 0, i32 22
  %37 = ptrtoint ptr %priv36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv36, align 4
  %tobool37.not = icmp eq ptr %38, null
  br i1 %tobool37.not, label %if.end8.i.i.err_free_aq_hw_crit_edge, label %if.end8.i.i.if.end40_crit_edge

if.end8.i.i.if.end40_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.end8.i.i.err_free_aq_hw_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_aq_hw

if.end40:                                         ; preds = %if.end8.i.i.if.end40_crit_edge, %if.end21.if.end40_crit_edge
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %for.inc, label %if.end40.if.then42_crit_edge

if.end40.if.then42_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

if.then42:                                        ; preds = %for.inc.2.if.then42_crit_edge, %for.inc.1.if.then42_crit_edge, %for.inc.if.then42_crit_edge, %if.end40.if.then42_crit_edge
  %bar.0199.lcssa = phi i32 [ 0, %if.end40.if.then42_crit_edge ], [ 1, %for.inc.if.then42_crit_edge ], [ 2, %for.inc.1.if.then42_crit_edge ], [ 3, %for.inc.2.if.then42_crit_edge ]
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar.0199.lcssa
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp45 = icmp eq i32 %42, 0
  br i1 %cmp45, label %if.then42.err_free_aq_hw_priv_crit_edge, label %if.end47

if.then42.err_free_aq_hw_priv_crit_edge:          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_aq_hw_priv

if.end47:                                         ; preds = %if.then42
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar.0199.lcssa, i32 1
  %43 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp50 = icmp eq i32 %44, 0
  %sub = sub i32 1, %42
  %add = add i32 %sub, %44
  %cond = select i1 %cmp50, i32 0, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %cond)
  %cmp57 = icmp ult i32 %cond, 25
  br i1 %cmp57, label %if.end47.err_free_aq_hw_priv_crit_edge, label %if.end59

if.end47.err_free_aq_hw_priv_crit_edge:           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_aq_hw_priv

if.end59:                                         ; preds = %if.end47
  %call60 = tail call ptr @ioremap(i32 noundef %42, i32 noundef %cond) #6
  %45 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %aq_hw, align 8
  %mmio = getelementptr inbounds %struct.aq_hw_s, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call60, ptr %mmio, align 8
  %48 = load ptr, ptr %aq_hw, align 8
  %mmio63 = getelementptr inbounds %struct.aq_hw_s, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %mmio63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mmio63, align 8
  %tobool64.not = icmp eq ptr %50, null
  br i1 %tobool64.not, label %if.end59.err_free_aq_hw_priv_crit_edge, label %if.end72

if.end59.err_free_aq_hw_priv_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_aq_hw_priv

for.inc:                                          ; preds = %if.end40
  %flags.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 3
  %51 = ptrtoint ptr %flags.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.1, align 4
  %and.1 = and i32 %52, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool41.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool41.not.1, label %for.inc.1, label %for.inc.if.then42_crit_edge

for.inc.if.then42_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

for.inc.1:                                        ; preds = %for.inc
  %flags.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %53 = ptrtoint ptr %flags.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.2, align 4
  %and.2 = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool41.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool41.not.2, label %for.inc.2, label %for.inc.1.if.then42_crit_edge

for.inc.1.if.then42_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

for.inc.2:                                        ; preds = %for.inc.1
  %flags.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3, i32 3
  %55 = ptrtoint ptr %flags.3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.3, align 4
  %and.3 = and i32 %56, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool41.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool41.not.3, label %for.inc.2.err_free_aq_hw_priv_crit_edge, label %for.inc.2.if.then42_crit_edge

for.inc.2.if.then42_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

for.inc.2.err_free_aq_hw_priv_crit_edge:          ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_aq_hw_priv

if.end72:                                         ; preds = %if.end59
  %call73 = tail call ptr @aq_nic_get_cfg(ptr noundef %add.ptr.i) #6
  %57 = ptrtoint ptr %call73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call73, align 8
  %msix_irqs = getelementptr inbounds %struct.aq_hw_caps_s, ptr %58, i32 0, i32 14
  %59 = ptrtoint ptr %msix_irqs to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %msix_irqs, align 8
  %61 = tail call i8 @llvm.umin.i8(i8 %60, i8 8)
  %cond83 = zext i8 %61 to i32
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %62 = load volatile i32, ptr @__num_online_cpus, align 4
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 %cond83)
  %add93 = add nuw nsw i32 %63, 2
  %64 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev10, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %65, i32 noundef 1, i32 noundef %add93, i32 noundef 7, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp96 = icmp slt i32 %call.i, 0
  br i1 %cmp96, label %if.end72.err_hwinit_crit_edge, label %if.end99

if.end72.err_hwinit_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hwinit

if.end99:                                         ; preds = %if.end72
  %irqvecs = getelementptr i8, ptr %call5, i32 3672
  %66 = ptrtoint ptr %irqvecs to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call.i, ptr %irqvecs, align 8
  tail call void @aq_nic_cfg_start(ptr noundef %add.ptr.i) #6
  tail call void @aq_nic_ndev_init(ptr noundef %add.ptr.i) #6
  %call100 = tail call i32 @aq_nic_ndev_register(ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %err_register, label %if.end104

if.end104:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %call105 = tail call i32 @aq_drvinfo_init(ptr noundef nonnull %call5) #6
  br label %cleanup111

err_register:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @aq_nic_free_vectors(ptr noundef %add.ptr.i) #6
  %67 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev10, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %68) #6
  br label %err_hwinit

err_hwinit:                                       ; preds = %err_register, %if.end72.err_hwinit_crit_edge
  %err.3 = phi i32 [ %call.i, %if.end72.err_hwinit_crit_edge ], [ %call100, %err_register ]
  %69 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %aq_hw, align 8
  %mmio107 = getelementptr inbounds %struct.aq_hw_s, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %mmio107 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio107, align 8
  tail call void @iounmap(ptr noundef %72) #6
  br label %err_free_aq_hw_priv

err_free_aq_hw_priv:                              ; preds = %err_hwinit, %for.inc.2.err_free_aq_hw_priv_crit_edge, %if.end59.err_free_aq_hw_priv_crit_edge, %if.end47.err_free_aq_hw_priv_crit_edge, %if.then42.err_free_aq_hw_priv_crit_edge
  %err.4 = phi i32 [ %err.3, %err_hwinit ], [ -5, %if.end47.err_free_aq_hw_priv_crit_edge ], [ -5, %if.then42.err_free_aq_hw_priv_crit_edge ], [ -5, %if.end59.err_free_aq_hw_priv_crit_edge ], [ -5, %for.inc.2.err_free_aq_hw_priv_crit_edge ]
  %73 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %aq_hw, align 8
  %priv109 = getelementptr inbounds %struct.aq_hw_s, ptr %74, i32 0, i32 22
  %75 = ptrtoint ptr %priv109 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv109, align 4
  tail call void @kfree(ptr noundef %76) #6
  br label %err_free_aq_hw

err_free_aq_hw:                                   ; preds = %err_free_aq_hw_priv, %if.end8.i.i.err_free_aq_hw_crit_edge
  %err.5 = phi i32 [ -12, %if.end8.i.i.err_free_aq_hw_crit_edge ], [ %err.4, %err_free_aq_hw_priv ]
  %77 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %aq_hw, align 8
  tail call void @kfree(ptr noundef %78) #6
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_free_aq_hw, %if.end16.err_ioremap_crit_edge, %for.end.i.err_ioremap_crit_edge, %for.inc.i.err_ioremap_crit_edge, %if.end8.err_ioremap_crit_edge
  %err.6 = phi i32 [ %err.5, %err_free_aq_hw ], [ -12, %if.end16.err_ioremap_crit_edge ], [ -22, %if.end8.err_ioremap_crit_edge ], [ -22, %for.end.i.err_ioremap_crit_edge ], [ -22, %for.inc.i.err_ioremap_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call5) #6
  br label %err_ndev

err_ndev:                                         ; preds = %err_ioremap, %if.end4.err_ndev_crit_edge
  %err.7 = phi i32 [ %err.6, %err_ioremap ], [ -12, %if.end4.err_ndev_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  br label %err_pci_func

err_pci_func:                                     ; preds = %err_ndev, %if.end5.i.err_pci_func_crit_edge, %if.then.i.err_pci_func_crit_edge
  %err.8 = phi i32 [ %err.7, %err_ndev ], [ -63, %if.then.i.err_pci_func_crit_edge ], [ %call6.i, %if.end5.i.err_pci_func_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  br label %cleanup111

cleanup111:                                       ; preds = %err_pci_func, %if.end104, %entry.cleanup111_crit_edge
  %retval.0 = phi i32 [ %err.8, %err_pci_func ], [ 0, %if.end104 ], [ %call, %entry.cleanup111_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_pci_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @aq_clear_rxnfc_all_rules(ptr noundef %1) #6
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %reg_state = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 121
  %6 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 1
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_netdev(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @aq_macsec_free(ptr noundef %1) #6
  tail call void @aq_nic_free_vectors(ptr noundef %1) #6
  %pdev.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %8) #6
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aq_hw, align 8
  %mmio = getelementptr inbounds %struct.aq_hw_s, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio, align 8
  tail call void @iounmap(ptr noundef %12) #6
  %13 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aq_hw, align 8
  %priv = getelementptr inbounds %struct.aq_hw_s, ptr %14, i32 0, i32 22
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %16) #6
  %17 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aq_hw, align 8
  tail call void @kfree(ptr noundef %18) #6
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  %19 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ndev, align 4
  tail call void @free_netdev(ptr noundef %20) #6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aq_pci_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @aq_nic_shutdown(ptr noundef %1) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %2 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @pci_wake_from_d3(ptr noundef %pdev, i1 noundef zeroext false) #6
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_ndev_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aq_nic_get_cfg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_cfg_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_ndev_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_ndev_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_drvinfo_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_free_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_clear_rxnfc_all_rules(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_macsec_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_pm_suspend_poweroff(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @rtnl_lock() #6
  %power_state.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %power_state.i, align 8
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev.i, align 4
  tail call void @netif_device_detach(ptr noundef %4) #6
  %5 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev.i, align 4
  tail call void @netif_tx_stop_all_queues(ptr noundef %6) #6
  %7 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %entry.aq_suspend_common.exit_crit_edge, label %if.then.i

entry.aq_suspend_common.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_suspend_common.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @aq_nic_stop(ptr noundef %1) #6
  br label %aq_suspend_common.exit

aq_suspend_common.exit:                           ; preds = %if.then.i, %entry.aq_suspend_common.exit_crit_edge
  %aq_hw.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %aq_hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aq_hw.i, align 8
  %aq_nic_cfg.i = getelementptr inbounds %struct.aq_hw_s, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %aq_nic_cfg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aq_nic_cfg.i, align 8
  %wol.i = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %wol.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.i = icmp eq i32 %16, 0
  tail call void @aq_nic_deinit(ptr noundef %1, i1 noundef zeroext %tobool6.not.i) #6
  tail call void @aq_nic_set_power(ptr noundef %1) #6
  tail call void @rtnl_unlock() #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_pm_resume_restore(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atl_resume_common(ptr noundef %dev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_pm_freeze(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @rtnl_lock() #6
  %power_state.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %power_state.i, align 8
  %ndev.i = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev.i, align 4
  tail call void @netif_device_detach(ptr noundef %4) #6
  %5 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev.i, align 4
  tail call void @netif_tx_stop_all_queues(ptr noundef %6) #6
  %7 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %entry.aq_suspend_common.exit_crit_edge, label %if.then.i

entry.aq_suspend_common.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %aq_suspend_common.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call i32 @aq_nic_stop(ptr noundef %1) #6
  br label %aq_suspend_common.exit

aq_suspend_common.exit:                           ; preds = %if.then.i, %entry.aq_suspend_common.exit_crit_edge
  tail call void @rtnl_unlock() #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_pm_thaw(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atl_resume_common(ptr noundef %dev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_deinit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @aq_nic_set_power(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl_resume_common(ptr noundef %dev, i1 noundef zeroext %deep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @rtnl_lock() #6
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #6
  tail call void @pci_restore_state(ptr noundef %add.ptr) #6
  br i1 %deep, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %aq_hw = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %aq_hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aq_hw, align 8
  %aq_nic_cfg = getelementptr inbounds %struct.aq_hw_s, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %aq_nic_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aq_nic_cfg, align 8
  %wol = getelementptr inbounds %struct.aq_nic_cfg_s, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  tail call void @aq_nic_deinit(ptr noundef %1, i1 noundef zeroext %tobool2.not) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ndev = getelementptr inbounds %struct.aq_nic_s, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @aq_nic_init(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.err_exit_crit_edge

if.then4.err_exit_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end8:                                          ; preds = %if.then4
  %call9 = tail call i32 @aq_nic_start(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.end8.err_exit_crit_edge

if.end8.err_exit_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %if.end8.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev, align 4
  tail call void @netif_device_attach(ptr noundef %13) #6
  %14 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 104
  %16 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp4.not.i = icmp eq i32 %17, 0
  br i1 %cmp4.not.i, label %if.end13.if.end17_crit_edge, label %for.body.lr.ph.i

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.body.lr.ph.i:                                 ; preds = %if.end13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %19, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %inc.i = add nuw i32 %i.05.i, 1
  %20 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end17_crit_edge

for.body.i.if.end17_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

err_exit:                                         ; preds = %if.end8.err_exit_crit_edge, %if.then4.err_exit_crit_edge
  %ret.1 = phi i32 [ %call5, %if.then4.err_exit_crit_edge ], [ %call9, %if.end8.err_exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp = icmp slt i32 %ret.1, 0
  br i1 %cmp, label %if.then16, label %err_exit.if.end17_crit_edge

err_exit.if.end17_crit_edge:                      ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %err_exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @aq_nic_deinit(ptr noundef %1, i1 noundef zeroext true) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %err_exit.if.end17_crit_edge, %for.body.i.if.end17_crit_edge, %if.end13.if.end17_crit_edge
  %ret.132 = phi i32 [ %ret.1, %if.then16 ], [ %ret.1, %err_exit.if.end17_crit_edge ], [ 0, %if.end13.if.end17_crit_edge ], [ 0, %for.body.i.if.end17_crit_edge ]
  tail call void @rtnl_unlock() #6
  ret i32 %ret.132
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aq_nic_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c", i32 487, i32 9}
!2 = !{ptr @aq_pci_ops, !3, !"aq_pci_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c", i32 474, i32 26}
!4 = !{ptr @aq_pci_tbl, !5, !"aq_pci_tbl", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c", i32 25, i32 35}
!6 = !{ptr @aq_pci_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c", i32 240, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c", i32 135, i32 34}
!11 = !{ptr @hw_atl_boards, !12, !"hw_atl_boards", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c", i32 58, i32 41}
!13 = !{ptr @aq_pm_ops, !14, !"aq_pm_ops", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c", i32 465, i32 32}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
