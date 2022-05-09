; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qede/qede_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qede/qede_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qede_forced_speed_map = type { i32, [3 x i32], ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.174 = type { i64, [32 x i8], i32 }
%struct.anon.175 = type { i64, [32 x i8] }
%struct.anon.176 = type { i64, [32 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qede_fastpath = type { ptr, i8, i8, i8, %struct.napi_struct, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qede_rx_queue = type { ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i16, i16, i32, i32, ptr, %struct.qed_chain, [124 x i8], %struct.qed_chain, [64 x %struct.qede_agg_info], i64, i64, i64, i64, i64, ptr, [116 x i8], %struct.xdp_rxq_info }
%struct.qed_chain = type { ptr, ptr, %struct.anon.166, %union.anon.168, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i32, %struct.anon.169, ptr, i32, i32, i32, i8 }
%struct.anon.166 = type { ptr, %union.anon.167 }
%union.anon.167 = type { %struct.qed_chain_pbl_u32 }
%struct.qed_chain_pbl_u32 = type { i32, i32 }
%union.anon.168 = type { %struct.qed_chain_u32 }
%struct.qed_chain_u32 = type { i32, i32 }
%struct.anon.169 = type { ptr, i32, i32 }
%struct.qede_agg_info = type { %struct.sw_rx_data, ptr, i16, i8, i8, i8, i8 }
%struct.sw_rx_data = type { ptr, i32, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.qede_coalesce = type { i8, i16, i16 }
%struct.qede_tx_queue = type { i8, i8, i16, i16, i16, i64, i64, i64, ptr, ptr, ptr, %union.db_prod, %struct.spinlock, i32, %union.anon.171, %struct.qed_chain, ptr, i16, i16 }
%union.db_prod = type { i32 }
%union.anon.171 = type { ptr }
%struct.qede_reload_args = type { ptr, %union.anon.173 }
%union.anon.173 = type { i64 }
%struct.qede_dev = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, ptr, i64, %struct.qed_dev_eth_info, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, %struct.qed_int_info, %struct.mutex, i32, i16, i32, %struct.qede_stats, i32, [128 x i16], [10 x i32], i8, i16, i16, i8, %struct.list_head, i16, i16, i8, %struct.delayed_work, i32, i16, i16, ptr, i8, %struct.qede_rdma_dev, ptr, i32, i32, %struct.qede_dump_info }
%struct.qed_dev_eth_info = type { %struct.qed_dev_info, i8, i8, [6 x i8], i16, i16, i8, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.qede_stats = type { %struct.qede_stats_common, %union.anon.172 }
%struct.qede_stats_common = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.172 = type { %struct.qede_stats_bb }
%struct.qede_stats_bb = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qede_rdma_dev = type { ptr, %struct.list_head, %struct.list_head, ptr, %struct.kref, %struct.completion, i8 }
%struct.qede_dump_info = type { i32, i8, [4 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.165, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.165 = type { ptr }
%struct.qed_link_output = type { i8, [3 x i32], [3 x i32], [3 x i32], i32, i8, i8, i8, i32, i8, i8, i8, %struct.qed_link_eee_params, i32, i32 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.qed_eth_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.153, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.153 = type { i32 }
%struct.qed_update_vport_params = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.qed_update_vport_rss_params }
%struct.qed_update_vport_rss_params = type { [128 x ptr], [10 x i32], i8 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.154, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.154 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.qed_link_params = type { i8, i32, i8, [3 x i32], i32, i32, i32, %struct.qed_link_eee_params, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.qed_sb_info = type { ptr, i32, i32, i16, ptr, i8, ptr }
%struct.sw_tx_bd = type { ptr, i8 }
%struct.qed_chain_next = type { %struct.regpair, ptr }
%struct.regpair = type { i32, i32 }
%struct.addr_tbl_entry = type { ptr, i32 }
%struct.eth_tx_1st_bd = type { %struct.regpair, i16, %struct.eth_tx_data_1st_bd }
%struct.eth_tx_data_1st_bd = type { i16, i8, %struct.eth_tx_1st_bd_flags, i16 }
%struct.eth_tx_1st_bd_flags = type { i8 }
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
%struct.page = type { i32, %union.anon.28, %union.anon.105, %struct.atomic_t, i32 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.105 = type { %struct.atomic_t }
%struct.eth_db_data = type { i8, i8, i16 }
%struct.eth_fast_path_rx_reg_cqe = type { i8, i8, i16, %struct.parsing_and_err_flags, i16, i32, i16, i8, %struct.eth_tunnel_parsing_flags, i8, i8, i16, i32, [7 x i8], %struct.eth_pmd_flow_flags }
%struct.parsing_and_err_flags = type { i16 }
%struct.eth_tunnel_parsing_flags = type { i8 }
%struct.eth_pmd_flow_flags = type { i8 }
%struct.qed_selftest_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.qed_chain_u16 = type { i16, i16 }
%struct.qed_chain_pbl_u16 = type { i16, i16 }

@qede_forced_speed_maps = internal global [7 x %struct.qede_forced_speed_map] [%struct.qede_forced_speed_map { i32 1000, [3 x i32] zeroinitializer, ptr @qede_forced_speed_1000, i32 3 }, %struct.qede_forced_speed_map { i32 10000, [3 x i32] zeroinitializer, ptr @qede_forced_speed_10000, i32 8 }, %struct.qede_forced_speed_map { i32 20000, [3 x i32] zeroinitializer, ptr @qede_forced_speed_20000, i32 1 }, %struct.qede_forced_speed_map { i32 25000, [3 x i32] zeroinitializer, ptr @qede_forced_speed_25000, i32 3 }, %struct.qede_forced_speed_map { i32 40000, [3 x i32] zeroinitializer, ptr @qede_forced_speed_40000, i32 4 }, %struct.qede_forced_speed_map { i32 50000, [3 x i32] zeroinitializer, ptr @qede_forced_speed_50000, i32 3 }, %struct.qede_forced_speed_map { i32 100000, [3 x i32] zeroinitializer, ptr @qede_forced_speed_100000, i32 4 }], section ".data..ro_after_init", align 4
@qede_set_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015[%s:%d(%s)]Interface is down\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qede_set_coalesce\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/qlogic/qede/qede_ethtool.c\00", [48 x i8] zeroinitializer }, align 32
@qede_set_coalesce._entry_ptr = internal global ptr @qede_set_coalesce._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qede_set_coalesce._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\015[%s:%d(%s)]Can't support requested %s coalesce value [max supported value %d]\0A\00", [47 x i8] zeroinitializer }, align 32
@qede_set_coalesce._entry_ptr.6 = internal global ptr @qede_set_coalesce._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@qede_set_coalesce._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Set RX coalesce error, rc = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@qede_set_coalesce._entry_ptr.11 = internal global ptr @qede_set_coalesce._entry.9, section ".printk_index", align 4
@qede_set_coalesce._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 892, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Set TX coalesce error, rc = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@qede_set_coalesce._entry_ptr.14 = internal global ptr @qede_set_coalesce._entry.12, section ".printk_index", align 4
@qede_change_mtu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Configuring MTU size of %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qede_change_mtu\00", [16 x i8] zeroinitializer }, align 32
@qede_change_mtu._entry_ptr = internal global ptr @qede_change_mtu._entry, section ".printk_index", align 4
@qede_set_per_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.17, ptr @.str.2, i32 2146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qede_set_per_coalesce\00", [42 x i8] zeroinitializer }, align 32
@qede_set_per_coalesce._entry_ptr = internal global ptr @qede_set_per_coalesce._entry, section ".printk_index", align 4
@qede_set_per_coalesce._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 2155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015[%s:%d(%s)]Invalid queue\0A\00", [36 x i8] zeroinitializer }, align 32
@qede_set_per_coalesce._entry_ptr.20 = internal global ptr @qede_set_per_coalesce._entry.18, section ".printk_index", align 4
@qede_set_per_coalesce._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.17, ptr @.str.2, i32 2173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_set_per_coalesce._entry_ptr.22 = internal global ptr @qede_set_per_coalesce._entry.21, section ".printk_index", align 4
@qede_set_per_coalesce._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.17, ptr @.str.2, i32 2186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_set_per_coalesce._entry_ptr.24 = internal global ptr @qede_set_per_coalesce._entry.23, section ".printk_index", align 4
@qede_vf_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @qede_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @qede_get_msglevel, ptr @qede_set_msglevel, ptr null, ptr @qede_get_link, ptr null, ptr null, ptr null, ptr null, ptr @qede_get_coalesce, ptr @qede_set_coalesce, ptr @qede_get_ringparam, ptr @qede_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr @qede_get_strings, ptr null, ptr @qede_get_ethtool_stats, ptr null, ptr null, ptr @qede_get_priv_flags, ptr null, ptr @qede_get_sset_count, ptr @qede_get_rxnfc, ptr @qede_set_rxnfc, ptr null, ptr null, ptr @qede_get_rxfh_key_size, ptr @qede_get_rxfh_indir_size, ptr @qede_get_rxfh, ptr @qede_set_rxfh, ptr null, ptr null, ptr @qede_get_channels, ptr @qede_set_channels, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_get_tunable, ptr @qede_set_tunable, ptr @qede_get_per_coalesce, ptr @qede_set_per_coalesce, ptr @qede_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@qede_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 17, i32 0, ptr @qede_get_drvinfo, ptr @qede_get_regs_len, ptr @qede_get_regs, ptr @qede_get_wol, ptr @qede_set_wol, ptr @qede_get_msglevel, ptr @qede_set_msglevel, ptr @qede_nway_reset, ptr @qede_get_link, ptr null, ptr null, ptr null, ptr null, ptr @qede_get_coalesce, ptr @qede_set_coalesce, ptr @qede_get_ringparam, ptr @qede_set_ringparam, ptr null, ptr @qede_get_pauseparam, ptr @qede_set_pauseparam, ptr @qede_self_test, ptr @qede_get_strings, ptr @qede_set_phys_id, ptr @qede_get_ethtool_stats, ptr null, ptr null, ptr @qede_get_priv_flags, ptr @qede_set_priv_flags, ptr @qede_get_sset_count, ptr @qede_get_rxnfc, ptr @qede_set_rxnfc, ptr @qede_flash_device, ptr null, ptr @qede_get_rxfh_key_size, ptr @qede_get_rxfh_indir_size, ptr @qede_get_rxfh, ptr @qede_set_rxfh, ptr null, ptr null, ptr @qede_get_channels, ptr @qede_set_channels, ptr @qede_get_dump_flag, ptr @qede_get_dump_data, ptr @qede_set_dump, ptr @qede_get_ts_info, ptr @qede_get_module_info, ptr @qede_get_module_eeprom, ptr @qede_get_eee, ptr @qede_set_eee, ptr @qede_get_tunable, ptr @qede_set_tunable, ptr @qede_get_per_coalesce, ptr @qede_set_per_coalesce, ptr @qede_get_link_ksettings, ptr @qede_set_link_ksettings, ptr null, ptr @qede_get_fecparam, ptr @qede_set_fecparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@qede_forced_speed_1000 = internal constant [3 x i32] [i32 5, i32 17, i32 41], section ".init.rodata", align 4
@qede_forced_speed_10000 = internal constant [8 x i32] [i32 12, i32 19, i32 18, i32 20, i32 42, i32 43, i32 44, i32 45], section ".init.rodata", align 4
@qede_forced_speed_20000 = internal constant [1 x i32] [i32 22], section ".init.rodata", align 4
@qede_forced_speed_25000 = internal constant [3 x i32] [i32 32, i32 31, i32 33], section ".init.rodata", align 4
@qede_forced_speed_40000 = internal constant [4 x i32] [i32 26, i32 23, i32 24, i32 25], section ".init.rodata", align 4
@qede_forced_speed_50000 = internal constant [3 x i32] [i32 35, i32 34, i32 40], section ".init.rodata", align 4
@qede_forced_speed_100000 = internal constant [4 x i32] [i32 36, i32 37, i32 38, i32 39], section ".init.rodata", align 4
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qede\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%d.%d.%d\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[storm %s]\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mbi %s [mfw %s]\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfw %s\00", [25 x i8] zeroinitializer }, align 32
@qede_get_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Read Rx coalesce error\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qede_get_coalesce\00", [46 x i8] zeroinitializer }, align 32
@qede_get_coalesce._entry_ptr = internal global ptr @qede_get_coalesce._entry, section ".printk_index", align 4
@qede_get_coalesce._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 825, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Read Tx coalesce error\0A\00", [59 x i8] zeroinitializer }, align 32
@qede_get_coalesce._entry_ptr.37 = internal global ptr @qede_get_coalesce._entry.35, section ".printk_index", align 4
@qede_set_ringparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]Set ring params command parameters: rx_pending = %d, tx_pending = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qede_set_ringparam\00", [45 x i8] zeroinitializer }, align 32
@qede_set_ringparam._entry_ptr = internal global ptr @qede_set_ringparam._entry, section ".printk_index", align 4
@qede_set_ringparam._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\015[%s:%d(%s)]Can only support Rx Buffer size [0%08x,...,0x%08x] and Tx Buffer size [0x%08x,...,0x%08x]\0A\00", [56 x i8] zeroinitializer }, align 32
@qede_set_ringparam._entry_ptr.42 = internal global ptr @qede_set_ringparam._entry.40, section ".printk_index", align 4
@qede_private_arr = internal constant { [5 x [32 x i8]], [32 x i8] } { [5 x [32 x i8]] [[32 x i8] c"Coupled-Function\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"SmartAN capable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Recover on error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ESL capable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ESL active\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@qede_tests_str_arr = internal constant { [6 x [32 x i8]], [32 x i8] } { [6 x [32 x i8]] [[32 x i8] c"Internal loopback (offline)\00\00\00\00\00", [32 x i8] c"Interrupt (online)\09\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Memory (online)\09\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Register (online)\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Clock (online)\09\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"Nvram (online)\09\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [32 x i8] zeroinitializer }, align 32
@qede_get_strings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Unsupported stringset 0x%08x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_get_strings\00", [47 x i8] zeroinitializer }, align 32
@qede_get_strings._entry_ptr = internal global ptr @qede_get_strings._entry, section ".printk_index", align 4
@qede_stats_arr = internal constant { [66 x %struct.anon.174], [768 x i8] } { [66 x %struct.anon.174] [%struct.anon.174 { i64 24, [32 x i8] c"rx_ucast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 32, [32 x i8] c"rx_mcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 40, [32 x i8] c"rx_bcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 48, [32 x i8] c"rx_ucast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 56, [32 x i8] c"rx_mcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 64, [32 x i8] c"rx_bcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 96, [32 x i8] c"tx_ucast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 104, [32 x i8] c"tx_mcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 112, [32 x i8] c"tx_bcast_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 120, [32 x i8] c"tx_ucast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 128, [32 x i8] c"tx_mcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 136, [32 x i8] c"tx_bcast_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 208, [32 x i8] c"rx_64_byte_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 216, [32 x i8] c"rx_65_to_127_byte_packets\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 224, [32 x i8] c"rx_128_to_255_byte_packets\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 232, [32 x i8] c"rx_256_to_511_byte_packets\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 240, [32 x i8] c"rx_512_to_1023_byte_packets\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 248, [32 x i8] c"rx_1024_to_1518_byte_packets\00\00\00\00", i32 1 }, %struct.anon.174 { i64 424, [32 x i8] c"rx_1519_to_1522_byte_packets\00\00\00\00", i32 3 }, %struct.anon.174 { i64 432, [32 x i8] c"rx_1519_to_2047_byte_packets\00\00\00\00", i32 3 }, %struct.anon.174 { i64 440, [32 x i8] c"rx_2048_to_4095_byte_packets\00\00\00\00", i32 3 }, %struct.anon.174 { i64 448, [32 x i8] c"rx_4096_to_9216_byte_packets\00\00\00\00", i32 3 }, %struct.anon.174 { i64 456, [32 x i8] c"rx_9217_to_16383_byte_packets\00\00\00", i32 3 }, %struct.anon.174 { i64 424, [32 x i8] c"rx_1519_to_max_byte_packets\00\00\00\00\00", i32 5 }, %struct.anon.174 { i64 336, [32 x i8] c"tx_64_byte_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 344, [32 x i8] c"tx_65_to_127_byte_packets\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 352, [32 x i8] c"tx_128_to_255_byte_packets\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 360, [32 x i8] c"tx_256_to_511_byte_packets\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 368, [32 x i8] c"tx_512_to_1023_byte_packets\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 376, [32 x i8] c"tx_1024_to_1518_byte_packets\00\00\00\00", i32 1 }, %struct.anon.174 { i64 464, [32 x i8] c"tx_1519_to_2047_byte_packets\00\00\00\00", i32 3 }, %struct.anon.174 { i64 472, [32 x i8] c"tx_2048_to_4095_byte_packets\00\00\00\00", i32 3 }, %struct.anon.174 { i64 480, [32 x i8] c"tx_4096_to_9216_byte_packets\00\00\00\00", i32 3 }, %struct.anon.174 { i64 488, [32 x i8] c"tx_9217_to_16383_byte_packets\00\00\00", i32 3 }, %struct.anon.174 { i64 432, [32 x i8] c"tx_1519_to_max_byte_packets\00\00\00\00\00", i32 5 }, %struct.anon.174 { i64 264, [32 x i8] c"rx_mac_crtl_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 416, [32 x i8] c"tx_mac_ctrl_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 272, [32 x i8] c"rx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 384, [32 x i8] c"tx_pause_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 280, [32 x i8] c"rx_pfc_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 392, [32 x i8] c"tx_pfc_frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 256, [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 288, [32 x i8] c"rx_align_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 296, [32 x i8] c"rx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 304, [32 x i8] c"rx_oversize_packets\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 312, [32 x i8] c"rx_jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 320, [32 x i8] c"rx_undersize_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 328, [32 x i8] c"rx_fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 496, [32 x i8] c"tx_lpi_entry_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.anon.174 { i64 504, [32 x i8] c"tx_total_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.anon.174 { i64 400, [32 x i8] c"brb_truncates\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 408, [32 x i8] c"brb_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 0, [32 x i8] c"no_buff_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 72, [32 x i8] c"mftag_filter_discards\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 80, [32 x i8] c"mac_filter_discards\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 88, [32 x i8] c"gft_filter_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.anon.174 { i64 144, [32 x i8] c"tx_err_drop_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 16, [32 x i8] c"ttl0_discard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 8, [32 x i8] c"packet_too_big_discard\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 152, [32 x i8] c"coalesced_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 160, [32 x i8] c"coalesced_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 168, [32 x i8] c"coalesced_aborts_num\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 176, [32 x i8] c"non_coalesced_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 184, [32 x i8] c"coalesced_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 192, [32 x i8] c"link_change_count\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.anon.174 { i64 200, [32 x i8] c"ptp_skip_txts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }], [768 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d: %s\00", [25 x i8] zeroinitializer }, align 32
@qede_rqstats_arr = internal constant { [5 x %struct.anon.175], [56 x i8] } { [5 x %struct.anon.175] [%struct.anon.175 { i64 1888, [32 x i8] c"rcv_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i64 1896, [32 x i8] c"rx_hw_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i64 1904, [32 x i8] c"rx_alloc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i64 1912, [32 x i8] c"rx_ip_frags\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.175 { i64 1920, [32 x i8] c"xdp_no_pass\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d [XDP]: %s\00", [19 x i8] zeroinitializer }, align 32
@qede_tqstats_arr = internal constant { [3 x %struct.anon.176], [40 x i8] } { [3 x %struct.anon.176] [%struct.anon.176 { i64 8, [32 x i8] c"xmit_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i64 16, [32 x i8] c"stopped_cnt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.anon.176 { i64 24, [32 x i8] c"tx_mem_alloc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }], [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d_%d: %s\00", [22 x i8] zeroinitializer }, align 32
@qede_get_sset_count._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.48, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_get_sset_count\00", [44 x i8] zeroinitializer }, align 32
@qede_get_sset_count._entry_ptr = internal global ptr @qede_get_sset_count._entry, section ".printk_index", align 4
@qede_get_rxnfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[%s:%d(%s)]Command parameters not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_get_rxnfc\00", [17 x i8] zeroinitializer }, align 32
@qede_get_rxnfc._entry_ptr = internal global ptr @qede_get_rxnfc._entry, section ".printk_index", align 4
@qede_set_rxnfc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Command parameters not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_set_rxnfc\00", [17 x i8] zeroinitializer }, align 32
@qede_set_rxnfc._entry_ptr = internal global ptr @qede_set_rxnfc._entry, section ".printk_index", align 4
@qede_set_rss_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015[%s:%d(%s)]Set rss flags command parameters: flow type = %d, data = %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qede_set_rss_flags\00", [45 x i8] zeroinitializer }, align 32
@qede_set_rss_flags._entry_ptr = internal global ptr @qede_set_rss_flags._entry, section ".printk_index", align 4
@qede_set_rss_flags._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.54, ptr @.str.2, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_set_rss_flags._entry_ptr.56 = internal global ptr @qede_set_rss_flags._entry.55, section ".printk_index", align 4
@qede_set_rss_flags._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015[%s:%d(%s)]UDP 4-tuple enabled\0A\00", [62 x i8] zeroinitializer }, align 32
@qede_set_rss_flags._entry_ptr.59 = internal global ptr @qede_set_rss_flags._entry.57, section ".printk_index", align 4
@qede_set_rss_flags._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.2, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]UDP 4-tuple disabled\0A\00", [61 x i8] zeroinitializer }, align 32
@qede_set_rss_flags._entry_ptr.62 = internal global ptr @qede_set_rss_flags._entry.60, section ".printk_index", align 4
@qede_set_rss_flags._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.2, i32 1280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_set_rss_flags._entry_ptr.64 = internal global ptr @qede_set_rss_flags._entry.63, section ".printk_index", align 4
@qede_set_rss_flags._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.2, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_set_rss_flags._entry_ptr.66 = internal global ptr @qede_set_rss_flags._entry.65, section ".printk_index", align 4
@qede_set_rss_flags._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.54, ptr @.str.2, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_set_rss_flags._entry_ptr.68 = internal global ptr @qede_set_rss_flags._entry.67, section ".printk_index", align 4
@qede_set_rss_flags._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.54, ptr @.str.2, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_set_rss_flags._entry_ptr.70 = internal global ptr @qede_set_rss_flags._entry.69, section ".printk_index", align 4
@qede_set_rxfh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 1407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]RSS configuration is not supported for 100G devices\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qede_set_rxfh\00", [18 x i8] zeroinitializer }, align 32
@qede_set_rxfh._entry_ptr = internal global ptr @qede_set_rxfh._entry, section ".printk_index", align 4
@qede_set_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\015[%s:%d(%s)]set-channels command parameters: rx = %d, tx = %d, other = %d, combined = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qede_set_channels\00", [46 x i8] zeroinitializer }, align 32
@qede_set_channels._entry_ptr = internal global ptr @qede_set_channels._entry, section ".printk_index", align 4
@qede_set_channels._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.2, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]command parameters not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@qede_set_channels._entry_ptr.77 = internal global ptr @qede_set_channels._entry.75, section ".printk_index", align 4
@qede_set_channels._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.2, i32 1099, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015[%s:%d(%s)]need to request at least one transmit and one receive channel\0A\00", [52 x i8] zeroinitializer }, align 32
@qede_set_channels._entry_ptr.80 = internal global ptr @qede_set_channels._entry.78, section ".printk_index", align 4
@qede_set_channels._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.74, ptr @.str.2, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]requested channels = %d max supported channels = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@qede_set_channels._entry_ptr.83 = internal global ptr @qede_set_channels._entry.81, section ".printk_index", align 4
@qede_set_channels._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.74, ptr @.str.2, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]No change in active parameters\0A\00", [51 x i8] zeroinitializer }, align 32
@qede_set_channels._entry_ptr.86 = internal global ptr @qede_set_channels._entry.84, section ".printk_index", align 4
@qede_set_channels._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.74, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]Number of channels must be divisible by %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@qede_set_channels._entry_ptr.89 = internal global ptr @qede_set_channels._entry.87, section ".printk_index", align 4
@qede_set_tunable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 1753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\015[%s:%d(%s)]Invalid rx copy break value, range is [%u, %u]\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_set_tunable\00", [47 x i8] zeroinitializer }, align 32
@qede_set_tunable._entry_ptr = internal global ptr @qede_set_tunable._entry, section ".printk_index", align 4
@qede_get_per_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.92, ptr @.str.2, i32 2215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qede_get_per_coalesce\00", [42 x i8] zeroinitializer }, align 32
@qede_get_per_coalesce._entry_ptr = internal global ptr @qede_get_per_coalesce._entry, section ".printk_index", align 4
@qede_get_per_coalesce._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.92, ptr @.str.2, i32 2233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_get_per_coalesce._entry_ptr.94 = internal global ptr @qede_get_per_coalesce._entry.93, section ".printk_index", align 4
@qede_get_per_coalesce._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.92, ptr @.str.2, i32 2244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_get_per_coalesce._entry_ptr.96 = internal global ptr @qede_get_per_coalesce._entry.95, section ".printk_index", align 4
@qede_set_wol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015[%s:%d(%s)]Can't support WoL options other than magic-packet\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qede_set_wol\00", [19 x i8] zeroinitializer }, align 32
@qede_set_wol._entry_ptr = internal global ptr @qede_set_wol._entry, section ".printk_index", align 4
@qede_set_wol._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Device doesn't support WoL\0A\00", [55 x i8] zeroinitializer }, align 32
@qede_set_wol._entry_ptr.101 = internal global ptr @qede_set_wol._entry.99, section ".printk_index", align 4
@qede_nway_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]Link settings are not allowed to be changed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qede_nway_reset\00", [16 x i8] zeroinitializer }, align 32
@qede_nway_reset._entry_ptr = internal global ptr @qede_nway_reset._entry, section ".printk_index", align 4
@qede_get_pauseparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.2, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\015[%s:%d(%s)]ethtool_pauseparam: cmd %d  autoneg %d  rx_pause %d  tx_pause %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_get_pauseparam\00", [44 x i8] zeroinitializer }, align 32
@qede_get_pauseparam._entry_ptr = internal global ptr @qede_get_pauseparam._entry, section ".printk_index", align 4
@qede_set_pauseparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015[%s:%d(%s)]Pause settings are not allowed to be changed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_set_pauseparam\00", [44 x i8] zeroinitializer }, align 32
@qede_set_pauseparam._entry_ptr = internal global ptr @qede_set_pauseparam._entry, section ".printk_index", align 4
@qede_set_pauseparam._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]autoneg not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@qede_set_pauseparam._entry_ptr.110 = internal global ptr @qede_set_pauseparam._entry.108, section ".printk_index", align 4
@qede_self_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\015[%s:%d(%s)]Self-test command parameters: offline = %d, external_lb = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_self_test\00", [17 x i8] zeroinitializer }, align 32
@qede_self_test._entry_ptr = internal global ptr @qede_self_test._entry, section ".printk_index", align 4
@qede_selftest_run_loopback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.113, ptr @.str.2, i32 1631, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qede_selftest_run_loopback\00", [37 x i8] zeroinitializer }, align 32
@qede_selftest_run_loopback._entry_ptr = internal global ptr @qede_selftest_run_loopback._entry, section ".printk_index", align 4
@qede_selftest_run_loopback._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 1655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]Can't allocate skb\0A\00", [63 x i8] zeroinitializer }, align 32
@qede_selftest_run_loopback._entry_ptr.116 = internal global ptr @qede_selftest_run_loopback._entry.114, section ".printk_index", align 4
@qede_selftest_run_loopback._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.2, i32 1674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Loopback test successful\0A\00", [57 x i8] zeroinitializer }, align 32
@qede_selftest_run_loopback._entry_ptr.119 = internal global ptr @qede_selftest_run_loopback._entry.117, section ".printk_index", align 4
@qede_selftest_transmit_traffic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 1491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Tx path is not available\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qede_selftest_transmit_traffic\00", [33 x i8] zeroinitializer }, align 32
@qede_selftest_transmit_traffic._entry_ptr = internal global ptr @qede_selftest_transmit_traffic._entry, section ".printk_index", align 4
@qede_selftest_transmit_traffic._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 1510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]SKB mapping failed\0A\00", [63 x i8] zeroinitializer }, align 32
@qede_selftest_transmit_traffic._entry_ptr.124 = internal global ptr @qede_selftest_transmit_traffic._entry.122, section ".printk_index", align 4
@qede_selftest_transmit_traffic._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.2, i32 1536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Tx completion didn't happen\0A\00", [54 x i8] zeroinitializer }, align 32
@qede_selftest_transmit_traffic._entry_ptr.127 = internal global ptr @qede_selftest_transmit_traffic._entry.125, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.128 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@qede_selftest_receive_traffic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 1567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Rx path is not available\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qede_selftest_receive_traffic\00", [34 x i8] zeroinitializer }, align 32
@qede_selftest_receive_traffic._entry_ptr = internal global ptr @qede_selftest_receive_traffic._entry, section ".printk_index", align 4
@qede_selftest_receive_traffic._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.2, i32 1607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Not the transmitted packet\0A\00", [55 x i8] zeroinitializer }, align 32
@qede_selftest_receive_traffic._entry_ptr.134 = internal global ptr @qede_selftest_receive_traffic._entry.132, section ".printk_index", align 4
@qede_selftest_receive_traffic._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.131, ptr @.str.2, i32 1613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Failed to receive the traffic\0A\00", [52 x i8] zeroinitializer }, align 32
@qede_selftest_receive_traffic._entry_ptr.137 = internal global ptr @qede_selftest_receive_traffic._entry.135, section ".printk_index", align 4
@qede_get_dump_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 2063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Edev ops not populated\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qede_get_dump_flag\00", [45 x i8] zeroinitializer }, align 32
@qede_get_dump_flag._entry_ptr = internal global ptr @qede_get_dump_flag._entry, section ".printk_index", align 4
@qede_get_dump_flag._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 2079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013[%s:%d(%s)]Invalid cmd = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@qede_get_dump_flag._entry_ptr.142 = internal global ptr @qede_get_dump_flag._entry.140, section ".printk_index", align 4
@qede_get_dump_flag._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.2, i32 2085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]dump->version = 0x%x dump->flag = %d dump->len = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@qede_get_dump_flag._entry_ptr.145 = internal global ptr @qede_get_dump_flag._entry.143, section ".printk_index", align 4
@qede_get_dump_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.146, ptr @.str.2, i32 2096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qede_get_dump_data\00", [45 x i8] zeroinitializer }, align 32
@qede_get_dump_data._entry_ptr = internal global ptr @qede_get_dump_data._entry, section ".printk_index", align 4
@qede_get_dump_data._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.146, ptr @.str.2, i32 2106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[%s:%d(%s)]Arg count = %d required = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@qede_get_dump_data._entry_ptr.149 = internal global ptr @qede_get_dump_data._entry.147, section ".printk_index", align 4
@qede_get_dump_data._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.146, ptr @.str.2, i32 2119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_get_dump_data._entry_ptr.151 = internal global ptr @qede_get_dump_data._entry.150, section ".printk_index", align 4
@qede_set_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 2028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013[%s:%d(%s)]Invalid command %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qede_set_dump\00", [18 x i8] zeroinitializer }, align 32
@qede_set_dump._entry_ptr = internal global ptr @qede_set_dump._entry, section ".printk_index", align 4
@qede_set_dump._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.153, ptr @.str.2, i32 2037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013[%s:%d(%s)]Arg count = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@qede_set_dump._entry_ptr.156 = internal global ptr @qede_set_dump._entry.154, section ".printk_index", align 4
@qede_get_module_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 1946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[%s:%d(%s)]Failed reading EEPROM data %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qede_get_module_info\00", [43 x i8] zeroinitializer }, align 32
@qede_get_module_info._entry_ptr = internal global ptr @qede_get_module_info._entry, section ".printk_index", align 4
@qede_get_module_info._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 1965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[%s:%d(%s)]Unknown transceiver type 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@qede_get_module_info._entry_ptr.161 = internal global ptr @qede_get_module_info._entry.159, section ".printk_index", align 4
@qede_get_module_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 1992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013[%s:%d(%s)]Failed reading A0 section  %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qede_get_module_eeprom\00", [41 x i8] zeroinitializer }, align 32
@qede_get_module_eeprom._entry_ptr = internal global ptr @qede_get_module_eeprom._entry, section ".printk_index", align 4
@qede_get_module_eeprom._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.2, i32 2013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Failed reading A2 section %d\0A\00", [53 x i8] zeroinitializer }, align 32
@qede_get_module_eeprom._entry_ptr.166 = internal global ptr @qede_get_module_eeprom._entry.164, section ".printk_index", align 4
@qede_get_eee._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 1791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]EEE is not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qede_get_eee\00", [19 x i8] zeroinitializer }, align 32
@qede_get_eee._entry_ptr = internal global ptr @qede_get_eee._entry, section ".printk_index", align 4
@qede_set_eee._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.169, ptr @.str.2, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qede_set_eee\00", [19 x i8] zeroinitializer }, align 32
@qede_set_eee._entry_ptr = internal global ptr @qede_set_eee._entry, section ".printk_index", align 4
@qede_set_eee._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.169, ptr @.str.2, i32 1831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_set_eee._entry_ptr.171 = internal global ptr @qede_set_eee._entry.170, section ".printk_index", align 4
@qede_set_eee._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.169, ptr @.str.2, i32 1845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Invalid advertised capabilities %d\0A\00", [47 x i8] zeroinitializer }, align 32
@qede_set_eee._entry_ptr.174 = internal global ptr @qede_set_eee._entry.172, section ".printk_index", align 4
@qede_set_link_ksettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.175, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qede_set_link_ksettings\00", [40 x i8] zeroinitializer }, align 32
@qede_set_link_ksettings._entry_ptr = internal global ptr @qede_set_link_ksettings._entry, section ".printk_index", align 4
@qede_set_link_ksettings._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.175, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\015[%s:%d(%s)]Auto negotiation is not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@qede_set_link_ksettings._entry_ptr.178 = internal global ptr @qede_set_link_ksettings._entry.176, section ".printk_index", align 4
@qede_set_link_ksettings._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.175, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Unsupported speed %u\0A\00", [61 x i8] zeroinitializer }, align 32
@qede_set_link_ksettings._entry_ptr.181 = internal global ptr @qede_set_link_ksettings._entry.179, section ".printk_index", align 4
@qede_set_fecparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.182, ptr @.str.2, i32 1921, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qede_set_fecparam\00", [46 x i8] zeroinitializer }, align 32
@qede_set_fecparam._entry_ptr = internal global ptr @qede_set_fecparam._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.184 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.187 = internal global [7 x i64] [i64 5, i64 32, i64 41, i64 45, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.188 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 5, i64 6, i64 16, i64 17]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.190 = internal global [18 x i64] [i64 16, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 64, i64 48, i64 240]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 64, i64 48, i64 240]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.194 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.195 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.199 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 12, i64 13, i64 17]
@__sancov_gen_cov_switch_values.200 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 847, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 853, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 870, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 891, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1043, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2142, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2155, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2172, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2185, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"qede_vf_ethtool_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2306, i32 33 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"qede_ethtool_ops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2255, i32 33 }
@___asan_gen_.275 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 4963, i32 10 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 627, i32 24 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 629, i32 38 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 644, i32 5 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 647, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 650, i32 37 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 658, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 661, i32 5 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 803, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 825, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 923, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 932, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"qede_private_arr\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 176, i32 19 }
@___asan_gen_.331 = private unnamed_addr constant [19 x i8] c"qede_tests_str_arr\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 194, i32 19 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 379, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [15 x i8] c"qede_stats_arr\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 85, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 316, i32 17 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"qede_rqstats_arr\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 34, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 300, i32 18 }
@___asan_gen_.355 = private unnamed_addr constant [17 x i8] c"qede_tqstats_arr\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 52, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 304, i32 18 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 476, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1232, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1359, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1245, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1255, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1264, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1268, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1279, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1283, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1293, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1309, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1406, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1081, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1091, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1098, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1104, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1114, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1123, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1751, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2215, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2233, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2244, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 684, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 695, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 734, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 964, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 978, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 991, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1699, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1631, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1655, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1674, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1491, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1510, i32 3 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1536, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.590, i32 326, i32 6 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1567, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1607, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1613, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2063, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2079, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2083, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2096, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2104, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2119, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2028, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2037, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1946, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1965, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1992, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2012, i32 4 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1791, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1823, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1831, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1843, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 571, i32 3 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 583, i32 4 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 609, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.740 = private constant [51 x i8] c"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1921, i32 3 }
@llvm.compiler.used = appending global [252 x ptr] [ptr @qede_change_mtu._entry, ptr @qede_change_mtu._entry_ptr, ptr @qede_get_coalesce._entry, ptr @qede_get_coalesce._entry.35, ptr @qede_get_coalesce._entry_ptr, ptr @qede_get_coalesce._entry_ptr.37, ptr @qede_get_dump_data._entry, ptr @qede_get_dump_data._entry.147, ptr @qede_get_dump_data._entry.150, ptr @qede_get_dump_data._entry_ptr, ptr @qede_get_dump_data._entry_ptr.149, ptr @qede_get_dump_data._entry_ptr.151, ptr @qede_get_dump_flag._entry, ptr @qede_get_dump_flag._entry.140, ptr @qede_get_dump_flag._entry.143, ptr @qede_get_dump_flag._entry_ptr, ptr @qede_get_dump_flag._entry_ptr.142, ptr @qede_get_dump_flag._entry_ptr.145, ptr @qede_get_eee._entry, ptr @qede_get_eee._entry_ptr, ptr @qede_get_module_eeprom._entry, ptr @qede_get_module_eeprom._entry.164, ptr @qede_get_module_eeprom._entry_ptr, ptr @qede_get_module_eeprom._entry_ptr.166, ptr @qede_get_module_info._entry, ptr @qede_get_module_info._entry.159, ptr @qede_get_module_info._entry_ptr, ptr @qede_get_module_info._entry_ptr.161, ptr @qede_get_pauseparam._entry, ptr @qede_get_pauseparam._entry_ptr, ptr @qede_get_per_coalesce._entry, ptr @qede_get_per_coalesce._entry.93, ptr @qede_get_per_coalesce._entry.95, ptr @qede_get_per_coalesce._entry_ptr, ptr @qede_get_per_coalesce._entry_ptr.94, ptr @qede_get_per_coalesce._entry_ptr.96, ptr @qede_get_rxnfc._entry, ptr @qede_get_rxnfc._entry_ptr, ptr @qede_get_sset_count._entry, ptr @qede_get_sset_count._entry_ptr, ptr @qede_get_strings._entry, ptr @qede_get_strings._entry_ptr, ptr @qede_nway_reset._entry, ptr @qede_nway_reset._entry_ptr, ptr @qede_self_test._entry, ptr @qede_self_test._entry_ptr, ptr @qede_selftest_receive_traffic._entry, ptr @qede_selftest_receive_traffic._entry.132, ptr @qede_selftest_receive_traffic._entry.135, ptr @qede_selftest_receive_traffic._entry_ptr, ptr @qede_selftest_receive_traffic._entry_ptr.134, ptr @qede_selftest_receive_traffic._entry_ptr.137, ptr @qede_selftest_run_loopback._entry, ptr @qede_selftest_run_loopback._entry.114, ptr @qede_selftest_run_loopback._entry.117, ptr @qede_selftest_run_loopback._entry_ptr, ptr @qede_selftest_run_loopback._entry_ptr.116, ptr @qede_selftest_run_loopback._entry_ptr.119, ptr @qede_selftest_transmit_traffic._entry, ptr @qede_selftest_transmit_traffic._entry.122, ptr @qede_selftest_transmit_traffic._entry.125, ptr @qede_selftest_transmit_traffic._entry_ptr, ptr @qede_selftest_transmit_traffic._entry_ptr.124, ptr @qede_selftest_transmit_traffic._entry_ptr.127, ptr @qede_set_channels._entry, ptr @qede_set_channels._entry.75, ptr @qede_set_channels._entry.78, ptr @qede_set_channels._entry.81, ptr @qede_set_channels._entry.84, ptr @qede_set_channels._entry.87, ptr @qede_set_channels._entry_ptr, ptr @qede_set_channels._entry_ptr.77, ptr @qede_set_channels._entry_ptr.80, ptr @qede_set_channels._entry_ptr.83, ptr @qede_set_channels._entry_ptr.86, ptr @qede_set_channels._entry_ptr.89, ptr @qede_set_coalesce._entry, ptr @qede_set_coalesce._entry.12, ptr @qede_set_coalesce._entry.4, ptr @qede_set_coalesce._entry.9, ptr @qede_set_coalesce._entry_ptr, ptr @qede_set_coalesce._entry_ptr.11, ptr @qede_set_coalesce._entry_ptr.14, ptr @qede_set_coalesce._entry_ptr.6, ptr @qede_set_dump._entry, ptr @qede_set_dump._entry.154, ptr @qede_set_dump._entry_ptr, ptr @qede_set_dump._entry_ptr.156, ptr @qede_set_eee._entry, ptr @qede_set_eee._entry.170, ptr @qede_set_eee._entry.172, ptr @qede_set_eee._entry_ptr, ptr @qede_set_eee._entry_ptr.171, ptr @qede_set_eee._entry_ptr.174, ptr @qede_set_fecparam._entry, ptr @qede_set_fecparam._entry_ptr, ptr @qede_set_link_ksettings._entry, ptr @qede_set_link_ksettings._entry.176, ptr @qede_set_link_ksettings._entry.179, ptr @qede_set_link_ksettings._entry_ptr, ptr @qede_set_link_ksettings._entry_ptr.178, ptr @qede_set_link_ksettings._entry_ptr.181, ptr @qede_set_pauseparam._entry, ptr @qede_set_pauseparam._entry.108, ptr @qede_set_pauseparam._entry_ptr, ptr @qede_set_pauseparam._entry_ptr.110, ptr @qede_set_per_coalesce._entry, ptr @qede_set_per_coalesce._entry.18, ptr @qede_set_per_coalesce._entry.21, ptr @qede_set_per_coalesce._entry.23, ptr @qede_set_per_coalesce._entry_ptr, ptr @qede_set_per_coalesce._entry_ptr.20, ptr @qede_set_per_coalesce._entry_ptr.22, ptr @qede_set_per_coalesce._entry_ptr.24, ptr @qede_set_ringparam._entry, ptr @qede_set_ringparam._entry.40, ptr @qede_set_ringparam._entry_ptr, ptr @qede_set_ringparam._entry_ptr.42, ptr @qede_set_rss_flags._entry, ptr @qede_set_rss_flags._entry.55, ptr @qede_set_rss_flags._entry.57, ptr @qede_set_rss_flags._entry.60, ptr @qede_set_rss_flags._entry.63, ptr @qede_set_rss_flags._entry.65, ptr @qede_set_rss_flags._entry.67, ptr @qede_set_rss_flags._entry.69, ptr @qede_set_rss_flags._entry_ptr, ptr @qede_set_rss_flags._entry_ptr.56, ptr @qede_set_rss_flags._entry_ptr.59, ptr @qede_set_rss_flags._entry_ptr.62, ptr @qede_set_rss_flags._entry_ptr.64, ptr @qede_set_rss_flags._entry_ptr.66, ptr @qede_set_rss_flags._entry_ptr.68, ptr @qede_set_rss_flags._entry_ptr.70, ptr @qede_set_rxfh._entry, ptr @qede_set_rxfh._entry_ptr, ptr @qede_set_rxnfc._entry, ptr @qede_set_rxnfc._entry_ptr, ptr @qede_set_tunable._entry, ptr @qede_set_tunable._entry_ptr, ptr @qede_set_wol._entry, ptr @qede_set_wol._entry.99, ptr @qede_set_wol._entry_ptr, ptr @qede_set_wol._entry_ptr.101, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @qede_vf_ethtool_ops, ptr @qede_ethtool_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @qede_private_arr, ptr @qede_tests_str_arr, ptr @.str.43, ptr @.str.44, ptr @qede_stats_arr, ptr @.str.45, ptr @qede_rqstats_arr, ptr @.str.46, ptr @qede_tqstats_arr, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.58, ptr @.str.61, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.173, ptr @.str.175, ptr @.str.177, ptr @.str.180, ptr @.str.182], section "llvm.metadata"
@0 = internal global [180 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_coalesce._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_coalesce._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_coalesce._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_change_mtu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_per_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_per_coalesce._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_per_coalesce._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_per_coalesce._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_vf_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_coalesce._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_ringparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_ringparam._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_private_arr to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tests_str_arr to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_strings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_stats_arr to i32), i32 3168, i32 3936, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_rqstats_arr to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tqstats_arr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_sset_count._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_rxnfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rxnfc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rss_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rss_flags._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rss_flags._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rss_flags._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rss_flags._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rss_flags._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rss_flags._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rss_flags._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_rxfh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_channels._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_channels._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_channels._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_channels._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_channels._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_tunable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_per_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_per_coalesce._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_per_coalesce._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_wol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_wol._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_nway_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_pauseparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_pauseparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_pauseparam._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_self_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_selftest_run_loopback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_selftest_run_loopback._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_selftest_run_loopback._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_selftest_transmit_traffic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_selftest_transmit_traffic._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_selftest_transmit_traffic._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_selftest_receive_traffic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_selftest_receive_traffic._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_selftest_receive_traffic._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_dump_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_dump_flag._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_dump_flag._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_dump_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_dump_data._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_dump_data._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_dump._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_module_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_module_info._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_module_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_module_eeprom._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_get_eee._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_eee._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_eee._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_eee._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_link_ksettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_link_ksettings._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_link_ksettings._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_fecparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_forced_speed_maps_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %linkmode_set_bit_array.exit.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %linkmode_set_bit_array.exit.for.body_crit_edge ]
  %cap_arr = getelementptr %struct.qede_forced_speed_map, ptr @qede_forced_speed_maps, i32 %i.09, i32 2
  %0 = ptrtoint ptr %cap_arr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap_arr, align 4
  %arr_size = getelementptr %struct.qede_forced_speed_map, ptr @qede_forced_speed_maps, i32 %i.09, i32 3
  %2 = ptrtoint ptr %arr_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arr_size, align 4
  %caps = getelementptr %struct.qede_forced_speed_map, ptr @qede_forced_speed_maps, i32 %i.09, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3.i = icmp sgt i32 %3, 0
  br i1 %cmp3.i, label %for.body.for.body.i_crit_edge, label %for.body.linkmode_set_bit_array.exit_crit_edge

for.body.linkmode_set_bit_array.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %linkmode_set_bit_array.exit

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %1, i32 %i.04.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %rem.i.i.i = and i32 %5, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %5, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %caps, i32 %div2.i.i.i
  %6 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %shl.i.i.i, %7
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.body.i.linkmode_set_bit_array.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.linkmode_set_bit_array.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %linkmode_set_bit_array.exit

linkmode_set_bit_array.exit:                      ; preds = %for.body.i.linkmode_set_bit_array.exit_crit_edge, %for.body.linkmode_set_bit_array.exit_crit_edge
  %8 = ptrtoint ptr %cap_arr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cap_arr, align 4
  %9 = ptrtoint ptr %arr_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arr_size, align 4
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %linkmode_set_bit_array.exit.for.body_crit_edge

linkmode_set_bit_array.exit.for.body_crit_edge:   ; preds = %linkmode_set_bit_array.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %linkmode_set_bit_array.exit
  call void @__sanitizer_cov_trace_pc() #21
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_set_coalesce(ptr noundef %dev, ptr nocapture noundef readonly %coal, ptr nocapture readnone %kernel_coal, ptr nocapture readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup157_crit_edge, !prof !369

do.body.cleanup157_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup157

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i213 = select i1 %tobool2.not.i, ptr %5, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i213
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 847, ptr noundef %cond) #22
  br label %cleanup157

if.end13:                                         ; preds = %entry
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %8 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %9)
  %cmp14 = icmp ugt i32 %9, 511
  br i1 %cmp14, label %if.end13.do.body19_crit_edge, label %lor.lhs.false

if.end13.do.body19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body19

lor.lhs.false:                                    ; preds = %if.end13
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %10 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %11)
  %cmp16 = icmp ugt i32 %11, 511
  br i1 %cmp16, label %lor.lhs.false.do.body19_crit_edge, label %if.end52

lor.lhs.false.do.body19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body19

do.body19:                                        ; preds = %lor.lhs.false.do.body19_crit_edge, %if.end13.do.body19_crit_edge
  %dp_level20 = getelementptr i8, ptr %dev, i32 2324
  %12 = ptrtoint ptr %dp_level20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp22 = icmp ult i8 %13, 2
  br i1 %cmp22, label %do.end33, label %do.body19.cleanup157_crit_edge, !prof !369

do.body19.cleanup157_crit_edge:                   ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup157

do.end33:                                         ; preds = %do.body19
  %ndev35 = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %ndev35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev35, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i217 = icmp eq i8 %17, 0
  br i1 %tobool.not.i217, label %do.end33.cond.end42_crit_edge, label %lor.lhs.false.i221

do.end33.cond.end42_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end42

lor.lhs.false.i221:                               ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #21
  %call.i218 = tail call ptr @strchr(ptr noundef %15, i32 noundef 37) #19
  %tobool2.not.i219 = icmp eq ptr %call.i218, null
  %tobool37.not = icmp eq ptr %15, null
  %or.cond275 = and i1 %tobool37.not, %tobool2.not.i219
  %spec.select.i227 = select i1 %tobool2.not.i219, ptr %15, ptr @.str.25
  %spec.select283 = select i1 %or.cond275, ptr @.str.3, ptr %spec.select.i227
  br label %cond.end42

cond.end42:                                       ; preds = %lor.lhs.false.i221, %do.end33.cond.end42_crit_edge
  %cond43 = phi ptr [ @.str.25, %do.end33.cond.end42_crit_edge ], [ %spec.select283, %lor.lhs.false.i221 ]
  %cond47 = select i1 %cmp14, ptr @.str.7, ptr @.str.8
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 856, ptr noundef %cond43, ptr noundef nonnull %cond47, i32 noundef 511) #22
  br label %cleanup157

if.end52:                                         ; preds = %lor.lhs.false
  %conv54 = trunc i32 %9 to i16
  %conv56 = trunc i32 %11 to i16
  %num_queues = getelementptr i8, ptr %dev, i32 2442
  %18 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp58279.not = icmp eq i16 %19, 0
  br i1 %cmp58279.not, label %if.end52.cleanup157_crit_edge, label %for.body.lr.ph

if.end52.cleanup157_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup157

for.body.lr.ph:                                   ; preds = %if.end52
  %fp_array = getelementptr i8, ptr %dev, i32 2428
  %ops = getelementptr i8, ptr %dev, i32 2332
  %coal_entry = getelementptr i8, ptr %dev, i32 2432
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0280 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fp_array, align 4
  %type = getelementptr %struct.qede_fastpath, ptr %21, i32 %i.0280, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 4
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool63.not = icmp eq i8 %24, 0
  br i1 %tobool63.not, label %for.body.if.end102_crit_edge, label %if.then64

for.body.if.end102_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end102

if.then64:                                        ; preds = %for.body
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %set_coalesce = getelementptr inbounds %struct.qed_common_ops, ptr %28, i32 0, i32 28
  %29 = ptrtoint ptr %set_coalesce to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_coalesce, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %rxq = getelementptr %struct.qede_fastpath, ptr %21, i32 %i.0280, i32 6
  %33 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rxq, align 4
  %handle = getelementptr inbounds %struct.qede_rx_queue, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle, align 8
  %call65 = tail call i32 %30(ptr noundef %32, i16 noundef zeroext %conv54, i16 noundef zeroext 0, ptr noundef %36) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end97, label %do.body68

do.body68:                                        ; preds = %if.then64
  %dp_level69 = getelementptr i8, ptr %dev, i32 2324
  %37 = ptrtoint ptr %dp_level69 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dp_level69, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp71 = icmp ult i8 %38, 2
  br i1 %cmp71, label %do.end82, label %do.body68.cleanup157_crit_edge, !prof !369

do.body68.cleanup157_crit_edge:                   ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup157

do.end82:                                         ; preds = %do.body68
  %ndev84 = getelementptr i8, ptr %dev, i32 2308
  %39 = ptrtoint ptr %ndev84 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev84, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i231 = icmp eq i8 %42, 0
  br i1 %tobool.not.i231, label %do.end82.cond.end91_crit_edge, label %lor.lhs.false.i235

do.end82.cond.end91_crit_edge:                    ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end91

lor.lhs.false.i235:                               ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #21
  %call.i232 = tail call ptr @strchr(ptr noundef %40, i32 noundef 37) #19
  %tobool2.not.i233 = icmp eq ptr %call.i232, null
  %tobool86.not = icmp eq ptr %40, null
  %or.cond276 = and i1 %tobool86.not, %tobool2.not.i233
  %spec.select.i241 = select i1 %tobool2.not.i233, ptr %40, ptr @.str.25
  %spec.select284 = select i1 %or.cond276, ptr @.str.3, ptr %spec.select.i241
  br label %cond.end91

cond.end91:                                       ; preds = %lor.lhs.false.i235, %do.end82.cond.end91_crit_edge
  %cond92 = phi ptr [ @.str.25, %do.end82.cond.end91_crit_edge ], [ %spec.select284, %lor.lhs.false.i235 ]
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 871, ptr noundef %cond92, i32 noundef %call65) #22
  br label %cleanup157

if.end97:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #21
  %43 = ptrtoint ptr %coal_entry to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %coal_entry, align 8
  %rxc99 = getelementptr %struct.qede_coalesce, ptr %44, i32 %i.0280, i32 1
  %45 = ptrtoint ptr %rxc99 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv54, ptr %rxc99, align 2
  %46 = load ptr, ptr %coal_entry, align 8
  %arrayidx101 = getelementptr %struct.qede_coalesce, ptr %46, i32 %i.0280
  %47 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx101, align 2
  br label %if.end102

if.end102:                                        ; preds = %if.end97, %for.body.if.end102_crit_edge
  %48 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fp_array, align 4
  %type105 = getelementptr %struct.qede_fastpath, ptr %49, i32 %i.0280, i32 1
  %50 = ptrtoint ptr %type105 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %type105, align 4
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool108.not = icmp eq i8 %52, 0
  br i1 %tobool108.not, label %if.end102.for.inc_crit_edge, label %if.then109

if.end102.for.inc_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.then109:                                       ; preds = %if.end102
  %txq110 = getelementptr %struct.qede_fastpath, ptr %21, i32 %i.0280, i32 7
  %53 = ptrtoint ptr %txq110 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %txq110, align 8
  %55 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %set_coalesce114 = getelementptr inbounds %struct.qed_common_ops, ptr %58, i32 0, i32 28
  %59 = ptrtoint ptr %set_coalesce114 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_coalesce114, align 4
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 8
  %handle116 = getelementptr inbounds %struct.qede_tx_queue, ptr %54, i32 0, i32 16
  %63 = ptrtoint ptr %handle116 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %handle116, align 8
  %call117 = tail call i32 %60(ptr noundef %62, i16 noundef zeroext 0, i16 noundef zeroext %conv56, ptr noundef %64) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %cleanup, label %do.body120

do.body120:                                       ; preds = %if.then109
  %dp_level121 = getelementptr i8, ptr %dev, i32 2324
  %65 = ptrtoint ptr %dp_level121 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dp_level121, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp123 = icmp ult i8 %66, 2
  br i1 %cmp123, label %do.end134, label %do.body120.cleanup157_crit_edge, !prof !369

do.body120.cleanup157_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup157

do.end134:                                        ; preds = %do.body120
  %ndev136 = getelementptr i8, ptr %dev, i32 2308
  %67 = ptrtoint ptr %ndev136 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ndev136, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i245 = icmp eq i8 %70, 0
  br i1 %tobool.not.i245, label %do.end134.cond.end143_crit_edge, label %lor.lhs.false.i249

do.end134.cond.end143_crit_edge:                  ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end143

lor.lhs.false.i249:                               ; preds = %do.end134
  call void @__sanitizer_cov_trace_pc() #21
  %call.i246 = tail call ptr @strchr(ptr noundef %68, i32 noundef 37) #19
  %tobool2.not.i247 = icmp eq ptr %call.i246, null
  %tobool138.not = icmp eq ptr %68, null
  %or.cond277 = and i1 %tobool138.not, %tobool2.not.i247
  %spec.select.i255 = select i1 %tobool2.not.i247, ptr %68, ptr @.str.25
  %spec.select285 = select i1 %or.cond277, ptr @.str.3, ptr %spec.select.i255
  br label %cond.end143

cond.end143:                                      ; preds = %lor.lhs.false.i249, %do.end134.cond.end143_crit_edge
  %cond144 = phi ptr [ @.str.25, %do.end134.cond.end143_crit_edge ], [ %spec.select285, %lor.lhs.false.i249 ]
  %call145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 892, ptr noundef %cond144, i32 noundef %call117) #22
  br label %cleanup157

cleanup:                                          ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #21
  %71 = ptrtoint ptr %coal_entry to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %coal_entry, align 8
  %txc152 = getelementptr %struct.qede_coalesce, ptr %72, i32 %i.0280, i32 2
  %73 = ptrtoint ptr %txc152 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv56, ptr %txc152, align 2
  %74 = load ptr, ptr %coal_entry, align 8
  %arrayidx154 = getelementptr %struct.qede_coalesce, ptr %74, i32 %i.0280
  %75 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %arrayidx154, align 2
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %if.end102.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0280, 1
  %76 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %num_queues, align 2
  %conv57 = zext i16 %77 to i32
  %cmp58 = icmp ult i32 %inc, %conv57
  br i1 %cmp58, label %for.inc.for.body_crit_edge, label %for.inc.cleanup157_crit_edge

for.inc.cleanup157_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup157

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

cleanup157:                                       ; preds = %for.inc.cleanup157_crit_edge, %cond.end143, %do.body120.cleanup157_crit_edge, %cond.end91, %do.body68.cleanup157_crit_edge, %if.end52.cleanup157_crit_edge, %cond.end42, %do.body19.cleanup157_crit_edge, %cond.end, %do.body.cleanup157_crit_edge
  %retval.3 = phi i32 [ -22, %cond.end ], [ -22, %do.body.cleanup157_crit_edge ], [ -22, %cond.end42 ], [ -22, %do.body19.cleanup157_crit_edge ], [ %call65, %cond.end91 ], [ %call65, %do.body68.cleanup157_crit_edge ], [ %call117, %do.body120.cleanup157_crit_edge ], [ %call117, %cond.end143 ], [ 0, %if.end52.cleanup157_crit_edge ], [ 0, %for.inc.cleanup157_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_change_mtu(ptr noundef %ndev, i32 noundef %new_mtu) local_unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.qede_reload_args, align 8
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #19
  %0 = call ptr @memset(ptr %args, i32 255, i32 16)
  %dp_level = getelementptr i8, ptr %ndev, i32 2324
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr i8, ptr %ndev, i32 2320
  %3 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dp_module, align 8
  %and = and i32 %4, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end12_crit_edge, label %do.end, !prof !370

land.rhs.do.end12_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end12

do.end:                                           ; preds = %land.rhs
  %ndev5 = getelementptr i8, ptr %ndev, i32 2308
  %5 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev5, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %6, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %6, null
  %or.cond = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i34 = select i1 %tobool2.not.i, ptr %6, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i34
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1044, ptr noundef %cond, i32 noundef %new_mtu) #22
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %land.rhs.do.end12_crit_edge, %entry.do.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %new_mtu)
  %cmp13 = icmp ugt i32 %new_mtu, 4096
  br i1 %cmp13, label %if.then15, label %do.end12.if.end17_crit_edge

do.end12.if.end17_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then15:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #21
  %features = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features, align 16
  %and16 = and i64 %10, -36028797018963969
  store i64 %and16, ptr %features, align 16
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end12.if.end17_crit_edge
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %conv18 = trunc i32 %new_mtu to i16
  %u = getelementptr inbounds %struct.qede_reload_args, ptr %args, i32 0, i32 1
  %11 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv18, ptr %u, align 8
  %12 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @qede_update_mtu, ptr %args, align 8
  call void @qede_reload(ptr noundef %add.ptr.i, ptr noundef nonnull %args, i1 noundef zeroext false) #19
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %update_mtu = getelementptr inbounds %struct.qed_common_ops, ptr %16, i32 0, i32 37
  %17 = ptrtoint ptr %update_mtu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %update_mtu, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %call20 = call i32 %18(ptr noundef %20, i16 noundef zeroext %conv18) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #19
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qede_update_mtu(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %args) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.qede_reload_args, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %u, align 8
  %conv = zext i16 %1 to i32
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %mtu, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_reload(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qede_set_per_coalesce(ptr noundef %dev, i32 noundef %queue, ptr nocapture noundef readonly %coal) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %0 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %1)
  %cmp = icmp ugt i32 %1, 511
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %2 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %3)
  %cmp1 = icmp ugt i32 %3, 511
  br i1 %cmp1, label %lor.lhs.false.do.body_crit_edge, label %if.end18

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp2 = icmp ult i8 %5, 2
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge, !prof !369

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool8.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool8.not, %tobool2.not.i
  %spec.select.i208 = select i1 %tobool2.not.i, ptr %7, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i208
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %cond14 = select i1 %cmp, ptr @.str.7, ptr @.str.8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.17, i32 noundef 2146, ptr noundef %cond, ptr noundef nonnull %cond14, i32 noundef 511) #22
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %conv20 = trunc i32 %1 to i16
  %conv22 = trunc i32 %3 to i16
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #19
  %num_queues = getelementptr i8, ptr %dev, i32 2442
  %10 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_queues, align 2
  %conv23 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %queue)
  %cmp24.not = icmp ugt i32 %conv23, %queue
  br i1 %cmp24.not, label %if.end56, label %do.body27

do.body27:                                        ; preds = %if.end18
  %dp_level28 = getelementptr i8, ptr %dev, i32 2324
  %12 = ptrtoint ptr %dp_level28 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dp_level28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp30 = icmp ult i8 %13, 2
  br i1 %cmp30, label %do.end41, label %do.body27.out_crit_edge, !prof !369

do.body27.out_crit_edge:                          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.end41:                                         ; preds = %do.body27
  %ndev43 = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %ndev43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev43, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i212 = icmp eq i8 %17, 0
  br i1 %tobool.not.i212, label %do.end41.cond.end50_crit_edge, label %lor.lhs.false.i216

do.end41.cond.end50_crit_edge:                    ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end50

lor.lhs.false.i216:                               ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #21
  %call.i213 = tail call ptr @strchr(ptr noundef %15, i32 noundef 37) #19
  %tobool2.not.i214 = icmp eq ptr %call.i213, null
  %tobool45.not = icmp eq ptr %15, null
  %or.cond269 = and i1 %tobool45.not, %tobool2.not.i214
  %spec.select.i222 = select i1 %tobool2.not.i214, ptr %15, ptr @.str.25
  %spec.select272 = select i1 %or.cond269, ptr @.str.3, ptr %spec.select.i222
  br label %cond.end50

cond.end50:                                       ; preds = %lor.lhs.false.i216, %do.end41.cond.end50_crit_edge
  %cond51 = phi ptr [ @.str.25, %do.end41.cond.end50_crit_edge ], [ %spec.select272, %lor.lhs.false.i216 ]
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef 2155, ptr noundef %cond51) #22
  br label %out

if.end56:                                         ; preds = %if.end18
  %state = getelementptr i8, ptr %dev, i32 2548
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp57.not = icmp eq i32 %19, 1
  br i1 %cmp57.not, label %if.end60, label %if.end56.out_crit_edge

if.end56.out_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end60:                                         ; preds = %if.end56
  %fp_array = getelementptr i8, ptr %dev, i32 2428
  %20 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fp_array, align 4
  %type = getelementptr %struct.qede_fastpath, ptr %21, i32 %queue, i32 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type, align 4
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool64.not = icmp eq i8 %24, 0
  br i1 %tobool64.not, label %if.end60.if.end103_crit_edge, label %if.then65

if.end60.if.end103_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end103

if.then65:                                        ; preds = %if.end60
  %ops = getelementptr i8, ptr %dev, i32 2332
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %set_coalesce = getelementptr inbounds %struct.qed_common_ops, ptr %28, i32 0, i32 28
  %29 = ptrtoint ptr %set_coalesce to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_coalesce, align 4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %rxq = getelementptr %struct.qede_fastpath, ptr %21, i32 %queue, i32 6
  %33 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rxq, align 4
  %handle = getelementptr inbounds %struct.qede_rx_queue, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle, align 8
  %call66 = tail call i32 %30(ptr noundef %32, i16 noundef zeroext %conv20, i16 noundef zeroext 0, ptr noundef %36) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end98, label %do.body69

do.body69:                                        ; preds = %if.then65
  %dp_level70 = getelementptr i8, ptr %dev, i32 2324
  %37 = ptrtoint ptr %dp_level70 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dp_level70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp72 = icmp ult i8 %38, 2
  br i1 %cmp72, label %do.end83, label %do.body69.out_crit_edge, !prof !369

do.body69.out_crit_edge:                          ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.end83:                                         ; preds = %do.body69
  %ndev85 = getelementptr i8, ptr %dev, i32 2308
  %39 = ptrtoint ptr %ndev85 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev85, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i226 = icmp eq i8 %42, 0
  br i1 %tobool.not.i226, label %do.end83.cond.end92_crit_edge, label %lor.lhs.false.i230

do.end83.cond.end92_crit_edge:                    ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end92

lor.lhs.false.i230:                               ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #21
  %call.i227 = tail call ptr @strchr(ptr noundef %40, i32 noundef 37) #19
  %tobool2.not.i228 = icmp eq ptr %call.i227, null
  %tobool87.not = icmp eq ptr %40, null
  %or.cond270 = and i1 %tobool87.not, %tobool2.not.i228
  %spec.select.i236 = select i1 %tobool2.not.i228, ptr %40, ptr @.str.25
  %spec.select273 = select i1 %or.cond270, ptr @.str.3, ptr %spec.select.i236
  br label %cond.end92

cond.end92:                                       ; preds = %lor.lhs.false.i230, %do.end83.cond.end92_crit_edge
  %cond93 = phi ptr [ @.str.25, %do.end83.cond.end92_crit_edge ], [ %spec.select273, %lor.lhs.false.i230 ]
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, i32 noundef 2173, ptr noundef %cond93, i32 noundef %call66) #22
  br label %out

if.end98:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #21
  %coal_entry = getelementptr i8, ptr %dev, i32 2432
  %43 = ptrtoint ptr %coal_entry to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %coal_entry, align 8
  %rxc100 = getelementptr %struct.qede_coalesce, ptr %44, i32 %queue, i32 1
  %45 = ptrtoint ptr %rxc100 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv20, ptr %rxc100, align 2
  %46 = load ptr, ptr %coal_entry, align 8
  %arrayidx102 = getelementptr %struct.qede_coalesce, ptr %46, i32 %queue
  %47 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %arrayidx102, align 2
  br label %if.end103

if.end103:                                        ; preds = %if.end98, %if.end60.if.end103_crit_edge
  %48 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fp_array, align 4
  %type106 = getelementptr %struct.qede_fastpath, ptr %49, i32 %queue, i32 1
  %50 = ptrtoint ptr %type106 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %type106, align 4
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool109.not = icmp eq i8 %52, 0
  br i1 %tobool109.not, label %if.end103.out_crit_edge, label %if.then110

if.end103.out_crit_edge:                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.then110:                                       ; preds = %if.end103
  %ops111 = getelementptr i8, ptr %dev, i32 2332
  %53 = ptrtoint ptr %ops111 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops111, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %set_coalesce113 = getelementptr inbounds %struct.qed_common_ops, ptr %56, i32 0, i32 28
  %57 = ptrtoint ptr %set_coalesce113 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_coalesce113, align 4
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 8
  %txq = getelementptr %struct.qede_fastpath, ptr %21, i32 %queue, i32 7
  %61 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %txq, align 8
  %handle115 = getelementptr inbounds %struct.qede_tx_queue, ptr %62, i32 0, i32 16
  %63 = ptrtoint ptr %handle115 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %handle115, align 8
  %call116 = tail call i32 %58(ptr noundef %60, i16 noundef zeroext 0, i16 noundef zeroext %conv22, ptr noundef %64) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end148, label %do.body119

do.body119:                                       ; preds = %if.then110
  %dp_level120 = getelementptr i8, ptr %dev, i32 2324
  %65 = ptrtoint ptr %dp_level120 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %dp_level120, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp122 = icmp ult i8 %66, 2
  br i1 %cmp122, label %do.end133, label %do.body119.out_crit_edge, !prof !369

do.body119.out_crit_edge:                         ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.end133:                                        ; preds = %do.body119
  %ndev135 = getelementptr i8, ptr %dev, i32 2308
  %67 = ptrtoint ptr %ndev135 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ndev135, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i240 = icmp eq i8 %70, 0
  br i1 %tobool.not.i240, label %do.end133.cond.end142_crit_edge, label %lor.lhs.false.i244

do.end133.cond.end142_crit_edge:                  ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end142

lor.lhs.false.i244:                               ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #21
  %call.i241 = tail call ptr @strchr(ptr noundef %68, i32 noundef 37) #19
  %tobool2.not.i242 = icmp eq ptr %call.i241, null
  %tobool137.not = icmp eq ptr %68, null
  %or.cond271 = and i1 %tobool137.not, %tobool2.not.i242
  %spec.select.i250 = select i1 %tobool2.not.i242, ptr %68, ptr @.str.25
  %spec.select274 = select i1 %or.cond271, ptr @.str.3, ptr %spec.select.i250
  br label %cond.end142

cond.end142:                                      ; preds = %lor.lhs.false.i244, %do.end133.cond.end142_crit_edge
  %cond143 = phi ptr [ @.str.25, %do.end133.cond.end142_crit_edge ], [ %spec.select274, %lor.lhs.false.i244 ]
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, i32 noundef 2186, ptr noundef %cond143, i32 noundef %call116) #22
  br label %out

if.end148:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #21
  %coal_entry149 = getelementptr i8, ptr %dev, i32 2432
  %71 = ptrtoint ptr %coal_entry149 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %coal_entry149, align 8
  %txc151 = getelementptr %struct.qede_coalesce, ptr %72, i32 %queue, i32 2
  %73 = ptrtoint ptr %txc151 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv22, ptr %txc151, align 2
  %74 = load ptr, ptr %coal_entry149, align 8
  %arrayidx153 = getelementptr %struct.qede_coalesce, ptr %74, i32 %queue
  %75 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %arrayidx153, align 2
  br label %out

out:                                              ; preds = %if.end148, %cond.end142, %do.body119.out_crit_edge, %if.end103.out_crit_edge, %cond.end92, %do.body69.out_crit_edge, %if.end56.out_crit_edge, %cond.end50, %do.body27.out_crit_edge
  %rc.1 = phi i32 [ %call66, %cond.end92 ], [ %call66, %do.body69.out_crit_edge ], [ %call116, %cond.end142 ], [ %call116, %do.body119.out_crit_edge ], [ 0, %if.end148 ], [ 0, %if.end103.out_crit_edge ], [ -22, %cond.end50 ], [ -22, %do.body27.out_crit_edge ], [ -22, %if.end56.out_crit_edge ]
  tail call void @__qede_unlock(ptr noundef %add.ptr.i) #19
  br label %cleanup

cleanup:                                          ; preds = %out, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ -22, %cond.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qede_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__qede_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @qede_set_ethtool_ops(ptr noundef %dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  %spec.select = select i1 %tobool.not, ptr @qede_ethtool_ops, ptr @qede_vf_ethtool_ops
  %2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %2, align 16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #8 align 64 {
entry:
  %mfw = alloca [32 x i8], align 1
  %storm = alloca [32 x i8], align 1
  %mbi = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mfw) #19
  %0 = call ptr @memset(ptr %mfw, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %storm) #19
  %1 = call ptr @memset(ptr %storm, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mbi) #19
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %2 = call ptr @memset(ptr %mbi, i32 255, i32 32)
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.26, i32 noundef 32) #19
  %fw_major = getelementptr i8, ptr %ndev, i32 2372
  %3 = ptrtoint ptr %fw_major to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %fw_major, align 4
  %conv = zext i16 %4 to i32
  %fw_minor = getelementptr i8, ptr %ndev, i32 2374
  %5 = ptrtoint ptr %fw_minor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fw_minor, align 2
  %conv5 = zext i16 %6 to i32
  %fw_rev = getelementptr i8, ptr %ndev, i32 2376
  %7 = ptrtoint ptr %fw_rev to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fw_rev, align 8
  %conv8 = zext i16 %8 to i32
  %fw_eng = getelementptr i8, ptr %ndev, i32 2378
  %9 = ptrtoint ptr %fw_eng to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fw_eng, align 2
  %conv11 = zext i16 %10 to i32
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %storm, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv8, i32 noundef %conv11)
  %mfw_rev = getelementptr i8, ptr %ndev, i32 2380
  %11 = ptrtoint ptr %mfw_rev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mfw_rev, align 4
  %shr = lshr i32 %12, 24
  %shr19 = lshr i32 %12, 16
  %and20 = and i32 %shr19, 255
  %shr24 = lshr i32 %12, 8
  %and25 = and i32 %shr24, 255
  %and29 = and i32 %12, 255
  %call30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mfw, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %shr, i32 noundef %and20, i32 noundef %and25, i32 noundef %and29)
  %call32 = call i32 @strlen(ptr noundef nonnull %storm) #23
  %add = add i32 %call32, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp = icmp ult i32 %add, 32
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %.str.28..str.29 = select i1 %cmp, ptr @.str.28, ptr @.str.29
  %call40 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %version, i32 noundef 32, ptr noundef nonnull %.str.28..str.29, ptr noundef nonnull %storm)
  %mbi_version = getelementptr i8, ptr %ndev, i32 2400
  %13 = ptrtoint ptr %mbi_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mbi_version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.else65, label %if.then43

if.then43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %and48 = lshr i32 %14, 16
  %shr49 = and i32 %and48, 255
  %and53 = lshr i32 %14, 8
  %shr54 = and i32 %and53, 255
  %and58 = and i32 %14, 255
  %call60 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mbi, i32 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %shr49, i32 noundef %shr54, i32 noundef %and58)
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %call64 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.31, ptr noundef nonnull %mbi, ptr noundef nonnull %mfw)
  br label %if.end70

if.else65:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %fw_version66 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %call69 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version66, i32 noundef 32, ptr noundef nonnull @.str.32, ptr noundef nonnull %mfw)
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.then43
  %pdev = getelementptr i8, ptr %ndev, i32 2312
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end70.pci_name.exit_crit_edge

if.end70.pci_name.exit_crit_edge:                 ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #21
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #21
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end70.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.end70.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call73 = call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mbi) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %storm) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mfw) #19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qede_get_msglevel(ptr nocapture noundef readonly %ndev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %dp_level = getelementptr i8, ptr %ndev, i32 2324
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 30
  %dp_module = getelementptr i8, ptr %ndev, i32 2320
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 8
  %or = or i32 %shl, %3
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_set_msglevel(ptr nocapture noundef %ndev, i32 noundef %level) #2 align 64 {
entry:
  %dp_module = alloca i32, align 4
  %dp_level = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_module) #19
  %0 = ptrtoint ptr %dp_module to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dp_module, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dp_level) #19
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %dp_level, align 1
  call void @qede_config_debug(i32 noundef %level, ptr noundef nonnull %dp_module, ptr noundef nonnull %dp_level) #19
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 1
  %dp_level1 = getelementptr i8, ptr %ndev, i32 2324
  %4 = ptrtoint ptr %dp_level1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %dp_level1, align 4
  %5 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp_module, align 4
  %dp_module2 = getelementptr i8, ptr %ndev, i32 2320
  %7 = ptrtoint ptr %dp_module2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dp_module2, align 8
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %update_msglvl = getelementptr inbounds %struct.qed_common_ops, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %update_msglvl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %update_msglvl, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  call void %13(ptr noundef %15, i32 noundef %6, i8 noundef zeroext %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dp_level) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_module) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_link(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %current_link = alloca %struct.qed_link_output, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %current_link) #19
  %0 = call ptr @memset(ptr %current_link, i32 0, i32 72)
  %ops = getelementptr i8, ptr %dev, i32 2332
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_link, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  call void %6(ptr noundef %8, ptr noundef nonnull %current_link) #19
  %9 = ptrtoint ptr %current_link to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %current_link, align 4, !range !371
  %11 = zext i8 %10 to i32
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %current_link) #19
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_coalesce(ptr noundef %dev, ptr nocapture noundef writeonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %rx_coal = alloca i16, align 2
  %tx_coal = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx_coal) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_coal) #19
  %0 = ptrtoint ptr %rx_coal to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 12, ptr %rx_coal, align 2
  %1 = ptrtoint ptr %tx_coal to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 48, ptr %tx_coal, align 2
  %2 = call ptr @memset(ptr %coal, i32 0, i32 92)
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #19
  %state = getelementptr i8, ptr %dev, i32 2548
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %for.cond.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

for.cond.preheader:                               ; preds = %entry
  %num_queues = getelementptr i8, ptr %dev, i32 2442
  %5 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp2162.not = icmp eq i16 %6, 0
  br i1 %cmp2162.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %fp_array = getelementptr i8, ptr %dev, i32 2428
  %7 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fp_array, align 4
  %wide.trip.count = zext i16 %6 to i32
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %type = getelementptr %struct.qede_fastpath, ptr %8, i32 %indvars.iv, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 4
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %for.cond, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %rxq = getelementptr %struct.qede_fastpath, ptr %8, i32 %indvars.iv, i32 6
  %12 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxq, align 4
  %handle = getelementptr inbounds %struct.qede_rx_queue, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 8
  br label %for.end

for.end:                                          ; preds = %if.then5, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rx_handle.0 = phi ptr [ %15, %if.then5 ], [ null, %for.cond.preheader.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  %ops = getelementptr i8, ptr %dev, i32 2332
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %get_coalesce = getelementptr inbounds %struct.qed_eth_ops, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %get_coalesce to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_coalesce, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %call6 = call i32 %19(ptr noundef %21, ptr noundef nonnull %rx_coal, ptr noundef %rx_handle.0) #19
  %conv7 = trunc i32 %call6 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv7)
  %tobool8.not = icmp eq i16 %conv7, 0
  br i1 %tobool8.not, label %for.cond26.preheader, label %do.body

for.cond26.preheader:                             ; preds = %for.end
  %22 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp30164.not = icmp eq i16 %23, 0
  br i1 %cmp30164.not, label %for.cond26.preheader.for.end47_crit_edge, label %for.body32.lr.ph

for.cond26.preheader.for.end47_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end47

for.body32.lr.ph:                                 ; preds = %for.cond26.preheader
  %fp_array33 = getelementptr i8, ptr %dev, i32 2428
  %24 = ptrtoint ptr %fp_array33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fp_array33, align 4
  %wide.trip.count170 = zext i16 %23 to i32
  br label %for.body32

do.body:                                          ; preds = %for.end
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %26 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp11 = icmp ult i8 %27, 2
  br i1 %cmp11, label %do.end, label %do.body.out_crit_edge, !prof !369

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %28 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = call ptr @strchr(ptr noundef %29, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool18.not = icmp eq ptr %29, null
  %or.cond = and i1 %tobool18.not, %tobool2.not.i
  %spec.select.i128 = select i1 %tobool2.not.i, ptr %29, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i128
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 803, ptr noundef %cond) #22
  br label %out

for.cond26:                                       ; preds = %for.body32
  %indvars.iv.next169 = add nuw nsw i32 %indvars.iv168, 1
  %exitcond171.not = icmp eq i32 %indvars.iv.next169, %wide.trip.count170
  br i1 %exitcond171.not, label %for.cond26.for.end47_crit_edge, label %for.cond26.for.body32_crit_edge

for.cond26.for.body32_crit_edge:                  ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body32

for.cond26.for.end47_crit_edge:                   ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end47

for.body32:                                       ; preds = %for.cond26.for.body32_crit_edge, %for.body32.lr.ph
  %indvars.iv168 = phi i32 [ 0, %for.body32.lr.ph ], [ %indvars.iv.next169, %for.cond26.for.body32_crit_edge ]
  %type36 = getelementptr %struct.qede_fastpath, ptr %25, i32 %indvars.iv168, i32 1
  %32 = ptrtoint ptr %type36 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type36, align 4
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool39.not = icmp eq i8 %34, 0
  br i1 %tobool39.not, label %for.cond26, label %cleanup

cleanup:                                          ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #21
  %txq41 = getelementptr %struct.qede_fastpath, ptr %25, i32 %indvars.iv168, i32 7
  %35 = ptrtoint ptr %txq41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txq41, align 8
  %handle43 = getelementptr inbounds %struct.qede_tx_queue, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %handle43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %handle43, align 8
  br label %for.end47

for.end47:                                        ; preds = %cleanup, %for.cond26.for.end47_crit_edge, %for.cond26.preheader.for.end47_crit_edge
  %tx_handle.2 = phi ptr [ %38, %cleanup ], [ null, %for.cond26.preheader.for.end47_crit_edge ], [ null, %for.cond26.for.end47_crit_edge ]
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %get_coalesce49 = getelementptr inbounds %struct.qed_eth_ops, ptr %40, i32 0, i32 23
  %41 = ptrtoint ptr %get_coalesce49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %get_coalesce49, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  %call51 = call i32 %42(ptr noundef %44, ptr noundef nonnull %tx_coal, ptr noundef %tx_handle.2) #19
  %conv52 = trunc i32 %call51 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv52)
  %tobool53.not = icmp eq i16 %conv52, 0
  br i1 %tobool53.not, label %for.end47.out_crit_edge, label %do.body55

for.end47.out_crit_edge:                          ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.body55:                                        ; preds = %for.end47
  %dp_level56 = getelementptr i8, ptr %dev, i32 2324
  %45 = ptrtoint ptr %dp_level56 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dp_level56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp58 = icmp ult i8 %46, 2
  br i1 %cmp58, label %do.end69, label %do.body55.out_crit_edge, !prof !369

do.body55.out_crit_edge:                          ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.end69:                                         ; preds = %do.body55
  %ndev71 = getelementptr i8, ptr %dev, i32 2308
  %47 = ptrtoint ptr %ndev71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ndev71, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i132 = icmp eq i8 %50, 0
  br i1 %tobool.not.i132, label %do.end69.cond.end78_crit_edge, label %lor.lhs.false.i136

do.end69.cond.end78_crit_edge:                    ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end78

lor.lhs.false.i136:                               ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #21
  %call.i133 = call ptr @strchr(ptr noundef %48, i32 noundef 37) #19
  %tobool2.not.i134 = icmp eq ptr %call.i133, null
  %tobool73.not = icmp eq ptr %48, null
  %or.cond157 = and i1 %tobool73.not, %tobool2.not.i134
  %spec.select.i142 = select i1 %tobool2.not.i134, ptr %48, ptr @.str.25
  %spec.select174 = select i1 %or.cond157, ptr @.str.3, ptr %spec.select.i142
  br label %cond.end78

cond.end78:                                       ; preds = %lor.lhs.false.i136, %do.end69.cond.end78_crit_edge
  %cond79 = phi ptr [ @.str.25, %do.end69.cond.end78_crit_edge ], [ %spec.select174, %lor.lhs.false.i136 ]
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef 825, ptr noundef %cond79) #22
  br label %out

out:                                              ; preds = %cond.end78, %do.body55.out_crit_edge, %for.end47.out_crit_edge, %cond.end, %do.body.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call6, %cond.end ], [ %call6, %do.body.out_crit_edge ], [ %call51, %cond.end78 ], [ %call51, %do.body55.out_crit_edge ], [ 0, %for.end47.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  call void @__qede_unlock(ptr noundef %add.ptr.i) #19
  %51 = ptrtoint ptr %rx_coal to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %rx_coal, align 2
  %conv86 = zext i16 %52 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %53 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv86, ptr %rx_coalesce_usecs, align 4
  %54 = ptrtoint ptr %tx_coal to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tx_coal, align 2
  %conv87 = zext i16 %55 to i32
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %56 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv87, ptr %tx_coalesce_usecs, align 4
  %conv88 = and i32 %rc.0, 65535
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_coal) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx_coal) #19
  ret i32 %conv88
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qede_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8191, ptr %rx_max_pending, align 4
  %q_num_rx_buffers = getelementptr i8, ptr %dev, i32 3374
  %1 = ptrtoint ptr %q_num_rx_buffers to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %q_num_rx_buffers, align 2
  %conv = zext i16 %2 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %3 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %rx_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 4
  %4 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8191, ptr %tx_max_pending, align 4
  %q_num_tx_buffers = getelementptr i8, ptr %dev, i32 3376
  %5 = ptrtoint ptr %q_num_tx_buffers to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %q_num_tx_buffers, align 8
  %conv1 = zext i16 %6 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end11

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 8
  %and = and i32 %3, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end11_crit_edge, label %do.end, !prof !370

land.rhs.do.end11_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end11

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool6.not = icmp eq ptr %5, null
  %or.cond113 = and i1 %tobool6.not, %tobool2.not.i
  %spec.select.i88 = select i1 %tobool2.not.i, ptr %5, ptr @.str.25
  %spec.select = select i1 %or.cond113, ptr @.str.3, ptr %spec.select.i88
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %10 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pending, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 925, ptr noundef %cond, i32 noundef %9, i32 noundef %11) #22
  br label %do.end11

do.end11:                                         ; preds = %cond.end, %land.rhs.do.end11_crit_edge, %entry.do.end11_crit_edge
  %rx_pending12 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %12 = ptrtoint ptr %rx_pending12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pending12, align 4
  %14 = add i32 %13, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8064, i32 %14)
  %15 = icmp ult i32 %14, -8064
  br i1 %15, label %do.end11.do.body27_crit_edge, label %lor.lhs.false18

do.end11.do.body27_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body27

lor.lhs.false18:                                  ; preds = %do.end11
  %tx_pending19 = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %16 = ptrtoint ptr %tx_pending19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_pending19, align 4
  %18 = add i32 %17, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8064, i32 %18)
  %19 = icmp ult i32 %18, -8064
  br i1 %19, label %lor.lhs.false18.do.body27_crit_edge, label %if.end61

lor.lhs.false18.do.body27_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body27

do.body27:                                        ; preds = %lor.lhs.false18.do.body27_crit_edge, %do.end11.do.body27_crit_edge
  %20 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp30 = icmp eq i8 %21, 0
  br i1 %cmp30, label %land.rhs32, label %do.body27.cleanup_crit_edge

do.body27.cleanup_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs32:                                       ; preds = %do.body27
  %dp_module33 = getelementptr i8, ptr %dev, i32 2320
  %22 = ptrtoint ptr %dp_module33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dp_module33, align 8
  %and34 = and i32 %23, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %land.rhs32.cleanup_crit_edge, label %do.end46, !prof !370

land.rhs32.cleanup_crit_edge:                     ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end46:                                         ; preds = %land.rhs32
  %ndev48 = getelementptr i8, ptr %dev, i32 2308
  %24 = ptrtoint ptr %ndev48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndev48, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i92 = icmp eq i8 %27, 0
  br i1 %tobool.not.i92, label %do.end46.cond.end55_crit_edge, label %lor.lhs.false.i96

do.end46.cond.end55_crit_edge:                    ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end55

lor.lhs.false.i96:                                ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #21
  %call.i93 = tail call ptr @strchr(ptr noundef %25, i32 noundef 37) #19
  %tobool2.not.i94 = icmp eq ptr %call.i93, null
  %tobool50.not = icmp eq ptr %25, null
  %or.cond114 = and i1 %tobool50.not, %tobool2.not.i94
  %spec.select.i102 = select i1 %tobool2.not.i94, ptr %25, ptr @.str.25
  %spec.select115 = select i1 %or.cond114, ptr @.str.3, ptr %spec.select.i102
  br label %cond.end55

cond.end55:                                       ; preds = %lor.lhs.false.i96, %do.end46.cond.end55_crit_edge
  %cond56 = phi ptr [ @.str.25, %do.end46.cond.end55_crit_edge ], [ %spec.select115, %lor.lhs.false.i96 ]
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef 935, ptr noundef %cond56, i32 noundef 128, i32 noundef 8191, i32 noundef 128, i32 noundef 8191) #22
  br label %cleanup

if.end61:                                         ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #21
  %conv63 = trunc i32 %13 to i16
  %q_num_rx_buffers = getelementptr i8, ptr %dev, i32 3374
  %28 = ptrtoint ptr %q_num_rx_buffers to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv63, ptr %q_num_rx_buffers, align 2
  %29 = ptrtoint ptr %tx_pending19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_pending19, align 4
  %conv65 = trunc i32 %30 to i16
  %q_num_tx_buffers = getelementptr i8, ptr %dev, i32 3376
  %31 = ptrtoint ptr %q_num_tx_buffers to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv65, ptr %q_num_tx_buffers, align 8
  tail call void @qede_reload(ptr noundef %add.ptr.i, ptr noundef null, i1 noundef zeroext false) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %cond.end55, %land.rhs32.cleanup_crit_edge, %do.body27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ -22, %do.body27.cleanup_crit_edge ], [ -22, %cond.end55 ], [ -22, %land.rhs32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_get_strings(ptr noundef %dev, i32 noundef %stringset, ptr noundef %buf) #2 align 64 {
entry:
  %buf.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %stringset, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.addr.i)
  %1 = ptrtoint ptr %buf.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %buf.addr.i, align 4
  %num_queues.i = getelementptr i8, ptr %dev, i32 2442
  %2 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_queues.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp59.not.i = icmp eq i16 %3, 0
  br i1 %cmp59.not.i, label %sw.bb.for.cond24.preheader.i_crit_edge, label %for.body.lr.ph.i

sw.bb.for.cond24.preheader.i_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond24.preheader.i

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %fp_array.i = getelementptr i8, ptr %dev, i32 2428
  %num_tc.i = getelementptr i8, ptr %dev, i32 2413
  br label %for.body.i

for.cond24.preheader.i:                           ; preds = %for.inc21.i.for.cond24.preheader.i_crit_edge, %sw.bb.for.cond24.preheader.i_crit_edge
  %flags.i.i = getelementptr i8, ptr %dev, i32 2328
  %4 = ptrtoint ptr %buf.addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %buf.addr.promoted.i = load ptr, ptr %buf.addr.i, align 4
  %dev_type.i.i = getelementptr i8, ptr %dev, i32 2404
  br label %for.body27.i

for.body.i:                                       ; preds = %for.inc21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc22.i, %for.inc21.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fp_array.i, align 4
  %type.i = getelementptr %struct.qede_fastpath, ptr %6, i32 %i.060.i, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type.i, align 4
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  %rxq.i = getelementptr %struct.qede_fastpath, ptr %6, i32 %i.060.i, i32 6
  %10 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxq.i, align 4
  %rxq_id.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %buf.addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf.addr.i, align 4
  %14 = ptrtoint ptr %rxq_id.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rxq_id.i.i, align 1
  %conv.i.i = zext i8 %15 to i32
  %call.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef nonnull @.str.45, i32 noundef %conv.i.i, ptr noundef getelementptr inbounds ([5 x %struct.anon.175], ptr @qede_rqstats_arr, i32 0, i32 0, i32 1)) #19
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 32
  %16 = ptrtoint ptr %rxq_id.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rxq_id.i.i, align 1
  %conv.1.i.i = zext i8 %17 to i32
  %call.1.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.45, i32 noundef %conv.1.i.i, ptr noundef getelementptr inbounds ([5 x %struct.anon.175], ptr @qede_rqstats_arr, i32 0, i32 1, i32 1)) #19
  %add.ptr.1.i.i = getelementptr i8, ptr %13, i32 64
  %18 = ptrtoint ptr %rxq_id.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rxq_id.i.i, align 1
  %conv.2.i.i = zext i8 %19 to i32
  %call.2.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1.i.i, ptr noundef nonnull @.str.45, i32 noundef %conv.2.i.i, ptr noundef getelementptr inbounds ([5 x %struct.anon.175], ptr @qede_rqstats_arr, i32 0, i32 2, i32 1)) #19
  %add.ptr.2.i.i = getelementptr i8, ptr %13, i32 96
  %20 = ptrtoint ptr %rxq_id.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rxq_id.i.i, align 1
  %conv.3.i.i = zext i8 %21 to i32
  %call.3.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2.i.i, ptr noundef nonnull @.str.45, i32 noundef %conv.3.i.i, ptr noundef getelementptr inbounds ([5 x %struct.anon.175], ptr @qede_rqstats_arr, i32 0, i32 3, i32 1)) #19
  %add.ptr.3.i.i = getelementptr i8, ptr %13, i32 128
  %22 = ptrtoint ptr %rxq_id.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rxq_id.i.i, align 1
  %conv.4.i.i = zext i8 %23 to i32
  %call.4.i.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3.i.i, ptr noundef nonnull @.str.45, i32 noundef %conv.4.i.i, ptr noundef getelementptr inbounds ([5 x %struct.anon.175], ptr @qede_rqstats_arr, i32 0, i32 4, i32 1)) #19
  %add.ptr.4.i.i = getelementptr i8, ptr %13, i32 160
  %24 = ptrtoint ptr %buf.addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.4.i.i, ptr %buf.addr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %type.i, align 4
  %27 = and i8 %26, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool6.not.i = icmp eq i8 %27, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then7.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %xdp_tx.i = getelementptr %struct.qede_fastpath, ptr %6, i32 %i.060.i, i32 8
  %28 = ptrtoint ptr %xdp_tx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xdp_tx.i, align 4
  call fastcc void @qede_get_strings_stats_txq(ptr noundef %add.ptr.i, ptr noundef %29, ptr noundef nonnull %buf.addr.i) #19
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i.if.end8.i_crit_edge
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %type.i, align 4
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool12.not.i = icmp eq i8 %32, 0
  br i1 %tobool12.not.i, label %if.end8.i.for.inc21.i_crit_edge, label %for.cond14.preheader.i

if.end8.i.for.inc21.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc21.i

for.cond14.preheader.i:                           ; preds = %if.end8.i
  %33 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp1656.not.i = icmp eq i8 %34, 0
  br i1 %cmp1656.not.i, label %for.cond14.preheader.i.for.inc21.i_crit_edge, label %for.body18.lr.ph.i

for.cond14.preheader.i.for.inc21.i_crit_edge:     ; preds = %for.cond14.preheader.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc21.i

for.body18.lr.ph.i:                               ; preds = %for.cond14.preheader.i
  %txq.i = getelementptr %struct.qede_fastpath, ptr %6, i32 %i.060.i, i32 7
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %cos.057.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc.i, %for.body18.i.for.body18.i_crit_edge ]
  %35 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %txq.i, align 8
  %arrayidx19.i = getelementptr %struct.qede_tx_queue, ptr %36, i32 %cos.057.i
  call fastcc void @qede_get_strings_stats_txq(ptr noundef %add.ptr.i, ptr noundef %arrayidx19.i, ptr noundef nonnull %buf.addr.i) #19
  %inc.i = add nuw nsw i32 %cos.057.i, 1
  %37 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %num_tc.i, align 1
  %conv15.i = zext i8 %38 to i32
  %cmp16.i = icmp ult i32 %inc.i, %conv15.i
  br i1 %cmp16.i, label %for.body18.i.for.body18.i_crit_edge, label %for.body18.i.for.inc21.i_crit_edge

for.body18.i.for.inc21.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc21.i

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body18.i

for.inc21.i:                                      ; preds = %for.body18.i.for.inc21.i_crit_edge, %for.cond14.preheader.i.for.inc21.i_crit_edge, %if.end8.i.for.inc21.i_crit_edge
  %inc22.i = add nuw nsw i32 %i.060.i, 1
  %39 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_queues.i, align 2
  %conv.i = zext i16 %40 to i32
  %cmp.i = icmp ult i32 %inc22.i, %conv.i
  br i1 %cmp.i, label %for.inc21.i.for.body.i_crit_edge, label %for.inc21.i.for.cond24.preheader.i_crit_edge

for.inc21.i.for.cond24.preheader.i_crit_edge:     ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond24.preheader.i

for.inc21.i.for.body.i_crit_edge:                 ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body27.i:                                     ; preds = %for.inc32.i.for.body27.i_crit_edge, %for.cond24.preheader.i
  %i.168.i = phi i32 [ 0, %for.cond24.preheader.i ], [ %inc33.i, %for.inc32.i.for.body27.i_crit_edge ]
  %add.ptr6667.i = phi ptr [ %buf.addr.promoted.i, %for.cond24.preheader.i ], [ %add.ptr65.i, %for.inc32.i.for.body27.i_crit_edge ]
  %41 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body27.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true.i.i

for.body27.i.lor.lhs.false.i.i_crit_edge:         ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false.i.i

land.lhs.true.i.i:                                ; preds = %for.body27.i
  %attr.i.i = getelementptr [66 x %struct.anon.174], ptr @qede_stats_arr, i32 0, i32 %i.168.i, i32 2
  %43 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %attr.i.i, align 8
  %and1.i20.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i20.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i20.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, label %land.lhs.true.i.i.for.inc32.i_crit_edge

land.lhs.true.i.i.for.inc32.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc32.i

land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i.lor.lhs.false.i.i_crit_edge, %for.body27.i.lor.lhs.false.i.i_crit_edge
  %45 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dev_type.i.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %46, label %lor.lhs.false.i.i.if.end29.i_crit_edge [
    i32 0, label %lor.lhs.false.i.i.qede_is_irrelevant_stat.exit.i_crit_edge
    i32 1, label %land.rhs.i.i
  ]

lor.lhs.false.i.i.qede_is_irrelevant_stat.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit.i

lor.lhs.false.i.i.if.end29.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29.i

land.rhs.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit.i

qede_is_irrelevant_stat.exit.i:                   ; preds = %land.rhs.i.i, %lor.lhs.false.i.i.qede_is_irrelevant_stat.exit.i_crit_edge
  %.sink26.i.i = phi i32 [ 2, %land.rhs.i.i ], [ 4, %lor.lhs.false.i.i.qede_is_irrelevant_stat.exit.i_crit_edge ]
  %attr5.i.i = getelementptr [66 x %struct.anon.174], ptr @qede_stats_arr, i32 0, i32 %i.168.i, i32 2
  %48 = ptrtoint ptr %attr5.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %attr5.i.i, align 8
  %50 = and i32 %49, %.sink26.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool7.not.i.not.i = icmp eq i32 %50, 0
  br i1 %tobool7.not.i.not.i, label %qede_is_irrelevant_stat.exit.i.if.end29.i_crit_edge, label %qede_is_irrelevant_stat.exit.i.for.inc32.i_crit_edge

qede_is_irrelevant_stat.exit.i.for.inc32.i_crit_edge: ; preds = %qede_is_irrelevant_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc32.i

qede_is_irrelevant_stat.exit.i.if.end29.i_crit_edge: ; preds = %qede_is_irrelevant_stat.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end29.i

if.end29.i:                                       ; preds = %qede_is_irrelevant_stat.exit.i.if.end29.i_crit_edge, %lor.lhs.false.i.i.if.end29.i_crit_edge
  %string.i = getelementptr [66 x %struct.anon.174], ptr @qede_stats_arr, i32 0, i32 %i.168.i, i32 1
  %call31.i = tail call ptr @strcpy(ptr noundef %add.ptr6667.i, ptr noundef %string.i) #24
  %add.ptr.i21 = getelementptr i8, ptr %add.ptr6667.i, i32 32
  br label %for.inc32.i

for.inc32.i:                                      ; preds = %if.end29.i, %qede_is_irrelevant_stat.exit.i.for.inc32.i_crit_edge, %land.lhs.true.i.i.for.inc32.i_crit_edge
  %add.ptr65.i = phi ptr [ %add.ptr6667.i, %land.lhs.true.i.i.for.inc32.i_crit_edge ], [ %add.ptr6667.i, %qede_is_irrelevant_stat.exit.i.for.inc32.i_crit_edge ], [ %add.ptr.i21, %if.end29.i ]
  %inc33.i = add nuw nsw i32 %i.168.i, 1
  %exitcond.not.i = icmp eq i32 %inc33.i, 66
  br i1 %exitcond.not.i, label %qede_get_strings_stats.exit, label %for.inc32.i.for.body27.i_crit_edge

for.inc32.i.for.body27.i_crit_edge:               ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body27.i

qede_get_strings_stats.exit:                      ; preds = %for.inc32.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.addr.i)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %51 = call ptr @memcpy(ptr %buf, ptr @qede_private_arr, i32 160)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %52 = call ptr @memcpy(ptr %buf, ptr @qede_tests_str_arr, i32 192)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %53 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp = icmp eq i8 %54, 0
  br i1 %cmp, label %land.rhs, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %55 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dp_module, align 8
  %and = and i32 %56, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.sw.epilog_crit_edge, label %do.end, !prof !370

land.rhs.sw.epilog_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %57 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i22 = icmp eq i8 %60, 0
  br i1 %tobool.not.i22, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %58, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool8.not = icmp eq ptr %58, null
  %or.cond = and i1 %tobool8.not, %tobool2.not.i
  %spec.select.i26 = select i1 %tobool2.not.i, ptr %58, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i26
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef 380, ptr noundef %cond, i32 noundef %stringset) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %land.rhs.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge, %sw.bb2, %sw.bb1, %qede_get_strings_stats.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @qede_fill_by_demand_stats(ptr noundef %add.ptr.i) #19
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #19
  %num_queues = getelementptr i8, ptr %dev, i32 2442
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp89.not = icmp eq i16 %1, 0
  br i1 %cmp89.not, label %entry.for.cond24.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond24.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond24.preheader

for.body.lr.ph:                                   ; preds = %entry
  %fp_array = getelementptr i8, ptr %dev, i32 2428
  %num_tc = getelementptr i8, ptr %dev, i32 2413
  br label %for.body

for.cond24.preheader:                             ; preds = %for.inc21.for.cond24.preheader_crit_edge, %entry.for.cond24.preheader_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %entry.for.cond24.preheader_crit_edge ], [ %buf.addr.4, %for.inc21.for.cond24.preheader_crit_edge ]
  %flags.i = getelementptr i8, ptr %dev, i32 2328
  %dev_type.i = getelementptr i8, ptr %dev, i32 2404
  %stats31 = getelementptr i8, ptr %dev, i32 2560
  br label %for.body27

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc22, %for.inc21.for.body_crit_edge ]
  %buf.addr.090 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.4, %for.inc21.for.body_crit_edge ]
  %2 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp_array, align 4
  %type = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.091, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %rxq = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.091, i32 6
  %7 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rxq, align 4
  %add.ptr.i56 = getelementptr i8, ptr %8, i32 1888
  %9 = ptrtoint ptr %add.ptr.i56 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i56, align 8
  %11 = ptrtoint ptr %buf.addr.090 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %buf.addr.090, align 8
  %incdec.ptr.i = getelementptr i64, ptr %buf.addr.090, i32 1
  %add.ptr.1.i = getelementptr i8, ptr %8, i32 1896
  %12 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.1.i, align 8
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %incdec.ptr.i, align 8
  %incdec.ptr.1.i = getelementptr i64, ptr %buf.addr.090, i32 2
  %add.ptr.2.i = getelementptr i8, ptr %8, i32 1904
  %15 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.2.i, align 8
  %17 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %incdec.ptr.1.i, align 8
  %incdec.ptr.2.i = getelementptr i64, ptr %buf.addr.090, i32 3
  %add.ptr.3.i = getelementptr i8, ptr %8, i32 1912
  %18 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.3.i, align 8
  %20 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %incdec.ptr.2.i, align 8
  %incdec.ptr.3.i = getelementptr i64, ptr %buf.addr.090, i32 4
  %add.ptr.4.i = getelementptr i8, ptr %8, i32 1920
  %21 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.4.i, align 8
  %23 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %incdec.ptr.3.i, align 8
  %incdec.ptr.4.i = getelementptr i64, ptr %buf.addr.090, i32 5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %buf.addr.1 = phi ptr [ %buf.addr.090, %for.body.if.end_crit_edge ], [ %incdec.ptr.4.i, %if.then ]
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 4
  %26 = and i8 %25, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool6.not = icmp eq i8 %26, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %xdp_tx = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.091, i32 8
  %27 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xdp_tx, align 4
  %add.ptr.i57 = getelementptr i8, ptr %28, i32 8
  %29 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.i57, align 8
  %31 = ptrtoint ptr %buf.addr.1 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %buf.addr.1, align 8
  %incdec.ptr.i58 = getelementptr i64, ptr %buf.addr.1, i32 1
  %add.ptr.1.i59 = getelementptr i8, ptr %28, i32 16
  %32 = ptrtoint ptr %add.ptr.1.i59 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr.1.i59, align 8
  %34 = ptrtoint ptr %incdec.ptr.i58 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %incdec.ptr.i58, align 8
  %incdec.ptr.1.i60 = getelementptr i64, ptr %buf.addr.1, i32 2
  %add.ptr.2.i61 = getelementptr i8, ptr %28, i32 24
  %35 = ptrtoint ptr %add.ptr.2.i61 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.2.i61, align 8
  %37 = ptrtoint ptr %incdec.ptr.1.i60 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %incdec.ptr.1.i60, align 8
  %incdec.ptr.2.i62 = getelementptr i64, ptr %buf.addr.1, i32 3
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %buf.addr.2 = phi ptr [ %buf.addr.1, %if.end.if.end8_crit_edge ], [ %incdec.ptr.2.i62, %if.then7 ]
  %38 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %type, align 4
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool12.not = icmp eq i8 %40, 0
  br i1 %tobool12.not, label %if.end8.for.inc21_crit_edge, label %for.cond14.preheader

if.end8.for.inc21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc21

for.cond14.preheader:                             ; preds = %if.end8
  %41 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_tc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp1685.not = icmp eq i8 %42, 0
  br i1 %cmp1685.not, label %for.cond14.preheader.for.inc21_crit_edge, label %for.body18.lr.ph

for.cond14.preheader.for.inc21_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc21

for.body18.lr.ph:                                 ; preds = %for.cond14.preheader
  %txq = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.091, i32 7
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body18.lr.ph
  %cos.087 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc, %for.body18.for.body18_crit_edge ]
  %buf.addr.386 = phi ptr [ %buf.addr.2, %for.body18.lr.ph ], [ %incdec.ptr.2.i68, %for.body18.for.body18_crit_edge ]
  %43 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %txq, align 8
  %arrayidx19 = getelementptr %struct.qede_tx_queue, ptr %44, i32 %cos.087
  %add.ptr.i63 = getelementptr i8, ptr %arrayidx19, i32 8
  %45 = ptrtoint ptr %add.ptr.i63 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.i63, align 8
  %47 = ptrtoint ptr %buf.addr.386 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %buf.addr.386, align 8
  %incdec.ptr.i64 = getelementptr i64, ptr %buf.addr.386, i32 1
  %add.ptr.1.i65 = getelementptr i8, ptr %arrayidx19, i32 16
  %48 = ptrtoint ptr %add.ptr.1.i65 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr.1.i65, align 8
  %50 = ptrtoint ptr %incdec.ptr.i64 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %incdec.ptr.i64, align 8
  %incdec.ptr.1.i66 = getelementptr i64, ptr %buf.addr.386, i32 2
  %add.ptr.2.i67 = getelementptr i8, ptr %arrayidx19, i32 24
  %51 = ptrtoint ptr %add.ptr.2.i67 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr.2.i67, align 8
  %53 = ptrtoint ptr %incdec.ptr.1.i66 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %incdec.ptr.1.i66, align 8
  %incdec.ptr.2.i68 = getelementptr i64, ptr %buf.addr.386, i32 3
  %inc = add nuw nsw i32 %cos.087, 1
  %54 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_tc, align 1
  %conv15 = zext i8 %55 to i32
  %cmp16 = icmp ult i32 %inc, %conv15
  br i1 %cmp16, label %for.body18.for.body18_crit_edge, label %for.body18.for.inc21_crit_edge

for.body18.for.inc21_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc21

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body18

for.inc21:                                        ; preds = %for.body18.for.inc21_crit_edge, %for.cond14.preheader.for.inc21_crit_edge, %if.end8.for.inc21_crit_edge
  %buf.addr.4 = phi ptr [ %buf.addr.2, %if.end8.for.inc21_crit_edge ], [ %buf.addr.2, %for.cond14.preheader.for.inc21_crit_edge ], [ %incdec.ptr.2.i68, %for.body18.for.inc21_crit_edge ]
  %inc22 = add nuw nsw i32 %i.091, 1
  %56 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %57 to i32
  %cmp = icmp ult i32 %inc22, %conv
  br i1 %cmp, label %for.inc21.for.body_crit_edge, label %for.inc21.for.cond24.preheader_crit_edge

for.inc21.for.cond24.preheader_crit_edge:         ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.cond24.preheader

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.body27:                                       ; preds = %for.inc33.for.body27_crit_edge, %for.cond24.preheader
  %i.1100 = phi i32 [ 0, %for.cond24.preheader ], [ %inc34, %for.inc33.for.body27_crit_edge ]
  %buf.addr.597 = phi ptr [ %buf.addr.0.lcssa, %for.cond24.preheader ], [ %buf.addr.6, %for.inc33.for.body27_crit_edge ]
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %for.body27.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

for.body27.lor.lhs.false.i_crit_edge:             ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %for.body27
  %attr.i = getelementptr [66 x %struct.anon.174], ptr @qede_stats_arr, i32 0, i32 %i.1100, i32 2
  %60 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %attr.i, align 8
  %and1.i20.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i20.i)
  %tobool2.not.i = icmp eq i32 %and1.i20.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.for.inc33_crit_edge

land.lhs.true.i.for.inc33_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc33

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %for.body27.lor.lhs.false.i_crit_edge
  %62 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dev_type.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %63, label %lor.lhs.false.i.if.end30_crit_edge [
    i32 0, label %lor.lhs.false.i.qede_is_irrelevant_stat.exit_crit_edge
    i32 1, label %land.rhs.i
  ]

lor.lhs.false.i.qede_is_irrelevant_stat.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit

lor.lhs.false.i.if.end30_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

land.rhs.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit

qede_is_irrelevant_stat.exit:                     ; preds = %land.rhs.i, %lor.lhs.false.i.qede_is_irrelevant_stat.exit_crit_edge
  %.sink26.i = phi i32 [ 2, %land.rhs.i ], [ 4, %lor.lhs.false.i.qede_is_irrelevant_stat.exit_crit_edge ]
  %attr5.i = getelementptr [66 x %struct.anon.174], ptr @qede_stats_arr, i32 0, i32 %i.1100, i32 2
  %65 = ptrtoint ptr %attr5.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %attr5.i, align 8
  %67 = and i32 %66, %.sink26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool7.not.i.not = icmp eq i32 %67, 0
  br i1 %tobool7.not.i.not, label %qede_is_irrelevant_stat.exit.if.end30_crit_edge, label %qede_is_irrelevant_stat.exit.for.inc33_crit_edge

qede_is_irrelevant_stat.exit.for.inc33_crit_edge: ; preds = %qede_is_irrelevant_stat.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc33

qede_is_irrelevant_stat.exit.if.end30_crit_edge:  ; preds = %qede_is_irrelevant_stat.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.end30:                                         ; preds = %qede_is_irrelevant_stat.exit.if.end30_crit_edge, %lor.lhs.false.i.if.end30_crit_edge
  %arrayidx32 = getelementptr [66 x %struct.anon.174], ptr @qede_stats_arr, i32 0, i32 %i.1100
  %68 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx32, align 8
  %idx.ext = trunc i64 %69 to i32
  %add.ptr = getelementptr i8, ptr %stats31, i32 %idx.ext
  %70 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr, align 8
  %72 = ptrtoint ptr %buf.addr.597 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %buf.addr.597, align 8
  %incdec.ptr = getelementptr i64, ptr %buf.addr.597, i32 1
  br label %for.inc33

for.inc33:                                        ; preds = %if.end30, %qede_is_irrelevant_stat.exit.for.inc33_crit_edge, %land.lhs.true.i.for.inc33_crit_edge
  %buf.addr.6 = phi ptr [ %buf.addr.597, %qede_is_irrelevant_stat.exit.for.inc33_crit_edge ], [ %incdec.ptr, %if.end30 ], [ %buf.addr.597, %land.lhs.true.i.for.inc33_crit_edge ]
  %inc34 = add nuw nsw i32 %i.1100, 1
  %exitcond.not = icmp eq i32 %inc34, 66
  br i1 %exitcond.not, label %for.end35, label %for.inc33.for.body27_crit_edge

for.inc33.for.body27_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body27

for.end35:                                        ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__qede_unlock(ptr noundef %add.ptr.i) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_priv_flags(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %esl_active = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %esl_active) #19
  %0 = ptrtoint ptr %esl_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %esl_active, align 1, !annotation !372
  %num_hwfns = getelementptr i8, ptr %dev, i32 2364
  %1 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp = icmp ugt i8 %2, 1
  %spec.select = zext i1 %cmp to i32
  %smart_an = getelementptr i8, ptr %dev, i32 2395
  %3 = ptrtoint ptr %smart_an to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %smart_an, align 1, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %or5 = or i32 %spec.select, 2
  %flags.1 = select i1 %tobool.not, i32 %spec.select, i32 %or5
  %err_flags = getelementptr i8, ptr %dev, i32 3608
  %5 = ptrtoint ptr %err_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %err_flags, align 8
  %and = and i32 %6, 4
  %7 = or i32 %flags.1, %and
  %esl = getelementptr i8, ptr %dev, i32 2396
  %8 = ptrtoint ptr %esl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %esl, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool13.not = icmp eq i8 %9, 0
  %or15 = or i32 %7, 8
  %flags.3 = select i1 %tobool13.not, i32 %7, i32 %or15
  %ops = getelementptr i8, ptr %dev, i32 2332
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %get_esl_status = getelementptr inbounds %struct.qed_common_ops, ptr %13, i32 0, i32 48
  %14 = ptrtoint ptr %get_esl_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_esl_status, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %call18 = call i32 %15(ptr noundef %17, ptr noundef nonnull %esl_active) #19
  %18 = ptrtoint ptr %esl_active to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %esl_active, align 1, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool19.not = icmp eq i8 %19, 0
  %or21 = or i32 %flags.3, 16
  %flags.4 = select i1 %tobool19.not, i32 %flags.3, i32 %or21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %esl_active) #19
  ret i32 %flags.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_sset_count(ptr noundef %dev, i32 noundef %stringset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %stringset, label %do.body [
    i32 1, label %for.cond.preheader
    i32 2, label %entry.cleanup_crit_edge
    i32 0, label %sw.bb21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %flags.i = getelementptr i8, ptr %dev, i32 2328
  %dev_type.i = getelementptr i8, ptr %dev, i32 2404
  br label %for.body

for.body:                                         ; preds = %qede_is_irrelevant_stat.exit.thread75.for.body_crit_edge, %for.cond.preheader
  %i.081 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %qede_is_irrelevant_stat.exit.thread75.for.body_crit_edge ]
  %num_stats.080 = phi i32 [ 66, %for.cond.preheader ], [ %11, %qede_is_irrelevant_stat.exit.thread75.for.body_crit_edge ]
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %for.body.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

for.body.lor.lhs.false.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %for.body
  %attr.i = getelementptr [66 x %struct.anon.174], ptr @qede_stats_arr, i32 0, i32 %i.081, i32 2
  %3 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %attr.i, align 8
  %and1.i20.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i20.i)
  %tobool2.not.i = icmp eq i32 %and1.i20.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.qede_is_irrelevant_stat.exit.thread_crit_edge

land.lhs.true.i.qede_is_irrelevant_stat.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit.thread

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %for.body.lor.lhs.false.i_crit_edge
  %5 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_type.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %6, label %lor.lhs.false.i.qede_is_irrelevant_stat.exit.thread75_crit_edge [
    i32 0, label %lor.lhs.false.i.qede_is_irrelevant_stat.exit_crit_edge
    i32 1, label %land.rhs.i
  ]

lor.lhs.false.i.qede_is_irrelevant_stat.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit

lor.lhs.false.i.qede_is_irrelevant_stat.exit.thread75_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit.thread75

land.rhs.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit

qede_is_irrelevant_stat.exit:                     ; preds = %land.rhs.i, %lor.lhs.false.i.qede_is_irrelevant_stat.exit_crit_edge
  %.sink26.i = phi i32 [ 2, %land.rhs.i ], [ 4, %lor.lhs.false.i.qede_is_irrelevant_stat.exit_crit_edge ]
  %attr5.i = getelementptr [66 x %struct.anon.174], ptr @qede_stats_arr, i32 0, i32 %i.081, i32 2
  %8 = ptrtoint ptr %attr5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %attr5.i, align 8
  %10 = and i32 %9, %.sink26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not.i.not = icmp eq i32 %10, 0
  br i1 %tobool7.not.i.not, label %qede_is_irrelevant_stat.exit.qede_is_irrelevant_stat.exit.thread75_crit_edge, label %qede_is_irrelevant_stat.exit.qede_is_irrelevant_stat.exit.thread_crit_edge

qede_is_irrelevant_stat.exit.qede_is_irrelevant_stat.exit.thread_crit_edge: ; preds = %qede_is_irrelevant_stat.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit.thread

qede_is_irrelevant_stat.exit.qede_is_irrelevant_stat.exit.thread75_crit_edge: ; preds = %qede_is_irrelevant_stat.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_is_irrelevant_stat.exit.thread75

qede_is_irrelevant_stat.exit.thread:              ; preds = %qede_is_irrelevant_stat.exit.qede_is_irrelevant_stat.exit.thread_crit_edge, %land.lhs.true.i.qede_is_irrelevant_stat.exit.thread_crit_edge
  %dec74 = add i32 %num_stats.080, -1
  br label %qede_is_irrelevant_stat.exit.thread75

qede_is_irrelevant_stat.exit.thread75:            ; preds = %qede_is_irrelevant_stat.exit.thread, %qede_is_irrelevant_stat.exit.qede_is_irrelevant_stat.exit.thread75_crit_edge, %lor.lhs.false.i.qede_is_irrelevant_stat.exit.thread75_crit_edge
  %11 = phi i32 [ %dec74, %qede_is_irrelevant_stat.exit.thread ], [ %num_stats.080, %qede_is_irrelevant_stat.exit.qede_is_irrelevant_stat.exit.thread75_crit_edge ], [ %num_stats.080, %lor.lhs.false.i.qede_is_irrelevant_stat.exit.thread75_crit_edge ]
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, 66
  br i1 %exitcond.not, label %for.end, label %qede_is_irrelevant_stat.exit.thread75.for.body_crit_edge

qede_is_irrelevant_stat.exit.thread75.for.body_crit_edge: ; preds = %qede_is_irrelevant_stat.exit.thread75
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %qede_is_irrelevant_stat.exit.thread75
  call void @__sanitizer_cov_trace_pc() #21
  %num_queues = getelementptr i8, ptr %dev, i32 2442
  %12 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %13 to i32
  %fp_num_rx = getelementptr i8, ptr %dev, i32 2439
  %14 = ptrtoint ptr %fp_num_rx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fp_num_rx, align 1
  %conv2 = zext i8 %15 to i32
  %sub = sub nsw i32 %conv, %conv2
  %mul = mul nsw i32 %sub, 3
  %num_tc = getelementptr i8, ptr %dev, i32 2413
  %16 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_tc, align 1
  %conv3 = zext i8 %17 to i32
  %mul4 = mul nsw i32 %mul, %conv3
  %add = add i32 %mul4, %11
  %fp_num_tx = getelementptr i8, ptr %dev, i32 2437
  %18 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fp_num_tx, align 1
  %conv7 = zext i8 %19 to i32
  %sub8 = sub nsw i32 %conv, %conv7
  %mul9 = mul nsw i32 %sub8, 5
  %add10 = add i32 %add, %mul9
  %xdp_prog = getelementptr i8, ptr %dev, i32 3600
  %20 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xdp_prog, align 8
  %tobool.not = icmp eq ptr %21, null
  %mul17 = mul nsw i32 %sub8, 3
  %add18 = select i1 %tobool.not, i32 0, i32 %mul17
  %num_stats.2 = add i32 %add10, %add18
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %flags = getelementptr i8, ptr %dev, i32 2328
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool23.not = icmp eq i32 %and1.i, 0
  %. = select i1 %tobool23.not, i32 6, i32 0
  br label %cleanup

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %24 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp26 = icmp eq i8 %25, 0
  br i1 %cmp26, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %26 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_module, align 8
  %and = and i32 %27, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !370

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %28 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i63 = icmp eq i8 %31, 0
  br i1 %tobool.not.i63, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i65

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i65:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %29, i32 noundef 37) #19
  %tobool2.not.i64 = icmp eq ptr %call.i, null
  %tobool34.not = icmp eq ptr %29, null
  %or.cond = and i1 %tobool34.not, %tobool2.not.i64
  %spec.select.i69 = select i1 %tobool2.not.i64, ptr %29, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i69
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i65, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i65 ]
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.48, i32 noundef 477, ptr noundef %cond, i32 noundef %stringset) #22
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %sw.bb21, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num_stats.2, %for.end ], [ 5, %entry.cleanup_crit_edge ], [ %., %sw.bb21 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %cond.end ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_rxnfc(ptr noundef %dev, ptr noundef %info, ptr noundef %rule_locs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %1, label %do.end [
    i32 45, label %sw.bb
    i32 41, label %sw.bb3
    i32 46, label %sw.bb5
    i32 47, label %sw.bb8
    i32 48, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %num_queues = getelementptr i8, ptr %dev, i32 2442
  %3 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %4 to i32
  %fp_num_tx = getelementptr i8, ptr %dev, i32 2437
  %5 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fp_num_tx, align 1
  %conv1 = zext i8 %6 to i32
  %sub = sub nsw i32 %conv, %conv1
  %conv2 = sext i32 %sub to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv2, ptr %data, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 48, ptr %data.i, align 8
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %9 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flow_type.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %10, label %sw.default.i [
    i32 1, label %sw.bb3.sw.epilog.sink.split.i_crit_edge
    i32 5, label %sw.bb3.sw.epilog.sink.split.i_crit_edge43
    i32 2, label %sw.bb2.i
    i32 6, label %sw.bb5.i
    i32 16, label %sw.bb3.sw.epilog_crit_edge
    i32 17, label %sw.bb3.sw.epilog_crit_edge44
  ]

sw.bb3.sw.epilog_crit_edge44:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb3.sw.epilog.sink.split.i_crit_edge43:        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.i

sw.bb3.sw.epilog.sink.split.i_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %sw.bb3
  %rss_caps.i = getelementptr i8, ptr %dev, i32 3372
  %12 = ptrtoint ptr %rss_caps.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rss_caps.i, align 4
  %14 = and i8 %13, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %sw.bb2.i.sw.epilog_crit_edge, label %sw.bb2.i.sw.epilog.sink.split.i_crit_edge

sw.bb2.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.i

sw.bb2.i.sw.epilog_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %sw.bb3
  %rss_caps6.i = getelementptr i8, ptr %dev, i32 3372
  %15 = ptrtoint ptr %rss_caps6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rss_caps6.i, align 4
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not.i = icmp eq i8 %17, 0
  br i1 %tobool9.not.i, label %sw.bb5.i.sw.epilog_crit_edge, label %sw.bb5.i.sw.epilog.sink.split.i_crit_edge

sw.bb5.i.sw.epilog.sink.split.i_crit_edge:        ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.i

sw.bb5.i.sw.epilog_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.default.i:                                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.default.i, %sw.bb5.i.sw.epilog.sink.split.i_crit_edge, %sw.bb2.i.sw.epilog.sink.split.i_crit_edge, %sw.bb3.sw.epilog.sink.split.i_crit_edge, %sw.bb3.sw.epilog.sink.split.i_crit_edge43
  %.sink.i = phi i64 [ 0, %sw.default.i ], [ 240, %sw.bb3.sw.epilog.sink.split.i_crit_edge ], [ 240, %sw.bb3.sw.epilog.sink.split.i_crit_edge43 ], [ 240, %sw.bb2.i.sw.epilog.sink.split.i_crit_edge ], [ 240, %sw.bb5.i.sw.epilog.sink.split.i_crit_edge ]
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %.sink.i, ptr %data.i, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call6 = tail call i32 @qede_get_arfs_filter_count(ptr noundef %add.ptr.i) #19
  %19 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call6, ptr %19, align 8
  %data7 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %21 = ptrtoint ptr %data7 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 256, ptr %data7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call9 = tail call i32 @qede_get_cls_rule_entry(ptr noundef %add.ptr.i, ptr noundef %info) #19
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call11 = tail call i32 @qede_get_cls_rule_all(ptr noundef %add.ptr.i, ptr noundef %info, ptr noundef %rule_locs) #19
  br label %sw.epilog

do.end:                                           ; preds = %entry
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %22 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i32 = icmp eq i8 %25, 0
  br i1 %tobool.not.i32, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %23, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool.not = icmp eq ptr %23, null
  %or.cond = and i1 %tobool.not, %tobool2.not.i
  %spec.select.i36 = select i1 %tobool2.not.i, ptr %23, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i36
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 1232, ptr noundef %cond) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb10, %sw.bb8, %sw.bb5, %sw.epilog.sink.split.i, %sw.bb5.i.sw.epilog_crit_edge, %sw.bb2.i.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge44, %sw.bb
  %rc.0 = phi i32 [ -95, %cond.end ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb8 ], [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %sw.bb3.sw.epilog_crit_edge44 ], [ 0, %sw.bb2.i.sw.epilog_crit_edge ], [ 0, %sw.bb5.i.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split.i ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_rxnfc(ptr noundef %dev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %1, label %do.body [
    i32 42, label %sw.bb
    i32 50, label %sw.bb2
    i32 49, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %dp_level.i = getelementptr i8, ptr %dev, i32 2324
  %3 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp eq i8 %4, 0
  br i1 %cmp.i, label %land.rhs.i, label %sw.bb.do.end10.i_crit_edge

sw.bb.do.end10.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end10.i

land.rhs.i:                                       ; preds = %sw.bb
  %dp_module.i = getelementptr i8, ptr %dev, i32 2320
  %5 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp_module.i, align 8
  %and.i = and i32 %6, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.do.end10.i_crit_edge, label %do.end.i, !prof !370

land.rhs.i.do.end10.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end10.i

do.end.i:                                         ; preds = %land.rhs.i
  %ndev.i = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i = tail call ptr @strchr(ptr noundef %8, i32 noundef 37) #19
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool5.not.i = icmp eq ptr %8, null
  %or.cond.i = and i1 %tobool5.not.i, %tobool2.not.i.i
  %spec.select.i369.i = select i1 %tobool2.not.i.i, ptr %8, ptr @.str.25
  %spec.select.i = select i1 %or.cond.i, ptr @.str.3, ptr %spec.select.i369.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.25, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i.i ]
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flow_type.i, align 4
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %data.i, align 8
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1247, ptr noundef %cond.i, i32 noundef %12, i64 noundef %14) #22
  br label %do.end10.i

do.end10.i:                                       ; preds = %cond.end.i, %land.rhs.i.do.end10.i_crit_edge, %sw.bb.do.end10.i_crit_edge
  %flow_type11.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %15 = ptrtoint ptr %flow_type11.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flow_type11.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %16, label %do.end10.i.sw.epilog_crit_edge [
    i32 1, label %do.end10.i.sw.bb.i_crit_edge
    i32 5, label %do.end10.i.sw.bb.i_crit_edge38
    i32 2, label %sw.bb45.i
    i32 6, label %sw.bb125.i
    i32 16, label %do.end10.i.sw.bb206.i_crit_edge
    i32 17, label %do.end10.i.sw.bb206.i_crit_edge39
    i32 3, label %do.end10.i.sw.bb241.i_crit_edge
    i32 4, label %do.end10.i.sw.bb241.i_crit_edge40
    i32 9, label %do.end10.i.sw.bb241.i_crit_edge41
    i32 10, label %do.end10.i.sw.bb241.i_crit_edge42
    i32 7, label %do.end10.i.sw.bb241.i_crit_edge43
    i32 8, label %do.end10.i.sw.bb241.i_crit_edge44
    i32 11, label %do.end10.i.sw.bb241.i_crit_edge45
    i32 12, label %do.end10.i.sw.bb241.i_crit_edge46
    i32 13, label %do.end10.i.sw.bb241.i_crit_edge47
    i32 18, label %do.end10.i.sw.bb241.i_crit_edge48
  ]

do.end10.i.sw.bb241.i_crit_edge48:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb241.i_crit_edge47:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb241.i_crit_edge46:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb241.i_crit_edge45:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb241.i_crit_edge44:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb241.i_crit_edge43:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb241.i_crit_edge42:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb241.i_crit_edge41:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb241.i_crit_edge40:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb241.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb241.i

do.end10.i.sw.bb206.i_crit_edge39:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb206.i

do.end10.i.sw.bb206.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb206.i

do.end10.i.sw.bb.i_crit_edge38:                   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb.i

do.end10.i.sw.bb.i_crit_edge:                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb.i

do.end10.i.sw.epilog_crit_edge:                   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb.i:                                          ; preds = %do.end10.i.sw.bb.i_crit_edge, %do.end10.i.sw.bb.i_crit_edge38
  %data12.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %18 = ptrtoint ptr %data12.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %data12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 240, i64 %19)
  %tobool13.not.i = icmp eq i64 %19, 240
  br i1 %tobool13.not.i, label %sw.bb.i.sw.epilog_crit_edge, label %do.body15.i

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body15.i:                                      ; preds = %sw.bb.i
  %20 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp18.i = icmp ult i8 %21, 2
  br i1 %cmp18.i, label %do.end29.i, label %do.body15.i.sw.epilog_crit_edge, !prof !369

do.body15.i.sw.epilog_crit_edge:                  ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.end29.i:                                       ; preds = %do.body15.i
  %ndev31.i = getelementptr i8, ptr %dev, i32 2308
  %22 = ptrtoint ptr %ndev31.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev31.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i373.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i373.i, label %do.end29.i.cond.end38.i_crit_edge, label %lor.lhs.false.i377.i

do.end29.i.cond.end38.i_crit_edge:                ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end38.i

lor.lhs.false.i377.i:                             ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i374.i = tail call ptr @strchr(ptr noundef %23, i32 noundef 37) #19
  %tobool2.not.i375.i = icmp eq ptr %call.i374.i, null
  %tobool33.not.i = icmp eq ptr %23, null
  %or.cond502.i = and i1 %tobool33.not.i, %tobool2.not.i375.i
  %spec.select.i383.i = select i1 %tobool2.not.i375.i, ptr %23, ptr @.str.25
  %spec.select509.i = select i1 %or.cond502.i, ptr @.str.3, ptr %spec.select.i383.i
  br label %cond.end38.i

cond.end38.i:                                     ; preds = %lor.lhs.false.i377.i, %do.end29.i.cond.end38.i_crit_edge
  %cond39.i = phi ptr [ @.str.25, %do.end29.i.cond.end38.i_crit_edge ], [ %spec.select509.i, %lor.lhs.false.i377.i ]
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54, i32 noundef 1255, ptr noundef %cond39.i) #22
  br label %sw.epilog

sw.bb45.i:                                        ; preds = %do.end10.i
  %data46.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %data46.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data46.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.191)
  switch i64 %27, label %sw.bb45.i.sw.epilog_crit_edge [
    i64 240, label %if.then49.i
    i64 48, label %if.then87.i
  ]

sw.bb45.i.sw.epilog_crit_edge:                    ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then49.i:                                      ; preds = %sw.bb45.i
  %28 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp53.i = icmp eq i8 %29, 0
  br i1 %cmp53.i, label %land.rhs55.i, label %if.then49.i.sw.epilog.i_crit_edge

if.then49.i.sw.epilog.i_crit_edge:                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

land.rhs55.i:                                     ; preds = %if.then49.i
  %dp_module56.i = getelementptr i8, ptr %dev, i32 2320
  %30 = ptrtoint ptr %dp_module56.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dp_module56.i, align 8
  %and57.i = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %land.rhs55.i.sw.epilog.i_crit_edge, label %do.end69.i, !prof !370

land.rhs55.i.sw.epilog.i_crit_edge:               ; preds = %land.rhs55.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

do.end69.i:                                       ; preds = %land.rhs55.i
  %ndev71.i = getelementptr i8, ptr %dev, i32 2308
  %32 = ptrtoint ptr %ndev71.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev71.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i387.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i387.i, label %do.end69.i.cond.end78.i_crit_edge, label %lor.lhs.false.i391.i

do.end69.i.cond.end78.i_crit_edge:                ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end78.i

lor.lhs.false.i391.i:                             ; preds = %do.end69.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i388.i = tail call ptr @strchr(ptr noundef %33, i32 noundef 37) #19
  %tobool2.not.i389.i = icmp eq ptr %call.i388.i, null
  %tobool73.not.i = icmp eq ptr %33, null
  %or.cond503.i = and i1 %tobool73.not.i, %tobool2.not.i389.i
  %spec.select.i397.i = select i1 %tobool2.not.i389.i, ptr %33, ptr @.str.25
  %spec.select510.i = select i1 %or.cond503.i, ptr @.str.3, ptr %spec.select.i397.i
  br label %cond.end78.i

cond.end78.i:                                     ; preds = %lor.lhs.false.i391.i, %do.end69.i.cond.end78.i_crit_edge
  %cond79.i = phi ptr [ @.str.25, %do.end69.i.cond.end78.i_crit_edge ], [ %spec.select510.i, %lor.lhs.false.i391.i ]
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54, i32 noundef 1265, ptr noundef %cond79.i) #22
  br label %sw.epilog.i

if.then87.i:                                      ; preds = %sw.bb45.i
  %36 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp91.i = icmp eq i8 %37, 0
  br i1 %cmp91.i, label %land.rhs93.i, label %if.then87.i.sw.epilog.i_crit_edge

if.then87.i.sw.epilog.i_crit_edge:                ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

land.rhs93.i:                                     ; preds = %if.then87.i
  %dp_module94.i = getelementptr i8, ptr %dev, i32 2320
  %38 = ptrtoint ptr %dp_module94.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dp_module94.i, align 8
  %and95.i = and i32 %39, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %land.rhs93.i.sw.epilog.i_crit_edge, label %do.end107.i, !prof !370

land.rhs93.i.sw.epilog.i_crit_edge:               ; preds = %land.rhs93.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

do.end107.i:                                      ; preds = %land.rhs93.i
  %ndev109.i = getelementptr i8, ptr %dev, i32 2308
  %40 = ptrtoint ptr %ndev109.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev109.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i401.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i401.i, label %do.end107.i.cond.end116.i_crit_edge, label %lor.lhs.false.i405.i

do.end107.i.cond.end116.i_crit_edge:              ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end116.i

lor.lhs.false.i405.i:                             ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i402.i = tail call ptr @strchr(ptr noundef %41, i32 noundef 37) #19
  %tobool2.not.i403.i = icmp eq ptr %call.i402.i, null
  %tobool111.not.i = icmp eq ptr %41, null
  %or.cond504.i = and i1 %tobool111.not.i, %tobool2.not.i403.i
  %spec.select.i411.i = select i1 %tobool2.not.i403.i, ptr %41, ptr @.str.25
  %spec.select511.i = select i1 %or.cond504.i, ptr @.str.3, ptr %spec.select.i411.i
  br label %cond.end116.i

cond.end116.i:                                    ; preds = %lor.lhs.false.i405.i, %do.end107.i.cond.end116.i_crit_edge
  %cond117.i = phi ptr [ @.str.25, %do.end107.i.cond.end116.i_crit_edge ], [ %spec.select511.i, %lor.lhs.false.i405.i ]
  %call118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.54, i32 noundef 1269, ptr noundef %cond117.i) #22
  br label %sw.epilog.i

sw.bb125.i:                                       ; preds = %do.end10.i
  %data126.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %44 = ptrtoint ptr %data126.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %data126.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.192)
  switch i64 %45, label %sw.bb125.i.sw.epilog_crit_edge [
    i64 240, label %if.then129.i
    i64 48, label %if.then168.i
  ]

sw.bb125.i.sw.epilog_crit_edge:                   ; preds = %sw.bb125.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.then129.i:                                     ; preds = %sw.bb125.i
  %46 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp133.i = icmp eq i8 %47, 0
  br i1 %cmp133.i, label %land.rhs135.i, label %if.then129.i.sw.epilog.i_crit_edge

if.then129.i.sw.epilog.i_crit_edge:               ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

land.rhs135.i:                                    ; preds = %if.then129.i
  %dp_module136.i = getelementptr i8, ptr %dev, i32 2320
  %48 = ptrtoint ptr %dp_module136.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dp_module136.i, align 8
  %and137.i = and i32 %49, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  br i1 %tobool138.not.i, label %land.rhs135.i.sw.epilog.i_crit_edge, label %do.end149.i, !prof !370

land.rhs135.i.sw.epilog.i_crit_edge:              ; preds = %land.rhs135.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

do.end149.i:                                      ; preds = %land.rhs135.i
  %ndev151.i = getelementptr i8, ptr %dev, i32 2308
  %50 = ptrtoint ptr %ndev151.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndev151.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i415.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i415.i, label %do.end149.i.cond.end158.i_crit_edge, label %lor.lhs.false.i419.i

do.end149.i.cond.end158.i_crit_edge:              ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end158.i

lor.lhs.false.i419.i:                             ; preds = %do.end149.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i416.i = tail call ptr @strchr(ptr noundef %51, i32 noundef 37) #19
  %tobool2.not.i417.i = icmp eq ptr %call.i416.i, null
  %tobool153.not.i = icmp eq ptr %51, null
  %or.cond505.i = and i1 %tobool153.not.i, %tobool2.not.i417.i
  %spec.select.i425.i = select i1 %tobool2.not.i417.i, ptr %51, ptr @.str.25
  %spec.select512.i = select i1 %or.cond505.i, ptr @.str.3, ptr %spec.select.i425.i
  br label %cond.end158.i

cond.end158.i:                                    ; preds = %lor.lhs.false.i419.i, %do.end149.i.cond.end158.i_crit_edge
  %cond159.i = phi ptr [ @.str.25, %do.end149.i.cond.end158.i_crit_edge ], [ %spec.select512.i, %lor.lhs.false.i419.i ]
  %call160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54, i32 noundef 1280, ptr noundef %cond159.i) #22
  br label %sw.epilog.i

if.then168.i:                                     ; preds = %sw.bb125.i
  %54 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp172.i = icmp eq i8 %55, 0
  br i1 %cmp172.i, label %land.rhs174.i, label %if.then168.i.sw.epilog.i_crit_edge

if.then168.i.sw.epilog.i_crit_edge:               ; preds = %if.then168.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

land.rhs174.i:                                    ; preds = %if.then168.i
  %dp_module175.i = getelementptr i8, ptr %dev, i32 2320
  %56 = ptrtoint ptr %dp_module175.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dp_module175.i, align 8
  %and176.i = and i32 %57, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176.i)
  %tobool177.not.i = icmp eq i32 %and176.i, 0
  br i1 %tobool177.not.i, label %land.rhs174.i.sw.epilog.i_crit_edge, label %do.end188.i, !prof !370

land.rhs174.i.sw.epilog.i_crit_edge:              ; preds = %land.rhs174.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog.i

do.end188.i:                                      ; preds = %land.rhs174.i
  %ndev190.i = getelementptr i8, ptr %dev, i32 2308
  %58 = ptrtoint ptr %ndev190.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ndev190.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i429.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i429.i, label %do.end188.i.cond.end197.i_crit_edge, label %lor.lhs.false.i433.i

do.end188.i.cond.end197.i_crit_edge:              ; preds = %do.end188.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end197.i

lor.lhs.false.i433.i:                             ; preds = %do.end188.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i430.i = tail call ptr @strchr(ptr noundef %59, i32 noundef 37) #19
  %tobool2.not.i431.i = icmp eq ptr %call.i430.i, null
  %tobool192.not.i = icmp eq ptr %59, null
  %or.cond506.i = and i1 %tobool192.not.i, %tobool2.not.i431.i
  %spec.select.i439.i = select i1 %tobool2.not.i431.i, ptr %59, ptr @.str.25
  %spec.select513.i = select i1 %or.cond506.i, ptr @.str.3, ptr %spec.select.i439.i
  br label %cond.end197.i

cond.end197.i:                                    ; preds = %lor.lhs.false.i433.i, %do.end188.i.cond.end197.i_crit_edge
  %cond198.i = phi ptr [ @.str.25, %do.end188.i.cond.end197.i_crit_edge ], [ %spec.select513.i, %lor.lhs.false.i433.i ]
  %call199.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.54, i32 noundef 1284, ptr noundef %cond198.i) #22
  br label %sw.epilog.i

sw.bb206.i:                                       ; preds = %do.end10.i.sw.bb206.i_crit_edge, %do.end10.i.sw.bb206.i_crit_edge39
  %data207.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %62 = ptrtoint ptr %data207.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %data207.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %63)
  %tobool209.not.i = icmp eq i64 %63, 48
  br i1 %tobool209.not.i, label %sw.bb206.i.sw.epilog_crit_edge, label %do.body211.i

sw.bb206.i.sw.epilog_crit_edge:                   ; preds = %sw.bb206.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body211.i:                                     ; preds = %sw.bb206.i
  %64 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp214.i = icmp ult i8 %65, 2
  br i1 %cmp214.i, label %do.end225.i, label %do.body211.i.sw.epilog_crit_edge, !prof !369

do.body211.i.sw.epilog_crit_edge:                 ; preds = %do.body211.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.end225.i:                                      ; preds = %do.body211.i
  %ndev227.i = getelementptr i8, ptr %dev, i32 2308
  %66 = ptrtoint ptr %ndev227.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ndev227.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i443.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i443.i, label %do.end225.i.cond.end234.i_crit_edge, label %lor.lhs.false.i447.i

do.end225.i.cond.end234.i_crit_edge:              ; preds = %do.end225.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end234.i

lor.lhs.false.i447.i:                             ; preds = %do.end225.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i444.i = tail call ptr @strchr(ptr noundef %67, i32 noundef 37) #19
  %tobool2.not.i445.i = icmp eq ptr %call.i444.i, null
  %tobool229.not.i = icmp eq ptr %67, null
  %or.cond507.i = and i1 %tobool229.not.i, %tobool2.not.i445.i
  %spec.select.i453.i = select i1 %tobool2.not.i445.i, ptr %67, ptr @.str.25
  %spec.select514.i = select i1 %or.cond507.i, ptr @.str.3, ptr %spec.select.i453.i
  br label %cond.end234.i

cond.end234.i:                                    ; preds = %lor.lhs.false.i447.i, %do.end225.i.cond.end234.i_crit_edge
  %cond235.i = phi ptr [ @.str.25, %do.end225.i.cond.end234.i_crit_edge ], [ %spec.select514.i, %lor.lhs.false.i447.i ]
  %call236.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54, i32 noundef 1293, ptr noundef %cond235.i) #22
  br label %sw.epilog

sw.bb241.i:                                       ; preds = %do.end10.i.sw.bb241.i_crit_edge, %do.end10.i.sw.bb241.i_crit_edge40, %do.end10.i.sw.bb241.i_crit_edge41, %do.end10.i.sw.bb241.i_crit_edge42, %do.end10.i.sw.bb241.i_crit_edge43, %do.end10.i.sw.bb241.i_crit_edge44, %do.end10.i.sw.bb241.i_crit_edge45, %do.end10.i.sw.bb241.i_crit_edge46, %do.end10.i.sw.bb241.i_crit_edge47, %do.end10.i.sw.bb241.i_crit_edge48
  %data242.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %70 = ptrtoint ptr %data242.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %data242.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %71)
  %tobool243.not.i = icmp eq i64 %71, 0
  br i1 %tobool243.not.i, label %sw.bb241.i.sw.epilog_crit_edge, label %do.body245.i

sw.bb241.i.sw.epilog_crit_edge:                   ; preds = %sw.bb241.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.body245.i:                                     ; preds = %sw.bb241.i
  %72 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp248.i = icmp ult i8 %73, 2
  br i1 %cmp248.i, label %do.end259.i, label %do.body245.i.sw.epilog_crit_edge, !prof !369

do.body245.i.sw.epilog_crit_edge:                 ; preds = %do.body245.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.end259.i:                                      ; preds = %do.body245.i
  %ndev261.i = getelementptr i8, ptr %dev, i32 2308
  %74 = ptrtoint ptr %ndev261.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ndev261.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i457.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i457.i, label %do.end259.i.cond.end268.i_crit_edge, label %lor.lhs.false.i461.i

do.end259.i.cond.end268.i_crit_edge:              ; preds = %do.end259.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end268.i

lor.lhs.false.i461.i:                             ; preds = %do.end259.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i458.i = tail call ptr @strchr(ptr noundef %75, i32 noundef 37) #19
  %tobool2.not.i459.i = icmp eq ptr %call.i458.i, null
  %tobool263.not.i = icmp eq ptr %75, null
  %or.cond508.i = and i1 %tobool263.not.i, %tobool2.not.i459.i
  %spec.select.i467.i = select i1 %tobool2.not.i459.i, ptr %75, ptr @.str.25
  %spec.select515.i = select i1 %or.cond508.i, ptr @.str.3, ptr %spec.select.i467.i
  br label %cond.end268.i

cond.end268.i:                                    ; preds = %lor.lhs.false.i461.i, %do.end259.i.cond.end268.i_crit_edge
  %cond269.i = phi ptr [ @.str.25, %do.end259.i.cond.end268.i_crit_edge ], [ %spec.select515.i, %lor.lhs.false.i461.i ]
  %call270.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.54, i32 noundef 1309, ptr noundef %cond269.i) #22
  br label %sw.epilog

sw.epilog.i:                                      ; preds = %cond.end197.i, %land.rhs174.i.sw.epilog.i_crit_edge, %if.then168.i.sw.epilog.i_crit_edge, %cond.end158.i, %land.rhs135.i.sw.epilog.i_crit_edge, %if.then129.i.sw.epilog.i_crit_edge, %cond.end116.i, %land.rhs93.i.sw.epilog.i_crit_edge, %if.then87.i.sw.epilog.i_crit_edge, %cond.end78.i, %land.rhs55.i.sw.epilog.i_crit_edge, %if.then49.i.sw.epilog.i_crit_edge
  %clr_caps.0.i = phi i32 [ -1, %cond.end158.i ], [ -1, %land.rhs135.i.sw.epilog.i_crit_edge ], [ -33, %cond.end197.i ], [ -33, %land.rhs174.i.sw.epilog.i_crit_edge ], [ -1, %cond.end78.i ], [ -1, %land.rhs55.i.sw.epilog.i_crit_edge ], [ -17, %cond.end116.i ], [ -17, %land.rhs93.i.sw.epilog.i_crit_edge ], [ -1, %if.then49.i.sw.epilog.i_crit_edge ], [ -17, %if.then87.i.sw.epilog.i_crit_edge ], [ -1, %if.then129.i.sw.epilog.i_crit_edge ], [ -33, %if.then168.i.sw.epilog.i_crit_edge ]
  %set_caps.0.i = phi i32 [ 32, %cond.end158.i ], [ 32, %land.rhs135.i.sw.epilog.i_crit_edge ], [ 0, %cond.end197.i ], [ 0, %land.rhs174.i.sw.epilog.i_crit_edge ], [ 16, %cond.end78.i ], [ 16, %land.rhs55.i.sw.epilog.i_crit_edge ], [ 0, %cond.end116.i ], [ 0, %land.rhs93.i.sw.epilog.i_crit_edge ], [ 16, %if.then49.i.sw.epilog.i_crit_edge ], [ 0, %if.then87.i.sw.epilog.i_crit_edge ], [ 32, %if.then129.i.sw.epilog.i_crit_edge ], [ 0, %if.then168.i.sw.epilog.i_crit_edge ]
  %rss_caps.i = getelementptr i8, ptr %dev, i32 3372
  %78 = ptrtoint ptr %rss_caps.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %rss_caps.i, align 4
  %conv275.i = zext i8 %79 to i32
  %and279.i = and i32 %clr_caps.0.i, %conv275.i
  %or.i = or i32 %and279.i, %set_caps.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv275.i)
  %cmp281.i = icmp eq i32 %or.i, %conv275.i
  br i1 %cmp281.i, label %sw.epilog.i.sw.epilog_crit_edge, label %if.end284.i

sw.epilog.i.sw.epilog_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

if.end284.i:                                      ; preds = %sw.epilog.i
  %conv292.i = trunc i32 %or.i to i8
  %80 = ptrtoint ptr %rss_caps.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv292.i, ptr %rss_caps.i, align 4
  %rss_params_inited.i = getelementptr i8, ptr %dev, i32 3072
  %81 = ptrtoint ptr %rss_params_inited.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rss_params_inited.i, align 8
  %or294.i = or i32 %82, 4
  store i32 %or294.i, ptr %rss_params_inited.i, align 8
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #19
  %state.i = getelementptr i8, ptr %dev, i32 2548
  %83 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp295.i = icmp eq i32 %84, 1
  br i1 %cmp295.i, label %if.then297.i, label %if.end284.i.if.end303.i_crit_edge

if.end284.i.if.end303.i_crit_edge:                ; preds = %if.end284.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end303.i

if.then297.i:                                     ; preds = %if.end284.i
  %call298.i = tail call noalias ptr @vzalloc(i32 noundef 564) #25
  %tobool299.not.i = icmp eq ptr %call298.i, null
  br i1 %tobool299.not.i, label %if.then300.i, label %if.end301.i

if.then300.i:                                     ; preds = %if.then297.i
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__qede_unlock(ptr noundef %add.ptr.i) #19
  br label %sw.epilog

if.end301.i:                                      ; preds = %if.then297.i
  call void @__sanitizer_cov_trace_pc() #21
  %rss_params.i = getelementptr inbounds %struct.qed_update_vport_params, ptr %call298.i, i32 0, i32 8
  %update_rss_flg.i = getelementptr inbounds %struct.qed_update_vport_params, ptr %call298.i, i32 0, i32 7
  tail call void @qede_fill_rss_params(ptr noundef %add.ptr.i, ptr noundef %rss_params.i, ptr noundef %update_rss_flg.i) #19
  %ops.i = getelementptr i8, ptr %dev, i32 2332
  %85 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ops.i, align 4
  %vport_update.i = getelementptr inbounds %struct.qed_eth_ops, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %vport_update.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vport_update.i, align 4
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 8
  %call302.i = tail call i32 %88(ptr noundef %90, ptr noundef nonnull %call298.i) #19
  tail call void @vfree(ptr noundef nonnull %call298.i) #19
  br label %if.end303.i

if.end303.i:                                      ; preds = %if.end301.i, %if.end284.i.if.end303.i_crit_edge
  %rc.0.i = phi i32 [ %call302.i, %if.end301.i ], [ 0, %if.end284.i.if.end303.i_crit_edge ]
  tail call void @__qede_unlock(ptr noundef %add.ptr.i) #19
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %call3 = tail call i32 @qede_add_cls_rule(ptr noundef %add.ptr.i, ptr noundef %info) #19
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %91 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %location, align 8
  %conv = zext i32 %92 to i64
  %call5 = tail call i32 @qede_delete_flow_filter(ptr noundef %add.ptr.i, i64 noundef %conv) #19
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %93 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp = icmp ult i8 %94, 2
  br i1 %cmp, label %do.end, label %do.body.sw.epilog_crit_edge, !prof !369

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %95 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ndev, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i25 = icmp eq i8 %98, 0
  br i1 %tobool.not.i25, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %96, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool11.not = icmp eq ptr %96, null
  %or.cond = and i1 %tobool11.not, %tobool2.not.i
  %spec.select.i31 = select i1 %tobool2.not.i, ptr %96, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i31
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 1359, ptr noundef %cond) #22
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %do.body.sw.epilog_crit_edge, %sw.bb4, %sw.bb2, %if.end303.i, %if.then300.i, %sw.epilog.i.sw.epilog_crit_edge, %cond.end268.i, %do.body245.i.sw.epilog_crit_edge, %sw.bb241.i.sw.epilog_crit_edge, %cond.end234.i, %do.body211.i.sw.epilog_crit_edge, %sw.bb206.i.sw.epilog_crit_edge, %sw.bb125.i.sw.epilog_crit_edge, %sw.bb45.i.sw.epilog_crit_edge, %cond.end38.i, %do.body15.i.sw.epilog_crit_edge, %sw.bb.i.sw.epilog_crit_edge, %do.end10.i.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ -95, %cond.end ], [ -95, %do.body.sw.epilog_crit_edge ], [ %rc.0.i, %if.end303.i ], [ -12, %if.then300.i ], [ -22, %cond.end38.i ], [ -22, %do.body15.i.sw.epilog_crit_edge ], [ 0, %sw.bb.i.sw.epilog_crit_edge ], [ -22, %sw.bb45.i.sw.epilog_crit_edge ], [ -22, %sw.bb125.i.sw.epilog_crit_edge ], [ -22, %cond.end234.i ], [ -22, %do.body211.i.sw.epilog_crit_edge ], [ 0, %sw.bb206.i.sw.epilog_crit_edge ], [ -22, %cond.end268.i ], [ -22, %do.body245.i.sw.epilog_crit_edge ], [ 0, %sw.bb241.i.sw.epilog_crit_edge ], [ -22, %do.end10.i.sw.epilog_crit_edge ], [ 0, %sw.epilog.i.sw.epilog_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qede_get_rxfh_key_size(ptr nocapture noundef readnone %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qede_get_rxfh_indir_size(ptr nocapture noundef readnone %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 128
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_rxfh(ptr nocapture noundef readonly %dev, ptr noundef writeonly %indir, ptr noundef writeonly %key, ptr noundef writeonly %hfunc) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %hfunc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %0 = ptrtoint ptr %hfunc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hfunc, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %indir, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qede_dev, ptr %add.ptr.i, i32 0, i32 27, i32 %i.018
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %arrayidx4 = getelementptr i32, ptr %indir, i32 %i.018
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body
  %tobool5.not = icmp eq ptr %key, null
  br i1 %tobool5.not, label %for.end.cleanup_crit_edge, label %if.then6

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then6:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #21
  %rss_key = getelementptr i8, ptr %dev, i32 3332
  %4 = call ptr @memcpy(ptr %key, ptr %rss_key, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_rxfh(ptr noundef %dev, ptr noundef readonly %indir, ptr noundef readonly %key, i8 noundef zeroext %hfunc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %num_hwfns = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %do.body, label %if.end15

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp3 = icmp ult i8 %3, 2
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge, !prof !369

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %5, null
  %or.cond91 = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i84 = select i1 %tobool2.not.i, ptr %5, ptr @.str.25
  %spec.select = select i1 %or.cond91, ptr @.str.3, ptr %spec.select.i84
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 1407, ptr noundef %cond) #22
  br label %cleanup

if.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %hfunc)
  %switch = icmp ult i8 %hfunc, 2
  br i1 %switch, label %if.end23, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %tobool24.not = icmp eq ptr %indir, null
  %tobool26.not = icmp eq ptr %key, null
  %or.cond = and i1 %tobool24.not, %tobool26.not
  br i1 %or.cond, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  br i1 %tobool24.not, label %if.end28.if.end35_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end35

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end28.for.body_crit_edge
  %i.092 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %indir, i32 %i.092
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %conv33 = trunc i32 %9 to i16
  %arrayidx34 = getelementptr %struct.qede_dev, ptr %add.ptr.i, i32 0, i32 27, i32 %i.092
  %10 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv33, ptr %arrayidx34, align 2
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #21
  %rss_params_inited = getelementptr i8, ptr %dev, i32 3072
  %11 = ptrtoint ptr %rss_params_inited to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rss_params_inited, align 8
  %or = or i32 %12, 1
  store i32 %or, ptr %rss_params_inited, align 8
  br label %if.end35

if.end35:                                         ; preds = %for.end, %if.end28.if.end35_crit_edge
  br i1 %tobool26.not, label %if.end35.if.end41_crit_edge, label %if.then37

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end41

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #21
  %rss_key = getelementptr i8, ptr %dev, i32 3332
  %13 = call ptr @memcpy(ptr %rss_key, ptr %key, i32 40)
  %rss_params_inited39 = getelementptr i8, ptr %dev, i32 3072
  %14 = ptrtoint ptr %rss_params_inited39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rss_params_inited39, align 8
  %or40 = or i32 %15, 2
  store i32 %or40, ptr %rss_params_inited39, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end35.if.end41_crit_edge
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #19
  %state = getelementptr i8, ptr %dev, i32 2548
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp42 = icmp eq i32 %17, 1
  br i1 %cmp42, label %if.then44, label %if.end41.if.end50_crit_edge

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end50

if.then44:                                        ; preds = %if.end41
  %call45 = tail call noalias ptr @vzalloc(i32 noundef 564) #25
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #21
  tail call void @__qede_unlock(ptr noundef %add.ptr.i) #19
  br label %cleanup

if.end48:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #21
  %rss_params = getelementptr inbounds %struct.qed_update_vport_params, ptr %call45, i32 0, i32 8
  %update_rss_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %call45, i32 0, i32 7
  tail call void @qede_fill_rss_params(ptr noundef %add.ptr.i, ptr noundef %rss_params, ptr noundef %update_rss_flg) #19
  %ops = getelementptr i8, ptr %dev, i32 2332
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %vport_update = getelementptr inbounds %struct.qed_eth_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %vport_update to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vport_update, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  %call49 = tail call i32 %21(ptr noundef %23, ptr noundef nonnull %call45) #19
  tail call void @vfree(ptr noundef nonnull %call45) #19
  br label %if.end50

if.end50:                                         ; preds = %if.end48, %if.end41.if.end50_crit_edge
  %rc.0 = phi i32 [ %call49, %if.end48 ], [ 0, %if.end41.if.end50_crit_edge ]
  tail call void @__qede_unlock(ptr noundef %add.ptr.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then47, %if.end23.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end50 ], [ -12, %if.then47 ], [ -95, %cond.end ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.end15.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qede_get_channels(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %channels) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queues = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_queues, align 4
  %conv = zext i8 %1 to i32
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 4
  %2 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %max_combined, align 4
  %3 = load i8, ptr %num_queues, align 4
  %conv3 = zext i8 %3 to i32
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 1
  %4 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3, ptr %max_rx, align 4
  %5 = load i8, ptr %num_queues, align 4
  %conv6 = zext i8 %5 to i32
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 2
  %6 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv6, ptr %max_tx, align 4
  %num_queues7 = getelementptr i8, ptr %dev, i32 2442
  %7 = ptrtoint ptr %num_queues7 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_queues7, align 2
  %conv8 = zext i16 %8 to i32
  %fp_num_tx = getelementptr i8, ptr %dev, i32 2437
  %9 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fp_num_tx, align 1
  %conv9 = zext i8 %10 to i32
  %fp_num_rx = getelementptr i8, ptr %dev, i32 2439
  %11 = ptrtoint ptr %fp_num_rx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fp_num_rx, align 1
  %conv10 = zext i8 %12 to i32
  %13 = add nuw nsw i32 %conv9, %conv10
  %sub11 = sub nsw i32 %conv8, %13
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 8
  %14 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub11, ptr %combined_count, align 4
  %15 = load i8, ptr %fp_num_tx, align 1
  %conv13 = zext i8 %15 to i32
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %16 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv13, ptr %tx_count, align 4
  %17 = load i8, ptr %fp_num_rx, align 1
  %conv15 = zext i8 %17 to i32
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 5
  %18 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv15, ptr %rx_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %channels) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end11

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 8
  %and = and i32 %3, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end11_crit_edge, label %do.end, !prof !370

land.rhs.do.end11_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end11

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool6.not = icmp eq ptr %5, null
  %or.cond429 = and i1 %tobool6.not, %tobool2.not.i
  %spec.select.i332 = select i1 %tobool2.not.i, ptr %5, ptr @.str.25
  %spec.select = select i1 %or.cond429, ptr @.str.3, ptr %spec.select.i332
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 5
  %8 = ptrtoint ptr %rx_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_count, align 4
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %10 = ptrtoint ptr %tx_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_count, align 4
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 7
  %12 = ptrtoint ptr %other_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %other_count, align 4
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 8
  %14 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %combined_count, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, i32 noundef 1084, ptr noundef %cond, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #22
  br label %do.end11

do.end11:                                         ; preds = %cond.end, %land.rhs.do.end11_crit_edge, %entry.do.end11_crit_edge
  %rx_count12 = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 5
  %16 = ptrtoint ptr %rx_count12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_count12, align 4
  %tx_count13 = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 6
  %18 = ptrtoint ptr %tx_count13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_count13, align 4
  %add = add i32 %19, %17
  %combined_count14 = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 8
  %20 = ptrtoint ptr %combined_count14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %combined_count14, align 4
  %add15 = add i32 %add, %21
  %other_count16 = getelementptr inbounds %struct.ethtool_channels, ptr %channels, i32 0, i32 7
  %22 = ptrtoint ptr %other_count16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %other_count16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  br i1 %tobool17.not, label %if.end53, label %do.body19

do.body19:                                        ; preds = %do.end11
  %24 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp22 = icmp eq i8 %25, 0
  br i1 %cmp22, label %land.rhs24, label %do.body19.cleanup_crit_edge

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs24:                                       ; preds = %do.body19
  %dp_module25 = getelementptr i8, ptr %dev, i32 2320
  %26 = ptrtoint ptr %dp_module25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dp_module25, align 8
  %and26 = and i32 %27, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.rhs24.cleanup_crit_edge, label %do.end38, !prof !370

land.rhs24.cleanup_crit_edge:                     ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end38:                                         ; preds = %land.rhs24
  %ndev40 = getelementptr i8, ptr %dev, i32 2308
  %28 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev40, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i336 = icmp eq i8 %31, 0
  br i1 %tobool.not.i336, label %do.end38.cond.end47_crit_edge, label %lor.lhs.false.i340

do.end38.cond.end47_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end47

lor.lhs.false.i340:                               ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #21
  %call.i337 = tail call ptr @strchr(ptr noundef %29, i32 noundef 37) #19
  %tobool2.not.i338 = icmp eq ptr %call.i337, null
  %tobool42.not = icmp eq ptr %29, null
  %or.cond430 = and i1 %tobool42.not, %tobool2.not.i338
  %spec.select.i346 = select i1 %tobool2.not.i338, ptr %29, ptr @.str.25
  %spec.select435 = select i1 %or.cond430, ptr @.str.3, ptr %spec.select.i346
  br label %cond.end47

cond.end47:                                       ; preds = %lor.lhs.false.i340, %do.end38.cond.end47_crit_edge
  %cond48 = phi ptr [ @.str.25, %do.end38.cond.end47_crit_edge ], [ %spec.select435, %lor.lhs.false.i340 ]
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74, i32 noundef 1092, ptr noundef %cond48) #22
  br label %cleanup

if.end53:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool55.not = icmp eq i32 %21, 0
  br i1 %tobool55.not, label %lor.lhs.false, label %if.end53.if.end95_crit_edge

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end95

lor.lhs.false:                                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool57.not = icmp eq i32 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool59.not = icmp eq i32 %19, 0
  %or.cond = select i1 %tobool57.not, i1 true, i1 %tobool59.not
  br i1 %or.cond, label %do.body61, label %lor.lhs.false.if.end95_crit_edge

lor.lhs.false.if.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end95

do.body61:                                        ; preds = %lor.lhs.false
  %32 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp64 = icmp eq i8 %33, 0
  br i1 %cmp64, label %land.rhs66, label %do.body61.cleanup_crit_edge

do.body61.cleanup_crit_edge:                      ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs66:                                       ; preds = %do.body61
  %dp_module67 = getelementptr i8, ptr %dev, i32 2320
  %34 = ptrtoint ptr %dp_module67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dp_module67, align 8
  %and68 = and i32 %35, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %land.rhs66.cleanup_crit_edge, label %do.end80, !prof !370

land.rhs66.cleanup_crit_edge:                     ; preds = %land.rhs66
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end80:                                         ; preds = %land.rhs66
  %ndev82 = getelementptr i8, ptr %dev, i32 2308
  %36 = ptrtoint ptr %ndev82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev82, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i350 = icmp eq i8 %39, 0
  br i1 %tobool.not.i350, label %do.end80.cond.end89_crit_edge, label %lor.lhs.false.i354

do.end80.cond.end89_crit_edge:                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end89

lor.lhs.false.i354:                               ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #21
  %call.i351 = tail call ptr @strchr(ptr noundef %37, i32 noundef 37) #19
  %tobool2.not.i352 = icmp eq ptr %call.i351, null
  %tobool84.not = icmp eq ptr %37, null
  %or.cond431 = and i1 %tobool84.not, %tobool2.not.i352
  %spec.select.i360 = select i1 %tobool2.not.i352, ptr %37, ptr @.str.25
  %spec.select436 = select i1 %or.cond431, ptr @.str.3, ptr %spec.select.i360
  br label %cond.end89

cond.end89:                                       ; preds = %lor.lhs.false.i354, %do.end80.cond.end89_crit_edge
  %cond90 = phi ptr [ @.str.25, %do.end80.cond.end89_crit_edge ], [ %spec.select436, %lor.lhs.false.i354 ]
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.74, i32 noundef 1099, ptr noundef %cond90) #22
  br label %cleanup

if.end95:                                         ; preds = %lor.lhs.false.if.end95_crit_edge, %if.end53.if.end95_crit_edge
  %num_queues = getelementptr i8, ptr %dev, i32 2412
  %40 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_queues, align 4
  %conv96 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %conv96)
  %cmp97 = icmp ugt i32 %add15, %conv96
  br i1 %cmp97, label %do.body100, label %if.end137

do.body100:                                       ; preds = %if.end95
  %42 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp103 = icmp eq i8 %43, 0
  br i1 %cmp103, label %land.rhs105, label %do.body100.cleanup_crit_edge

do.body100.cleanup_crit_edge:                     ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs105:                                      ; preds = %do.body100
  %dp_module106 = getelementptr i8, ptr %dev, i32 2320
  %44 = ptrtoint ptr %dp_module106 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dp_module106, align 8
  %and107 = and i32 %45, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %land.rhs105.cleanup_crit_edge, label %do.end119, !prof !370

land.rhs105.cleanup_crit_edge:                    ; preds = %land.rhs105
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end119:                                        ; preds = %land.rhs105
  %ndev121 = getelementptr i8, ptr %dev, i32 2308
  %46 = ptrtoint ptr %ndev121 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev121, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i364 = icmp eq i8 %49, 0
  br i1 %tobool.not.i364, label %do.end119.cond.end128_crit_edge, label %lor.lhs.false.i368

do.end119.cond.end128_crit_edge:                  ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end128

lor.lhs.false.i368:                               ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #21
  %call.i365 = tail call ptr @strchr(ptr noundef %47, i32 noundef 37) #19
  %tobool2.not.i366 = icmp eq ptr %call.i365, null
  %tobool123.not = icmp eq ptr %47, null
  %or.cond432 = and i1 %tobool123.not, %tobool2.not.i366
  %spec.select.i374 = select i1 %tobool2.not.i366, ptr %47, ptr @.str.25
  %spec.select437 = select i1 %or.cond432, ptr @.str.3, ptr %spec.select.i374
  br label %cond.end128

cond.end128:                                      ; preds = %lor.lhs.false.i368, %do.end119.cond.end128_crit_edge
  %cond129 = phi ptr [ @.str.25, %do.end119.cond.end128_crit_edge ], [ %spec.select437, %lor.lhs.false.i368 ]
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.74, i32 noundef 1106, ptr noundef %cond129, i32 noundef %add15, i32 noundef %conv96) #22
  br label %cleanup

if.end137:                                        ; preds = %if.end95
  %num_queues138 = getelementptr i8, ptr %dev, i32 2442
  %50 = ptrtoint ptr %num_queues138 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %num_queues138, align 2
  %conv139 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add15, i32 %conv139)
  %cmp140 = icmp eq i32 %add15, %conv139
  br i1 %cmp140, label %land.lhs.true142, label %if.end137.if.end187_crit_edge

if.end137.if.end187_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end187

land.lhs.true142:                                 ; preds = %if.end137
  %fp_num_tx = getelementptr i8, ptr %dev, i32 2437
  %52 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fp_num_tx, align 1
  %conv144 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv144)
  %cmp145 = icmp eq i32 %19, %conv144
  br i1 %cmp145, label %land.lhs.true147, label %land.lhs.true142.if.end187_crit_edge

land.lhs.true142.if.end187_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end187

land.lhs.true147:                                 ; preds = %land.lhs.true142
  %fp_num_rx = getelementptr i8, ptr %dev, i32 2439
  %54 = ptrtoint ptr %fp_num_rx to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fp_num_rx, align 1
  %conv149 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv149)
  %cmp150 = icmp eq i32 %17, %conv149
  br i1 %cmp150, label %do.body153, label %land.lhs.true147.if.end187_crit_edge

land.lhs.true147.if.end187_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end187

do.body153:                                       ; preds = %land.lhs.true147
  %56 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp156 = icmp eq i8 %57, 0
  br i1 %cmp156, label %land.rhs158, label %do.body153.cleanup_crit_edge

do.body153.cleanup_crit_edge:                     ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs158:                                      ; preds = %do.body153
  %dp_module159 = getelementptr i8, ptr %dev, i32 2320
  %58 = ptrtoint ptr %dp_module159 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dp_module159, align 8
  %and160 = and i32 %59, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %land.rhs158.cleanup_crit_edge, label %do.end172, !prof !370

land.rhs158.cleanup_crit_edge:                    ; preds = %land.rhs158
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end172:                                        ; preds = %land.rhs158
  %ndev174 = getelementptr i8, ptr %dev, i32 2308
  %60 = ptrtoint ptr %ndev174 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev174, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i378 = icmp eq i8 %63, 0
  br i1 %tobool.not.i378, label %do.end172.cond.end181_crit_edge, label %lor.lhs.false.i382

do.end172.cond.end181_crit_edge:                  ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end181

lor.lhs.false.i382:                               ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #21
  %call.i379 = tail call ptr @strchr(ptr noundef %61, i32 noundef 37) #19
  %tobool2.not.i380 = icmp eq ptr %call.i379, null
  %tobool176.not = icmp eq ptr %61, null
  %or.cond433 = and i1 %tobool176.not, %tobool2.not.i380
  %spec.select.i388 = select i1 %tobool2.not.i380, ptr %61, ptr @.str.25
  %spec.select438 = select i1 %or.cond433, ptr @.str.3, ptr %spec.select.i388
  br label %cond.end181

cond.end181:                                      ; preds = %lor.lhs.false.i382, %do.end172.cond.end181_crit_edge
  %cond182 = phi ptr [ @.str.25, %do.end172.cond.end181_crit_edge ], [ %spec.select438, %lor.lhs.false.i382 ]
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.74, i32 noundef 1115, ptr noundef %cond182) #22
  br label %cleanup

if.end187:                                        ; preds = %land.lhs.true147.if.end187_crit_edge, %land.lhs.true142.if.end187_crit_edge, %if.end137.if.end187_crit_edge
  %num_hwfns = getelementptr i8, ptr %dev, i32 2364
  %64 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_hwfns, align 4
  %conv189 = zext i8 %65 to i32
  %rem = urem i32 %add15, %conv189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool190.not = icmp eq i32 %rem, 0
  br i1 %tobool190.not, label %lor.lhs.false191, label %if.end187.do.body208_crit_edge

if.end187.do.body208_crit_edge:                   ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body208

lor.lhs.false191:                                 ; preds = %if.end187
  %rem197 = urem i32 %19, %conv189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem197)
  %tobool198.not = icmp eq i32 %rem197, 0
  br i1 %tobool198.not, label %lor.lhs.false199, label %lor.lhs.false191.do.body208_crit_edge

lor.lhs.false191.do.body208_crit_edge:            ; preds = %lor.lhs.false191
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body208

lor.lhs.false199:                                 ; preds = %lor.lhs.false191
  %rem205 = urem i32 %17, %conv189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem205)
  %tobool206.not = icmp eq i32 %rem205, 0
  br i1 %tobool206.not, label %if.end246, label %lor.lhs.false199.do.body208_crit_edge

lor.lhs.false199.do.body208_crit_edge:            ; preds = %lor.lhs.false199
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body208

do.body208:                                       ; preds = %lor.lhs.false199.do.body208_crit_edge, %lor.lhs.false191.do.body208_crit_edge, %if.end187.do.body208_crit_edge
  %66 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp211 = icmp eq i8 %67, 0
  br i1 %cmp211, label %land.rhs213, label %do.body208.cleanup_crit_edge

do.body208.cleanup_crit_edge:                     ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs213:                                      ; preds = %do.body208
  %dp_module214 = getelementptr i8, ptr %dev, i32 2320
  %68 = ptrtoint ptr %dp_module214 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dp_module214, align 8
  %and215 = and i32 %69, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %land.rhs213.cleanup_crit_edge, label %do.end227, !prof !370

land.rhs213.cleanup_crit_edge:                    ; preds = %land.rhs213
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end227:                                        ; preds = %land.rhs213
  %ndev229 = getelementptr i8, ptr %dev, i32 2308
  %70 = ptrtoint ptr %ndev229 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ndev229, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i392 = icmp eq i8 %73, 0
  br i1 %tobool.not.i392, label %do.end227.cond.end236_crit_edge, label %lor.lhs.false.i396

do.end227.cond.end236_crit_edge:                  ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end236

lor.lhs.false.i396:                               ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #21
  %call.i393 = tail call ptr @strchr(ptr noundef %71, i32 noundef 37) #19
  %tobool2.not.i394 = icmp eq ptr %call.i393, null
  %tobool231.not = icmp eq ptr %71, null
  %or.cond434 = and i1 %tobool231.not, %tobool2.not.i394
  %spec.select.i402 = select i1 %tobool2.not.i394, ptr %71, ptr @.str.25
  %spec.select439 = select i1 %or.cond434, ptr @.str.3, ptr %spec.select.i402
  br label %cond.end236

cond.end236:                                      ; preds = %lor.lhs.false.i396, %do.end227.cond.end236_crit_edge
  %cond237 = phi ptr [ @.str.25, %do.end227.cond.end236_crit_edge ], [ %spec.select439, %lor.lhs.false.i396 ]
  %call242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.74, i32 noundef 1125, ptr noundef %cond237, i32 noundef %conv189) #22
  br label %cleanup

if.end246:                                        ; preds = %lor.lhs.false199
  %conv247 = trunc i32 %add15 to i16
  %req_queues = getelementptr i8, ptr %dev, i32 2440
  %74 = ptrtoint ptr %req_queues to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv247, ptr %req_queues, align 8
  %75 = ptrtoint ptr %tx_count13 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_count13, align 4
  %conv249 = trunc i32 %76 to i8
  %req_num_tx = getelementptr i8, ptr %dev, i32 2436
  %77 = ptrtoint ptr %req_num_tx to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv249, ptr %req_num_tx, align 4
  %78 = ptrtoint ptr %rx_count12 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_count12, align 4
  %conv251 = trunc i32 %79 to i8
  %req_num_rx = getelementptr i8, ptr %dev, i32 2438
  %80 = ptrtoint ptr %req_num_rx to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv251, ptr %req_num_rx, align 2
  %conv253 = and i32 %add15, 65535
  %conv255 = and i32 %76, 255
  %sub = sub nsw i32 %conv253, %conv255
  %fp_num_tx258 = getelementptr i8, ptr %dev, i32 2437
  %81 = ptrtoint ptr %fp_num_tx258 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fp_num_tx258, align 1
  %conv259 = zext i8 %82 to i32
  %sub260 = sub nsw i32 %conv139, %conv259
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub260)
  %cmp261.not = icmp eq i32 %sub, %sub260
  br i1 %cmp261.not, label %if.end246.if.end265_crit_edge, label %if.then263

if.end246.if.end265_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end265

if.then263:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #21
  %rss_params_inited = getelementptr i8, ptr %dev, i32 3072
  %83 = ptrtoint ptr %rss_params_inited to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rss_params_inited, align 8
  %and264 = and i32 %84, -2
  store i32 %and264, ptr %rss_params_inited, align 8
  %rss_ind_table = getelementptr i8, ptr %dev, i32 3076
  %85 = call ptr @memset(ptr %rss_ind_table, i32 0, i32 256)
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.end246.if.end265_crit_edge
  tail call void @qede_reload(ptr noundef %add.ptr.i, ptr noundef null, i1 noundef zeroext false) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end265, %cond.end236, %land.rhs213.cleanup_crit_edge, %do.body208.cleanup_crit_edge, %cond.end181, %land.rhs158.cleanup_crit_edge, %do.body153.cleanup_crit_edge, %cond.end128, %land.rhs105.cleanup_crit_edge, %do.body100.cleanup_crit_edge, %cond.end89, %land.rhs66.cleanup_crit_edge, %do.body61.cleanup_crit_edge, %cond.end47, %land.rhs24.cleanup_crit_edge, %do.body19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end265 ], [ -22, %do.body19.cleanup_crit_edge ], [ -22, %cond.end47 ], [ -22, %land.rhs24.cleanup_crit_edge ], [ -22, %do.body61.cleanup_crit_edge ], [ -22, %cond.end89 ], [ -22, %land.rhs66.cleanup_crit_edge ], [ -22, %do.body100.cleanup_crit_edge ], [ -22, %cond.end128 ], [ -22, %land.rhs105.cleanup_crit_edge ], [ 0, %do.body153.cleanup_crit_edge ], [ 0, %cond.end181 ], [ 0, %land.rhs158.cleanup_crit_edge ], [ -22, %do.body208.cleanup_crit_edge ], [ -22, %cond.end236 ], [ -22, %land.rhs213.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qede_get_tunable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef writeonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %rx_copybreak = getelementptr i8, ptr %dev, i32 2556
  %2 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_copybreak, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_tunable(ptr nocapture noundef %dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond17 = icmp eq i32 %1, 1
  br i1 %cond17, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = add i32 %3, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -193, i32 %4)
  %5 = icmp ult i32 %4, -193
  br i1 %5, label %do.body, label %if.end15

do.body:                                          ; preds = %sw.bb
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %6 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2 = icmp eq i8 %7, 0
  br i1 %cmp2, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %8 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_module, align 8
  %and = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !370

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %dev, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %11, null
  %or.cond34 = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i27 = select i1 %tobool2.not.i, ptr %11, ptr @.str.25
  %spec.select = select i1 %or.cond34, ptr @.str.3, ptr %spec.select.i27
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, i32 noundef 1753, ptr noundef %cond, i32 noundef 64, i32 noundef 256) #22
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %rx_copybreak = getelementptr i8, ptr %dev, i32 2556
  %14 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %rx_copybreak, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %cond.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %cond.end ], [ -22, %land.rhs.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_per_coalesce(ptr noundef %dev, i32 noundef %queue, ptr nocapture noundef writeonly %coal) #2 align 64 {
entry:
  %rx_coal = alloca i16, align 2
  %tx_coal = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rx_coal) #19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_coal) #19
  %0 = ptrtoint ptr %rx_coal to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 12, ptr %rx_coal, align 2
  %1 = ptrtoint ptr %tx_coal to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 48, ptr %tx_coal, align 2
  %2 = call ptr @memset(ptr %coal, i32 0, i32 92)
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #19
  %num_queues = getelementptr i8, ptr %dev, i32 2442
  %3 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %queue)
  %cmp.not = icmp ugt i32 %conv, %queue
  br i1 %cmp.not, label %if.end15, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %5 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp3 = icmp ult i8 %6, 2
  br i1 %cmp3, label %do.end, label %do.body.out_crit_edge, !prof !369

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %8, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %8, null
  %or.cond = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i134 = select i1 %tobool2.not.i, ptr %8, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i134
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.92, i32 noundef 2215, ptr noundef %cond) #22
  br label %out

if.end15:                                         ; preds = %entry
  %state = getelementptr i8, ptr %dev, i32 2548
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp16.not = icmp eq i32 %12, 1
  br i1 %cmp16.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

if.end19:                                         ; preds = %if.end15
  %fp_array = getelementptr i8, ptr %dev, i32 2428
  %13 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fp_array, align 4
  %type = getelementptr %struct.qede_fastpath, ptr %14, i32 %queue, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 4
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  br i1 %tobool21.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  %rxq = getelementptr %struct.qede_fastpath, ptr %14, i32 %queue, i32 6
  %18 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rxq, align 4
  %handle = getelementptr inbounds %struct.qede_rx_queue, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %rx_handle.0 = phi ptr [ %21, %if.then22 ], [ null, %if.end19.if.end23_crit_edge ]
  %ops = getelementptr i8, ptr %dev, i32 2332
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %get_coalesce = getelementptr inbounds %struct.qed_eth_ops, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %get_coalesce to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_coalesce, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %call24 = call i32 %25(ptr noundef %27, ptr noundef nonnull %rx_coal, ptr noundef %rx_handle.0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end56, label %do.body27

do.body27:                                        ; preds = %if.end23
  %dp_level28 = getelementptr i8, ptr %dev, i32 2324
  %28 = ptrtoint ptr %dp_level28 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dp_level28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp30 = icmp ult i8 %29, 2
  br i1 %cmp30, label %do.end41, label %do.body27.out_crit_edge, !prof !369

do.body27.out_crit_edge:                          ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.end41:                                         ; preds = %do.body27
  %ndev43 = getelementptr i8, ptr %dev, i32 2308
  %30 = ptrtoint ptr %ndev43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev43, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i138 = icmp eq i8 %33, 0
  br i1 %tobool.not.i138, label %do.end41.cond.end50_crit_edge, label %lor.lhs.false.i142

do.end41.cond.end50_crit_edge:                    ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end50

lor.lhs.false.i142:                               ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #21
  %call.i139 = call ptr @strchr(ptr noundef %31, i32 noundef 37) #19
  %tobool2.not.i140 = icmp eq ptr %call.i139, null
  %tobool45.not = icmp eq ptr %31, null
  %or.cond177 = and i1 %tobool45.not, %tobool2.not.i140
  %spec.select.i148 = select i1 %tobool2.not.i140, ptr %31, ptr @.str.25
  %spec.select179 = select i1 %or.cond177, ptr @.str.3, ptr %spec.select.i148
  br label %cond.end50

cond.end50:                                       ; preds = %lor.lhs.false.i142, %do.end41.cond.end50_crit_edge
  %cond51 = phi ptr [ @.str.25, %do.end41.cond.end50_crit_edge ], [ %spec.select179, %lor.lhs.false.i142 ]
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.92, i32 noundef 2233, ptr noundef %cond51) #22
  br label %out

if.end56:                                         ; preds = %if.end23
  %34 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fp_array, align 4
  %type59 = getelementptr %struct.qede_fastpath, ptr %35, i32 %queue, i32 1
  %36 = ptrtoint ptr %type59 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %type59, align 4
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool62.not = icmp eq i8 %38, 0
  br i1 %tobool62.not, label %if.end56.if.end65_crit_edge, label %if.then63

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end65

if.then63:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #21
  %txq = getelementptr %struct.qede_fastpath, ptr %35, i32 %queue, i32 7
  %39 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %txq, align 8
  %handle64 = getelementptr inbounds %struct.qede_tx_queue, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %handle64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %handle64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end56.if.end65_crit_edge
  %tx_handle.0 = phi ptr [ %42, %if.then63 ], [ null, %if.end56.if.end65_crit_edge ]
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 4
  %get_coalesce67 = getelementptr inbounds %struct.qed_eth_ops, ptr %44, i32 0, i32 23
  %45 = ptrtoint ptr %get_coalesce67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_coalesce67, align 4
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %call69 = call i32 %46(ptr noundef %48, ptr noundef nonnull %tx_coal, ptr noundef %tx_handle.0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end65.out_crit_edge, label %do.body72

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.body72:                                        ; preds = %if.end65
  %dp_level73 = getelementptr i8, ptr %dev, i32 2324
  %49 = ptrtoint ptr %dp_level73 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dp_level73, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp75 = icmp ult i8 %50, 2
  br i1 %cmp75, label %do.end86, label %do.body72.out_crit_edge, !prof !369

do.body72.out_crit_edge:                          ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #21
  br label %out

do.end86:                                         ; preds = %do.body72
  %ndev88 = getelementptr i8, ptr %dev, i32 2308
  %51 = ptrtoint ptr %ndev88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ndev88, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i152 = icmp eq i8 %54, 0
  br i1 %tobool.not.i152, label %do.end86.cond.end95_crit_edge, label %lor.lhs.false.i156

do.end86.cond.end95_crit_edge:                    ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end95

lor.lhs.false.i156:                               ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #21
  %call.i153 = call ptr @strchr(ptr noundef %52, i32 noundef 37) #19
  %tobool2.not.i154 = icmp eq ptr %call.i153, null
  %tobool90.not = icmp eq ptr %52, null
  %or.cond178 = and i1 %tobool90.not, %tobool2.not.i154
  %spec.select.i162 = select i1 %tobool2.not.i154, ptr %52, ptr @.str.25
  %spec.select180 = select i1 %or.cond178, ptr @.str.3, ptr %spec.select.i162
  br label %cond.end95

cond.end95:                                       ; preds = %lor.lhs.false.i156, %do.end86.cond.end95_crit_edge
  %cond96 = phi ptr [ @.str.25, %do.end86.cond.end95_crit_edge ], [ %spec.select180, %lor.lhs.false.i156 ]
  %call97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.92, i32 noundef 2244, ptr noundef %cond96) #22
  br label %out

out:                                              ; preds = %cond.end95, %do.body72.out_crit_edge, %if.end65.out_crit_edge, %cond.end50, %do.body27.out_crit_edge, %if.end15.out_crit_edge, %cond.end, %do.body.out_crit_edge
  %rc.0 = phi i32 [ %call24, %cond.end50 ], [ %call24, %do.body27.out_crit_edge ], [ %call69, %cond.end95 ], [ %call69, %do.body72.out_crit_edge ], [ 0, %if.end65.out_crit_edge ], [ -22, %cond.end ], [ -22, %do.body.out_crit_edge ], [ -22, %if.end15.out_crit_edge ]
  call void @__qede_unlock(ptr noundef %add.ptr.i) #19
  %55 = ptrtoint ptr %rx_coal to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %rx_coal, align 2
  %conv102 = zext i16 %56 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %57 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv102, ptr %rx_coalesce_usecs, align 4
  %58 = ptrtoint ptr %tx_coal to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tx_coal, align 2
  %conv103 = zext i16 %59 to i32
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %60 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv103, ptr %tx_coalesce_usecs, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_coal) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rx_coal) #19
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_link_ksettings(ptr noundef %dev, ptr nocapture noundef writeonly %cmd) #2 align 64 {
entry:
  %current_link = alloca %struct.qed_link_output, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes1 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %current_link) #19
  tail call void @__qede_lock(ptr noundef %add.ptr.i) #19
  %0 = call ptr @memset(ptr %current_link, i32 0, i32 72)
  %ops = getelementptr i8, ptr %dev, i32 2332
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_link, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  call void %6(ptr noundef %8, ptr noundef nonnull %current_link) #19
  %supported_caps = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %link_modes1, ptr %supported_caps, i32 12)
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %advertised_caps = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %advertising, ptr %advertised_caps, i32 12)
  %lp_advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 2
  %lp_caps = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %lp_advertising, ptr %lp_caps, i32 12)
  %state = getelementptr i8, ptr %dev, i32 2548
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %14 = ptrtoint ptr %current_link to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %current_link, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %speed = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 4
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 4
  %speed8 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %18 = ptrtoint ptr %speed8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %speed8, align 4
  %duplex = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 5
  %19 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %duplex, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %speed10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %21 = ptrtoint ptr %speed10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %speed10, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ -1, %if.else ], [ %20, %if.then ]
  %duplex11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %22 = ptrtoint ptr %duplex11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %duplex11, align 4
  call void @__qede_unlock(ptr noundef %add.ptr.i) #19
  %port = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 6
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port, align 1
  %port12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %25 = ptrtoint ptr %port12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %port12, align 1
  %autoneg = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 7
  %26 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %autoneg, align 2, !range !371
  %autoneg14 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %28 = ptrtoint ptr %autoneg14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %autoneg14, align 1
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %current_link) #19
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_config_debug(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_get_strings_stats_txq(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %txq, ptr nocapture noundef %buf) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 13
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 1
  %cos = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 17
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %txq, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %6 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_queues, align 4
  %conv = zext i8 %7 to i32
  %sub = sub i32 %5, %conv
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.46, i32 noundef %sub, ptr noundef getelementptr inbounds ([3 x %struct.anon.176], ptr @qede_tqstats_arr, i32 0, i32 0, i32 1))
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %cos to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cos, align 4
  %conv2 = zext i16 %9 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef nonnull @.str.47, i32 noundef %5, i32 noundef %conv2, ptr noundef getelementptr inbounds ([3 x %struct.anon.176], ptr @qede_tqstats_arr, i32 0, i32 0, i32 1))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 32
  store ptr %add.ptr, ptr %buf, align 4
  %12 = ptrtoint ptr %txq to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %txq, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.1 = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  br i1 %tobool.not.1, label %if.else.1, label %if.then.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %16 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_queues, align 4
  %conv.1 = zext i8 %17 to i32
  %sub.1 = sub i32 %15, %conv.1
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.46, i32 noundef %sub.1, ptr noundef getelementptr inbounds ([3 x %struct.anon.176], ptr @qede_tqstats_arr, i32 0, i32 1, i32 1))
  br label %if.end.1

if.else.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %18 = ptrtoint ptr %cos to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cos, align 4
  %conv2.1 = zext i16 %19 to i32
  %call6.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.47, i32 noundef %15, i32 noundef %conv2.1, ptr noundef getelementptr inbounds ([3 x %struct.anon.176], ptr @qede_tqstats_arr, i32 0, i32 1, i32 1))
  br label %if.end.1

if.end.1:                                         ; preds = %if.else.1, %if.then.1
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %add.ptr.1 = getelementptr i8, ptr %21, i32 32
  store ptr %add.ptr.1, ptr %buf, align 4
  %22 = ptrtoint ptr %txq to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %txq, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.2 = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  br i1 %tobool.not.2, label %if.else.2, label %if.then.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #21
  %26 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_queues, align 4
  %conv.2 = zext i8 %27 to i32
  %sub.2 = sub i32 %25, %conv.2
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.46, i32 noundef %sub.2, ptr noundef getelementptr inbounds ([3 x %struct.anon.176], ptr @qede_tqstats_arr, i32 0, i32 2, i32 1))
  br label %if.end.2

if.else.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %cos to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cos, align 4
  %conv2.2 = zext i16 %29 to i32
  %call6.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.47, i32 noundef %25, i32 noundef %conv2.2, ptr noundef getelementptr inbounds ([3 x %struct.anon.176], ptr @qede_tqstats_arr, i32 0, i32 2, i32 1))
  br label %if.end.2

if.end.2:                                         ; preds = %if.else.2, %if.then.2
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf, align 4
  %add.ptr.2 = getelementptr i8, ptr %31, i32 32
  store ptr %add.ptr.2, ptr %buf, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_fill_by_demand_stats(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_get_arfs_filter_count(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_get_cls_rule_entry(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_get_cls_rule_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_add_cls_rule(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_delete_flow_filter(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_fill_rss_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_regs_len(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %dbg_all_data_size = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %dbg_all_data_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dbg_all_data_size, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call5 = tail call i32 %5(ptr noundef %7) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_get_regs(ptr nocapture noundef readonly %ndev, ptr nocapture noundef %regs, ptr noundef %buffer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %version, align 4
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  %3 = call ptr @memset(ptr %buffer, i32 0, i32 %2)
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #21
  %dbg_all_data = getelementptr inbounds %struct.qed_common_ops, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %dbg_all_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbg_all_data, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %call5 = tail call i32 %9(ptr noundef %11, ptr noundef %buffer) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @qede_get_wol(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %wol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %wol_support = getelementptr i8, ptr %ndev, i32 2394
  %0 = ptrtoint ptr %wol_support to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wol_support, align 2, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %supported, align 4
  %wol_enabled = getelementptr i8, ptr %ndev, i32 3508
  %3 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wol_enabled, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool1.not, i32 0, i32 32
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %wolopts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_wol(ptr nocapture noundef %ndev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %ndev, i32 2324
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !369

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev6 = getelementptr i8, ptr %ndev, i32 2308
  %4 = ptrtoint ptr %ndev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev6, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool8.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool8.not, %tobool2.not.i
  %spec.select.i91 = select i1 %tobool2.not.i, ptr %5, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i91
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 685, ptr noundef %cond) #22
  br label %cleanup

if.end14:                                         ; preds = %entry
  %and16 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17 = icmp ne i32 %and16, 0
  %and16.lobit = lshr exact i32 %and16, 5
  %8 = trunc i32 %and16.lobit to i8
  %wol_enabled = getelementptr i8, ptr %ndev, i32 3508
  %9 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wol_enabled, align 4, !range !371
  %11 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.lobit, i32 %11)
  %cmp26 = icmp eq i32 %and16.lobit, %11
  br i1 %cmp26, label %if.end14.cleanup_crit_edge, label %if.end29

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end29:                                         ; preds = %if.end14
  %wol_support = getelementptr i8, ptr %ndev, i32 2394
  %12 = ptrtoint ptr %wol_support to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wol_support, align 2, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool30.not = icmp eq i8 %13, 0
  br i1 %tobool30.not, label %do.body32, label %if.end61

do.body32:                                        ; preds = %if.end29
  %dp_level33 = getelementptr i8, ptr %ndev, i32 2324
  %14 = ptrtoint ptr %dp_level33 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp35 = icmp ult i8 %15, 2
  br i1 %cmp35, label %do.end46, label %do.body32.cleanup_crit_edge, !prof !369

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end46:                                         ; preds = %do.body32
  %ndev48 = getelementptr i8, ptr %ndev, i32 2308
  %16 = ptrtoint ptr %ndev48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ndev48, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i95 = icmp eq i8 %19, 0
  br i1 %tobool.not.i95, label %do.end46.cond.end55_crit_edge, label %lor.lhs.false.i99

do.end46.cond.end55_crit_edge:                    ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end55

lor.lhs.false.i99:                                ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #21
  %call.i96 = tail call ptr @strchr(ptr noundef %17, i32 noundef 37) #19
  %tobool2.not.i97 = icmp eq ptr %call.i96, null
  %tobool50.not = icmp eq ptr %17, null
  %or.cond116 = and i1 %tobool50.not, %tobool2.not.i97
  %spec.select.i105 = select i1 %tobool2.not.i97, ptr %17, ptr @.str.25
  %spec.select117 = select i1 %or.cond116, ptr @.str.3, ptr %spec.select.i105
  br label %cond.end55

cond.end55:                                       ; preds = %lor.lhs.false.i99, %do.end46.cond.end55_crit_edge
  %cond56 = phi ptr [ @.str.25, %do.end46.cond.end55_crit_edge ], [ %spec.select117, %lor.lhs.false.i99 ]
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, i32 noundef 695, ptr noundef %cond56) #22
  br label %cleanup

if.end61:                                         ; preds = %if.end29
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %update_wol = getelementptr inbounds %struct.qed_common_ops, ptr %23, i32 0, i32 38
  %24 = ptrtoint ptr %update_wol to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %update_wol, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %call64 = tail call i32 %25(ptr noundef %27, i1 noundef zeroext %tobool17) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then66, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #21
  %28 = ptrtoint ptr %wol_enabled to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %8, ptr %wol_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end61.cleanup_crit_edge, %cond.end55, %do.body32.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %cond.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ -22, %cond.end55 ], [ -22, %do.body32.cleanup_crit_edge ], [ 0, %if.then66 ], [ %call64, %if.end61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_nway_reset(ptr noundef %dev) #2 align 64 {
entry:
  %current_link = alloca %struct.qed_link_output, align 4
  %link_params = alloca %struct.qed_link_params, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %current_link) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %link_params) #19
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_link_change = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %can_link_change to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %can_link_change, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call zeroext i1 %5(ptr noundef %7) #19
  br i1 %call2, label %if.end15, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp ult i8 %9, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !369

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %11, null
  %or.cond = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i53 = select i1 %tobool2.not.i, ptr %11, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i53
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef 734, ptr noundef %cond) #22
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end15.cleanup_crit_edge, label %if.end18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %16 = call ptr @memset(ptr %current_link, i32 0, i32 72)
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_link, align 4
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  call void %22(ptr noundef %24, ptr noundef nonnull %current_link) #19
  %25 = ptrtoint ptr %current_link to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %current_link, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool22.not = icmp eq i8 %26, 0
  br i1 %tobool22.not, label %if.end18.cleanup_crit_edge, label %if.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #21
  %27 = call ptr @memset(ptr %link_params, i32 0, i32 48)
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %set_link = getelementptr inbounds %struct.qed_common_ops, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %set_link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_link, align 4
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %call29 = call i32 %33(ptr noundef %35, ptr noundef nonnull %link_params) #19
  %36 = ptrtoint ptr %link_params to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %link_params, align 4
  %37 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %set_link33 = getelementptr inbounds %struct.qed_common_ops, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %set_link33 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_link33, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  %call35 = call i32 %42(ptr noundef %44, ptr noundef nonnull %link_params) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -95, %cond.end ], [ -95, %do.body.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %link_params) #19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %current_link) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_get_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef %epause) #2 align 64 {
entry:
  %current_link = alloca %struct.qed_link_output, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %current_link) #19
  %0 = call ptr @memset(ptr %current_link, i32 0, i32 72)
  %ops = getelementptr i8, ptr %dev, i32 2332
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_link, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  call void %6(ptr noundef %8, ptr noundef nonnull %current_link) #19
  %pause_config = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 8
  %9 = ptrtoint ptr %pause_config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pause_config, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %11 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %autoneg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %12 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %rx_pause, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and7 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.do.body_crit_edge, label %if.then9

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #21
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %13 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %tx_pause, align 4
  br label %do.body

do.body:                                          ; preds = %if.then9, %if.end5.do.body_crit_edge
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %14 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  br i1 %cmp, label %land.rhs, label %do.body.do.end28_crit_edge

do.body.do.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end28

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %16 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dp_module, align 8
  %and12 = and i32 %17, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %land.rhs.do.end28_crit_edge, label %do.end, !prof !370

land.rhs.do.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end28

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %dev, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = call ptr @strchr(ptr noundef %19, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool19.not = icmp eq ptr %19, null
  %or.cond = and i1 %tobool19.not, %tobool2.not.i
  %spec.select.i43 = select i1 %tobool2.not.i, ptr %19, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i43
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %22 = ptrtoint ptr %epause to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %epause, align 4
  %autoneg22 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %24 = ptrtoint ptr %autoneg22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %autoneg22, align 4
  %rx_pause23 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %26 = ptrtoint ptr %rx_pause23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_pause23, align 4
  %tx_pause24 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %28 = ptrtoint ptr %tx_pause24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_pause24, align 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, i32 noundef 967, ptr noundef %cond, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #22
  br label %do.end28

do.end28:                                         ; preds = %cond.end, %land.rhs.do.end28_crit_edge, %do.body.do.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %current_link) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_pauseparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %epause) #2 align 64 {
entry:
  %params = alloca %struct.qed_link_params, align 4
  %current_link = alloca %struct.qed_link_output, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params) #19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %current_link) #19
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_link_change = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %can_link_change to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %can_link_change, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call zeroext i1 %5(ptr noundef %7) #19
  br i1 %call2, label %if.end15, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp ult i8 %9, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !369

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %11, null
  %or.cond = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i89 = select i1 %tobool2.not.i, ptr %11, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i89
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef 979, ptr noundef %cond) #22
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %14 = call ptr @memset(ptr %current_link, i32 0, i32 72)
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_link, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  call void %20(ptr noundef %22, ptr noundef nonnull %current_link) #19
  %23 = call ptr @memset(ptr %params, i32 0, i32 48)
  %override_flags = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 1
  %24 = ptrtoint ptr %override_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %override_flags, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %25 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool19.not = icmp eq i32 %26, 0
  br i1 %tobool19.not, label %if.end15.if.end55_crit_edge, label %if.then20

if.end15.if.end55_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end55

if.then20:                                        ; preds = %if.end15
  %supported_caps = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 1
  %27 = ptrtoint ptr %supported_caps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %supported_caps, align 4
  %29 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool22.not = icmp eq i32 %29, 0
  br i1 %tobool22.not, label %do.body24, label %if.end53

do.body24:                                        ; preds = %if.then20
  %dp_level25 = getelementptr i8, ptr %dev, i32 2324
  %30 = ptrtoint ptr %dp_level25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dp_level25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp27 = icmp ult i8 %31, 2
  br i1 %cmp27, label %do.end38, label %do.body24.cleanup_crit_edge, !prof !369

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end38:                                         ; preds = %do.body24
  %ndev40 = getelementptr i8, ptr %dev, i32 2308
  %32 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev40, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i93 = icmp eq i8 %35, 0
  br i1 %tobool.not.i93, label %do.end38.cond.end47_crit_edge, label %lor.lhs.false.i97

do.end38.cond.end47_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end47

lor.lhs.false.i97:                                ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #21
  %call.i94 = call ptr @strchr(ptr noundef %33, i32 noundef 37) #19
  %tobool2.not.i95 = icmp eq ptr %call.i94, null
  %tobool42.not = icmp eq ptr %33, null
  %or.cond114 = and i1 %tobool42.not, %tobool2.not.i95
  %spec.select.i103 = select i1 %tobool2.not.i95, ptr %33, ptr @.str.25
  %spec.select115 = select i1 %or.cond114, ptr @.str.3, ptr %spec.select.i103
  br label %cond.end47

cond.end47:                                       ; preds = %lor.lhs.false.i97, %do.end38.cond.end47_crit_edge
  %cond48 = phi ptr [ @.str.25, %do.end38.cond.end47_crit_edge ], [ %spec.select115, %lor.lhs.false.i97 ]
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.107, i32 noundef 991, ptr noundef %cond48) #22
  br label %cleanup

if.end53:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #21
  %pause_config = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 5
  %36 = ptrtoint ptr %pause_config to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pause_config, align 4
  %or54 = or i32 %37, 1
  store i32 %or54, ptr %pause_config, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end53, %if.end15.if.end55_crit_edge
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %38 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool56.not = icmp eq i32 %39, 0
  br i1 %tobool56.not, label %if.end55.if.end60_crit_edge, label %if.then57

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end60

if.then57:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #21
  %pause_config58 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 5
  %40 = ptrtoint ptr %pause_config58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pause_config58, align 4
  %or59 = or i32 %41, 2
  store i32 %or59, ptr %pause_config58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end55.if.end60_crit_edge
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %42 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool61.not = icmp eq i32 %43, 0
  br i1 %tobool61.not, label %if.end60.if.end65_crit_edge, label %if.then62

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end65

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #21
  %pause_config63 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 5
  %44 = ptrtoint ptr %pause_config63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pause_config63, align 4
  %or64 = or i32 %45, 4
  store i32 %or64, ptr %pause_config63, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end60.if.end65_crit_edge
  %46 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %params, align 4
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %set_link = getelementptr inbounds %struct.qed_common_ops, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %set_link to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_link, align 4
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %call69 = call i32 %52(ptr noundef %54, ptr noundef nonnull %params) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %cond.end47, %do.body24.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ -95, %cond.end ], [ -95, %do.body.cleanup_crit_edge ], [ -22, %cond.end47 ], [ -22, %do.body24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %current_link) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_self_test(ptr noundef %dev, ptr nocapture noundef %etest, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %link_params.i = alloca %struct.qed_link_params, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end14

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 8
  %and = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end14_crit_edge, label %do.end, !prof !370

land.rhs.do.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end14

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool6.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool6.not, %tobool2.not.i
  %spec.select.i107 = select i1 %tobool2.not.i, ptr %5, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i107
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %etest, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and9 = and i32 %9, 1
  %and11 = lshr i32 %9, 2
  %shr = and i32 %and11, 1
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 1702, ptr noundef %cond, i32 noundef %and9, i32 noundef %shr) #22
  br label %do.end14

do.end14:                                         ; preds = %cond.end, %land.rhs.do.end14_crit_edge, %entry.do.end14_crit_edge
  %10 = call ptr @memset(ptr %buf, i32 0, i32 48)
  %flags15 = getelementptr inbounds %struct.ethtool_test, ptr %etest, i32 0, i32 1
  %11 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags15, align 4
  %and16 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.end14.if.end24_crit_edge, label %if.then18

do.end14.if.end24_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then18:                                        ; preds = %do.end14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %link_params.i) #19
  %13 = call ptr @memset(ptr %link_params.i, i32 255, i32 48)
  %ndev.i = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev.i, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %do.body.i, label %if.end13.i

do.body.i:                                        ; preds = %if.then18
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i = icmp ult i8 %19, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.qede_selftest_run_loopback.exit.thread_crit_edge, !prof !369

do.body.i.qede_selftest_run_loopback.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_selftest_run_loopback.exit.thread

do.end.i:                                         ; preds = %do.body.i
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i = tail call ptr @strchr(ptr noundef %15, i32 noundef 37) #19
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool7.not.i = icmp eq ptr %15, null
  %or.cond.i = select i1 %tobool2.not.i.i, i1 %tobool7.not.i, i1 false
  %spec.select.i4.i = select i1 %tobool2.not.i.i, ptr %15, ptr @.str.25
  %spec.select121.i = select i1 %or.cond.i, ptr @.str.3, ptr %spec.select.i4.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.25, %do.end.i.cond.end.i_crit_edge ], [ %spec.select121.i, %lor.lhs.false.i.i ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.113, i32 noundef 1631, ptr noundef %cond.i) #22
  br label %qede_selftest_run_loopback.exit.thread

if.end13.i:                                       ; preds = %if.then18
  %num_queues.i.i = getelementptr i8, ptr %dev, i32 2442
  %22 = ptrtoint ptr %num_queues.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_queues.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp10.not.i.i = icmp eq i16 %23, 0
  br i1 %cmp10.not.i.i, label %if.end13.i.qede_netif_stop.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end13.i.qede_netif_stop.exit.i_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_netif_stop.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end13.i
  %fp_array.i.i = getelementptr i8, ptr %dev, i32 2428
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %fp_array.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fp_array.i.i, align 4
  %napi.i.i = getelementptr %struct.qede_fastpath, ptr %25, i32 %i.011.i.i, i32 4
  tail call void @napi_disable(ptr noundef %napi.i.i) #19
  %26 = ptrtoint ptr %fp_array.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fp_array.i.i, align 4
  %sb_info.i.i = getelementptr %struct.qede_fastpath, ptr %27, i32 %i.011.i.i, i32 5
  %28 = ptrtoint ptr %sb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sb_info.i.i, align 8
  %sb_ack.i.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %sb_ack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sb_ack.i.i.i, align 4
  %or3.i.i.i = or i32 %31, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !373
  tail call void @arm_heavy_mb() #19
  %32 = tail call i32 @llvm.bswap.i32(i32 %or3.i.i.i) #19
  %igu_addr.i.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %29, i32 0, i32 4
  %33 = ptrtoint ptr %igu_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %igu_addr.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #19, !srcloc !374
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !375
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %35 = ptrtoint ptr %num_queues.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_queues.i.i, align 2
  %conv.i.i = zext i16 %36 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.qede_netif_stop.exit.i_crit_edge

for.body.i.i.qede_netif_stop.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_netif_stop.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i.i

qede_netif_stop.exit.i:                           ; preds = %for.body.i.i.qede_netif_stop.exit.i_crit_edge, %if.end13.i.qede_netif_stop.exit.i_crit_edge
  %37 = call ptr @memset(ptr %link_params.i, i32 0, i32 48)
  %38 = ptrtoint ptr %link_params.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %link_params.i, align 4
  %override_flags.i = getelementptr inbounds %struct.qed_link_params, ptr %link_params.i, i32 0, i32 1
  %39 = ptrtoint ptr %override_flags.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 16, ptr %override_flags.i, align 4
  %loopback_mode14.i = getelementptr inbounds %struct.qed_link_params, ptr %link_params.i, i32 0, i32 6
  %40 = ptrtoint ptr %loopback_mode14.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %loopback_mode14.i, align 4
  %ops.i = getelementptr i8, ptr %dev, i32 2332
  %41 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %set_link.i = getelementptr inbounds %struct.qed_common_ops, ptr %44, i32 0, i32 20
  %45 = ptrtoint ptr %set_link.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %set_link.i, align 4
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %call15.i = call i32 %46(ptr noundef %48, ptr noundef nonnull %link_params.i) #19
  %call16.i = call i32 @msleep_interruptible(i32 noundef 500) #19
  %49 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 20
  %51 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %52)
  %cmp18.i = icmp ult i32 %52, 1500
  %phi.bo.i = add i32 %52, 14
  %spec.select.i111 = select i1 %cmp18.i, i32 %phi.bo.i, i32 1514
  %call.i8.i = call ptr @__netdev_alloc_skb(ptr noundef %50, i32 noundef %spec.select.i111, i32 noundef 2592) #19
  %tobool28.not.i = icmp eq ptr %call.i8.i, null
  br i1 %tobool28.not.i, label %do.body30.i, label %if.end59.i

do.body30.i:                                      ; preds = %qede_netif_stop.exit.i
  %53 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp33.i = icmp ult i8 %54, 2
  br i1 %cmp33.i, label %do.end44.i, label %do.body30.i.test_loopback_exit.i_crit_edge, !prof !369

do.body30.i.test_loopback_exit.i_crit_edge:       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %test_loopback_exit.i

do.end44.i:                                       ; preds = %do.body30.i
  %55 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ndev.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i9.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i9.i, label %do.end44.i.cond.end53.i_crit_edge, label %lor.lhs.false.i13.i

do.end44.i.cond.end53.i_crit_edge:                ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end53.i

lor.lhs.false.i13.i:                              ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i10.i = call ptr @strchr(ptr noundef %56, i32 noundef 37) #19
  %tobool2.not.i11.i = icmp eq ptr %call.i10.i, null
  %tobool48.not.i = icmp eq ptr %56, null
  %or.cond108.i = and i1 %tobool48.not.i, %tobool2.not.i11.i
  %spec.select.i19.i = select i1 %tobool2.not.i11.i, ptr %56, ptr @.str.25
  %spec.select122.i = select i1 %or.cond108.i, ptr @.str.3, ptr %spec.select.i19.i
  br label %cond.end53.i

cond.end53.i:                                     ; preds = %lor.lhs.false.i13.i, %do.end44.i.cond.end53.i_crit_edge
  %cond54.i = phi ptr [ @.str.25, %do.end44.i.cond.end53.i_crit_edge ], [ %spec.select122.i, %lor.lhs.false.i13.i ]
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.113, i32 noundef 1655, ptr noundef %cond54.i) #22
  br label %test_loopback_exit.i

if.end59.i:                                       ; preds = %qede_netif_stop.exit.i
  %call60.i = call ptr @skb_put(ptr noundef nonnull %call.i8.i, i32 noundef %spec.select.i111) #19
  %59 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %60, i32 0, i32 86
  %61 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_addr.i, align 64
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 4
  %65 = ptrtoint ptr %call60.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %call60.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 4
  %66 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call60.i, i32 4
  %68 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %add.ptr1.i.i, align 2
  %add.ptr.i112 = getelementptr i8, ptr %call60.i, i32 6
  %69 = load ptr, ptr %ndev.i, align 4
  %dev_addr63.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 86
  %70 = ptrtoint ptr %dev_addr63.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_addr63.i, align 64
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %74 = ptrtoint ptr %add.ptr.i112 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %add.ptr.i112, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %71, i32 4
  %75 = ptrtoint ptr %add.ptr.i23.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr.i23.i, align 2
  %add.ptr1.i24.i = getelementptr i8, ptr %call60.i, i32 10
  %77 = ptrtoint ptr %add.ptr1.i24.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %add.ptr1.i24.i, align 2
  %add.ptr64.i = getelementptr i8, ptr %call60.i, i32 12
  %78 = ptrtoint ptr %add.ptr64.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 30583, ptr %add.ptr64.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %spec.select.i111)
  %cmp65113.i = icmp ugt i32 %spec.select.i111, 14
  br i1 %cmp65113.i, label %if.end59.i.for.body.i_crit_edge, label %if.end59.i.for.end.i_crit_edge

if.end59.i.for.end.i_crit_edge:                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

if.end59.i.for.body.i_crit_edge:                  ; preds = %if.end59.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end59.i.for.body.i_crit_edge
  %i.0114.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 14, %if.end59.i.for.body.i_crit_edge ]
  %conv67.i = trunc i32 %i.0114.i to i8
  %arrayidx.i = getelementptr i8, ptr %call60.i, i32 %i.0114.i
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv67.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.0114.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.select.i111
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end59.i.for.end.i_crit_edge
  %80 = ptrtoint ptr %num_queues.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %num_queues.i.i, align 2
  %conv.i26.i = zext i16 %81 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp299.not.i.i = icmp eq i16 %81, 0
  br i1 %cmp299.not.i.i, label %for.end.i.do.body.i.i_crit_edge, label %for.body.lr.ph.i28.i

for.end.i.do.body.i.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i

for.body.lr.ph.i28.i:                             ; preds = %for.end.i
  %fp_array.i27.i = getelementptr i8, ptr %dev, i32 2428
  %82 = ptrtoint ptr %fp_array.i27.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %fp_array.i27.i, align 4
  br label %for.body.i30.i

for.body.i30.i:                                   ; preds = %for.inc.i.i.for.body.i30.i_crit_edge, %for.body.lr.ph.i28.i
  %i.0300.i.i = phi i32 [ 0, %for.body.lr.ph.i28.i ], [ %inc.i31.i, %for.inc.i.i.for.body.i30.i_crit_edge ]
  %type.i.i = getelementptr %struct.qede_fastpath, ptr %83, i32 %i.0300.i.i, i32 1
  %84 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %type.i.i, align 4
  %86 = and i8 %85, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i29.i = icmp eq i8 %86, 0
  br i1 %tobool.not.i29.i, label %for.inc.i.i, label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i30.i
  %inc.i31.i = add nuw nsw i32 %i.0300.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i31.i, %conv.i26.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i30.i_crit_edge

for.inc.i.i.for.body.i30.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i30.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i

for.end.i.i:                                      ; preds = %for.body.i30.i
  %txq3.i.i = getelementptr %struct.qede_fastpath, ptr %83, i32 %i.0300.i.i, i32 7
  %87 = ptrtoint ptr %txq3.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %txq3.i.i, align 8
  %tobool5.not.i.i = icmp eq ptr %88, null
  br i1 %tobool5.not.i.i, label %for.end.i.i.do.body.i.i_crit_edge, label %if.end21.i.i

for.end.i.i.do.body.i.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.end.i.i.do.body.i.i_crit_edge, %for.inc.i.i.do.body.i.i_crit_edge, %for.end.i.do.body.i.i_crit_edge
  %89 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %90)
  %cmp8.i.i = icmp ult i8 %90, 3
  br i1 %cmp8.i.i, label %do.end.i.i, label %do.body.i.i.test_loopback_exit.i_crit_edge, !prof !369

do.body.i.i.test_loopback_exit.i_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %test_loopback_exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  %91 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ndev.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i.i = icmp eq i8 %94, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.cond.end.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end.i.i.cond.end.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i.i = call ptr @strchr(ptr noundef %92, i32 noundef 37) #19
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %tobool14.not.i.i = icmp eq ptr %92, null
  %or.cond.i.i = and i1 %tobool14.not.i.i, %tobool2.not.i.i.i
  %spec.select.i236.i.i = select i1 %tobool2.not.i.i.i, ptr %92, ptr @.str.25
  %spec.select.i32.i = select i1 %or.cond.i.i, ptr @.str.3, ptr %spec.select.i236.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %lor.lhs.false.i.i.i, %do.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ @.str.25, %do.end.i.i.cond.end.i.i_crit_edge ], [ %spec.select.i32.i, %lor.lhs.false.i.i.i ]
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, i32 noundef 1491, ptr noundef %cond.i.i) #22
  br label %test_loopback_exit.i

if.end21.i.i:                                     ; preds = %for.end.i.i
  %sw_tx_prod.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 3
  %95 = ptrtoint ptr %sw_tx_prod.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %sw_tx_prod.i.i, align 4
  %conv22.i.i = zext i16 %96 to i32
  %sw_tx_ring.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 14
  %97 = ptrtoint ptr %sw_tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sw_tx_ring.i.i, align 8
  %arrayidx23.i.i = getelementptr %struct.sw_tx_bd, ptr %98, i32 %conv22.i.i
  %99 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i8.i, ptr %arrayidx23.i.i, align 4
  %tx_pbl.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15
  %cnt_type.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 13
  %100 = ptrtoint ptr %cnt_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cnt_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.i.i.i = icmp eq i32 %101, 0
  %u.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 3
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end21.i.i
  %102 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %u.i.i.i, align 4
  %elem_per_page_mask.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 8
  %104 = ptrtoint ptr %elem_per_page_mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %elem_per_page_mask.i.i.i, align 2
  %and57.i.i.i = and i16 %105, %103
  %next_page_mask.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 10
  %106 = ptrtoint ptr %next_page_mask.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %next_page_mask.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and57.i.i.i, i16 %107)
  %cmp3.i.i.i = icmp eq i16 %and57.i.i.i, %107
  br i1 %cmp3.i.i.i, label %if.then5.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i.i

if.then5.i.i.i:                                   ; preds = %if.then.i.i.i
  %mode.i.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 6
  %108 = ptrtoint ptr %mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mode.i.i.i.i, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %109, label %if.then5.i.i.i.if.end.i.i.i_crit_edge [
    i32 0, label %if.then.i.i.i.i
    i32 1, label %sw.bb6.i.i.i.i
    i32 2, label %if.end25.i.i.i.i
  ]

if.then5.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %111 = ptrtoint ptr %tx_pbl.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_pbl.i.i, align 4
  %next_virt.i.i.i.i = getelementptr inbounds %struct.qed_chain_next, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %next_virt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %next_virt.i.i.i.i, align 4
  store ptr %114, ptr %tx_pbl.i.i, align 4
  %elem_unusable.i.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 12
  %115 = ptrtoint ptr %elem_unusable.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %elem_unusable.i.i.i.i, align 2
  %conv.i.i.i.i = zext i8 %116 to i16
  %add.i.i.i.i = add i16 %103, %conv.i.i.i.i
  %117 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %add.i.i.i.i, ptr %u.i.i.i, align 2
  br label %if.end.i.i.i

sw.bb6.i.i.i.i:                                   ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %p_virt_addr.i.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 16
  %118 = ptrtoint ptr %p_virt_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %p_virt_addr.i.i.i.i, align 4
  %120 = ptrtoint ptr %tx_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %tx_pbl.i.i, align 4
  br label %if.end.i.i.i

if.end25.i.i.i.i:                                 ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %c.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 2, i32 1
  %121 = ptrtoint ptr %c.i.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %c.i.i.i, align 2
  %inc.i.i.i.i = add i16 %122, 1
  %conv12.i.i.i.i = zext i16 %inc.i.i.i.i to i32
  %page_cnt.i.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 5
  %123 = ptrtoint ptr %page_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %page_cnt.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %conv12.i.i.i.i)
  %cmp13.i.i.i.i = icmp eq i32 %124, %conv12.i.i.i.i
  %spec.store.select.i.i.i.i = select i1 %cmp13.i.i.i.i, i16 0, i16 %inc.i.i.i.i
  %125 = ptrtoint ptr %c.i.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %spec.store.select.i.i.i.i, ptr %c.i.i.i, align 2
  %conv17.i.i.i.i = zext i16 %spec.store.select.i.i.i.i to i32
  %pbl.i.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 2
  %126 = ptrtoint ptr %pbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pbl.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.addr_tbl_entry, ptr %127, i32 %conv17.i.i.i.i
  %128 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %130 = ptrtoint ptr %tx_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %129, ptr %tx_pbl.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end25.i.i.i.i, %sw.bb6.i.i.i.i, %if.then.i.i.i.i, %if.then5.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %131 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %u.i.i.i, align 4
  %inc.i.i.i = add i16 %132, 1
  store i16 %inc.i.i.i, ptr %u.i.i.i, align 4
  br label %qed_chain_produce.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end21.i.i
  %133 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %u.i.i.i, align 4
  %elem_per_page_mask12.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 8
  %135 = ptrtoint ptr %elem_per_page_mask12.i.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %elem_per_page_mask12.i.i.i, align 2
  %conv13.i.i.i = zext i16 %136 to i32
  %and14.i.i.i = and i32 %134, %conv13.i.i.i
  %next_page_mask15.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 10
  %137 = ptrtoint ptr %next_page_mask15.i.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %next_page_mask15.i.i.i, align 2
  %conv16.i.i.i = zext i16 %138 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14.i.i.i, i32 %conv16.i.i.i)
  %cmp17.i.i.i = icmp eq i32 %and14.i.i.i, %conv16.i.i.i
  br i1 %cmp17.i.i.i, label %if.then19.i.i.i, label %if.else.i.i.i.if.end26.i.i.i_crit_edge

if.else.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26.i.i.i

if.then19.i.i.i:                                  ; preds = %if.else.i.i.i
  %mode.i58.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 6
  %139 = ptrtoint ptr %mode.i58.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mode.i58.i.i.i, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %140, label %if.then19.i.i.i.if.end26.i.i.i_crit_edge [
    i32 0, label %if.else.i69.i.i.i
    i32 1, label %sw.bb6.i71.i.i.i
    i32 2, label %if.end25.i90.i.i.i
  ]

if.then19.i.i.i.if.end26.i.i.i_crit_edge:         ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26.i.i.i

if.else.i69.i.i.i:                                ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %142 = ptrtoint ptr %tx_pbl.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tx_pbl.i.i, align 4
  %next_virt.i59.i.i.i = getelementptr inbounds %struct.qed_chain_next, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %next_virt.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %next_virt.i59.i.i.i, align 4
  store ptr %145, ptr %tx_pbl.i.i, align 4
  %elem_unusable.i62.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 12
  %146 = ptrtoint ptr %elem_unusable.i62.i.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %elem_unusable.i62.i.i.i, align 2
  %conv4.i67.i.i.i = zext i8 %147 to i32
  %add5.i68.i.i.i = add i32 %134, %conv4.i67.i.i.i
  %148 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add5.i68.i.i.i, ptr %u.i.i.i, align 4
  br label %if.end26.i.i.i

sw.bb6.i71.i.i.i:                                 ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %p_virt_addr.i70.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 16
  %149 = ptrtoint ptr %p_virt_addr.i70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %p_virt_addr.i70.i.i.i, align 4
  %151 = ptrtoint ptr %tx_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %150, ptr %tx_pbl.i.i, align 4
  br label %if.end26.i.i.i

if.end25.i90.i.i.i:                               ; preds = %if.then19.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %c23.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 2, i32 1
  %152 = ptrtoint ptr %c23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %c23.i.i.i, align 4
  %inc19.i82.i.i.i = add i32 %153, 1
  %page_cnt20.i83.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 5
  %154 = ptrtoint ptr %page_cnt20.i83.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %page_cnt20.i83.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc19.i82.i.i.i, i32 %155)
  %cmp21.i84.i.i.i = icmp eq i32 %inc19.i82.i.i.i, %155
  %spec.store.select43.i85.i.i.i = select i1 %cmp21.i84.i.i.i, i32 0, i32 %inc19.i82.i.i.i
  %156 = ptrtoint ptr %c23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %spec.store.select43.i85.i.i.i, ptr %c23.i.i.i, align 4
  %pbl.i88.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 2
  %157 = ptrtoint ptr %pbl.i88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pbl.i88.i.i.i, align 4
  %arrayidx.i89.i.i.i = getelementptr %struct.addr_tbl_entry, ptr %158, i32 %spec.store.select43.i85.i.i.i
  %159 = ptrtoint ptr %arrayidx.i89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i89.i.i.i, align 4
  %161 = ptrtoint ptr %tx_pbl.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %160, ptr %tx_pbl.i.i, align 4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i90.i.i.i, %sw.bb6.i71.i.i.i, %if.else.i69.i.i.i, %if.then19.i.i.i.if.end26.i.i.i_crit_edge, %if.else.i.i.i.if.end26.i.i.i_crit_edge
  %162 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %u.i.i.i, align 4
  %inc29.i.i.i = add i32 %163, 1
  store i32 %inc29.i.i.i, ptr %u.i.i.i, align 4
  br label %qed_chain_produce.exit.i.i

qed_chain_produce.exit.i.i:                       ; preds = %if.end26.i.i.i, %if.end.i.i.i
  %164 = ptrtoint ptr %tx_pbl.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tx_pbl.i.i, align 4
  %elem_size.i.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 15, i32 9
  %166 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %elem_size.i.i.i, align 4
  %conv33.i.i.i = zext i16 %167 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %165, i32 %conv33.i.i.i
  store ptr %add.ptr.i.i.i, ptr %tx_pbl.i.i, align 4
  %168 = call ptr @memset(ptr %165, i32 0, i32 16)
  %bd_flags.i.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %165, i32 0, i32 2, i32 2
  %169 = ptrtoint ptr %bd_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %bd_flags.i.i, align 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i8.i, i32 0, i32 6
  %170 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %len.i.i, align 4
  %.tr.i.i = trunc i32 %171 to i16
  %conv30.i.i = shl i16 %.tr.i.i, 2
  %172 = call i16 @llvm.bswap.i16(i16 %conv30.i.i) #19
  %bitfields33.i.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %165, i32 0, i32 2, i32 3
  %173 = ptrtoint ptr %bitfields33.i.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %172, ptr %bitfields33.i.i, align 2
  %pdev.i.i = getelementptr i8, ptr %dev, i32 2312
  %174 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %175, i32 0, i32 44
  %data36.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i8.i, i32 0, i32 19
  %176 = ptrtoint ptr %data36.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %data36.i.i, align 4
  %178 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %len.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i8.i, i32 0, i32 7
  %180 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %data_len.i.i.i, align 8
  %call.i240.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %177) #19
  br i1 %call.i240.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %qed_chain_produce.exit.i.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i241.i.i, !prof !370

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dma_map_single_attrs.exit.i.i

if.then.i241.i.i:                                 ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i) #19
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %175, i32 0, i32 44, i32 3
  %182 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %183, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i241.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i241.i.i.dev_name.exit.i.i.i_crit_edge:   ; preds = %if.then.i241.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i241.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %184 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i241.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %185, %if.end.i.i.i.i ], [ %183, %if.then.i241.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.128, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.129, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #19
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %qed_chain_produce.exit.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %sub.i.i.i = sub i32 %179, %181
  call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %177, i32 noundef %sub.i.i.i) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %186 = load ptr, ptr @mem_map, align 4
  %187 = ptrtoint ptr %177 to i32
  %sub.i242.i.i = add i32 %187, 1073741824
  %shr.i.i.i = lshr i32 %sub.i242.i.i, 12
  %add.ptr.i243.i.i = getelementptr %struct.page, ptr %186, i32 %shr.i.i.i
  %and.i.i.i = and i32 %187, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i243.i.i, i32 noundef %and.i.i.i, i32 noundef %sub.i.i.i, i32 noundef 1, i32 noundef 0) #19
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i244.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %188 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pdev.i.i, align 8
  %dev40.i.i = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  call void @debug_dma_mapping_error(ptr noundef %dev40.i.i, i32 noundef %retval.0.i244.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i244.i.i)
  %cmp.i245.i.i = icmp eq i32 %retval.0.i244.i.i, -1
  br i1 %cmp.i245.i.i, label %do.body50.i.i, label %do.body80.i.i

do.body50.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  %190 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %191)
  %cmp53.i.i = icmp ult i8 %191, 3
  br i1 %cmp53.i.i, label %do.end64.i.i, label %do.body50.i.i.test_loopback_exit.i_crit_edge, !prof !369

do.body50.i.i.test_loopback_exit.i_crit_edge:     ; preds = %do.body50.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %test_loopback_exit.i

do.end64.i.i:                                     ; preds = %do.body50.i.i
  %192 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ndev.i, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %193, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i246.i.i = icmp eq i8 %195, 0
  br i1 %tobool.not.i246.i.i, label %do.end64.i.i.cond.end73.i.i_crit_edge, label %lor.lhs.false.i250.i.i

do.end64.i.i.cond.end73.i.i_crit_edge:            ; preds = %do.end64.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end73.i.i

lor.lhs.false.i250.i.i:                           ; preds = %do.end64.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i247.i.i = call ptr @strchr(ptr noundef %193, i32 noundef 37) #19
  %tobool2.not.i248.i.i = icmp eq ptr %call.i247.i.i, null
  %tobool68.not.i.i = icmp eq ptr %193, null
  %or.cond296.i.i = and i1 %tobool68.not.i.i, %tobool2.not.i248.i.i
  %spec.select.i256.i.i = select i1 %tobool2.not.i248.i.i, ptr %193, ptr @.str.25
  %spec.select305.i.i = select i1 %or.cond296.i.i, ptr @.str.3, ptr %spec.select.i256.i.i
  br label %cond.end73.i.i

cond.end73.i.i:                                   ; preds = %lor.lhs.false.i250.i.i, %do.end64.i.i.cond.end73.i.i_crit_edge
  %cond74.i.i = phi ptr [ @.str.25, %do.end64.i.i.cond.end73.i.i_crit_edge ], [ %spec.select305.i.i, %lor.lhs.false.i250.i.i ]
  %call75.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121, i32 noundef 1510, ptr noundef %cond74.i.i) #22
  br label %test_loopback_exit.i

do.body80.i.i:                                    ; preds = %dma_map_single_attrs.exit.i.i
  %hi.i.i = getelementptr inbounds %struct.regpair, ptr %165, i32 0, i32 1
  %196 = ptrtoint ptr %hi.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %hi.i.i, align 4
  %197 = call i32 @llvm.bswap.i32(i32 %retval.0.i244.i.i) #19
  %198 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %165, align 4
  %199 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %len.i.i, align 4
  %201 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i262.i.i = sub i32 %200, %202
  %conv85.i.i = trunc i32 %sub.i262.i.i to i16
  %203 = call i16 @llvm.bswap.i16(i16 %conv85.i.i) #19
  %nbytes.i.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %165, i32 0, i32 1
  %204 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %203, ptr %nbytes.i.i, align 4
  %nbds.i.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %165, i32 0, i32 2, i32 1
  %205 = ptrtoint ptr %nbds.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %nbds.i.i, align 2
  %206 = ptrtoint ptr %sw_tx_prod.i.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %sw_tx_prod.i.i, align 4
  %conv90.i.i = zext i16 %207 to i32
  %add.i.i = add nuw nsw i32 %conv90.i.i, 1
  %num_tx_buffers.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 4
  %208 = ptrtoint ptr %num_tx_buffers.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %num_tx_buffers.i.i, align 2
  %conv91.i.i = zext i16 %209 to i32
  %rem.i.i = urem i32 %add.i.i, %conv91.i.i
  %conv92.i.i = trunc i32 %rem.i.i to i16
  store i16 %conv92.i.i, ptr %sw_tx_prod.i.i, align 4
  %210 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %u.i.i.i, align 4
  %212 = call i16 @llvm.bswap.i16(i16 %211) #19
  %tx_db.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 11
  %bd_prod.i.i = getelementptr inbounds %struct.eth_db_data, ptr %tx_db.i.i, i32 0, i32 2
  %213 = ptrtoint ptr %bd_prod.i.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %212, ptr %bd_prod.i.i, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !376
  call void @arm_heavy_mb() #19
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !377
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !378
  call void @arm_heavy_mb() #19
  %214 = ptrtoint ptr %tx_db.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %tx_db.i.i, align 4
  %216 = call i32 @llvm.bswap.i32(i32 %215) #19
  %doorbell_addr.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 10
  %217 = ptrtoint ptr %doorbell_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %doorbell_addr.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %216) #19, !srcloc !374
  br label %for.body106.i.i

for.body106.i.i:                                  ; preds = %if.end110.i.i.for.body106.i.i_crit_edge, %do.body80.i.i
  %i.1301.i.i = phi i32 [ 0, %do.body80.i.i ], [ %inc112.i.i, %if.end110.i.i.for.body106.i.i_crit_edge ]
  %call107.i.i = call i32 @qede_txq_has_work(ptr noundef nonnull %88) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i.i)
  %tobool108.not.i.i = icmp eq i32 %call107.i.i, 0
  br i1 %tobool108.not.i.i, label %if.end110.i.i, label %for.body106.i.i.for.end113.i.i_crit_edge

for.body106.i.i.for.end113.i.i_crit_edge:         ; preds = %for.body106.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end113.i.i

if.end110.i.i:                                    ; preds = %for.body106.i.i
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  %inc112.i.i = add nuw nsw i32 %i.1301.i.i, 1
  %exitcond303.not.i.i = icmp eq i32 %inc112.i.i, 100
  br i1 %exitcond303.not.i.i, label %if.end110.i.i.for.end113.i.i_crit_edge, label %if.end110.i.i.for.body106.i.i_crit_edge

if.end110.i.i.for.body106.i.i_crit_edge:          ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body106.i.i

if.end110.i.i.for.end113.i.i_crit_edge:           ; preds = %if.end110.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end113.i.i

for.end113.i.i:                                   ; preds = %if.end110.i.i.for.end113.i.i_crit_edge, %for.body106.i.i.for.end113.i.i_crit_edge
  %call114.i.i = call i32 @qede_txq_has_work(ptr noundef nonnull %88) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i.i)
  %tobool115.not.i.i = icmp eq i32 %call114.i.i, 0
  br i1 %tobool115.not.i.i, label %do.body117.i.i, label %if.end71.i

do.body117.i.i:                                   ; preds = %for.end113.i.i
  %219 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %220)
  %cmp120.i.i = icmp ult i8 %220, 3
  br i1 %cmp120.i.i, label %do.end131.i.i, label %do.body117.i.i.test_loopback_exit.i_crit_edge, !prof !369

do.body117.i.i.test_loopback_exit.i_crit_edge:    ; preds = %do.body117.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %test_loopback_exit.i

do.end131.i.i:                                    ; preds = %do.body117.i.i
  %221 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ndev.i, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %222, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %tobool.not.i264.i.i = icmp eq i8 %224, 0
  br i1 %tobool.not.i264.i.i, label %do.end131.i.i.cond.end140.i.i_crit_edge, label %lor.lhs.false.i268.i.i

do.end131.i.i.cond.end140.i.i_crit_edge:          ; preds = %do.end131.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end140.i.i

lor.lhs.false.i268.i.i:                           ; preds = %do.end131.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i265.i.i = call ptr @strchr(ptr noundef %222, i32 noundef 37) #19
  %tobool2.not.i266.i.i = icmp eq ptr %call.i265.i.i, null
  %tobool135.not.i.i = icmp eq ptr %222, null
  %or.cond297.i.i = and i1 %tobool135.not.i.i, %tobool2.not.i266.i.i
  %spec.select.i274.i.i = select i1 %tobool2.not.i266.i.i, ptr %222, ptr @.str.25
  %spec.select306.i.i = select i1 %or.cond297.i.i, ptr @.str.3, ptr %spec.select.i274.i.i
  br label %cond.end140.i.i

cond.end140.i.i:                                  ; preds = %lor.lhs.false.i268.i.i, %do.end131.i.i.cond.end140.i.i_crit_edge
  %cond141.i.i = phi ptr [ @.str.25, %do.end131.i.i.cond.end140.i.i_crit_edge ], [ %spec.select306.i.i, %lor.lhs.false.i268.i.i ]
  %call142.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.121, i32 noundef 1536, ptr noundef %cond141.i.i) #22
  br label %test_loopback_exit.i

if.end71.i:                                       ; preds = %for.end113.i.i
  %call148.i.i = call fastcc ptr @qed_chain_consume(ptr noundef %tx_pbl.i.i) #19
  %225 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pdev.i.i, align 8
  %dev150.i.i = getelementptr inbounds %struct.pci_dev, ptr %226, i32 0, i32 44
  %227 = ptrtoint ptr %call148.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %call148.i.i, align 4
  %229 = call i32 @llvm.bswap.i32(i32 %228) #19
  %nbytes160.i.i = getelementptr inbounds %struct.eth_tx_1st_bd, ptr %call148.i.i, i32 0, i32 1
  %230 = ptrtoint ptr %nbytes160.i.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %nbytes160.i.i, align 4
  %232 = call i16 @llvm.bswap.i16(i16 %231) #19
  %conv161.i.i = zext i16 %232 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev150.i.i, i32 noundef %229, i32 noundef %conv161.i.i, i32 noundef 1, i32 noundef 0) #19
  %sw_tx_cons.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %88, i32 0, i32 2
  %233 = ptrtoint ptr %sw_tx_cons.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %sw_tx_cons.i.i, align 2
  %conv162.i.i = zext i16 %234 to i32
  %add163.i.i = add nuw nsw i32 %conv162.i.i, 1
  %235 = ptrtoint ptr %num_tx_buffers.i.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %num_tx_buffers.i.i, align 2
  %conv165.i.i = zext i16 %236 to i32
  %rem166.i.i = urem i32 %add163.i.i, %conv165.i.i
  %conv167.i.i = trunc i32 %rem166.i.i to i16
  store i16 %conv167.i.i, ptr %sw_tx_cons.i.i, align 2
  %237 = ptrtoint ptr %sw_tx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %sw_tx_ring.i.i, align 8
  %arrayidx170.i.i = getelementptr %struct.sw_tx_bd, ptr %238, i32 %conv22.i.i
  %239 = ptrtoint ptr %arrayidx170.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr null, ptr %arrayidx170.i.i, align 4
  %240 = ptrtoint ptr %num_queues.i.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %num_queues.i.i, align 2
  %conv.i35.i = zext i16 %241 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %241)
  %cmp270.not.i.i = icmp eq i16 %241, 0
  br i1 %cmp270.not.i.i, label %if.end71.i.do.body.i46.i_crit_edge, label %for.body.lr.ph.i37.i

if.end71.i.do.body.i46.i_crit_edge:               ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i46.i

for.body.lr.ph.i37.i:                             ; preds = %if.end71.i
  %242 = ptrtoint ptr %fp_array.i27.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %fp_array.i27.i, align 4
  br label %for.body.i40.i

for.body.i40.i:                                   ; preds = %for.inc.i43.i.for.body.i40.i_crit_edge, %for.body.lr.ph.i37.i
  %i.0271.i.i = phi i32 [ 0, %for.body.lr.ph.i37.i ], [ %inc.i41.i, %for.inc.i43.i.for.body.i40.i_crit_edge ]
  %type.i38.i = getelementptr %struct.qede_fastpath, ptr %243, i32 %i.0271.i.i, i32 1
  %244 = ptrtoint ptr %type.i38.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %type.i38.i, align 4
  %246 = and i8 %245, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %246)
  %tobool.not.i39.i = icmp eq i8 %246, 0
  br i1 %tobool.not.i39.i, label %for.inc.i43.i, label %for.end.i44.i

for.inc.i43.i:                                    ; preds = %for.body.i40.i
  %inc.i41.i = add nuw nsw i32 %i.0271.i.i, 1
  %exitcond.not.i42.i = icmp eq i32 %inc.i41.i, %conv.i35.i
  br i1 %exitcond.not.i42.i, label %for.inc.i43.i.do.body.i46.i_crit_edge, label %for.inc.i43.i.for.body.i40.i_crit_edge

for.inc.i43.i.for.body.i40.i_crit_edge:           ; preds = %for.inc.i43.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i40.i

for.inc.i43.i.do.body.i46.i_crit_edge:            ; preds = %for.inc.i43.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i46.i

for.end.i44.i:                                    ; preds = %for.body.i40.i
  %rxq5.i.i = getelementptr %struct.qede_fastpath, ptr %243, i32 %i.0271.i.i, i32 6
  %247 = ptrtoint ptr %rxq5.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %rxq5.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %248, null
  br i1 %tobool6.not.i.i, label %for.end.i44.i.do.body.i46.i_crit_edge, label %for.cond23.preheader.i.i

for.end.i44.i.do.body.i46.i_crit_edge:            ; preds = %for.end.i44.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body.i46.i

for.cond23.preheader.i.i:                         ; preds = %for.end.i44.i
  %rx_comp_ring.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %248, i32 0, i32 16
  %sw_rx_cons.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %248, i32 0, i32 4
  %sw_rx_ring.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %248, i32 0, i32 13
  %rx_headroom.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %248, i32 0, i32 10
  %cnt_type.i209.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %248, i32 0, i32 16, i32 13
  %u.i211.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %248, i32 0, i32 16, i32 3
  %elem_per_page_mask13.i221.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %248, i32 0, i32 16, i32 8
  %usable_per_page16.i224.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %248, i32 0, i32 16, i32 11
  %elem_unusable21.i228.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %248, i32 0, i32 16, i32 12
  br label %for.body26.i.i

do.body.i46.i:                                    ; preds = %for.end.i44.i.do.body.i46.i_crit_edge, %for.inc.i43.i.do.body.i46.i_crit_edge, %if.end71.i.do.body.i46.i_crit_edge
  %249 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %250)
  %cmp9.i.i = icmp ult i8 %250, 3
  br i1 %cmp9.i.i, label %do.end.i49.i, label %do.body.i46.i.test_loopback_exit.i_crit_edge, !prof !369

do.body.i46.i.test_loopback_exit.i_crit_edge:     ; preds = %do.body.i46.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %test_loopback_exit.i

do.end.i49.i:                                     ; preds = %do.body.i46.i
  %251 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ndev.i, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %252, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool.not.i.i48.i = icmp eq i8 %254, 0
  br i1 %tobool.not.i.i48.i, label %do.end.i49.i.cond.end.i56.i_crit_edge, label %lor.lhs.false.i.i54.i

do.end.i49.i.cond.end.i56.i_crit_edge:            ; preds = %do.end.i49.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end.i56.i

lor.lhs.false.i.i54.i:                            ; preds = %do.end.i49.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i.i50.i = call ptr @strchr(ptr noundef %252, i32 noundef 37) #19
  %tobool2.not.i.i51.i = icmp eq ptr %call.i.i50.i, null
  %tobool15.not.i.i = icmp eq ptr %252, null
  %or.cond.i52.i = and i1 %tobool15.not.i.i, %tobool2.not.i.i51.i
  %spec.select.i183.i.i = select i1 %tobool2.not.i.i51.i, ptr %252, ptr @.str.25
  %spec.select.i53.i = select i1 %or.cond.i52.i, ptr @.str.3, ptr %spec.select.i183.i.i
  br label %cond.end.i56.i

cond.end.i56.i:                                   ; preds = %lor.lhs.false.i.i54.i, %do.end.i49.i.cond.end.i56.i_crit_edge
  %cond.i55.i = phi ptr [ @.str.25, %do.end.i49.i.cond.end.i56.i_crit_edge ], [ %spec.select.i53.i, %lor.lhs.false.i.i54.i ]
  %call18.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, i32 noundef 1567, ptr noundef %cond.i55.i) #22
  br label %test_loopback_exit.i

for.body26.i.i:                                   ; preds = %for.inc98.i.i.for.body26.i.i_crit_edge, %for.cond23.preheader.i.i
  %iter.0273.i.i = phi i32 [ 0, %for.cond23.preheader.i.i ], [ %inc99.i.i, %for.inc98.i.i.for.body26.i.i_crit_edge ]
  %call27.i.i = call zeroext i1 @qede_has_rx_work(ptr noundef nonnull %248) #19
  br i1 %call27.i.i, label %if.end29.i.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #21
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #19
  br label %for.inc98.i.i

if.end29.i.i:                                     ; preds = %for.body26.i.i
  %call30.i.i = call fastcc ptr @qed_chain_consume(ptr noundef %rx_comp_ring.i.i) #19
  %255 = ptrtoint ptr %sw_rx_cons.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %sw_rx_cons.i.i, align 16
  %257 = and i16 %256, 8191
  %258 = ptrtoint ptr %sw_rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %sw_rx_ring.i.i, align 4
  %idxprom.i.i = zext i16 %257 to i32
  %arrayidx34.i.i = getelementptr %struct.sw_rx_data, ptr %259, i32 %idxprom.i.i
  %len_on_first_bd.i.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call30.i.i, i32 0, i32 6
  %260 = ptrtoint ptr %len_on_first_bd.i.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %len_on_first_bd.i.i, align 4
  %262 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx34.i.i, align 4
  %call35.i.i = call ptr @page_address(ptr noundef %263) #19
  %placement_offset.i.i = getelementptr inbounds %struct.eth_fast_path_rx_reg_cqe, ptr %call30.i.i, i32 0, i32 7
  %264 = ptrtoint ptr %placement_offset.i.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %placement_offset.i.i, align 2
  %conv36.i.i = zext i8 %265 to i32
  %add.ptr.i57.i = getelementptr i8, ptr %call35.i.i, i32 %conv36.i.i
  %page_offset.i.i = getelementptr %struct.sw_rx_data, ptr %259, i32 %idxprom.i.i, i32 2
  %266 = ptrtoint ptr %page_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %page_offset.i.i, align 4
  %add.ptr37.i.i = getelementptr i8, ptr %add.ptr.i57.i, i32 %267
  %268 = ptrtoint ptr %rx_headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %rx_headroom.i.i, align 2
  %conv38.i.i = zext i16 %269 to i32
  %add.ptr39.i.i = getelementptr i8, ptr %add.ptr37.i.i, i32 %conv38.i.i
  %270 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %ndev.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %271, i32 0, i32 86
  %272 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev_addr.i.i, align 64
  %274 = ptrtoint ptr %add.ptr39.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %add.ptr39.i.i, align 4
  %276 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %273, align 4
  %xor.i.i.i = xor i32 %277, %275
  %add.ptr.i.i58.i = getelementptr i8, ptr %add.ptr39.i.i, i32 4
  %278 = ptrtoint ptr %add.ptr.i.i58.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %add.ptr.i.i58.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %273, i32 4
  %280 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %281, %279
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i59.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i59.i, label %land.lhs.true.i.i, label %if.end29.i.i.do.body68.i.i_crit_edge

if.end29.i.i.do.body68.i.i_crit_edge:             ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body68.i.i

land.lhs.true.i.i:                                ; preds = %if.end29.i.i
  %add.ptr43.i.i = getelementptr i8, ptr %add.ptr39.i.i, i32 6
  %282 = ptrtoint ptr %add.ptr43.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %add.ptr43.i.i, align 4
  %xor.i187.i.i = xor i32 %283, %277
  %add.ptr.i188.i.i = getelementptr i8, ptr %add.ptr43.i.i, i32 4
  %284 = ptrtoint ptr %add.ptr.i188.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %add.ptr.i188.i.i, align 2
  %xor37.i190.i.i = xor i16 %285, %281
  %xor3.i191.i.i = zext i16 %xor37.i190.i.i to i32
  %or.i192.i.i = or i32 %xor.i187.i.i, %xor3.i191.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i192.i.i)
  %cmp.i193.i.i = icmp eq i32 %or.i192.i.i, 0
  br i1 %cmp.i193.i.i, label %for.cond49.preheader.i.i, label %land.lhs.true.i.i.do.body68.i.i_crit_edge

land.lhs.true.i.i.do.body68.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body68.i.i

for.cond49.preheader.i.i:                         ; preds = %land.lhs.true.i.i
  %286 = call i16 @llvm.bswap.i16(i16 %261) #19
  %conv50.i.i = zext i16 %286 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %286)
  %cmp51276.i.i = icmp ugt i16 %286, 14
  br i1 %cmp51276.i.i, label %for.cond49.preheader.i.i.for.body53.i.i_crit_edge, label %for.cond49.preheader.i.i.for.end65.i.i_crit_edge

for.cond49.preheader.i.i.for.end65.i.i_crit_edge: ; preds = %for.cond49.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end65.i.i

for.cond49.preheader.i.i.for.body53.i.i_crit_edge: ; preds = %for.cond49.preheader.i.i
  br label %for.body53.i.i

for.body53.i.i:                                   ; preds = %for.body53.i.i.for.body53.i.i_crit_edge, %for.cond49.preheader.i.i.for.body53.i.i_crit_edge
  %i.1277.i.i = phi i32 [ %inc64.i.i, %for.body53.i.i.for.body53.i.i_crit_edge ], [ 14, %for.cond49.preheader.i.i.for.body53.i.i_crit_edge ]
  %arrayidx54.i.i = getelementptr i8, ptr %add.ptr39.i.i, i32 %i.1277.i.i
  %287 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx54.i.i, align 1
  %289 = trunc i32 %i.1277.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %288, i8 %289)
  %cmp59.not.i.i = icmp eq i8 %288, %289
  %cmp59.not.i.i.not = xor i1 %cmp59.not.i.i, true
  %inc64.i.i = add nuw nsw i32 %i.1277.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc64.i.i, i32 %conv50.i.i)
  %exitcond282.not.i.i = icmp eq i32 %inc64.i.i, %conv50.i.i
  %or.cond131 = select i1 %cmp59.not.i.i.not, i1 true, i1 %exitcond282.not.i.i
  br i1 %or.cond131, label %for.body53.i.i.for.end65.i.i_crit_edge, label %for.body53.i.i.for.body53.i.i_crit_edge

for.body53.i.i.for.body53.i.i_crit_edge:          ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body53.i.i

for.body53.i.i.for.end65.i.i_crit_edge:           ; preds = %for.body53.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.end65.i.i

for.end65.i.i:                                    ; preds = %for.body53.i.i.for.end65.i.i_crit_edge, %for.cond49.preheader.i.i.for.end65.i.i_crit_edge
  %tobool73.not.i = phi i1 [ true, %for.cond49.preheader.i.i.for.end65.i.i_crit_edge ], [ %cmp59.not.i.i, %for.body53.i.i.for.end65.i.i_crit_edge ]
  call void @qede_recycle_rx_bd_ring(ptr noundef nonnull %248, i8 noundef zeroext 1) #19
  %290 = ptrtoint ptr %cnt_type.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %cnt_type.i209.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %cmp.i194.i.i = icmp eq i32 %291, 0
  br i1 %cmp.i194.i.i, label %if.then.i.i61.i, label %if.else.i.i63.i

if.then.i.i61.i:                                  ; preds = %for.end65.i.i
  %292 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %u.i211.i.i, align 4
  %294 = ptrtoint ptr %elem_per_page_mask13.i221.i.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %elem_per_page_mask13.i221.i.i, align 2
  %and52.i.i.i = and i16 %295, %293
  %296 = ptrtoint ptr %usable_per_page16.i224.i.i to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %usable_per_page16.i224.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i.i.i, i16 %297)
  %cmp3.i.i60.i = icmp eq i16 %and52.i.i.i, %297
  br i1 %cmp3.i.i60.i, label %if.then5.i.i62.i, label %if.then.i.i61.i.if.then31.i.i.i_crit_edge

if.then.i.i61.i.if.then31.i.i.i_crit_edge:        ; preds = %if.then.i.i61.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then31.i.i.i

if.then5.i.i62.i:                                 ; preds = %if.then.i.i61.i
  call void @__sanitizer_cov_trace_pc() #21
  %298 = ptrtoint ptr %elem_unusable21.i228.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %elem_unusable21.i228.i.i, align 2
  %conv6.i.i.i = zext i8 %299 to i16
  %add.i.i.i = add i16 %293, %conv6.i.i.i
  %300 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %add.i.i.i, ptr %u.i211.i.i, align 4
  br label %if.then31.i.i.i

if.else.i.i63.i:                                  ; preds = %for.end65.i.i
  %301 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %u.i211.i.i, align 4
  %303 = ptrtoint ptr %elem_per_page_mask13.i221.i.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %elem_per_page_mask13.i221.i.i, align 2
  %conv14.i.i.i = zext i16 %304 to i32
  %and15.i.i.i = and i32 %302, %conv14.i.i.i
  %305 = ptrtoint ptr %usable_per_page16.i224.i.i to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %usable_per_page16.i224.i.i, align 4
  %conv17.i.i.i = zext i16 %306 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i.i.i, i32 %conv17.i.i.i)
  %cmp18.i.i.i = icmp eq i32 %and15.i.i.i, %conv17.i.i.i
  br i1 %cmp18.i.i.i, label %if.then20.i.i.i, label %if.else.i.i63.i.if.else34.i.i.i_crit_edge

if.else.i.i63.i.if.else34.i.i.i_crit_edge:        ; preds = %if.else.i.i63.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else34.i.i.i

if.then20.i.i.i:                                  ; preds = %if.else.i.i63.i
  call void @__sanitizer_cov_trace_pc() #21
  %307 = ptrtoint ptr %elem_unusable21.i228.i.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %elem_unusable21.i228.i.i, align 2
  %conv22.i.i.i = zext i8 %308 to i32
  %add25.i.i.i = add i32 %302, %conv22.i.i.i
  %309 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %add25.i.i.i, ptr %u.i211.i.i, align 4
  br label %if.else34.i.i.i

if.then31.i.i.i:                                  ; preds = %if.then5.i.i62.i, %if.then.i.i61.i.if.then31.i.i.i_crit_edge
  %310 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %u.i211.i.i, align 4
  %inc.i.i64.i = add i16 %311, 1
  store i16 %inc.i.i64.i, ptr %u.i211.i.i, align 4
  br label %for.end100.i.i

if.else34.i.i.i:                                  ; preds = %if.then20.i.i.i, %if.else.i.i63.i.if.else34.i.i.i_crit_edge
  %312 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %u.i211.i.i, align 4
  %inc37.i.i.i = add i32 %313, 1
  store i32 %inc37.i.i.i, ptr %u.i211.i.i, align 4
  br label %for.end100.i.i

do.body68.i.i:                                    ; preds = %land.lhs.true.i.i.do.body68.i.i_crit_edge, %if.end29.i.i.do.body68.i.i_crit_edge
  %314 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %315)
  %cmp71.i.i = icmp ult i8 %315, 2
  br i1 %cmp71.i.i, label %do.end82.i.i, label %do.body68.i.i.do.end96.i.i_crit_edge, !prof !369

do.body68.i.i.do.end96.i.i_crit_edge:             ; preds = %do.body68.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end96.i.i

do.end82.i.i:                                     ; preds = %do.body68.i.i
  %316 = ptrtoint ptr %271 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %271, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %317)
  %tobool.not.i195.i.i = icmp eq i8 %317, 0
  br i1 %tobool.not.i195.i.i, label %do.end82.i.i.cond.end91.i.i_crit_edge, label %lor.lhs.false.i199.i.i

do.end82.i.i.cond.end91.i.i_crit_edge:            ; preds = %do.end82.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end91.i.i

lor.lhs.false.i199.i.i:                           ; preds = %do.end82.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i196.i.i = call ptr @strchr(ptr noundef %271, i32 noundef 37) #19
  %tobool2.not.i197.i.i = icmp eq ptr %call.i196.i.i, null
  %tobool86.not.i.i = icmp eq ptr %271, null
  %or.cond264.i.i = select i1 %tobool2.not.i197.i.i, i1 %tobool86.not.i.i, i1 false
  %spec.select.i205.i.i = select i1 %tobool2.not.i197.i.i, ptr %271, ptr @.str.25
  %spec.select288.i.i = select i1 %or.cond264.i.i, ptr @.str.3, ptr %spec.select.i205.i.i
  br label %cond.end91.i.i

cond.end91.i.i:                                   ; preds = %lor.lhs.false.i199.i.i, %do.end82.i.i.cond.end91.i.i_crit_edge
  %cond92.i.i = phi ptr [ @.str.25, %do.end82.i.i.cond.end91.i.i_crit_edge ], [ %spec.select288.i.i, %lor.lhs.false.i199.i.i ]
  %call93.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.131, i32 noundef 1607, ptr noundef %cond92.i.i) #22
  br label %do.end96.i.i

do.end96.i.i:                                     ; preds = %cond.end91.i.i, %do.body68.i.i.do.end96.i.i_crit_edge
  call void @qede_recycle_rx_bd_ring(ptr noundef nonnull %248, i8 noundef zeroext 1) #19
  %318 = ptrtoint ptr %cnt_type.i209.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %cnt_type.i209.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %cmp.i210.i.i = icmp eq i32 %319, 0
  br i1 %cmp.i210.i.i, label %if.then.i216.i.i, label %if.else.i227.i.i

if.then.i216.i.i:                                 ; preds = %do.end96.i.i
  %320 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_load2_noabort(i32 %320)
  %321 = load i16, ptr %u.i211.i.i, align 4
  %322 = ptrtoint ptr %elem_per_page_mask13.i221.i.i to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %elem_per_page_mask13.i221.i.i, align 2
  %and52.i213.i.i = and i16 %323, %321
  %324 = ptrtoint ptr %usable_per_page16.i224.i.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %usable_per_page16.i224.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %and52.i213.i.i, i16 %325)
  %cmp3.i215.i.i = icmp eq i16 %and52.i213.i.i, %325
  br i1 %cmp3.i215.i.i, label %if.then5.i220.i.i, label %if.then.i216.i.i.if.then31.i233.i.i_crit_edge

if.then.i216.i.i.if.then31.i233.i.i_crit_edge:    ; preds = %if.then.i216.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then31.i233.i.i

if.then5.i220.i.i:                                ; preds = %if.then.i216.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %326 = ptrtoint ptr %elem_unusable21.i228.i.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %elem_unusable21.i228.i.i, align 2
  %conv6.i218.i.i = zext i8 %327 to i16
  %add.i219.i.i = add i16 %321, %conv6.i218.i.i
  %328 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %add.i219.i.i, ptr %u.i211.i.i, align 4
  br label %if.then31.i233.i.i

if.else.i227.i.i:                                 ; preds = %do.end96.i.i
  %329 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %u.i211.i.i, align 4
  %331 = ptrtoint ptr %elem_per_page_mask13.i221.i.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %elem_per_page_mask13.i221.i.i, align 2
  %conv14.i222.i.i = zext i16 %332 to i32
  %and15.i223.i.i = and i32 %330, %conv14.i222.i.i
  %333 = ptrtoint ptr %usable_per_page16.i224.i.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %usable_per_page16.i224.i.i, align 4
  %conv17.i225.i.i = zext i16 %334 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and15.i223.i.i, i32 %conv17.i225.i.i)
  %cmp18.i226.i.i = icmp eq i32 %and15.i223.i.i, %conv17.i225.i.i
  br i1 %cmp18.i226.i.i, label %if.then20.i231.i.i, label %if.else.i227.i.i.if.else34.i235.i.i_crit_edge

if.else.i227.i.i.if.else34.i235.i.i_crit_edge:    ; preds = %if.else.i227.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.else34.i235.i.i

if.then20.i231.i.i:                               ; preds = %if.else.i227.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %335 = ptrtoint ptr %elem_unusable21.i228.i.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %elem_unusable21.i228.i.i, align 2
  %conv22.i229.i.i = zext i8 %336 to i32
  %add25.i230.i.i = add i32 %330, %conv22.i229.i.i
  %337 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %add25.i230.i.i, ptr %u.i211.i.i, align 4
  br label %if.else34.i235.i.i

if.then31.i233.i.i:                               ; preds = %if.then5.i220.i.i, %if.then.i216.i.i.if.then31.i233.i.i_crit_edge
  %338 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %u.i211.i.i, align 4
  %inc.i232.i.i = add i16 %339, 1
  store i16 %inc.i232.i.i, ptr %u.i211.i.i, align 4
  br label %for.inc98.i.i

if.else34.i235.i.i:                               ; preds = %if.then20.i231.i.i, %if.else.i227.i.i.if.else34.i235.i.i_crit_edge
  %340 = ptrtoint ptr %u.i211.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %u.i211.i.i, align 4
  %inc37.i234.i.i = add i32 %341, 1
  store i32 %inc37.i234.i.i, ptr %u.i211.i.i, align 4
  br label %for.inc98.i.i

for.inc98.i.i:                                    ; preds = %if.else34.i235.i.i, %if.then31.i233.i.i, %if.then28.i.i
  %inc99.i.i = add nuw nsw i32 %iter.0273.i.i, 1
  %exitcond281.not.i.i = icmp eq i32 %inc99.i.i, 100
  br i1 %exitcond281.not.i.i, label %for.inc98.i.i.do.body104.i.i_crit_edge, label %for.inc98.i.i.for.body26.i.i_crit_edge

for.inc98.i.i.for.body26.i.i_crit_edge:           ; preds = %for.inc98.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body26.i.i

for.inc98.i.i.do.body104.i.i_crit_edge:           ; preds = %for.inc98.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body104.i.i

for.end100.i.i:                                   ; preds = %if.else34.i.i.i, %if.then31.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %iter.0273.i.i)
  %cmp101.i.i = icmp eq i32 %iter.0273.i.i, 100
  br i1 %cmp101.i.i, label %for.end100.i.i.do.body104.i.i_crit_edge, label %qede_selftest_receive_traffic.exit.i

for.end100.i.i.do.body104.i.i_crit_edge:          ; preds = %for.end100.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body104.i.i

do.body104.i.i:                                   ; preds = %for.end100.i.i.do.body104.i.i_crit_edge, %for.inc98.i.i.do.body104.i.i_crit_edge
  %342 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %343)
  %cmp107.i.i = icmp ult i8 %343, 3
  br i1 %cmp107.i.i, label %do.end118.i.i, label %do.body104.i.i.test_loopback_exit.i_crit_edge, !prof !369

do.body104.i.i.test_loopback_exit.i_crit_edge:    ; preds = %do.body104.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %test_loopback_exit.i

do.end118.i.i:                                    ; preds = %do.body104.i.i
  %344 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %ndev.i, align 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %345, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %347)
  %tobool.not.i237.i.i = icmp eq i8 %347, 0
  br i1 %tobool.not.i237.i.i, label %do.end118.i.i.cond.end127.i.i_crit_edge, label %lor.lhs.false.i241.i.i

do.end118.i.i.cond.end127.i.i_crit_edge:          ; preds = %do.end118.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end127.i.i

lor.lhs.false.i241.i.i:                           ; preds = %do.end118.i.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i238.i.i = call ptr @strchr(ptr noundef %345, i32 noundef 37) #19
  %tobool2.not.i239.i.i = icmp eq ptr %call.i238.i.i, null
  %tobool122.not.i.i = icmp eq ptr %345, null
  %or.cond265.i.i = and i1 %tobool122.not.i.i, %tobool2.not.i239.i.i
  %spec.select.i247.i.i = select i1 %tobool2.not.i239.i.i, ptr %345, ptr @.str.25
  %spec.select289.i.i = select i1 %or.cond265.i.i, ptr @.str.3, ptr %spec.select.i247.i.i
  br label %cond.end127.i.i

cond.end127.i.i:                                  ; preds = %lor.lhs.false.i241.i.i, %do.end118.i.i.cond.end127.i.i_crit_edge
  %cond128.i.i = phi ptr [ @.str.25, %do.end118.i.i.cond.end127.i.i_crit_edge ], [ %spec.select289.i.i, %lor.lhs.false.i241.i.i ]
  %call129.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.131, i32 noundef 1613, ptr noundef %cond128.i.i) #22
  br label %test_loopback_exit.i

qede_selftest_receive_traffic.exit.i:             ; preds = %for.end100.i.i
  call void @qede_update_rx_prod(ptr noundef %add.ptr.i, ptr noundef nonnull %248) #19
  br i1 %tobool73.not.i, label %do.body76.i, label %qede_selftest_receive_traffic.exit.i.test_loopback_exit.i_crit_edge

qede_selftest_receive_traffic.exit.i.test_loopback_exit.i_crit_edge: ; preds = %qede_selftest_receive_traffic.exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %test_loopback_exit.i

do.body76.i:                                      ; preds = %qede_selftest_receive_traffic.exit.i
  %348 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %cmp79.i = icmp eq i8 %349, 0
  br i1 %cmp79.i, label %land.rhs.i, label %do.body76.i.test_loopback_exit.i_crit_edge

do.body76.i.test_loopback_exit.i_crit_edge:       ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %test_loopback_exit.i

land.rhs.i:                                       ; preds = %do.body76.i
  %dp_module.i = getelementptr i8, ptr %dev, i32 2320
  %350 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %dp_module.i, align 8
  %and81.i = and i32 %351, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %land.rhs.i.test_loopback_exit.i_crit_edge, label %do.end92.i, !prof !370

land.rhs.i.test_loopback_exit.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %test_loopback_exit.i

do.end92.i:                                       ; preds = %land.rhs.i
  %352 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %ndev.i, align 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %353, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool.not.i66.i = icmp eq i8 %355, 0
  br i1 %tobool.not.i66.i, label %do.end92.i.cond.end101.i_crit_edge, label %lor.lhs.false.i70.i

do.end92.i.cond.end101.i_crit_edge:               ; preds = %do.end92.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end101.i

lor.lhs.false.i70.i:                              ; preds = %do.end92.i
  call void @__sanitizer_cov_trace_pc() #21
  %call.i67.i = call ptr @strchr(ptr noundef %353, i32 noundef 37) #19
  %tobool2.not.i68.i = icmp eq ptr %call.i67.i, null
  %tobool96.not.i = icmp eq ptr %353, null
  %or.cond109.i = and i1 %tobool96.not.i, %tobool2.not.i68.i
  %spec.select.i76.i = select i1 %tobool2.not.i68.i, ptr %353, ptr @.str.25
  %spec.select123.i = select i1 %or.cond109.i, ptr @.str.3, ptr %spec.select.i76.i
  br label %cond.end101.i

cond.end101.i:                                    ; preds = %lor.lhs.false.i70.i, %do.end92.i.cond.end101.i_crit_edge
  %cond102.i = phi ptr [ @.str.25, %do.end92.i.cond.end101.i_crit_edge ], [ %spec.select123.i, %lor.lhs.false.i70.i ]
  %call103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.113, i32 noundef 1674, ptr noundef %cond102.i) #22
  br label %test_loopback_exit.i

test_loopback_exit.i:                             ; preds = %cond.end101.i, %land.rhs.i.test_loopback_exit.i_crit_edge, %do.body76.i.test_loopback_exit.i_crit_edge, %qede_selftest_receive_traffic.exit.i.test_loopback_exit.i_crit_edge, %cond.end127.i.i, %do.body104.i.i.test_loopback_exit.i_crit_edge, %cond.end.i56.i, %do.body.i46.i.test_loopback_exit.i_crit_edge, %cond.end140.i.i, %do.body117.i.i.test_loopback_exit.i_crit_edge, %cond.end73.i.i, %do.body50.i.i.test_loopback_exit.i_crit_edge, %cond.end.i.i, %do.body.i.i.test_loopback_exit.i_crit_edge, %cond.end53.i, %do.body30.i.test_loopback_exit.i_crit_edge
  %tobool20.not = phi i1 [ true, %cond.end101.i ], [ true, %land.rhs.i.test_loopback_exit.i_crit_edge ], [ true, %do.body76.i.test_loopback_exit.i_crit_edge ], [ false, %qede_selftest_receive_traffic.exit.i.test_loopback_exit.i_crit_edge ], [ false, %cond.end127.i.i ], [ false, %do.body104.i.i.test_loopback_exit.i_crit_edge ], [ false, %cond.end.i56.i ], [ false, %do.body.i46.i.test_loopback_exit.i_crit_edge ], [ false, %cond.end140.i.i ], [ false, %do.body117.i.i.test_loopback_exit.i_crit_edge ], [ false, %cond.end73.i.i ], [ false, %do.body50.i.i.test_loopback_exit.i_crit_edge ], [ false, %cond.end.i.i ], [ false, %do.body.i.i.test_loopback_exit.i_crit_edge ], [ false, %cond.end53.i ], [ false, %do.body30.i.test_loopback_exit.i_crit_edge ]
  call void @consume_skb(ptr noundef %call.i8.i) #19
  %356 = call ptr @memset(ptr %link_params.i, i32 0, i32 48)
  %357 = ptrtoint ptr %link_params.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 1, ptr %link_params.i, align 4
  %358 = ptrtoint ptr %override_flags.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 16, ptr %override_flags.i, align 4
  %359 = ptrtoint ptr %loopback_mode14.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 1, ptr %loopback_mode14.i, align 4
  %360 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %ops.i, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %361, align 4
  %set_link112.i = getelementptr inbounds %struct.qed_common_ops, ptr %363, i32 0, i32 20
  %364 = ptrtoint ptr %set_link112.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %set_link112.i, align 4
  %366 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %add.ptr.i, align 8
  %call114.i = call i32 %365(ptr noundef %367, ptr noundef nonnull %link_params.i) #19
  %call115.i = call i32 @msleep_interruptible(i32 noundef 500) #19
  %368 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %ndev.i, align 4
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %369, i32 0, i32 6
  %370 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %371, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %test_loopback_exit.i.qede_selftest_run_loopback.exit_crit_edge, label %for.cond.preheader.i.i

test_loopback_exit.i.qede_selftest_run_loopback.exit_crit_edge: ; preds = %test_loopback_exit.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_selftest_run_loopback.exit

for.cond.preheader.i.i:                           ; preds = %test_loopback_exit.i
  %372 = ptrtoint ptr %num_queues.i.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %num_queues.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %373)
  %cmp11.not.i.i = icmp eq i16 %373, 0
  br i1 %cmp11.not.i.i, label %for.cond.preheader.i.i.qede_selftest_run_loopback.exit_crit_edge, label %for.body.lr.ph.i83.i

for.cond.preheader.i.i.qede_selftest_run_loopback.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_selftest_run_loopback.exit

for.body.lr.ph.i83.i:                             ; preds = %for.cond.preheader.i.i
  %fp_array.i82.i = getelementptr i8, ptr %dev, i32 2428
  br label %for.body.i92.i

for.body.i92.i:                                   ; preds = %for.body.i92.i.for.body.i92.i_crit_edge, %for.body.lr.ph.i83.i
  %i.012.i.i = phi i32 [ 0, %for.body.lr.ph.i83.i ], [ %inc.i89.i, %for.body.i92.i.for.body.i92.i_crit_edge ]
  %374 = ptrtoint ptr %fp_array.i82.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %fp_array.i82.i, align 4
  %sb_info.i84.i = getelementptr %struct.qede_fastpath, ptr %375, i32 %i.012.i.i, i32 5
  %376 = ptrtoint ptr %sb_info.i84.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %sb_info.i84.i, align 8
  %sb_ack.i.i85.i = getelementptr inbounds %struct.qed_sb_info, ptr %377, i32 0, i32 2
  %378 = ptrtoint ptr %sb_ack.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %sb_ack.i.i85.i, align 4
  %or3.i.i86.i = or i32 %379, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #19, !srcloc !373
  call void @arm_heavy_mb() #19
  %380 = call i32 @llvm.bswap.i32(i32 %or3.i.i86.i) #19
  %igu_addr.i.i87.i = getelementptr inbounds %struct.qed_sb_info, ptr %377, i32 0, i32 4
  %381 = ptrtoint ptr %igu_addr.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %igu_addr.i.i87.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %382, i32 %380) #19, !srcloc !374
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !375
  %383 = ptrtoint ptr %fp_array.i82.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %fp_array.i82.i, align 4
  %napi.i88.i = getelementptr %struct.qede_fastpath, ptr %384, i32 %i.012.i.i, i32 4
  call void @napi_enable(ptr noundef %napi.i88.i) #19
  %inc.i89.i = add nuw nsw i32 %i.012.i.i, 1
  %385 = ptrtoint ptr %num_queues.i.i to i32
  call void @__asan_load2_noabort(i32 %385)
  %386 = load i16, ptr %num_queues.i.i, align 2
  %conv.i90.i = zext i16 %386 to i32
  %cmp.i91.i = icmp ult i32 %inc.i89.i, %conv.i90.i
  br i1 %cmp.i91.i, label %for.body.i92.i.for.body.i92.i_crit_edge, label %for.body.i92.i.qede_selftest_run_loopback.exit_crit_edge

for.body.i92.i.qede_selftest_run_loopback.exit_crit_edge: ; preds = %for.body.i92.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %qede_selftest_run_loopback.exit

for.body.i92.i.for.body.i92.i_crit_edge:          ; preds = %for.body.i92.i
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.body.i92.i

qede_selftest_run_loopback.exit.thread:           ; preds = %cond.end.i, %do.body.i.qede_selftest_run_loopback.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %link_params.i) #19
  br label %if.then21

qede_selftest_run_loopback.exit:                  ; preds = %for.body.i92.i.qede_selftest_run_loopback.exit_crit_edge, %for.cond.preheader.i.i.qede_selftest_run_loopback.exit_crit_edge, %test_loopback_exit.i.qede_selftest_run_loopback.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %link_params.i) #19
  br i1 %tobool20.not, label %qede_selftest_run_loopback.exit.if.end24_crit_edge, label %qede_selftest_run_loopback.exit.if.then21_crit_edge

qede_selftest_run_loopback.exit.if.then21_crit_edge: ; preds = %qede_selftest_run_loopback.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.then21

qede_selftest_run_loopback.exit.if.end24_crit_edge: ; preds = %qede_selftest_run_loopback.exit
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end24

if.then21:                                        ; preds = %qede_selftest_run_loopback.exit.if.then21_crit_edge, %qede_selftest_run_loopback.exit.thread
  %387 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %387)
  store i64 1, ptr %buf, align 8
  %388 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %flags15, align 4
  %or = or i32 %389, 2
  store i32 %or, ptr %flags15, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %qede_selftest_run_loopback.exit.if.end24_crit_edge, %do.end14.if.end24_crit_edge
  %ops = getelementptr i8, ptr %dev, i32 2332
  %390 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %ops, align 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %391, align 4
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %393, align 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %395, align 4
  %398 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %add.ptr.i, align 8
  %call25 = call i32 %397(ptr noundef %399) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.if.end31_crit_edge, label %if.then27

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end31

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx28 = getelementptr i64, ptr %buf, i32 1
  %400 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %400)
  store i64 1, ptr %arrayidx28, align 8
  %401 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %flags15, align 4
  %or30 = or i32 %402, 2
  store i32 %or30, ptr %flags15, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end24.if.end31_crit_edge
  %403 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %ops, align 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %404, align 4
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %406, align 4
  %selftest_memory = getelementptr inbounds %struct.qed_selftest_ops, ptr %408, i32 0, i32 1
  %409 = ptrtoint ptr %selftest_memory to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %selftest_memory, align 4
  %411 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %add.ptr.i, align 8
  %call36 = call i32 %410(ptr noundef %412) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end31.if.end42_crit_edge, label %if.then38

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end42

if.then38:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx39 = getelementptr i64, ptr %buf, i32 2
  %413 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store8_noabort(i32 %413)
  store i64 1, ptr %arrayidx39, align 8
  %414 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %flags15, align 4
  %or41 = or i32 %415, 2
  store i32 %or41, ptr %flags15, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end31.if.end42_crit_edge
  %416 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %ops, align 4
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %417, align 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %419, align 4
  %selftest_register = getelementptr inbounds %struct.qed_selftest_ops, ptr %421, i32 0, i32 2
  %422 = ptrtoint ptr %selftest_register to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %selftest_register, align 4
  %424 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %add.ptr.i, align 8
  %call47 = call i32 %423(ptr noundef %425) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end42.if.end53_crit_edge, label %if.then49

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end53

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx50 = getelementptr i64, ptr %buf, i32 3
  %426 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store8_noabort(i32 %426)
  store i64 1, ptr %arrayidx50, align 8
  %427 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %flags15, align 4
  %or52 = or i32 %428, 2
  store i32 %or52, ptr %flags15, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end42.if.end53_crit_edge
  %429 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %ops, align 4
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %430, align 4
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %432, align 4
  %selftest_clock = getelementptr inbounds %struct.qed_selftest_ops, ptr %434, i32 0, i32 3
  %435 = ptrtoint ptr %selftest_clock to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %selftest_clock, align 4
  %437 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %add.ptr.i, align 8
  %call58 = call i32 %436(ptr noundef %438) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end53.if.end64_crit_edge, label %if.then60

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end64

if.then60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx61 = getelementptr i64, ptr %buf, i32 4
  %439 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store8_noabort(i32 %439)
  store i64 1, ptr %arrayidx61, align 8
  %440 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %flags15, align 4
  %or63 = or i32 %441, 2
  store i32 %or63, ptr %flags15, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end53.if.end64_crit_edge
  %442 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %ops, align 4
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %443, align 4
  %446 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %445, align 4
  %selftest_nvram = getelementptr inbounds %struct.qed_selftest_ops, ptr %447, i32 0, i32 4
  %448 = ptrtoint ptr %selftest_nvram to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %selftest_nvram, align 4
  %450 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %add.ptr.i, align 8
  %call69 = call i32 %449(ptr noundef %451) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end64.if.end75_crit_edge, label %if.then71

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end75

if.then71:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #21
  %arrayidx72 = getelementptr i64, ptr %buf, i32 5
  %452 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store8_noabort(i32 %452)
  store i64 1, ptr %arrayidx72, align 8
  %453 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %flags15, align 4
  %or74 = or i32 %454, 2
  store i32 %or74, ptr %flags15, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %if.end64.if.end75_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_phys_id(ptr nocapture noundef readonly %dev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %state, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb1
    i32 0, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %entry.sw.epilog_crit_edge
  %led_state.0 = phi i32 [ 2, %sw.bb3 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %ops = getelementptr i8, ptr %dev, i32 2332
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %set_led = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 29
  %5 = ptrtoint ptr %set_led to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_led, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %call4 = tail call i32 %6(ptr noundef %8, i32 noundef %led_state.0) #19
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %state, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_priv_flags(ptr noundef %dev, i32 noundef %flags) #2 align 64 {
entry:
  %esl_active.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %esl_active.i) #19
  %0 = ptrtoint ptr %esl_active.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %esl_active.i, align 1, !annotation !372
  %num_hwfns.i = getelementptr i8, ptr %dev, i32 2364
  %1 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_hwfns.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp.i = icmp ugt i8 %2, 1
  %spec.select.i = zext i1 %cmp.i to i32
  %smart_an.i = getelementptr i8, ptr %dev, i32 2395
  %3 = ptrtoint ptr %smart_an.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %smart_an.i, align 1, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %or5.i = or i32 %spec.select.i, 2
  %flags.1.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or5.i
  %err_flags.i = getelementptr i8, ptr %dev, i32 3608
  %esl.i = getelementptr i8, ptr %dev, i32 2396
  %5 = ptrtoint ptr %esl.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %esl.i, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool13.not.i = icmp eq i8 %6, 0
  %or15.i = or i32 %flags.1.i, 8
  %flags.3.i = select i1 %tobool13.not.i, i32 %flags.1.i, i32 %or15.i
  %ops.i = getelementptr i8, ptr %dev, i32 2332
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %get_esl_status.i = getelementptr inbounds %struct.qed_common_ops, ptr %10, i32 0, i32 48
  %11 = ptrtoint ptr %get_esl_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_esl_status.i, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %call18.i = call i32 %12(ptr noundef %14, ptr noundef nonnull %esl_active.i) #19
  %15 = ptrtoint ptr %esl_active.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %esl_active.i, align 1, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool19.not.i = icmp eq i8 %16, 0
  %or21.i = or i32 %flags.3.i, 16
  %flags.4.i = select i1 %tobool19.not.i, i32 %flags.3.i, i32 %or21.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %esl_active.i) #19
  %xor = xor i32 %flags.4.i, %flags
  %and = and i32 %xor, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @_set_bit(i32 noundef 2, ptr noundef %err_flags.i) #19
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  call void @_clear_bit(i32 noundef 2, ptr noundef %err_flags.i) #19
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_flash_device(ptr nocapture noundef readonly %dev, ptr noundef %flash) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nvm_flash = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %nvm_flash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nvm_flash, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %data = getelementptr inbounds %struct.ethtool_flash, ptr %flash, i32 0, i32 2
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %data) #19
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_dump_flag(ptr nocapture noundef readonly %dev, ptr nocapture noundef %dump) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool5.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool5.not, %tobool2.not.i
  %spec.select.i93 = select i1 %tobool2.not.i, ptr %5, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i93
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, i32 noundef 2063, ptr noundef %cond) #22
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %version = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 1
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %version, align 4
  %dump_info = getelementptr i8, ptr %dev, i32 3612
  %9 = ptrtoint ptr %dump_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dump_info, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %10, label %do.end25 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %12 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %flag, align 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %read_nvm_cfg_len = getelementptr inbounds %struct.qed_common_ops, ptr %16, i32 0, i32 42
  %17 = ptrtoint ptr %read_nvm_cfg_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_nvm_cfg_len, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %args = getelementptr i8, ptr %dev, i32 3620
  %21 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %args, align 4
  %call14 = tail call i32 %18(ptr noundef %20, i32 noundef %22) #19
  br label %do.body41

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %flag16 = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %23 = ptrtoint ptr %flag16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %flag16, align 4
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dbg_all_data_size = getelementptr inbounds %struct.qed_common_ops, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %dbg_all_data_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dbg_all_data_size, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %call20 = tail call i32 %29(ptr noundef %31) #19
  br label %do.body41

do.end25:                                         ; preds = %if.end
  %ndev27 = getelementptr i8, ptr %dev, i32 2308
  %32 = ptrtoint ptr %ndev27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev27, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i97 = icmp eq i8 %35, 0
  br i1 %tobool.not.i97, label %do.end25.cond.end34_crit_edge, label %lor.lhs.false.i101

do.end25.cond.end34_crit_edge:                    ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end34

lor.lhs.false.i101:                               ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #21
  %call.i98 = tail call ptr @strchr(ptr noundef %33, i32 noundef 37) #19
  %tobool2.not.i99 = icmp eq ptr %call.i98, null
  %tobool29.not = icmp eq ptr %33, null
  %or.cond136 = and i1 %tobool29.not, %tobool2.not.i99
  %spec.select.i107 = select i1 %tobool2.not.i99, ptr %33, ptr @.str.25
  %spec.select138 = select i1 %or.cond136, ptr @.str.3, ptr %spec.select.i107
  br label %cond.end34

cond.end34:                                       ; preds = %lor.lhs.false.i101, %do.end25.cond.end34_crit_edge
  %cond35 = phi ptr [ @.str.25, %do.end25.cond.end34_crit_edge ], [ %spec.select138, %lor.lhs.false.i101 ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.139, i32 noundef 2079, ptr noundef %cond35, i32 noundef %10) #22
  br label %cleanup

do.body41:                                        ; preds = %sw.bb15, %sw.bb
  %call14.sink = phi i32 [ %call14, %sw.bb ], [ %call20, %sw.bb15 ]
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %36 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call14.sink, ptr %len, align 4
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %37 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp = icmp eq i8 %38, 0
  br i1 %cmp, label %land.rhs, label %do.body41.cleanup_crit_edge

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs:                                         ; preds = %do.body41
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %39 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dp_module, align 8
  %and = and i32 %40, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool43.not = icmp eq i32 %and, 0
  br i1 %tobool43.not, label %land.rhs.cleanup_crit_edge, label %do.end49, !prof !370

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end49:                                         ; preds = %land.rhs
  %ndev51 = getelementptr i8, ptr %dev, i32 2308
  %41 = ptrtoint ptr %ndev51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev51, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i111 = icmp eq i8 %44, 0
  br i1 %tobool.not.i111, label %do.end49.cond.end58_crit_edge, label %lor.lhs.false.i115

do.end49.cond.end58_crit_edge:                    ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end58

lor.lhs.false.i115:                               ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #21
  %call.i112 = tail call ptr @strchr(ptr noundef %42, i32 noundef 37) #19
  %tobool2.not.i113 = icmp eq ptr %call.i112, null
  %tobool53.not = icmp eq ptr %42, null
  %or.cond137 = and i1 %tobool53.not, %tobool2.not.i113
  %spec.select.i121 = select i1 %tobool2.not.i113, ptr %42, ptr @.str.25
  %spec.select139 = select i1 %or.cond137, ptr @.str.3, ptr %spec.select.i121
  br label %cond.end58

cond.end58:                                       ; preds = %lor.lhs.false.i115, %do.end49.cond.end58_crit_edge
  %cond59 = phi ptr [ @.str.25, %do.end49.cond.end58_crit_edge ], [ %spec.select139, %lor.lhs.false.i115 ]
  %45 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %version, align 4
  %flag61 = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 2
  %47 = ptrtoint ptr %flag61 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flag61, align 4
  %len62 = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %49 = ptrtoint ptr %len62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len62, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.139, i32 noundef 2085, ptr noundef %cond59, i32 noundef %46, i32 noundef %48, i32 noundef %50) #22
  br label %cleanup

cleanup:                                          ; preds = %cond.end58, %land.rhs.cleanup_crit_edge, %do.body41.cleanup_crit_edge, %cond.end34, %cond.end
  %retval.0 = phi i32 [ -22, %cond.end34 ], [ -22, %cond.end ], [ 0, %do.body41.cleanup_crit_edge ], [ 0, %cond.end58 ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_dump_data(ptr nocapture noundef %dev, ptr nocapture noundef readonly %dump, ptr noundef %buf) #2 align 64 {
entry:
  %buf.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %buf, ptr %buf.addr, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ops = getelementptr i8, ptr %dev, i32 2332
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %5 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %6, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool5.not = icmp eq ptr %6, null
  %or.cond = and i1 %tobool5.not, %tobool2.not.i
  %spec.select.i96 = select i1 %tobool2.not.i, ptr %6, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i96
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.146, i32 noundef 2096, ptr noundef %cond) #22
  br label %err

if.end:                                           ; preds = %lor.lhs.false
  %dump_info = getelementptr i8, ptr %dev, i32 3612
  %9 = ptrtoint ptr %dump_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dump_info, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %10, label %do.end50 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.end
  %num_args = getelementptr i8, ptr %dev, i32 3616
  %12 = ptrtoint ptr %num_args to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_args, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.not = icmp eq i8 %13, 2
  br i1 %cmp.not, label %if.end34, label %do.end17

do.end17:                                         ; preds = %sw.bb
  %ndev19 = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev19, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i100 = icmp eq i8 %17, 0
  br i1 %tobool.not.i100, label %do.end17.cond.end26_crit_edge, label %lor.lhs.false.i104

do.end17.cond.end26_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end26

lor.lhs.false.i104:                               ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #21
  %call.i101 = tail call ptr @strchr(ptr noundef %15, i32 noundef 37) #19
  %tobool2.not.i102 = icmp eq ptr %call.i101, null
  %tobool21.not = icmp eq ptr %15, null
  %or.cond139 = and i1 %tobool21.not, %tobool2.not.i102
  %spec.select.i110 = select i1 %tobool2.not.i102, ptr %15, ptr @.str.25
  %spec.select141 = select i1 %or.cond139, ptr @.str.3, ptr %spec.select.i110
  br label %cond.end26

cond.end26:                                       ; preds = %lor.lhs.false.i104, %do.end17.cond.end26_crit_edge
  %cond27 = phi ptr [ @.str.25, %do.end17.cond.end26_crit_edge ], [ %spec.select141, %lor.lhs.false.i104 ]
  %conv30 = zext i8 %13 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.146, i32 noundef 2106, ptr noundef %cond27, i32 noundef %conv30, i32 noundef 2) #22
  br label %err

if.end34:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #21
  %read_nvm_cfg = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 41
  %18 = ptrtoint ptr %read_nvm_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_nvm_cfg, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %args = getelementptr i8, ptr %dev, i32 3620
  %22 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %args, align 4
  %arrayidx40 = getelementptr i8, ptr %dev, i32 3624
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx40, align 4
  %call41 = call i32 %19(ptr noundef %21, ptr noundef nonnull %buf.addr, i32 noundef %23, i32 noundef %25) #19
  br label %err

sw.bb42:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %len = getelementptr inbounds %struct.ethtool_dump, ptr %dump, i32 0, i32 3
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %28 = call ptr @memset(ptr %buf, i32 0, i32 %27)
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %dbg_all_data = getelementptr inbounds %struct.qed_common_ops, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %dbg_all_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dbg_all_data, align 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 8
  %call46 = tail call i32 %34(ptr noundef %36, ptr noundef %buf) #19
  br label %err

do.end50:                                         ; preds = %if.end
  %ndev52 = getelementptr i8, ptr %dev, i32 2308
  %37 = ptrtoint ptr %ndev52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev52, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i114 = icmp eq i8 %40, 0
  br i1 %tobool.not.i114, label %do.end50.cond.end59_crit_edge, label %lor.lhs.false.i118

do.end50.cond.end59_crit_edge:                    ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end59

lor.lhs.false.i118:                               ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #21
  %call.i115 = tail call ptr @strchr(ptr noundef %38, i32 noundef 37) #19
  %tobool2.not.i116 = icmp eq ptr %call.i115, null
  %tobool54.not = icmp eq ptr %38, null
  %or.cond140 = and i1 %tobool54.not, %tobool2.not.i116
  %spec.select.i124 = select i1 %tobool2.not.i116, ptr %38, ptr @.str.25
  %spec.select142 = select i1 %or.cond140, ptr @.str.3, ptr %spec.select.i124
  br label %cond.end59

cond.end59:                                       ; preds = %lor.lhs.false.i118, %do.end50.cond.end59_crit_edge
  %cond60 = phi ptr [ @.str.25, %do.end50.cond.end59_crit_edge ], [ %spec.select142, %lor.lhs.false.i118 ]
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.146, i32 noundef 2119, ptr noundef %cond60, i32 noundef %10) #22
  br label %err

err:                                              ; preds = %cond.end59, %sw.bb42, %if.end34, %cond.end26, %cond.end
  %rc.0 = phi i32 [ -22, %cond.end59 ], [ %call46, %sw.bb42 ], [ -22, %cond.end26 ], [ %call41, %if.end34 ], [ -22, %cond.end ]
  %dump_info66 = getelementptr i8, ptr %dev, i32 3612
  %41 = ptrtoint ptr %dump_info66 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %dump_info66, align 4
  %num_args69 = getelementptr i8, ptr %dev, i32 3616
  %42 = ptrtoint ptr %num_args69 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %num_args69, align 4
  %args71 = getelementptr i8, ptr %dev, i32 3620
  %43 = call ptr @memset(ptr %args71, i32 0, i32 16)
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_dump(ptr nocapture noundef %dev, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dump_info = getelementptr i8, ptr %dev, i32 3612
  %0 = ptrtoint ptr %dump_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dump_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %flag = getelementptr inbounds %struct.ethtool_dump, ptr %val, i32 0, i32 2
  %2 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp1 = icmp ugt i32 %3, 3
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool.not, %tobool2.not.i
  %spec.select.i76 = select i1 %tobool2.not.i, ptr %5, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i76
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, i32 noundef 2028, ptr noundef %cond, i32 noundef %3) #22
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %8 = ptrtoint ptr %dump_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %dump_info, align 4
  %num_args = getelementptr i8, ptr %dev, i32 3616
  %9 = ptrtoint ptr %num_args to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %num_args, align 4
  br label %cleanup

if.end15:                                         ; preds = %entry
  %num_args17 = getelementptr i8, ptr %dev, i32 3616
  %10 = ptrtoint ptr %num_args17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_args17, align 4
  %conv = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp18 = icmp eq i8 %11, 4
  br i1 %cmp18, label %do.end24, label %if.end41

do.end24:                                         ; preds = %if.end15
  %ndev26 = getelementptr i8, ptr %dev, i32 2308
  %12 = ptrtoint ptr %ndev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev26, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i80 = icmp eq i8 %15, 0
  br i1 %tobool.not.i80, label %do.end24.cond.end33_crit_edge, label %lor.lhs.false.i84

do.end24.cond.end33_crit_edge:                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end33

lor.lhs.false.i84:                                ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #21
  %call.i81 = tail call ptr @strchr(ptr noundef %13, i32 noundef 37) #19
  %tobool2.not.i82 = icmp eq ptr %call.i81, null
  %tobool28.not = icmp eq ptr %13, null
  %or.cond101 = and i1 %tobool28.not, %tobool2.not.i82
  %spec.select.i90 = select i1 %tobool2.not.i82, ptr %13, ptr @.str.25
  %spec.select102 = select i1 %or.cond101, ptr @.str.3, ptr %spec.select.i90
  br label %cond.end33

cond.end33:                                       ; preds = %lor.lhs.false.i84, %do.end24.cond.end33_crit_edge
  %cond34 = phi ptr [ @.str.25, %do.end24.cond.end33_crit_edge ], [ %spec.select102, %lor.lhs.false.i84 ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.153, i32 noundef 2037, ptr noundef %cond34, i32 noundef %conv) #22
  br label %cleanup

if.end41:                                         ; preds = %if.end15
  %16 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %1, label %if.end41.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb50
  ]

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  %flag44 = getelementptr inbounds %struct.ethtool_dump, ptr %val, i32 0, i32 2
  %17 = ptrtoint ptr %flag44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flag44, align 4
  %arrayidx = getelementptr %struct.qede_dev, ptr %add.ptr.i, i32 0, i32 47, i32 2, i32 %conv
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx, align 4
  %inc = add i8 %11, 1
  %20 = ptrtoint ptr %num_args17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %inc, ptr %num_args17, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #21
  %ops = getelementptr i8, ptr %dev, i32 2332
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %set_grc_config = getelementptr inbounds %struct.qed_common_ops, ptr %24, i32 0, i32 43
  %25 = ptrtoint ptr %set_grc_config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_grc_config, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %flag51 = getelementptr inbounds %struct.ethtool_dump, ptr %val, i32 0, i32 2
  %29 = ptrtoint ptr %flag51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flag51, align 4
  %call52 = tail call i32 %26(ptr noundef %28, i32 noundef %30, i32 noundef 1) #19
  br label %cleanup

cleanup:                                          ; preds = %sw.bb50, %sw.bb, %if.end41.cleanup_crit_edge, %cond.end33, %if.end, %cond.end
  %retval.0 = phi i32 [ -22, %cond.end ], [ 0, %if.end ], [ -22, %cond.end33 ], [ 0, %if.end41.cleanup_crit_edge ], [ %call52, %sw.bb50 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_ts_info(ptr noundef %dev, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @qede_ptp_get_ts_info(ptr noundef %add.ptr.i, ptr noundef %info) #19
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_module_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %modinfo) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #19
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %read_module_eeprom = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 39
  %5 = ptrtoint ptr %read_module_eeprom to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_module_eeprom, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %call1 = call i32 %6(ptr noundef %8, ptr noundef nonnull %buf, i8 noundef zeroext -96, i32 noundef 0, i32 noundef 4) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %9 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = call ptr @strchr(ptr noundef %10, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool4.not = icmp eq ptr %10, null
  %or.cond = and i1 %tobool4.not, %tobool2.not.i
  %spec.select.i52 = select i1 %tobool2.not.i, ptr %10, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i52
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i32 noundef 1946, ptr noundef %cond, i32 noundef %call1) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.199)
  switch i8 %14, label %do.end19 [
    i8 3, label %sw.bb
    i8 12, label %if.end.sw.bb10_crit_edge
    i8 13, label %if.end.sw.bb10_crit_edge79
    i8 17, label %sw.bb13
  ]

if.end.sw.bb10_crit_edge79:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %sw.bb10

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %17 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 512, ptr %eeprom_len, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge79
  %type11 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %18 = ptrtoint ptr %type11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %type11, align 4
  %eeprom_len12 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %19 = ptrtoint ptr %eeprom_len12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 256, ptr %eeprom_len12, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #21
  %type14 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %20 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %type14, align 4
  %eeprom_len15 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %21 = ptrtoint ptr %eeprom_len15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 256, ptr %eeprom_len15, align 4
  br label %cleanup

do.end19:                                         ; preds = %if.end
  %ndev21 = getelementptr i8, ptr %dev, i32 2308
  %22 = ptrtoint ptr %ndev21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i56 = icmp eq i8 %25, 0
  br i1 %tobool.not.i56, label %do.end19.cond.end28_crit_edge, label %lor.lhs.false.i60

do.end19.cond.end28_crit_edge:                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end28

lor.lhs.false.i60:                                ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #21
  %call.i57 = call ptr @strchr(ptr noundef %23, i32 noundef 37) #19
  %tobool2.not.i58 = icmp eq ptr %call.i57, null
  %tobool23.not = icmp eq ptr %23, null
  %or.cond77 = and i1 %tobool23.not, %tobool2.not.i58
  %spec.select.i66 = select i1 %tobool2.not.i58, ptr %23, ptr @.str.25
  %spec.select78 = select i1 %or.cond77, ptr @.str.3, ptr %spec.select.i66
  br label %cond.end28

cond.end28:                                       ; preds = %lor.lhs.false.i60, %do.end19.cond.end28_crit_edge
  %cond29 = phi ptr [ @.str.25, %do.end19.cond.end28_crit_edge ], [ %spec.select78, %lor.lhs.false.i60 ]
  %conv31 = zext i8 %14 to i32
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.158, i32 noundef 1965, ptr noundef %cond29, i32 noundef %conv31) #22
  br label %cleanup

cleanup:                                          ; preds = %cond.end28, %sw.bb13, %sw.bb10, %sw.bb, %cond.end
  %retval.0 = phi i32 [ %call1, %cond.end ], [ -22, %cond.end28 ], [ 0, %sw.bb13 ], [ 0, %sw.bb10 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_module_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ee, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %if.then, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end19

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp3 = icmp ugt i32 %add, 256
  %sub = sub nuw nsw i32 256, %1
  %size.0 = select i1 %cmp3, i32 %sub, i32 %3
  %ops = getelementptr i8, ptr %dev, i32 2332
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read_module_eeprom = getelementptr inbounds %struct.qed_common_ops, ptr %7, i32 0, i32 39
  %8 = ptrtoint ptr %read_module_eeprom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_module_eeprom, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %call7 = tail call i32 %9(ptr noundef %11, ptr noundef %data, i8 noundef zeroext -96, i32 noundef %1, i32 noundef %size.0) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.then
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %13, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool11.not = icmp eq ptr %13, null
  %or.cond130 = and i1 %tobool11.not, %tobool2.not.i
  %spec.select.i105 = select i1 %tobool2.not.i, ptr %13, ptr @.str.25
  %spec.select132 = select i1 %or.cond130, ptr @.str.3, ptr %spec.select.i105
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select132, %lor.lhs.false.i ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef 1992, ptr noundef %cond, i32 noundef %call7) #22
  br label %cleanup

if.end17:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  %add.ptr = getelementptr i8, ptr %data, i32 %size.0
  %add18 = add i32 %size.0, %1
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %entry.if.end19_crit_edge
  %start_addr.0 = phi i32 [ %add18, %if.end17 ], [ %1, %entry.if.end19_crit_edge ]
  %size.1 = phi i32 [ %size.0, %if.end17 ], [ 0, %entry.if.end19_crit_edge ]
  %buf.0 = phi ptr [ %add.ptr, %if.end17 ], [ %data, %entry.if.end19_crit_edge ]
  %16 = and i32 %start_addr.0, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %16)
  %17 = icmp eq i32 %16, 256
  br i1 %17, label %if.then22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  %len23 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %18 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len23, align 4
  %sub24 = sub i32 %19, %size.1
  %add25 = add i32 %sub24, %start_addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add25)
  %cmp26 = icmp ugt i32 %add25, 512
  %sub28 = sub nuw nsw i32 512, %start_addr.0
  %spec.select = select i1 %cmp26, i32 %sub28, i32 %sub24
  %sub30 = add nsw i32 %start_addr.0, -256
  %ops31 = getelementptr i8, ptr %dev, i32 2332
  %20 = ptrtoint ptr %ops31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops31, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %read_module_eeprom33 = getelementptr inbounds %struct.qed_common_ops, ptr %23, i32 0, i32 39
  %24 = ptrtoint ptr %read_module_eeprom33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read_module_eeprom33, align 4
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  %call35 = tail call i32 %25(ptr noundef %27, ptr noundef %buf.0, i8 noundef zeroext -94, i32 noundef %sub30, i32 noundef %spec.select) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then22.cleanup_crit_edge, label %do.body38

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.body38:                                        ; preds = %if.then22
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %28 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp39 = icmp eq i8 %29, 0
  br i1 %cmp39, label %land.rhs, label %do.body38.cleanup_crit_edge

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs:                                         ; preds = %do.body38
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %30 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dp_module, align 8
  %and = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %land.rhs.cleanup_crit_edge, label %do.end47, !prof !370

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end47:                                         ; preds = %land.rhs
  %ndev49 = getelementptr i8, ptr %dev, i32 2308
  %32 = ptrtoint ptr %ndev49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev49, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i109 = icmp eq i8 %35, 0
  br i1 %tobool.not.i109, label %do.end47.cond.end56_crit_edge, label %lor.lhs.false.i113

do.end47.cond.end56_crit_edge:                    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end56

lor.lhs.false.i113:                               ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #21
  %call.i110 = tail call ptr @strchr(ptr noundef %33, i32 noundef 37) #19
  %tobool2.not.i111 = icmp eq ptr %call.i110, null
  %tobool51.not = icmp eq ptr %33, null
  %or.cond131 = and i1 %tobool51.not, %tobool2.not.i111
  %spec.select.i119 = select i1 %tobool2.not.i111, ptr %33, ptr @.str.25
  %spec.select133 = select i1 %or.cond131, ptr @.str.3, ptr %spec.select.i119
  br label %cond.end56

cond.end56:                                       ; preds = %lor.lhs.false.i113, %do.end47.cond.end56_crit_edge
  %cond57 = phi ptr [ @.str.25, %do.end47.cond.end56_crit_edge ], [ %spec.select133, %lor.lhs.false.i113 ]
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.163, i32 noundef 2013, ptr noundef %cond57, i32 noundef %call35) #22
  br label %cleanup

cleanup:                                          ; preds = %cond.end56, %land.rhs.cleanup_crit_edge, %do.body38.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %cond.end
  %retval.0 = phi i32 [ %call7, %cond.end ], [ 0, %do.body38.cleanup_crit_edge ], [ 0, %cond.end56 ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %if.then22.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_eee(ptr nocapture noundef readonly %dev, ptr nocapture noundef %edata) #2 align 64 {
entry:
  %current_link = alloca %struct.qed_link_output, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %current_link) #19
  %0 = call ptr @memset(ptr %current_link, i32 0, i32 72)
  %ops = getelementptr i8, ptr %dev, i32 2332
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_link, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  call void %6(ptr noundef %8, ptr noundef nonnull %current_link) #19
  %eee_supported = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 9
  %9 = ptrtoint ptr %eee_supported to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %eee_supported, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp = icmp ult i8 %12, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !369

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %13 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = call ptr @strchr(ptr noundef %14, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %14, null
  %or.cond = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i82 = select i1 %tobool2.not.i, ptr %14, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i82
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, i32 noundef 1791, ptr noundef %cond) #22
  br label %cleanup

if.end13:                                         ; preds = %entry
  %eee = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 12
  %adv_caps = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %adv_caps to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %adv_caps, align 4
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool15.not = icmp eq i8 %19, 0
  br i1 %tobool15.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #21
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %20 = ptrtoint ptr %advertised to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32, ptr %advertised, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %21 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not = icmp eq i8 %21, 0
  br i1 %tobool22.not, label %if.end17.if.end25_crit_edge, label %if.then23

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #21
  %advertised24 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %22 = ptrtoint ptr %advertised24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %advertised24, align 4
  %or = or i32 %23, 4096
  store i32 %or, ptr %advertised24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end17.if.end25_crit_edge
  %sup_caps = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 11
  %24 = ptrtoint ptr %sup_caps to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sup_caps, align 2
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool28.not = icmp eq i8 %26, 0
  br i1 %tobool28.not, label %if.end25.if.end30_crit_edge, label %if.then29

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #21
  %supported = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 1
  %27 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32, ptr %supported, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25.if.end30_crit_edge
  %28 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool34.not = icmp eq i8 %28, 0
  br i1 %tobool34.not, label %if.end30.if.end38_crit_edge, label %if.then35

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #21
  %supported36 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 1
  %29 = ptrtoint ptr %supported36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %supported36, align 4
  %or37 = or i32 %30, 4096
  store i32 %or37, ptr %supported36, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end30.if.end38_crit_edge
  %lp_adv_caps = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 12, i32 2
  %31 = ptrtoint ptr %lp_adv_caps to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %lp_adv_caps, align 1
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool42.not = icmp eq i8 %33, 0
  br i1 %tobool42.not, label %if.end38.if.end44_crit_edge, label %if.then43

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end44

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #21
  %lp_advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 3
  %34 = ptrtoint ptr %lp_advertised to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 32, ptr %lp_advertised, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end38.if.end44_crit_edge
  %35 = and i8 %32, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool49.not = icmp eq i8 %35, 0
  br i1 %tobool49.not, label %if.end44.if.end53_crit_edge, label %if.then50

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end53

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #21
  %lp_advertised51 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 3
  %36 = ptrtoint ptr %lp_advertised51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %lp_advertised51, align 4
  %or52 = or i32 %37, 4096
  store i32 %or52, ptr %lp_advertised51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end44.if.end53_crit_edge
  %38 = ptrtoint ptr %eee to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eee, align 4
  %tx_lpi_timer55 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %40 = ptrtoint ptr %tx_lpi_timer55 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tx_lpi_timer55, align 4
  %enable = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 12, i32 3
  %41 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enable, align 2, !range !371
  %43 = zext i8 %42 to i32
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %44 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %eee_enabled, align 4
  %tx_lpi_enable = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 12, i32 4
  %45 = ptrtoint ptr %tx_lpi_enable to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_lpi_enable, align 1, !range !371
  %47 = zext i8 %46 to i32
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %48 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tx_lpi_enabled, align 4
  %eee_active = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 10
  %49 = ptrtoint ptr %eee_active to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %eee_active, align 1, !range !371
  %51 = zext i8 %50 to i32
  %eee_active64 = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 4
  %52 = ptrtoint ptr %eee_active64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %eee_active64, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -95, %cond.end ], [ -95, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %current_link) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_eee(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %edata) #2 align 64 {
entry:
  %current_link = alloca %struct.qed_link_output, align 4
  %params = alloca %struct.qed_link_params, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %current_link) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params) #19
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_link_change = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %can_link_change to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %can_link_change, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call zeroext i1 %5(ptr noundef %7) #19
  br i1 %call1, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp ult i8 %9, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !369

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %11, null
  %or.cond186 = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i143 = select i1 %tobool2.not.i, ptr %11, ptr @.str.25
  %spec.select = select i1 %or.cond186, ptr @.str.3, ptr %spec.select.i143
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.169, i32 noundef 1823, ptr noundef %cond) #22
  br label %cleanup

if.end13:                                         ; preds = %entry
  %14 = call ptr @memset(ptr %current_link, i32 0, i32 72)
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_link, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  call void %20(ptr noundef %22, ptr noundef nonnull %current_link) #19
  %eee_supported = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 9
  %23 = ptrtoint ptr %eee_supported to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %eee_supported, align 4, !range !371
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  br i1 %tobool17.not, label %do.body19, label %if.end48

do.body19:                                        ; preds = %if.end13
  %dp_level20 = getelementptr i8, ptr %dev, i32 2324
  %25 = ptrtoint ptr %dp_level20 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dp_level20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %26)
  %cmp22 = icmp ult i8 %26, 2
  br i1 %cmp22, label %do.end33, label %do.body19.cleanup_crit_edge, !prof !369

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end33:                                         ; preds = %do.body19
  %ndev35 = getelementptr i8, ptr %dev, i32 2308
  %27 = ptrtoint ptr %ndev35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndev35, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i147 = icmp eq i8 %30, 0
  br i1 %tobool.not.i147, label %do.end33.cond.end42_crit_edge, label %lor.lhs.false.i151

do.end33.cond.end42_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end42

lor.lhs.false.i151:                               ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #21
  %call.i148 = call ptr @strchr(ptr noundef %28, i32 noundef 37) #19
  %tobool2.not.i149 = icmp eq ptr %call.i148, null
  %tobool37.not = icmp eq ptr %28, null
  %or.cond187 = and i1 %tobool37.not, %tobool2.not.i149
  %spec.select.i157 = select i1 %tobool2.not.i149, ptr %28, ptr @.str.25
  %spec.select189 = select i1 %or.cond187, ptr @.str.3, ptr %spec.select.i157
  br label %cond.end42

cond.end42:                                       ; preds = %lor.lhs.false.i151, %do.end33.cond.end42_crit_edge
  %cond43 = phi ptr [ @.str.25, %do.end33.cond.end42_crit_edge ], [ %spec.select189, %lor.lhs.false.i151 ]
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.169, i32 noundef 1831, ptr noundef %cond43) #22
  br label %cleanup

if.end48:                                         ; preds = %if.end13
  %31 = call ptr @memset(ptr %params, i32 0, i32 48)
  %override_flags = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 1
  %32 = ptrtoint ptr %override_flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 32, ptr %override_flags, align 4
  %advertised = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 2
  %33 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %advertised, align 4
  %and = and i32 %34, 4128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %34)
  %cmp53.not = icmp eq i32 %and, %34
  %or.cond = and i1 %tobool49.not, %cmp53.not
  br i1 %or.cond, label %if.end88, label %do.body56

do.body56:                                        ; preds = %if.end48
  %dp_level57 = getelementptr i8, ptr %dev, i32 2324
  %35 = ptrtoint ptr %dp_level57 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level57, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp59 = icmp eq i8 %36, 0
  br i1 %cmp59, label %land.rhs, label %do.body56.cleanup_crit_edge

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

land.rhs:                                         ; preds = %do.body56
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %37 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dp_module, align 8
  %and61 = and i32 %38, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %land.rhs.cleanup_crit_edge, label %do.end72, !prof !370

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end72:                                         ; preds = %land.rhs
  %ndev74 = getelementptr i8, ptr %dev, i32 2308
  %39 = ptrtoint ptr %ndev74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev74, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i161 = icmp eq i8 %42, 0
  br i1 %tobool.not.i161, label %do.end72.cond.end81_crit_edge, label %lor.lhs.false.i165

do.end72.cond.end81_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end81

lor.lhs.false.i165:                               ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #21
  %call.i162 = call ptr @strchr(ptr noundef %40, i32 noundef 37) #19
  %tobool2.not.i163 = icmp eq ptr %call.i162, null
  %tobool76.not = icmp eq ptr %40, null
  %or.cond188 = and i1 %tobool76.not, %tobool2.not.i163
  %spec.select.i171 = select i1 %tobool2.not.i163, ptr %40, ptr @.str.25
  %spec.select190 = select i1 %or.cond188, ptr @.str.3, ptr %spec.select.i171
  br label %cond.end81

cond.end81:                                       ; preds = %lor.lhs.false.i165, %do.end72.cond.end81_crit_edge
  %cond82 = phi ptr [ @.str.25, %do.end72.cond.end81_crit_edge ], [ %spec.select190, %lor.lhs.false.i165 ]
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.169, i32 noundef 1845, ptr noundef %cond82, i32 noundef %34) #22
  br label %cleanup

if.end88:                                         ; preds = %if.end48
  %and90 = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end88.if.end93_crit_edge, label %if.then92

if.end88.if.end93_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end93

if.then92:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #21
  %adv_caps = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %adv_caps to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %adv_caps, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end88.if.end93_crit_edge
  %and95 = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end93.if.end103_crit_edge, label %if.then97

if.end93.if.end103_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end103

if.then97:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #21
  %adv_caps99 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %adv_caps99 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %adv_caps99, align 4
  %46 = or i8 %45, 2
  store i8 %46, ptr %adv_caps99, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then97, %if.end93.if.end103_crit_edge
  %eee_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 5
  %47 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %eee_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool104 = icmp ne i32 %48, 0
  %eee105 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 7
  %enable = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 7, i32 3
  %frombool = zext i1 %tobool104 to i8
  %49 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool, ptr %enable, align 2
  %tx_lpi_enabled = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 6
  %50 = ptrtoint ptr %tx_lpi_enabled to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_lpi_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool106 = icmp ne i32 %51, 0
  %tx_lpi_enable = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 7, i32 4
  %frombool108 = zext i1 %tobool106 to i8
  %52 = ptrtoint ptr %tx_lpi_enable to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool108, ptr %tx_lpi_enable, align 1
  %tx_lpi_timer = getelementptr inbounds %struct.ethtool_eee, ptr %edata, i32 0, i32 7
  %53 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_lpi_timer, align 4
  %55 = ptrtoint ptr %eee105 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %eee105, align 4
  %56 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %params, align 4
  %57 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %set_link = getelementptr inbounds %struct.qed_common_ops, ptr %60, i32 0, i32 20
  %61 = ptrtoint ptr %set_link to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_link, align 4
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %call114 = call i32 %62(ptr noundef %64, ptr noundef nonnull %params) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %cond.end81, %land.rhs.cleanup_crit_edge, %do.body56.cleanup_crit_edge, %cond.end42, %do.body19.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end103 ], [ -95, %cond.end ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %cond.end42 ], [ -95, %do.body19.cleanup_crit_edge ], [ -22, %do.body56.cleanup_crit_edge ], [ -22, %cond.end81 ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params) #19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %current_link) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_link_ksettings(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  %current_link = alloca %struct.qed_link_output, align 4
  %params = alloca %struct.qed_link_params, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %current_link) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params) #19
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_link_change = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %can_link_change to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %can_link_change, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call3 = tail call zeroext i1 %5(ptr noundef %7) #19
  br i1 %call3, label %if.end16, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp ult i8 %9, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !369

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool10.not = icmp eq ptr %11, null
  %or.cond = and i1 %tobool10.not, %tobool2.not.i
  %spec.select.i153 = select i1 %tobool2.not.i, ptr %11, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i153
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.175, i32 noundef 571, ptr noundef %cond) #22
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %14 = call ptr @memset(ptr %current_link, i32 0, i32 72)
  %15 = call ptr @memset(ptr %params, i32 0, i32 48)
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_link, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 8
  call void %21(ptr noundef %23, ptr noundef nonnull %current_link) #19
  %override_flags = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 1
  %24 = ptrtoint ptr %override_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %override_flags, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %25 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp23 = icmp eq i8 %26, 1
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end16
  %supported_caps = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 1
  %27 = ptrtoint ptr %supported_caps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %supported_caps, align 4
  %29 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool27.not = icmp eq i32 %29, 0
  br i1 %tobool27.not, label %do.body29, label %if.end58

do.body29:                                        ; preds = %if.then25
  %dp_level30 = getelementptr i8, ptr %dev, i32 2324
  %30 = ptrtoint ptr %dp_level30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dp_level30, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp32 = icmp ult i8 %31, 2
  br i1 %cmp32, label %do.end43, label %do.body29.cleanup_crit_edge, !prof !369

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end43:                                         ; preds = %do.body29
  %ndev45 = getelementptr i8, ptr %dev, i32 2308
  %32 = ptrtoint ptr %ndev45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev45, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i157 = icmp eq i8 %35, 0
  br i1 %tobool.not.i157, label %do.end43.cond.end52_crit_edge, label %lor.lhs.false.i161

do.end43.cond.end52_crit_edge:                    ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end52

lor.lhs.false.i161:                               ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #21
  %call.i158 = call ptr @strchr(ptr noundef %33, i32 noundef 37) #19
  %tobool2.not.i159 = icmp eq ptr %call.i158, null
  %tobool47.not = icmp eq ptr %33, null
  %or.cond197 = and i1 %tobool47.not, %tobool2.not.i159
  %spec.select.i167 = select i1 %tobool2.not.i159, ptr %33, ptr @.str.25
  %spec.select201 = select i1 %or.cond197, ptr @.str.3, ptr %spec.select.i167
  br label %cond.end52

cond.end52:                                       ; preds = %lor.lhs.false.i161, %do.end43.cond.end52_crit_edge
  %cond53 = phi ptr [ @.str.25, %do.end43.cond.end52_crit_edge ], [ %spec.select201, %lor.lhs.false.i161 ]
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.175, i32 noundef 583, ptr noundef %cond53) #22
  br label %cleanup

if.end58:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #21
  %autoneg59 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 2
  %36 = ptrtoint ptr %autoneg59 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %autoneg59, align 4
  %forced_speed = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 4
  %37 = ptrtoint ptr %forced_speed to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %forced_speed, align 4
  %adv_speeds = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 3
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %38 = call ptr @memcpy(ptr %adv_speeds, ptr %advertising, i32 12)
  br label %set_link

if.else:                                          ; preds = %if.end16
  %39 = ptrtoint ptr %override_flags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 7, ptr %override_flags, align 4
  %autoneg64 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 2
  %40 = ptrtoint ptr %autoneg64 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %autoneg64, align 4
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %41 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %speed, align 4
  %forced_speed65 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 4
  %43 = ptrtoint ptr %forced_speed65 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %forced_speed65, align 4
  %supported_caps73 = getelementptr inbounds %struct.qed_link_output, ptr %current_link, i32 0, i32 1
  %44 = load i32, ptr @qede_forced_speed_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp70.not = icmp eq i32 %42, %44
  br i1 %cmp70.not, label %lor.lhs.false72, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

lor.lhs.false72:                                  ; preds = %if.else
  %call.i.i = call i32 @__bitmap_intersects(ptr noundef %supported_caps73, ptr noundef getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 0, i32 1), i32 noundef 92) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool77.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool77.not, label %lor.lhs.false72.for.inc_crit_edge, label %lor.lhs.false72.if.end79_crit_edge

lor.lhs.false72.if.end79_crit_edge:               ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end79

lor.lhs.false72.for.inc_crit_edge:                ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc

if.end79:                                         ; preds = %lor.lhs.false72.6.if.end79_crit_edge, %lor.lhs.false72.5.if.end79_crit_edge, %lor.lhs.false72.4.if.end79_crit_edge, %lor.lhs.false72.3.if.end79_crit_edge, %lor.lhs.false72.2.if.end79_crit_edge, %lor.lhs.false72.1.if.end79_crit_edge, %lor.lhs.false72.if.end79_crit_edge
  %caps.lcssa = phi ptr [ getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 0, i32 1), %lor.lhs.false72.if.end79_crit_edge ], [ getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 1, i32 1), %lor.lhs.false72.1.if.end79_crit_edge ], [ getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 2, i32 1), %lor.lhs.false72.2.if.end79_crit_edge ], [ getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 3, i32 1), %lor.lhs.false72.3.if.end79_crit_edge ], [ getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 4, i32 1), %lor.lhs.false72.4.if.end79_crit_edge ], [ getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 5, i32 1), %lor.lhs.false72.5.if.end79_crit_edge ], [ getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 6, i32 1), %lor.lhs.false72.6.if.end79_crit_edge ]
  %adv_speeds80 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 3
  %call.i.i171 = call i32 @__bitmap_and(ptr noundef %adv_speeds80, ptr noundef %supported_caps73, ptr noundef nonnull %caps.lcssa, i32 noundef 92) #19
  br label %set_link

for.inc:                                          ; preds = %lor.lhs.false72.for.inc_crit_edge, %if.else.for.inc_crit_edge
  %45 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %speed, align 4
  %47 = load i32, ptr getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %47)
  %cmp70.not.1 = icmp eq i32 %46, %47
  br i1 %cmp70.not.1, label %lor.lhs.false72.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.1

lor.lhs.false72.1:                                ; preds = %for.inc
  %call.i.i.1 = call i32 @__bitmap_intersects(ptr noundef %supported_caps73, ptr noundef getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 1, i32 1), i32 noundef 92) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool77.not.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool77.not.1, label %lor.lhs.false72.1.for.inc.1_crit_edge, label %lor.lhs.false72.1.if.end79_crit_edge

lor.lhs.false72.1.if.end79_crit_edge:             ; preds = %lor.lhs.false72.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end79

lor.lhs.false72.1.for.inc.1_crit_edge:            ; preds = %lor.lhs.false72.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.1

for.inc.1:                                        ; preds = %lor.lhs.false72.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %48 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %speed, align 4
  %50 = load i32, ptr getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %50)
  %cmp70.not.2 = icmp eq i32 %49, %50
  br i1 %cmp70.not.2, label %lor.lhs.false72.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.2

lor.lhs.false72.2:                                ; preds = %for.inc.1
  %call.i.i.2 = call i32 @__bitmap_intersects(ptr noundef %supported_caps73, ptr noundef getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 2, i32 1), i32 noundef 92) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool77.not.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool77.not.2, label %lor.lhs.false72.2.for.inc.2_crit_edge, label %lor.lhs.false72.2.if.end79_crit_edge

lor.lhs.false72.2.if.end79_crit_edge:             ; preds = %lor.lhs.false72.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end79

lor.lhs.false72.2.for.inc.2_crit_edge:            ; preds = %lor.lhs.false72.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.2

for.inc.2:                                        ; preds = %lor.lhs.false72.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %51 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %speed, align 4
  %53 = load i32, ptr getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %53)
  %cmp70.not.3 = icmp eq i32 %52, %53
  br i1 %cmp70.not.3, label %lor.lhs.false72.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.3

lor.lhs.false72.3:                                ; preds = %for.inc.2
  %call.i.i.3 = call i32 @__bitmap_intersects(ptr noundef %supported_caps73, ptr noundef getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 3, i32 1), i32 noundef 92) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %tobool77.not.3 = icmp eq i32 %call.i.i.3, 0
  br i1 %tobool77.not.3, label %lor.lhs.false72.3.for.inc.3_crit_edge, label %lor.lhs.false72.3.if.end79_crit_edge

lor.lhs.false72.3.if.end79_crit_edge:             ; preds = %lor.lhs.false72.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end79

lor.lhs.false72.3.for.inc.3_crit_edge:            ; preds = %lor.lhs.false72.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.3

for.inc.3:                                        ; preds = %lor.lhs.false72.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %54 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %speed, align 4
  %56 = load i32, ptr getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %56)
  %cmp70.not.4 = icmp eq i32 %55, %56
  br i1 %cmp70.not.4, label %lor.lhs.false72.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.4

lor.lhs.false72.4:                                ; preds = %for.inc.3
  %call.i.i.4 = call i32 @__bitmap_intersects(ptr noundef %supported_caps73, ptr noundef getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 4, i32 1), i32 noundef 92) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %tobool77.not.4 = icmp eq i32 %call.i.i.4, 0
  br i1 %tobool77.not.4, label %lor.lhs.false72.4.for.inc.4_crit_edge, label %lor.lhs.false72.4.if.end79_crit_edge

lor.lhs.false72.4.if.end79_crit_edge:             ; preds = %lor.lhs.false72.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end79

lor.lhs.false72.4.for.inc.4_crit_edge:            ; preds = %lor.lhs.false72.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.4

for.inc.4:                                        ; preds = %lor.lhs.false72.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %57 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %speed, align 4
  %59 = load i32, ptr getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %59)
  %cmp70.not.5 = icmp eq i32 %58, %59
  br i1 %cmp70.not.5, label %lor.lhs.false72.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

lor.lhs.false72.5:                                ; preds = %for.inc.4
  %call.i.i.5 = call i32 @__bitmap_intersects(ptr noundef %supported_caps73, ptr noundef getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 5, i32 1), i32 noundef 92) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.5)
  %tobool77.not.5 = icmp eq i32 %call.i.i.5, 0
  br i1 %tobool77.not.5, label %lor.lhs.false72.5.for.inc.5_crit_edge, label %lor.lhs.false72.5.if.end79_crit_edge

lor.lhs.false72.5.if.end79_crit_edge:             ; preds = %lor.lhs.false72.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end79

lor.lhs.false72.5.for.inc.5_crit_edge:            ; preds = %lor.lhs.false72.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.5

for.inc.5:                                        ; preds = %lor.lhs.false72.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %60 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %speed, align 4
  %62 = load i32, ptr getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %62)
  %cmp70.not.6 = icmp eq i32 %61, %62
  br i1 %cmp70.not.6, label %lor.lhs.false72.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.6

lor.lhs.false72.6:                                ; preds = %for.inc.5
  %call.i.i.6 = call i32 @__bitmap_intersects(ptr noundef %supported_caps73, ptr noundef getelementptr inbounds ([7 x %struct.qede_forced_speed_map], ptr @qede_forced_speed_maps, i32 0, i32 6, i32 1), i32 noundef 92) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.6)
  %tobool77.not.6 = icmp eq i32 %call.i.i.6, 0
  br i1 %tobool77.not.6, label %lor.lhs.false72.6.for.inc.6_crit_edge, label %lor.lhs.false72.6.if.end79_crit_edge

lor.lhs.false72.6.if.end79_crit_edge:             ; preds = %lor.lhs.false72.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end79

lor.lhs.false72.6.for.inc.6_crit_edge:            ; preds = %lor.lhs.false72.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %for.inc.6

for.inc.6:                                        ; preds = %lor.lhs.false72.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %dp_level87 = getelementptr i8, ptr %dev, i32 2324
  %63 = ptrtoint ptr %dp_level87 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dp_level87, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %64)
  %cmp89 = icmp ult i8 %64, 2
  br i1 %cmp89, label %do.end100, label %for.inc.6.cleanup_crit_edge, !prof !369

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end100:                                        ; preds = %for.inc.6
  %ndev102 = getelementptr i8, ptr %dev, i32 2308
  %65 = ptrtoint ptr %ndev102 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ndev102, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i172 = icmp eq i8 %68, 0
  br i1 %tobool.not.i172, label %do.end100.cond.end109_crit_edge, label %lor.lhs.false.i176

do.end100.cond.end109_crit_edge:                  ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end109

lor.lhs.false.i176:                               ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #21
  %call.i173 = call ptr @strchr(ptr noundef %66, i32 noundef 37) #19
  %tobool2.not.i174 = icmp eq ptr %call.i173, null
  %tobool104.not = icmp eq ptr %66, null
  %or.cond198 = and i1 %tobool104.not, %tobool2.not.i174
  %spec.select.i182 = select i1 %tobool2.not.i174, ptr %66, ptr @.str.25
  %spec.select202 = select i1 %or.cond198, ptr @.str.3, ptr %spec.select.i182
  br label %cond.end109

cond.end109:                                      ; preds = %lor.lhs.false.i176, %do.end100.cond.end109_crit_edge
  %cond110 = phi ptr [ @.str.25, %do.end100.cond.end109_crit_edge ], [ %spec.select202, %lor.lhs.false.i176 ]
  %69 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %speed, align 4
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.175, i32 noundef 609, ptr noundef %cond110, i32 noundef %70) #22
  br label %cleanup

set_link:                                         ; preds = %if.end79, %if.end58
  %71 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %params, align 4
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %set_link119 = getelementptr inbounds %struct.qed_common_ops, ptr %75, i32 0, i32 20
  %76 = ptrtoint ptr %set_link119 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_link119, align 4
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 8
  %call121 = call i32 %77(ptr noundef %79, ptr noundef nonnull %params) #19
  br label %cleanup

cleanup:                                          ; preds = %set_link, %cond.end109, %for.inc.6.cleanup_crit_edge, %cond.end52, %do.body29.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %set_link ], [ -95, %cond.end ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %cond.end52 ], [ -95, %do.body29.cleanup_crit_edge ], [ -22, %cond.end109 ], [ -22, %for.inc.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params) #19
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %current_link) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_fecparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %fecparam) #2 align 64 {
entry:
  %curr_link = alloca %struct.qed_link_output, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %curr_link) #19
  %0 = call ptr @memset(ptr %curr_link, i32 0, i32 72)
  %ops = getelementptr i8, ptr %dev, i32 2332
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %get_link = getelementptr inbounds %struct.qed_common_ops, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %get_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_link, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  call void %6(ptr noundef %8, ptr noundef nonnull %curr_link) #19
  %active_fec = getelementptr inbounds %struct.qed_link_output, ptr %curr_link, i32 0, i32 14
  %9 = ptrtoint ptr %active_fec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %active_fec, align 4
  %and.i = shl i32 %10, 2
  %11 = and i32 %and.i, 4
  %and1.i = shl i32 %10, 3
  %12 = and i32 %and1.i, 16
  %13 = or i32 %12, %11
  %and6.i = shl i32 %10, 1
  %14 = and i32 %and6.i, 8
  %15 = or i32 %13, %14
  %and11.i = lshr i32 %10, 2
  %16 = and i32 %and11.i, 2
  %17 = or i32 %15, %16
  %and16.i = lshr i32 %10, 4
  %18 = and i32 %and16.i, 1
  %19 = or i32 %17, %18
  %active_fec2 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 1
  %20 = ptrtoint ptr %active_fec2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %active_fec2, align 4
  %sup_fec = getelementptr inbounds %struct.qed_link_output, ptr %curr_link, i32 0, i32 13
  %21 = ptrtoint ptr %sup_fec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sup_fec, align 4
  %and.i6 = shl i32 %22, 2
  %23 = and i32 %and.i6, 4
  %and1.i7 = shl i32 %22, 3
  %24 = and i32 %and1.i7, 16
  %25 = or i32 %24, %23
  %and6.i8 = shl i32 %22, 1
  %26 = and i32 %and6.i8, 8
  %27 = or i32 %25, %26
  %and11.i9 = lshr i32 %22, 2
  %28 = and i32 %and11.i9, 2
  %29 = or i32 %27, %28
  %and16.i10 = lshr i32 %22, 4
  %30 = and i32 %and16.i10, 1
  %31 = or i32 %29, %30
  %fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %32 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %fec, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %curr_link) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_fecparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %fecparam) #2 align 64 {
entry:
  %params = alloca %struct.qed_link_params, align 4
  call void @__sanitizer_cov_trace_pc() #21
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %params) #19
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_link_change = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %can_link_change to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %can_link_change, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call zeroext i1 %5(ptr noundef %7) #19
  br i1 %call2, label %if.end15, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %8 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp ult i8 %9, 2
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge, !prof !369

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #21
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %dev, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #21
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #21
  %call.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #19
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %11, null
  %or.cond = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i33 = select i1 %tobool2.not.i, ptr %11, ptr @.str.25
  %spec.select = select i1 %or.cond, ptr @.str.3, ptr %spec.select.i33
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.25, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.182, i32 noundef 1921, ptr noundef %cond) #22
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #21
  %14 = call ptr @memset(ptr %params, i32 0, i32 44)
  %override_flags = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 1
  %15 = ptrtoint ptr %override_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %override_flags, align 4
  %fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %16 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fec, align 4
  %and.i = lshr i32 %17, 2
  %and.lobit.i = and i32 %and.i, 1
  %and1.i = lshr i32 %17, 3
  %18 = and i32 %and1.i, 2
  %19 = or i32 %18, %and.lobit.i
  %and6.i = lshr i32 %17, 1
  %20 = and i32 %and6.i, 4
  %21 = or i32 %19, %20
  %and11.i = shl i32 %17, 2
  %22 = and i32 %and11.i, 8
  %23 = or i32 %21, %22
  %and16.i = shl i32 %17, 4
  %24 = and i32 %and16.i, 16
  %25 = or i32 %23, %24
  %fec17 = getelementptr inbounds %struct.qed_link_params, ptr %params, i32 0, i32 8
  %26 = ptrtoint ptr %fec17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fec17, align 4
  %27 = ptrtoint ptr %params to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %params, align 4
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %set_link = getelementptr inbounds %struct.qed_common_ops, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %set_link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_link, align 4
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 8
  %call21 = call i32 %33(ptr noundef %35, ptr noundef nonnull %params) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -95, %cond.end ], [ -95, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %params) #19
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_txq_has_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @qed_chain_consume(ptr noundef %p_chain) unnamed_addr #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #21
  %cnt_type = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 13
  %0 = ptrtoint ptr %cnt_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %u = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 3
  %cons_idx = getelementptr inbounds %struct.qed_chain_u16, ptr %u, i32 0, i32 1
  %2 = ptrtoint ptr %cons_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cons_idx, align 2
  %elem_per_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %4 = ptrtoint ptr %elem_per_page_mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %elem_per_page_mask, align 2
  %and57 = and i16 %5, %3
  %next_page_mask = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %6 = ptrtoint ptr %next_page_mask to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %next_page_mask, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and57, i16 %7)
  %cmp3 = icmp eq i16 %and57, %7
  br i1 %cmp3, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then5:                                         ; preds = %if.then
  %p_cons_elem = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 1
  %mode.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %9, label %if.then5.if.end_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %sw.bb6.i
    i32 2, label %if.end25.i
  ]

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  %11 = ptrtoint ptr %p_cons_elem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p_cons_elem, align 4
  %next_virt.i = getelementptr inbounds %struct.qed_chain_next, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %next_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next_virt.i, align 4
  store ptr %14, ptr %p_cons_elem, align 4
  %elem_unusable.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %15 = ptrtoint ptr %elem_unusable.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %elem_unusable.i, align 2
  %conv.i = zext i8 %16 to i16
  %add.i = add i16 %3, %conv.i
  %17 = ptrtoint ptr %cons_idx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add.i, ptr %cons_idx, align 2
  br label %if.end

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  %p_virt_addr.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %18 = ptrtoint ptr %p_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_virt_addr.i, align 4
  %20 = ptrtoint ptr %p_cons_elem to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %p_cons_elem, align 4
  br label %if.end

if.end25.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #21
  %c = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1
  %cons_page_idx = getelementptr inbounds %struct.qed_chain_pbl_u16, ptr %c, i32 0, i32 1
  %21 = ptrtoint ptr %cons_page_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %cons_page_idx, align 2
  %inc.i = add i16 %22, 1
  %conv12.i = zext i16 %inc.i to i32
  %page_cnt.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %23 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %page_cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv12.i)
  %cmp13.i = icmp eq i32 %24, %conv12.i
  %spec.store.select.i = select i1 %cmp13.i, i16 0, i16 %inc.i
  %25 = ptrtoint ptr %cons_page_idx to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %spec.store.select.i, ptr %cons_page_idx, align 2
  %conv17.i = zext i16 %spec.store.select.i to i32
  %pbl.i = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %26 = ptrtoint ptr %pbl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pbl.i, align 4
  %arrayidx.i = getelementptr %struct.addr_tbl_entry, ptr %27, i32 %conv17.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %p_cons_elem to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %p_cons_elem, align 4
  br label %if.end

if.end:                                           ; preds = %if.end25.i, %sw.bb6.i, %if.then.i, %if.then5.if.end_crit_edge, %if.then.if.end_crit_edge
  %31 = ptrtoint ptr %cons_idx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %cons_idx, align 2
  %inc = add i16 %32, 1
  store i16 %inc, ptr %cons_idx, align 2
  br label %if.end30

if.else:                                          ; preds = %entry
  %cons_idx11 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 3, i32 0, i32 1
  %33 = ptrtoint ptr %cons_idx11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cons_idx11, align 4
  %elem_per_page_mask12 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 8
  %35 = ptrtoint ptr %elem_per_page_mask12 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %elem_per_page_mask12, align 2
  %conv13 = zext i16 %36 to i32
  %and14 = and i32 %34, %conv13
  %next_page_mask15 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 10
  %37 = ptrtoint ptr %next_page_mask15 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %next_page_mask15, align 2
  %conv16 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and14, i32 %conv16)
  %cmp17 = icmp eq i32 %and14, %conv16
  br i1 %cmp17, label %if.then19, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.then19:                                        ; preds = %if.else
  %p_cons_elem25 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 1
  %mode.i58 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 6
  %39 = ptrtoint ptr %mode.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode.i58, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %40, label %if.then19.if.end26_crit_edge [
    i32 0, label %if.else.i69
    i32 1, label %sw.bb6.i71
    i32 2, label %if.end25.i90
  ]

if.then19.if.end26_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  br label %if.end26

if.else.i69:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  %42 = ptrtoint ptr %p_cons_elem25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %p_cons_elem25, align 4
  %next_virt.i59 = getelementptr inbounds %struct.qed_chain_next, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %next_virt.i59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %next_virt.i59, align 4
  store ptr %45, ptr %p_cons_elem25, align 4
  %elem_unusable.i62 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 12
  %46 = ptrtoint ptr %elem_unusable.i62 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %elem_unusable.i62, align 2
  %conv4.i67 = zext i8 %47 to i32
  %add5.i68 = add i32 %34, %conv4.i67
  %48 = ptrtoint ptr %cons_idx11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add5.i68, ptr %cons_idx11, align 4
  br label %if.end26

sw.bb6.i71:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  %p_virt_addr.i70 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 16
  %49 = ptrtoint ptr %p_virt_addr.i70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %p_virt_addr.i70, align 4
  %51 = ptrtoint ptr %p_cons_elem25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %p_cons_elem25, align 4
  br label %if.end26

if.end25.i90:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #21
  %cons_page_idx24 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %cons_page_idx24 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cons_page_idx24, align 4
  %inc19.i82 = add i32 %53, 1
  %page_cnt20.i83 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 5
  %54 = ptrtoint ptr %page_cnt20.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_cnt20.i83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc19.i82, i32 %55)
  %cmp21.i84 = icmp eq i32 %inc19.i82, %55
  %spec.store.select43.i85 = select i1 %cmp21.i84, i32 0, i32 %inc19.i82
  %56 = ptrtoint ptr %cons_page_idx24 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %spec.store.select43.i85, ptr %cons_page_idx24, align 4
  %pbl.i88 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 2
  %57 = ptrtoint ptr %pbl.i88 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pbl.i88, align 4
  %arrayidx.i89 = getelementptr %struct.addr_tbl_entry, ptr %58, i32 %spec.store.select43.i85
  %59 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i89, align 4
  %61 = ptrtoint ptr %p_cons_elem25 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %p_cons_elem25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end25.i90, %sw.bb6.i71, %if.else.i69, %if.then19.if.end26_crit_edge, %if.else.if.end26_crit_edge
  %62 = ptrtoint ptr %cons_idx11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cons_idx11, align 4
  %inc29 = add i32 %63, 1
  store i32 %inc29, ptr %cons_idx11, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %if.end
  %p_cons_elem31 = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 1
  %64 = ptrtoint ptr %p_cons_elem31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %p_cons_elem31, align 4
  %elem_size = getelementptr inbounds %struct.qed_chain, ptr %p_chain, i32 0, i32 9
  %66 = ptrtoint ptr %elem_size to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %elem_size, align 4
  %conv33 = zext i16 %67 to i32
  %add.ptr = getelementptr i8, ptr %65, i32 %conv33
  store ptr %add.ptr, ptr %p_cons_elem31, align 4
  ret ptr %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qede_has_rx_work(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_recycle_rx_bd_ring(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_update_rx_prod(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_ptp_get_ts_info(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #19

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #20 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #20 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 180)
  ret void
}

attributes #0 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nounwind }
attributes #20 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #21 = { nomerge }
attributes #22 = { cold nounwind }
attributes #23 = { nobuiltin }
attributes #24 = { nobuiltin nounwind }
attributes #25 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !315, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359}
!llvm.module.flags = !{!360, !361, !362, !363, !364, !365, !366, !367}
!llvm.ident = !{!368}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 847, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qede_set_coalesce._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qede_set_coalesce._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 853, i32 3}
!9 = !{ptr @qede_set_coalesce._entry.4, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qede_set_coalesce._entry_ptr.6, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 870, i32 5}
!15 = !{ptr @qede_set_coalesce._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @qede_set_coalesce._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 891, i32 5}
!19 = !{ptr @qede_set_coalesce._entry.12, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @qede_set_coalesce._entry_ptr.14, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1043, i32 2}
!23 = !{ptr @.str.16, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @qede_change_mtu._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @qede_change_mtu._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2142, i32 3}
!28 = !{ptr @qede_set_per_coalesce._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qede_set_per_coalesce._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2155, i32 3}
!32 = !{ptr @qede_set_per_coalesce._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @qede_set_per_coalesce._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @qede_set_per_coalesce._entry.21, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2172, i32 4}
!36 = !{ptr @qede_set_per_coalesce._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @qede_set_per_coalesce._entry.23, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2185, i32 4}
!39 = !{ptr @qede_set_per_coalesce._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @qede_forced_speed_maps, !41, !"qede_forced_speed_maps", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 267, i32 37}
!42 = !{ptr @qede_forced_speed_1000, !43, !"qede_forced_speed_1000", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 220, i32 18}
!44 = !{ptr @qede_forced_speed_10000, !45, !"qede_forced_speed_10000", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 226, i32 18}
!46 = !{ptr @qede_forced_speed_20000, !47, !"qede_forced_speed_20000", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 237, i32 18}
!48 = !{ptr @qede_forced_speed_25000, !49, !"qede_forced_speed_25000", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 241, i32 18}
!50 = !{ptr @qede_forced_speed_40000, !51, !"qede_forced_speed_40000", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 247, i32 18}
!52 = !{ptr @qede_forced_speed_50000, !53, !"qede_forced_speed_50000", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 254, i32 18}
!54 = !{ptr @qede_forced_speed_100000, !55, !"qede_forced_speed_100000", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 260, i32 18}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!58 = !{ptr @qede_vf_ethtool_ops, !59, !"qede_vf_ethtool_ops", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2306, i32 33}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 627, i32 24}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 629, i32 38}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 644, i32 5}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 647, i32 5}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 650, i32 37}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 658, i32 5}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 661, i32 5}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 803, i32 4}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @qede_get_coalesce._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @qede_get_coalesce._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 825, i32 4}
!81 = !{ptr @qede_get_coalesce._entry.35, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @qede_get_coalesce._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 923, i32 2}
!85 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @qede_set_ringparam._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @qede_set_ringparam._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 932, i32 3}
!90 = !{ptr @qede_set_ringparam._entry.40, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @qede_set_ringparam._entry_ptr.42, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 379, i32 3}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @qede_get_strings._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @qede_get_strings._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 316, i32 17}
!99 = !{ptr @qede_rqstats_arr, !100, !"qede_rqstats_arr", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 34, i32 3}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 300, i32 18}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 304, i32 18}
!105 = !{ptr @qede_tqstats_arr, !106, !"qede_tqstats_arr", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 52, i32 3}
!107 = !{ptr @qede_stats_arr, !108, !"qede_stats_arr", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 85, i32 3}
!109 = !{ptr @qede_private_arr, !110, !"qede_private_arr", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 176, i32 19}
!111 = !{ptr @qede_tests_str_arr, !112, !"qede_tests_str_arr", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 194, i32 19}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 476, i32 3}
!115 = !{ptr @qede_get_sset_count._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @qede_get_sset_count._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1232, i32 3}
!119 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @qede_get_rxnfc._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @qede_get_rxnfc._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1359, i32 3}
!124 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @qede_set_rxnfc._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @qede_set_rxnfc._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1245, i32 2}
!129 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @qede_set_rss_flags._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @qede_set_rss_flags._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @qede_set_rss_flags._entry.55, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1255, i32 4}
!134 = !{ptr @qede_set_rss_flags._entry_ptr.56, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1264, i32 4}
!137 = !{ptr @qede_set_rss_flags._entry.57, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @qede_set_rss_flags._entry_ptr.59, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1268, i32 4}
!141 = !{ptr @qede_set_rss_flags._entry.60, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @qede_set_rss_flags._entry_ptr.62, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @qede_set_rss_flags._entry.63, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1279, i32 4}
!145 = !{ptr @qede_set_rss_flags._entry_ptr.64, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @qede_set_rss_flags._entry.65, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1283, i32 4}
!148 = !{ptr @qede_set_rss_flags._entry_ptr.66, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @qede_set_rss_flags._entry.67, !150, !"_entry", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1293, i32 4}
!151 = !{ptr @qede_set_rss_flags._entry_ptr.68, !150, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @qede_set_rss_flags._entry.69, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1309, i32 4}
!154 = !{ptr @qede_set_rss_flags._entry_ptr.70, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1406, i32 3}
!157 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @qede_set_rxfh._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @qede_set_rxfh._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1081, i32 2}
!162 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @qede_set_channels._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @qede_set_channels._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1091, i32 3}
!167 = !{ptr @qede_set_channels._entry.75, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @qede_set_channels._entry_ptr.77, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1098, i32 3}
!171 = !{ptr @qede_set_channels._entry.78, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @qede_set_channels._entry_ptr.80, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.82, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1104, i32 3}
!175 = !{ptr @qede_set_channels._entry.81, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @qede_set_channels._entry_ptr.83, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1114, i32 3}
!179 = !{ptr @qede_set_channels._entry.84, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @qede_set_channels._entry_ptr.86, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.88, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1123, i32 3}
!183 = !{ptr @qede_set_channels._entry.87, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @qede_set_channels._entry_ptr.89, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.90, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1751, i32 4}
!187 = !{ptr @.str.91, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @qede_set_tunable._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @qede_set_tunable._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2215, i32 3}
!192 = !{ptr @qede_get_per_coalesce._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @qede_get_per_coalesce._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @qede_get_per_coalesce._entry.93, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2233, i32 3}
!196 = !{ptr @qede_get_per_coalesce._entry_ptr.94, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @qede_get_per_coalesce._entry.95, !198, !"_entry", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2244, i32 3}
!199 = !{ptr @qede_get_per_coalesce._entry_ptr.96, !198, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @qede_ethtool_ops, !201, !"qede_ethtool_ops", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2255, i32 33}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 684, i32 3}
!204 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @qede_set_wol._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @qede_set_wol._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 695, i32 3}
!209 = !{ptr @qede_set_wol._entry.99, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @qede_set_wol._entry_ptr.101, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 734, i32 3}
!213 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @qede_nway_reset._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @qede_nway_reset._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 964, i32 2}
!218 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @qede_get_pauseparam._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @qede_get_pauseparam._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 978, i32 3}
!223 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @qede_set_pauseparam._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @qede_set_pauseparam._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 991, i32 4}
!228 = !{ptr @qede_set_pauseparam._entry.108, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @qede_set_pauseparam._entry_ptr.110, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1699, i32 2}
!232 = !{ptr @.str.112, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @qede_self_test._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @qede_self_test._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1631, i32 3}
!237 = !{ptr @qede_selftest_run_loopback._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @qede_selftest_run_loopback._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.115, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1655, i32 3}
!241 = !{ptr @qede_selftest_run_loopback._entry.114, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @qede_selftest_run_loopback._entry_ptr.116, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1674, i32 2}
!245 = !{ptr @qede_selftest_run_loopback._entry.117, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @qede_selftest_run_loopback._entry_ptr.119, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1491, i32 3}
!249 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @qede_selftest_transmit_traffic._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @qede_selftest_transmit_traffic._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.123, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1510, i32 3}
!254 = !{ptr @qede_selftest_transmit_traffic._entry.122, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @qede_selftest_transmit_traffic._entry_ptr.124, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.126, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1536, i32 3}
!258 = !{ptr @qede_selftest_transmit_traffic._entry.125, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @qede_selftest_transmit_traffic._entry_ptr.127, !257, !"_entry_ptr", i1 false, i1 false}
!260 = distinct !{null, !261, !"__already_done", i1 false, i1 false}
!261 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!262 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.129, !261, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.130, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1567, i32 3}
!266 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @qede_selftest_receive_traffic._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @qede_selftest_receive_traffic._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1607, i32 3}
!271 = !{ptr @qede_selftest_receive_traffic._entry.132, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @qede_selftest_receive_traffic._entry_ptr.134, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1613, i32 3}
!275 = !{ptr @qede_selftest_receive_traffic._entry.135, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @qede_selftest_receive_traffic._entry_ptr.137, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.138, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2063, i32 3}
!279 = !{ptr @.str.139, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @qede_get_dump_flag._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @qede_get_dump_flag._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2079, i32 3}
!284 = !{ptr @qede_get_dump_flag._entry.140, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @qede_get_dump_flag._entry_ptr.142, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.144, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2083, i32 2}
!288 = !{ptr @qede_get_dump_flag._entry.143, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @qede_get_dump_flag._entry_ptr.145, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.146, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2096, i32 3}
!292 = !{ptr @qede_get_dump_data._entry, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @qede_get_dump_data._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.148, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2104, i32 4}
!296 = !{ptr @qede_get_dump_data._entry.147, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @qede_get_dump_data._entry_ptr.149, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @qede_get_dump_data._entry.150, !299, !"_entry", i1 false, i1 false}
!299 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2119, i32 3}
!300 = !{ptr @qede_get_dump_data._entry_ptr.151, !299, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.152, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2028, i32 4}
!303 = !{ptr @.str.153, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @qede_set_dump._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @qede_set_dump._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.155, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2037, i32 3}
!308 = !{ptr @qede_set_dump._entry.154, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @qede_set_dump._entry_ptr.156, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.157, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1946, i32 3}
!312 = !{ptr @.str.158, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @qede_get_module_info._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @qede_get_module_info._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.160, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1965, i32 3}
!317 = !{ptr @qede_get_module_info._entry.159, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @qede_get_module_info._entry_ptr.161, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.162, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1992, i32 4}
!321 = !{ptr @.str.163, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @qede_get_module_eeprom._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @qede_get_module_eeprom._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.165, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 2012, i32 4}
!326 = !{ptr @qede_get_module_eeprom._entry.164, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @qede_get_module_eeprom._entry_ptr.166, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.167, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1791, i32 3}
!330 = !{ptr @.str.168, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @qede_get_eee._entry, !329, !"_entry", i1 false, i1 false}
!332 = !{ptr @qede_get_eee._entry_ptr, !329, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.169, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1823, i32 3}
!335 = !{ptr @qede_set_eee._entry, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @qede_set_eee._entry_ptr, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @qede_set_eee._entry.170, !338, !"_entry", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1831, i32 3}
!339 = !{ptr @qede_set_eee._entry_ptr.171, !338, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.173, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1843, i32 3}
!342 = !{ptr @qede_set_eee._entry.172, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @qede_set_eee._entry_ptr.174, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.175, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 571, i32 3}
!346 = !{ptr @qede_set_link_ksettings._entry, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @qede_set_link_ksettings._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.177, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 583, i32 4}
!350 = !{ptr @qede_set_link_ksettings._entry.176, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @qede_set_link_ksettings._entry_ptr.178, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.180, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 609, i32 3}
!354 = !{ptr @qede_set_link_ksettings._entry.179, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @qede_set_link_ksettings._entry_ptr.181, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.182, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/net/ethernet/qlogic/qede/qede_ethtool.c", i32 1921, i32 3}
!358 = !{ptr @qede_set_fecparam._entry, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @qede_set_fecparam._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{i32 1, !"wchar_size", i32 2}
!361 = !{i32 1, !"min_enum_size", i32 4}
!362 = !{i32 8, !"branch-target-enforcement", i32 0}
!363 = !{i32 8, !"sign-return-address", i32 0}
!364 = !{i32 8, !"sign-return-address-all", i32 0}
!365 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!366 = !{i32 7, !"uwtable", i32 1}
!367 = !{i32 7, !"frame-pointer", i32 2}
!368 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!369 = !{!"branch_weights", i32 1, i32 2000}
!370 = !{!"branch_weights", i32 2000, i32 1}
!371 = !{i8 0, i8 2}
!372 = !{!"auto-init"}
!373 = !{i64 2157632898}
!374 = !{i64 6588939}
!375 = !{i64 2157633207}
!376 = !{i64 2158279266}
!377 = !{i64 2158279350}
!378 = !{i64 2158279530}
