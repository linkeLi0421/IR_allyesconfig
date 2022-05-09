; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qede/qede_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qede/qede_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.174 }
%union.anon.174 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_eth_cb_ops = type { %struct.qed_common_cb_ops, ptr, ptr }
%struct.qed_common_cb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_chain_init_params = type { i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.qed_eth_stats = type { %struct.qed_eth_stats_common, %union.anon.211 }
%struct.qed_eth_stats_common = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.211 = type { %struct.qed_eth_stats_bb }
%struct.qed_eth_stats_bb = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qede_dev = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, ptr, i64, %struct.qed_dev_eth_info, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, %struct.qed_int_info, %struct.mutex, i32, i16, i32, %struct.qede_stats, i32, [128 x i16], [10 x i32], i8, i16, i16, i8, %struct.list_head, i16, i16, i8, %struct.delayed_work, i32, i16, i16, ptr, i8, %struct.qede_rdma_dev, ptr, i32, i32, %struct.qede_dump_info }
%struct.qed_dev_eth_info = type { %struct.qed_dev_info, i8, i8, [6 x i8], i16, i16, i8, i8 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.qed_int_info = type { ptr, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.qede_stats = type { %struct.qede_stats_common, %union.anon.213 }
%struct.qede_stats_common = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.anon.213 = type { %struct.qede_stats_bb }
%struct.qede_stats_bb = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.qede_rdma_dev = type { ptr, %struct.list_head, %struct.list_head, ptr, %struct.kref, %struct.completion, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.qede_dump_info = type { i32, i8, [4 x i32] }
%struct.qed_eth_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_link_params = type { i8, i32, i8, [3 x i32], i32, i32, i32, %struct.qed_link_eee_params, i32 }
%struct.qed_link_eee_params = type { i32, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.180, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.205, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.180 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.205 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_update_vport_params = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.qed_update_vport_rss_params }
%struct.qed_update_vport_rss_params = type { [128 x ptr], [10 x i32], i8 }
%struct.qede_fastpath = type { ptr, i8, i8, i8, %struct.napi_struct, ptr, ptr, ptr, ptr, [24 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.qede_tx_queue = type { i8, i8, i16, i16, i16, i64, i64, i64, ptr, ptr, ptr, %union.db_prod, %struct.spinlock, i32, %union.anon.212, %struct.qed_chain, ptr, i16, i16 }
%union.db_prod = type { i32 }
%union.anon.212 = type { ptr }
%struct.qed_chain = type { ptr, ptr, %struct.anon.207, %union.anon.209, i32, i32, i32, i16, i16, i16, i16, i16, i8, i32, i32, %struct.anon.210, ptr, i32, i32, i32, i8 }
%struct.anon.207 = type { ptr, %union.anon.208 }
%union.anon.208 = type { %struct.qed_chain_pbl_u32 }
%struct.qed_chain_pbl_u32 = type { i32, i32 }
%union.anon.209 = type { %struct.qed_chain_u32 }
%struct.qed_chain_u32 = type { i32, i32 }
%struct.anon.210 = type { ptr, i32, i32 }
%struct.qede_rx_queue = type { ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i16, i16, i32, i32, ptr, %struct.qed_chain, [124 x i8], %struct.qed_chain, [64 x %struct.qede_agg_info], i64, i64, i64, i64, i64, ptr, [116 x i8], %struct.xdp_rxq_info }
%struct.qede_agg_info = type { %struct.sw_rx_data, ptr, i16, i8, i8, i8, i8 }
%struct.sw_rx_data = type { ptr, i32, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.qed_chain_u16 = type { i16, i16 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.206, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.206 = type { ptr }
%struct.qede_coalesce = type { i8, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.qed_probe_params = type { i32, i32, i8, i8, i8 }
%struct.qed_slowpath_params = type { i32, i8, i8, i8, i8, [12 x i8] }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.udp_tunnel_nic_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qed_sb_info_dbg = type { i32, i32, [12 x i16] }
%struct.qed_sb_info = type { ptr, i32, i32, i16, ptr, i8, ptr }
%struct.qed_iov_hv_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.qed_generic_tlvs = type { i16, [3 x [6 x i8]] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.qed_mfw_tlv_eth = type { i16, i8, i16, i8, i8, i8, i16, i8, i16, i8, i16, i8, i32, i8, i32, i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.qed_queue_start_common_params = type { i8, i16, i8, ptr, i8, i8 }
%struct.qed_start_vport_params = type { i8, i8, i8, i8, i8, i16, i8 }
%struct.qed_rxq_start_ret_params = type { ptr, ptr }
%struct.qed_txq_start_ret_params = type { ptr, ptr }
%struct.eth_db_data = type { i8, i8, i16 }

@__UNIQUE_ID_description677 = internal constant [55 x i8] c"qede.description=QLogic FastLinQ 4xxxx Ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file678 = internal constant [48 x i8] c"qede.file=drivers/net/ethernet/qlogic/qede/qede\00", section ".modinfo", align 1
@__UNIQUE_ID_license679 = internal constant [17 x i8] c"qede.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"qede.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.174 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype680 = internal constant [25 x i8] c"qede.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug681 = internal constant [40 x i8] c"qede.parm=debug: Default debug msglevel\00", section ".modinfo", align 1
@qede_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016qede_cleanup called\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qede_cleanup\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/qlogic/qede/qede_main.c\00", [51 x i8] zeroinitializer }, align 32
@qede_cleanup._entry_ptr = internal global ptr @qede_cleanup._entry, section ".printk_index", align 4
@qede_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @qede_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@qede_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @qede_pci_tbl, ptr @qede_probe, ptr @qede_remove, ptr null, ptr null, ptr @qede_shutdown, ptr @qede_sriov_configure, ptr null, ptr null, ptr @qede_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_qede__682_298_qede_init6 = internal global ptr @qede_init, section ".initcall6.init", align 4
@__exitcall_qede_cleanup = internal global ptr @qede_cleanup, section ".exitcall.exit", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qede\00", [27 x i8] zeroinitializer }, align 32
@qede_pci_tbl = internal constant { [10 x %struct.pci_device_id], [64 x i8] } { [10 x %struct.pci_device_id] [%struct.pci_device_id { i32 4215, i32 5684, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 5734, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 5686, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 5700, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 5716, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 5718, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 5732, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4215, i32 32880, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4215, i32 32912, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@qede_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @qede_io_error_detected, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1323, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Probing a VF\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qede_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qede_probe._entry_ptr = internal global ptr @qede_probe._entry, section ".printk_index", align 4
@qede_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 1328, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Probing a PF\0A\00", [18 x i8] zeroinitializer }, align 32
@qede_probe._entry_ptr.10 = internal global ptr @qede_probe._entry.8, section ".printk_index", align 4
@__qede_probe._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1198, ptr null, ptr null }, align 1
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015Starting qede probe\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__qede_probe\00", [19 x i8] zeroinitializer }, align 32
@__qede_probe._entry_ptr = internal global ptr @__qede_probe._entry, section ".printk_index", align 4
@qed_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qede LAN\00", [23 x i8] zeroinitializer }, align 32
@__qede_probe._entry.14 = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 1220, ptr null, ptr null }, align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015Cannot start slowpath\0A\00", [39 x i8] zeroinitializer }, align 32
@__qede_probe._entry_ptr.16 = internal global ptr @__qede_probe._entry.14, section ".printk_index", align 4
@__qede_probe._entry.17 = internal constant %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.2, i32 1239, ptr null, ptr null }, align 1
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]Cannot register devlink\0A\00", [58 x i8] zeroinitializer }, align 32
@__qede_probe._entry_ptr.19 = internal global ptr @__qede_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__qede_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&edev->sp_task)->work)\00", [53 x i8] zeroinitializer }, align 32
@__qede_probe.__key.22 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&edev->sp_task)->timer\00", [39 x i8] zeroinitializer }, align 32
@__qede_probe.__key.24 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&edev->qede_lock\00", [47 x i8] zeroinitializer }, align 32
@__qede_probe._entry.26 = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.2, i32 1276, ptr null, ptr null }, align 1
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Cannot register net-device\0A\00", [55 x i8] zeroinitializer }, align 32
@__qede_probe._entry_ptr.28 = internal global ptr @__qede_probe._entry.26, section ".printk_index", align 4
@qede_ll_ops = internal global { %struct.qed_eth_cb_ops, [56 x i8] } { %struct.qed_eth_cb_ops { %struct.qed_common_cb_ops { ptr @qede_arfs_filter_op, ptr @qede_link_update, ptr @qede_schedule_recovery_handler, ptr @qede_schedule_hw_err_handler, ptr null, ptr @qede_get_generic_tlv_data, ptr @qede_get_eth_tlv_data, ptr null }, ptr @qede_force_mac, ptr @qede_udp_ports_update }, [56 x i8] zeroinitializer }, align 32
@qede_alloc_etherdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013etherdev allocation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_alloc_etherdev\00", [44 x i8] zeroinitializer }, align 32
@qede_alloc_etherdev._entry_ptr = internal global ptr @qede_alloc_etherdev._entry, section ".printk_index", align 4
@qede_alloc_etherdev._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]Allocated netdev with %d tx queues and %d rx queues\0A\00", [62 x i8] zeroinitializer }, align 32
@qede_alloc_etherdev._entry_ptr.33 = internal global ptr @qede_alloc_etherdev._entry.31, section ".printk_index", align 4
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@qede_netdev_vf_xdp_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @qede_open, ptr @qede_close, ptr @qede_start_xmit, ptr @qede_features_check, ptr @qede_select_queue, ptr null, ptr @qede_set_rx_mode, ptr @qede_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_change_mtu, ptr null, ptr null, ptr @qede_get_stats64, ptr null, ptr null, ptr null, ptr @qede_vlan_rx_add_vid, ptr @qede_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_fix_features, ptr @qede_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_xdp, ptr @qede_xdp_transmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@qede_netdev_vf_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @qede_open, ptr @qede_close, ptr @qede_start_xmit, ptr @qede_features_check, ptr @qede_select_queue, ptr null, ptr @qede_set_rx_mode, ptr @qede_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_change_mtu, ptr null, ptr null, ptr @qede_get_stats64, ptr null, ptr null, ptr null, ptr @qede_vlan_rx_add_vid, ptr @qede_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_fix_features, ptr @qede_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@qede_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @qede_open, ptr @qede_close, ptr @qede_start_xmit, ptr @qede_features_check, ptr @qede_select_queue, ptr null, ptr @qede_set_rx_mode, ptr @qede_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr @qede_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @qede_change_mtu, ptr null, ptr @qede_tx_timeout, ptr @qede_get_stats64, ptr null, ptr null, ptr null, ptr @qede_vlan_rx_add_vid, ptr @qede_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr @qede_set_vf_mac, ptr @qede_set_vf_vlan, ptr @qede_set_vf_rate, ptr @qede_set_vf_spoofchk, ptr @qede_set_vf_trust, ptr @qede_get_vf_config, ptr @qede_set_vf_link_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_setup_tc_offload, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_rx_flow_steer, ptr null, ptr null, ptr null, ptr null, ptr @qede_fix_features, ptr @qede_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qede_xdp, ptr @qede_xdp_transmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@qede_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]default IOCTL cmd 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qede_ioctl\00", [21 x i8] zeroinitializer }, align 32
@qede_ioctl._entry_ptr = internal global ptr @qede_ioctl._entry, section ".printk_index", align 4
@qede_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]TX timeout on queue %u!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qede_tx_timeout\00", [16 x i8] zeroinitializer }, align 32
@qede_tx_timeout._entry_ptr = internal global ptr @qede_tx_timeout._entry, section ".printk_index", align 4
@qede_tx_timeout._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015[%s:%d(%s)]Avoid handling a Tx timeout while another HW error is being handled\0A\00", [46 x i8] zeroinitializer }, align 32
@qede_tx_timeout._entry_ptr.41 = internal global ptr @qede_tx_timeout._entry.39, section ".printk_index", align 4
@qede_txq_fp_log_metadata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"\015[%s:%d(%s)]fpid 0x%x sbid 0x%x txqid [0x%x] ndev_qid [0x%x] cos [0x%x] p_chain %p cap %d size %d jiffies %lu HZ 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qede_txq_fp_log_metadata\00", [39 x i8] zeroinitializer }, align 32
@qede_txq_fp_log_metadata._entry_ptr = internal global ptr @qede_txq_fp_log_metadata._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@qede_txq_fp_log_metadata._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\015[%s:%d(%s)]hw cons %04x sw_tx_prod=0x%x, sw_tx_cons=0x%x, bd_prod 0x%x bd_cons 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@qede_txq_fp_log_metadata._entry_ptr.46 = internal global ptr @qede_txq_fp_log_metadata._entry.44, section ".printk_index", align 4
@qede_tx_log_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]IGU: prod %08x cons %08x CAU Tx %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qede_tx_log_print\00", [46 x i8] zeroinitializer }, align 32
@qede_tx_log_print._entry_ptr = internal global ptr @qede_tx_log_print._entry, section ".printk_index", align 4
@.str.49 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Txq[%d]: FW cons [host] %04x, SW cons %04x, SW prod %04x [Jiffies %lu]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Txq[%d]: SB[0x%04x] - IGU: prod %08x cons %08x CAU Tx %04x\0A\00", [36 x i8] zeroinitializer }, align 32
@qede_fp_sb_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\015[%s:%d(%s)]%02hhX %02hhX %02hhX %02hhX  %02hhX %02hhX %02hhX %02hhX\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qede_fp_sb_dump\00", [16 x i8] zeroinitializer }, align 32
@qede_fp_sb_dump._entry_ptr = internal global ptr @qede_fp_sb_dump._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@qede_set_vf_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]Setting MAC %pM to VF [%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qede_set_vf_mac\00", [16 x i8] zeroinitializer }, align 32
@qede_set_vf_mac._entry_ptr = internal global ptr @qede_set_vf_mac._entry, section ".printk_index", align 4
@qede_set_vf_mac._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]MAC address isn't valid\0A\00", [58 x i8] zeroinitializer }, align 32
@qede_set_vf_mac._entry_ptr.57 = internal global ptr @qede_set_vf_mac._entry.55, section ".printk_index", align 4
@qede_set_vf_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Illegal vlan value %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_set_vf_vlan\00", [47 x i8] zeroinitializer }, align 32
@qede_set_vf_vlan._entry_ptr = internal global ptr @qede_set_vf_vlan._entry, section ".printk_index", align 4
@qede_set_vf_vlan._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015[%s:%d(%s)]Setting Vlan 0x%04x to VF [%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@qede_set_vf_vlan._entry_ptr.62 = internal global ptr @qede_set_vf_vlan._entry.60, section ".printk_index", align 4
@qede_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @qede_block_cb_list, ptr @qede_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@tc_cls_can_offload_and_chain0.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Driver supports only offload of chain 0\00", [56 x i8] zeroinitializer }, align 32
@tc_can_offload_extack.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TC offload is disabled on net device\00", [59 x i8] zeroinitializer }, align 32
@qede_recovery_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 2633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]Starting a recovery process\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qede_recovery_handler\00", [42 x i8] zeroinitializer }, align 32
@qede_recovery_handler._entry_ptr = internal global ptr @qede_recovery_handler._entry, section ".printk_index", align 4
@qede_recovery_handler._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 2665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015[%s:%d(%s)]Recovery handling is done\0A\00", [56 x i8] zeroinitializer }, align 32
@qede_recovery_handler._entry_ptr.67 = internal global ptr @qede_recovery_handler._entry.65, section ".printk_index", align 4
@__qede_remove._entry = internal constant %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 1349, ptr @.str.70, ptr @.str.7 }, align 1
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device has already been removed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__qede_remove\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@__qede_remove._entry_ptr = internal global ptr @__qede_remove._entry, section ".printk_index", align 4
@__qede_remove._entry.71 = internal constant %struct.pi_entry { ptr @.str.72, ptr @.str.69, ptr @.str.2, i32 1356, ptr null, ptr null }, align 1
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Starting qede_remove\0A\00", [61 x i8] zeroinitializer }, align 32
@__qede_remove._entry_ptr.73 = internal global ptr @__qede_remove._entry.71, section ".printk_index", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@__qede_remove._entry.74 = internal constant %struct.pi_entry { ptr @.str.75, ptr @.str.69, ptr @.str.2, i32 1396, ptr @.str.70, ptr @.str.7 }, align 1
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ending qede_remove successfully\0A\00", [63 x i8] zeroinitializer }, align 32
@__qede_remove._entry_ptr.76 = internal global ptr @__qede_remove._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Recovery handling has failed. Power cycle is needed.\0A\00", [42 x i8] zeroinitializer }, align 32
@qede_generic_hw_err_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 2695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015[%s:%d(%s)]Generic sleepable HW error handling started - err_flags 0x%lx\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qede_generic_hw_err_handler\00", [36 x i8] zeroinitializer }, align 32
@qede_generic_hw_err_handler._entry_ptr = internal global ptr @qede_generic_hw_err_handler._entry, section ".printk_index", align 4
@qede_generic_hw_err_handler._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 2698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]Reporting fatal error to devlink\0A\00", [49 x i8] zeroinitializer }, align 32
@qede_generic_hw_err_handler._entry_ptr.82 = internal global ptr @qede_generic_hw_err_handler._entry.80, section ".printk_index", align 4
@qede_generic_hw_err_handler._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 2704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\015[%s:%d(%s)]Generic sleepable HW error handling is done\0A\00", [38 x i8] zeroinitializer }, align 32
@qede_generic_hw_err_handler._entry_ptr.85 = internal global ptr @qede_generic_hw_err_handler._entry.83, section ".printk_index", align 4
@qede_link_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 2581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Interface is not ready\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_link_update\00", [47 x i8] zeroinitializer }, align 32
@qede_link_update._entry_ptr = internal global ptr @qede_link_update._entry, section ".printk_index", align 4
@qede_link_update._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 2587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015[%s:%d(%s)]Link is up\0A\00", [39 x i8] zeroinitializer }, align 32
@qede_link_update._entry_ptr.90 = internal global ptr @qede_link_update._entry.88, section ".printk_index", align 4
@qede_link_update._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.2, i32 2594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\015[%s:%d(%s)]Link is down\0A\00", [37 x i8] zeroinitializer }, align 32
@qede_link_update._entry_ptr.93 = internal global ptr @qede_link_update._entry.91, section ".printk_index", align 4
@qede_schedule_recovery_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 2608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\015[%s:%d(%s)]Avoid scheduling a recovery handling since already in recovery state\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qede_schedule_recovery_handler\00", [33 x i8] zeroinitializer }, align 32
@qede_schedule_recovery_handler._entry_ptr = internal global ptr @qede_schedule_recovery_handler._entry, section ".printk_index", align 4
@qede_schedule_recovery_handler._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 2615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015[%s:%d(%s)]Scheduled a recovery handler\0A\00", [53 x i8] zeroinitializer }, align 32
@qede_schedule_recovery_handler._entry_ptr.98 = internal global ptr @qede_schedule_recovery_handler._entry.96, section ".printk_index", align 4
@qede_schedule_hw_err_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 2746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\015[%s:%d(%s)]Avoid scheduling an error handling while another HW error is being handled\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qede_schedule_hw_err_handler\00", [35 x i8] zeroinitializer }, align 32
@qede_schedule_hw_err_handler._entry_ptr = internal global ptr @qede_schedule_hw_err_handler._entry, section ".printk_index", align 4
@qede_schedule_hw_err_handler._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.2, i32 2751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015[%s:%d(%s)]Unknown HW error [%d]\0A\00", [60 x i8] zeroinitializer }, align 32
@qede_schedule_hw_err_handler._entry_ptr.103 = internal global ptr @qede_schedule_hw_err_handler._entry.101, section ".printk_index", align 4
@qede_schedule_hw_err_handler._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.2, i32 2762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015[%s:%d(%s)]Scheduled a error handler [err_type %d]\0A\00", [42 x i8] zeroinitializer }, align 32
@qede_schedule_hw_err_handler._entry_ptr.106 = internal global ptr @qede_schedule_hw_err_handler._entry.104, section ".printk_index", align 4
@qede_set_hw_err_flags._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 2727, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015[%s:%d(%s)]Unexpected HW error [%d]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qede_set_hw_err_flags\00", [42 x i8] zeroinitializer }, align 32
@qede_set_hw_err_flags._entry_ptr = internal global ptr @qede_set_hw_err_flags._entry, section ".printk_index", align 4
@qede_atomic_hw_err_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 2679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\015[%s:%d(%s)]Generic non-sleepable HW error handling started - err_flags 0x%lx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qede_atomic_hw_err_handler\00", [37 x i8] zeroinitializer }, align 32
@qede_atomic_hw_err_handler._entry_ptr = internal global ptr @qede_atomic_hw_err_handler._entry, section ".printk_index", align 4
@qede_atomic_hw_err_handler._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.2, i32 2688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\015[%s:%d(%s)]Generic non-sleepable HW error handling is done\0A\00", [34 x i8] zeroinitializer }, align 32
@qede_atomic_hw_err_handler._entry_ptr.113 = internal global ptr @qede_atomic_hw_err_handler._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Storm FW %d.%d.%d.%d, Management FW %d.%d.%d.%d\00", [48 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" [MBI %d.%d.%d]\00", [16 x i8] zeroinitializer }, align 32
@qede_log_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016qede %02x:%02x.%02x: %s [%s]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_log_probe\00", [17 x i8] zeroinitializer }, align 32
@qede_log_probe._entry_ptr = internal global ptr @qede_log_probe._entry, section ".printk_index", align 4
@qede_sriov_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015[%s:%d(%s)]Requested %d VFs\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qede_sriov_configure\00", [43 x i8] zeroinitializer }, align 32
@qede_sriov_configure._entry_ptr = internal global ptr @qede_sriov_configure._entry, section ".printk_index", align 4
@qede_io_error_detected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.2, i32 2883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]IO error detected [%d]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qede_io_error_detected\00", [41 x i8] zeroinitializer }, align 32
@qede_io_error_detected._entry_ptr = internal global ptr @qede_io_error_detected._entry, section ".printk_index", align 4
@qede_io_error_detected._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 2887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\015[%s:%d(%s)]Device already in the recovery state\0A\00", [45 x i8] zeroinitializer }, align 32
@qede_io_error_detected._entry_ptr.124 = internal global ptr @qede_io_error_detected._entry.122, section ".printk_index", align 4
@qede_io_error_detected._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.121, ptr @.str.2, i32 2895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]VF recovery is handled by its PF\0A\00", [49 x i8] zeroinitializer }, align 32
@qede_io_error_detected._entry_ptr.127 = internal global ptr @qede_io_error_detected._entry.125, section ".printk_index", align 4
@qede_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016qede init: QLogic FastLinQ 4xxxx Ethernet Driver qede\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qede_init\00", [22 x i8] zeroinitializer }, align 32
@qede_init._entry_ptr = internal global ptr @qede_init._entry, section ".printk_index", align 4
@qede_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.129, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015Failed to get qed ethtool operations\0A\00", [56 x i8] zeroinitializer }, align 32
@qede_init._entry_ptr.132 = internal global ptr @qede_init._entry.130, section ".printk_index", align 4
@qede_init._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.129, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015Failed to register netdevice_notifier\0A\00", [55 x i8] zeroinitializer }, align 32
@qede_init._entry_ptr.135 = internal global ptr @qede_init._entry.133, section ".printk_index", align 4
@qede_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.129, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015Failed to register driver\0A\00", [35 x i8] zeroinitializer }, align 32
@qede_init._entry_ptr.138 = internal global ptr @qede_init._entry.136, section ".printk_index", align 4
@qede_unload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Starting qede unload\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qede_unload\00", [20 x i8] zeroinitializer }, align 32
@qede_unload._entry_ptr = internal global ptr @qede_unload._entry, section ".printk_index", align 4
@qede_unload._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 2372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\015[%s:%d(%s)]Stopped Queues\0A\00", [35 x i8] zeroinitializer }, align 32
@qede_unload._entry_ptr.143 = internal global ptr @qede_unload._entry.141, section ".printk_index", align 4
@qede_unload._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.140, ptr @.str.2, i32 2400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qede_unload._entry_ptr.145 = internal global ptr @qede_unload._entry.144, section ".printk_index", align 4
@qede_unload._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.140, ptr @.str.2, i32 2404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]Ending qede unload\0A\00", [63 x i8] zeroinitializer }, align 32
@qede_unload._entry_ptr.148 = internal global ptr @qede_unload._entry.146, section ".printk_index", align 4
@qede_stop_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 2079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Failed to update vport\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qede_stop_queues\00", [47 x i8] zeroinitializer }, align 32
@qede_stop_queues._entry_ptr = internal global ptr @qede_stop_queues._entry, section ".printk_index", align 4
@qede_stop_queues._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.2, i32 2123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Failed to stop RXQ #%d\0A\00", [59 x i8] zeroinitializer }, align 32
@qede_stop_queues._entry_ptr.153 = internal global ptr @qede_stop_queues._entry.151, section ".printk_index", align 4
@qede_stop_queues._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.150, ptr @.str.2, i32 2141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013[%s:%d(%s)]Failed to stop VPORT\0A\00", [61 x i8] zeroinitializer }, align 32
@qede_stop_queues._entry_ptr.156 = internal global ptr @qede_stop_queues._entry.154, section ".printk_index", align 4
@qede_drain_txq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 2025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\015[%s:%d(%s)]Tx queue[%d] is stuck, requesting MCP to drain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_drain_txq\00", [17 x i8] zeroinitializer }, align 32
@qede_drain_txq._entry_ptr = internal global ptr @qede_drain_txq._entry, section ".printk_index", align 4
@qede_drain_txq._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 2034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015[%s:%d(%s)]Timeout waiting for tx queue[%d]: PROD=%d, CONS=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@qede_drain_txq._entry_ptr.161 = internal global ptr @qede_drain_txq._entry.159, section ".printk_index", align 4
@qede_empty_tx_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.2, i32 1757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\015[%s:%d(%s)]Freeing a packet on tx queue[%d]: chain_cons 0x%x, chain_prod 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_empty_tx_queue\00", [44 x i8] zeroinitializer }, align 32
@qede_empty_tx_queue._entry_ptr = internal global ptr @qede_empty_tx_queue._entry, section ".printk_index", align 4
@qede_empty_tx_queue._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.163, ptr @.str.2, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\015[%s:%d(%s)]Failed to free a packet on tx queue[%d]: chain_cons 0x%x, chain_prod 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@qede_empty_tx_queue._entry_ptr.166 = internal global ptr @qede_empty_tx_queue._entry.164, section ".printk_index", align 4
@qede_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.2, i32 2421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015[%s:%d(%s)]Starting qede load\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qede_load\00", [22 x i8] zeroinitializer }, align 32
@qede_load._entry_ptr = internal global ptr @qede_load._entry, section ".printk_index", align 4
@qede_load._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.2, i32 2440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Allocated %d Rx, %d Tx queues\0A\00", [52 x i8] zeroinitializer }, align 32
@qede_load._entry_ptr.171 = internal global ptr @qede_load._entry.169, section ".printk_index", align 4
@qede_load._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.168, ptr @.str.2, i32 2452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015[%s:%d(%s)]Napi added and enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@qede_load._entry_ptr.174 = internal global ptr @qede_load._entry.172, section ".printk_index", align 4
@qede_load._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.168, ptr @.str.2, i32 2457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Setup IRQs succeeded\0A\00", [61 x i8] zeroinitializer }, align 32
@qede_load._entry_ptr.177 = internal global ptr @qede_load._entry.175, section ".printk_index", align 4
@qede_load._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.168, ptr @.str.2, i32 2462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015[%s:%d(%s)]Start VPORT, RXQ and TXQ succeeded\0A\00", [47 x i8] zeroinitializer }, align 32
@qede_load._entry_ptr.180 = internal global ptr @qede_load._entry.178, section ".printk_index", align 4
@qede_load._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.168, ptr @.str.2, i32 2492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Ending successfully qede load\0A\00", [52 x i8] zeroinitializer }, align 32
@qede_load._entry_ptr.183 = internal global ptr @qede_load._entry.181, section ".printk_index", align 4
@qede_set_num_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.2, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015[%s:%d(%s)]Managed %d [of %d] RSS queues\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_set_num_queues\00", [44 x i8] zeroinitializer }, align 32
@qede_set_num_queues._entry_ptr = internal global ptr @qede_set_num_queues._entry, section ".printk_index", align 4
@qede_alloc_fp_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015[%s:%d(%s)]fp array allocation failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_alloc_fp_array\00", [44 x i8] zeroinitializer }, align 32
@qede_alloc_fp_array._entry_ptr = internal global ptr @qede_alloc_fp_array._entry, section ".printk_index", align 4
@qede_alloc_fp_array._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013[%s:%d(%s)]coalesce entry allocation failed\0A\00", [49 x i8] zeroinitializer }, align 32
@qede_alloc_fp_array._entry_ptr.190 = internal global ptr @qede_alloc_fp_array._entry.188, section ".printk_index", align 4
@qede_alloc_fp_array._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.187, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015[%s:%d(%s)]sb info struct allocation failed\0A\00", [49 x i8] zeroinitializer }, align 32
@qede_alloc_fp_array._entry_ptr.193 = internal global ptr @qede_alloc_fp_array._entry.191, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qede_init_fp.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.194 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&fp->xdp_tx->xdp_tx_lock\00", [39 x i8] zeroinitializer }, align 32
@qede_init_fp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.196, ptr @.str.2, i32 1835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\015[%s:%d(%s)]Failed to register XDP memory model\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qede_init_fp\00", [19 x i8] zeroinitializer }, align 32
@qede_init_fp._entry_ptr = internal global ptr @qede_init_fp._entry, section ".printk_index", align 4
@.str.197 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-fp-%d\00", [23 x i8] zeroinitializer }, align 32
@qede_init_fp._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.196, ptr @.str.2, i32 1865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015[%s:%d(%s)]Total XDP queues: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@qede_init_fp._entry_ptr.200 = internal global ptr @qede_init_fp._entry.198, section ".printk_index", align 4
@qede_alloc_mem_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.2, i32 1734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013[%s:%d(%s)]Failed to allocate memory for fastpath - rss id = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qede_alloc_mem_load\00", [44 x i8] zeroinitializer }, align 32
@qede_alloc_mem_load._entry_ptr = internal global ptr @qede_alloc_mem_load._entry, section ".printk_index", align 4
@qede_alloc_mem_sb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.2, i32 1466, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[%s:%d(%s)]Status block allocation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qede_alloc_mem_sb\00", [46 x i8] zeroinitializer }, align 32
@qede_alloc_mem_sb._entry_ptr = internal global ptr @qede_alloc_mem_sb._entry, section ".printk_index", align 4
@qede_alloc_mem_sb._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.204, ptr @.str.2, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[%s:%d(%s)]Status block initialization failed\0A\00", [47 x i8] zeroinitializer }, align 32
@qede_alloc_mem_sb._entry_ptr.207 = internal global ptr @qede_alloc_mem_sb._entry.205, section ".printk_index", align 4
@__const.qede_alloc_mem_rxq.params = private unnamed_addr constant %struct.qed_chain_init_params { i32 0, i32 0, i32 0, i32 0, i32 8192, i32 0, ptr null, i32 0 }, align 4
@qede_alloc_mem_rxq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.2, i32 1564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[%s:%d(%s)]Rx buffers ring allocation failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qede_alloc_mem_rxq\00", [45 x i8] zeroinitializer }, align 32
@qede_alloc_mem_rxq._entry_ptr = internal global ptr @qede_alloc_mem_rxq._entry, section ".printk_index", align 4
@qede_alloc_mem_rxq._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.209, ptr @.str.2, i32 1593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[%s:%d(%s)]Rx buffers allocation failed at index %d\0A\00", [41 x i8] zeroinitializer }, align 32
@qede_alloc_mem_rxq._entry_ptr.212 = internal global ptr @qede_alloc_mem_rxq._entry.210, section ".printk_index", align 4
@qede_set_real_num_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.2, i32 1877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]Failed to set real number of Tx queues\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qede_set_real_num_queues\00", [39 x i8] zeroinitializer }, align 32
@qede_set_real_num_queues._entry_ptr = internal global ptr @qede_set_real_num_queues._entry, section ".printk_index", align 4
@qede_set_real_num_queues._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.2, i32 1883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\015[%s:%d(%s)]Failed to set real number of Rx queues\0A\00", [43 x i8] zeroinitializer }, align 32
@qede_set_real_num_queues._entry_ptr.217 = internal global ptr @qede_set_real_num_queues._entry.215, section ".printk_index", align 4
@qede_req_msix_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.219, ptr @.str.2, i32 1939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013[%s:%d(%s)]Interrupt mismatch: %d RSS queues > %d MSI-x vectors\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qede_req_msix_irqs\00", [45 x i8] zeroinitializer }, align 32
@qede_req_msix_irqs._entry_ptr = internal global ptr @qede_req_msix_irqs._entry, section ".printk_index", align 4
@qede_req_msix_irqs._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.219, ptr @.str.2, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Failed to add CPU rmap\0A\00", [59 x i8] zeroinitializer }, align 32
@qede_req_msix_irqs._entry_ptr.222 = internal global ptr @qede_req_msix_irqs._entry.220, section ".printk_index", align 4
@qede_req_msix_irqs._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.219, ptr @.str.2, i32 1960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013[%s:%d(%s)]Request fp %d irq failed\0A\00", [57 x i8] zeroinitializer }, align 32
@qede_req_msix_irqs._entry_ptr.225 = internal global ptr @qede_req_msix_irqs._entry.223, section ".printk_index", align 4
@qede_req_msix_irqs._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.219, ptr @.str.2, i32 1973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\015[%s:%d(%s)]Requested fp irq for %s [entry %d]. Cookie is at %p\0A\00", [62 x i8] zeroinitializer }, align 32
@qede_req_msix_irqs._entry_ptr.228 = internal global ptr @qede_req_msix_irqs._entry.226, section ".printk_index", align 4
@qede_start_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.230, ptr @.str.2, i32 2211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013[%s:%d(%s)]Cannot update V-VPORT as active as there are no Rx queues\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qede_start_queues\00", [46 x i8] zeroinitializer }, align 32
@qede_start_queues._entry_ptr = internal global ptr @qede_start_queues._entry, section ".printk_index", align 4
@qede_start_queues._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.230, ptr @.str.2, i32 2230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013[%s:%d(%s)]Start V-PORT failed %d\0A\00", [59 x i8] zeroinitializer }, align 32
@qede_start_queues._entry_ptr.233 = internal global ptr @qede_start_queues._entry.231, section ".printk_index", align 4
@qede_start_queues._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.230, ptr @.str.2, i32 2236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"\015[%s:%d(%s)]Start vport ramrod passed, vport_id = %d, MTU = %d, vlan_removal_en = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@qede_start_queues._entry_ptr.236 = internal global ptr @qede_start_queues._entry.234, section ".printk_index", align 4
@qede_start_queues._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.230, ptr @.str.2, i32 2266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Start RXQ #%d failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qede_start_queues._entry_ptr.239 = internal global ptr @qede_start_queues._entry.237, section ".printk_index", align 4
@qede_start_queues._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.230, ptr @.str.2, i32 2317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Update V-PORT failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@qede_start_queues._entry_ptr.242 = internal global ptr @qede_start_queues._entry.240, section ".printk_index", align 4
@qede_start_txq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.2, i32 2174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013[%s:%d(%s)]Start TXQ #%d failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qede_start_txq\00", [17 x i8] zeroinitializer }, align 32
@qede_start_txq._entry_ptr = internal global ptr @qede_start_txq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 11]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.246 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.247 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.248 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 45, i32 13 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 291, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [21 x i8] c"qede_netdev_notifier\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 248, i32 30 }
@___asan_gen_.266 = private unnamed_addr constant [16 x i8] c"qede_pci_driver\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 184, i32 26 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 227, i32 29 }
@___asan_gen_.272 = private unnamed_addr constant [13 x i8] c"qede_pci_tbl\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 79, i32 35 }
@___asan_gen_.275 = private unnamed_addr constant [17 x i8] c"qede_err_handler\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 180, i32 40 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1323, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1328, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1198, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [8 x i8] c"qed_ops\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 49, i32 34 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1217, i32 26 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1220, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1239, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1271, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1272, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1276, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant [12 x i8] c"qede_ll_ops\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 196, i32 30 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 784, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 804, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.351, i32 4963, i32 10 }
@___asan_gen_.353 = private unnamed_addr constant [23 x i8] c"qede_netdev_vf_xdp_ops\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 748, i32 36 }
@___asan_gen_.356 = private unnamed_addr constant [19 x i8] c"qede_netdev_vf_ops\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 731, i32 36 }
@___asan_gen_.359 = private unnamed_addr constant [16 x i8] c"qede_netdev_ops\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 695, i32 36 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 504, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 580, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 608, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 533, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 539, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 557, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 562, i32 11 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 568, i32 12 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 520, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 142, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 145, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 125, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 132, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [19 x i8] c"qede_block_cb_list\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 670, i32 8 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 676, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 664, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2633, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2665, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1349, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1356, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1396, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2620, i32 25 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2693, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2698, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2704, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2581, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2587, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2594, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2607, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2615, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2745, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2751, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2762, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2727, i32 3 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2677, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2688, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1154, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1169, i32 5 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1177, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 162, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2883, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2887, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2894, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 257, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 263, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 272, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 279, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2335, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2372, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2400, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2404, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2079, i32 3 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2123, i32 5 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2141, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2023, i32 5 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2031, i32 4 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1754, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1761, i32 4 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2421, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2439, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2452, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2457, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2462, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2492, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1432, i32 3 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 969, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 976, i32 3 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 994, i32 4 }
@___asan_gen_.815 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1813, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1834, i32 5 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1859, i32 40 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1865, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1732, i32 4 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1466, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1474, i32 3 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1564, i32 3 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1592, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1877, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1883, i32 3 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1937, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1951, i32 5 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1960, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1970, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2210, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2230, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2234, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2265, i32 5 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2317, i32 3 }
@___asan_gen_.953 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.959 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.960 = private constant [48 x i8] c"../drivers/net/ethernet/qlogic/qede/qede_main.c\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 2174, i32 3 }
@llvm.compiler.used = appending global [342 x ptr] [ptr @__UNIQUE_ID_debug681, ptr @__UNIQUE_ID_debugtype680, ptr @__UNIQUE_ID_description677, ptr @__UNIQUE_ID_file678, ptr @__UNIQUE_ID_license679, ptr @__exitcall_qede_cleanup, ptr @__initcall__kmod_qede__682_298_qede_init6, ptr @__param_debug, ptr @__qede_probe._entry, ptr @__qede_probe._entry.14, ptr @__qede_probe._entry.17, ptr @__qede_probe._entry.26, ptr @__qede_probe._entry_ptr, ptr @__qede_probe._entry_ptr.16, ptr @__qede_probe._entry_ptr.19, ptr @__qede_probe._entry_ptr.28, ptr @__qede_remove._entry, ptr @__qede_remove._entry.71, ptr @__qede_remove._entry.74, ptr @__qede_remove._entry_ptr, ptr @__qede_remove._entry_ptr.73, ptr @__qede_remove._entry_ptr.76, ptr @qede_alloc_etherdev._entry, ptr @qede_alloc_etherdev._entry.31, ptr @qede_alloc_etherdev._entry_ptr, ptr @qede_alloc_etherdev._entry_ptr.33, ptr @qede_alloc_fp_array._entry, ptr @qede_alloc_fp_array._entry.188, ptr @qede_alloc_fp_array._entry.191, ptr @qede_alloc_fp_array._entry_ptr, ptr @qede_alloc_fp_array._entry_ptr.190, ptr @qede_alloc_fp_array._entry_ptr.193, ptr @qede_alloc_mem_load._entry, ptr @qede_alloc_mem_load._entry_ptr, ptr @qede_alloc_mem_rxq._entry, ptr @qede_alloc_mem_rxq._entry.210, ptr @qede_alloc_mem_rxq._entry_ptr, ptr @qede_alloc_mem_rxq._entry_ptr.212, ptr @qede_alloc_mem_sb._entry, ptr @qede_alloc_mem_sb._entry.205, ptr @qede_alloc_mem_sb._entry_ptr, ptr @qede_alloc_mem_sb._entry_ptr.207, ptr @qede_atomic_hw_err_handler._entry, ptr @qede_atomic_hw_err_handler._entry.111, ptr @qede_atomic_hw_err_handler._entry_ptr, ptr @qede_atomic_hw_err_handler._entry_ptr.113, ptr @qede_cleanup, ptr @qede_cleanup._entry, ptr @qede_cleanup._entry_ptr, ptr @qede_drain_txq._entry, ptr @qede_drain_txq._entry.159, ptr @qede_drain_txq._entry_ptr, ptr @qede_drain_txq._entry_ptr.161, ptr @qede_empty_tx_queue._entry, ptr @qede_empty_tx_queue._entry.164, ptr @qede_empty_tx_queue._entry_ptr, ptr @qede_empty_tx_queue._entry_ptr.166, ptr @qede_fp_sb_dump._entry, ptr @qede_fp_sb_dump._entry_ptr, ptr @qede_generic_hw_err_handler._entry, ptr @qede_generic_hw_err_handler._entry.80, ptr @qede_generic_hw_err_handler._entry.83, ptr @qede_generic_hw_err_handler._entry_ptr, ptr @qede_generic_hw_err_handler._entry_ptr.82, ptr @qede_generic_hw_err_handler._entry_ptr.85, ptr @qede_init._entry, ptr @qede_init._entry.130, ptr @qede_init._entry.133, ptr @qede_init._entry.136, ptr @qede_init._entry_ptr, ptr @qede_init._entry_ptr.132, ptr @qede_init._entry_ptr.135, ptr @qede_init._entry_ptr.138, ptr @qede_init_fp._entry, ptr @qede_init_fp._entry.198, ptr @qede_init_fp._entry_ptr, ptr @qede_init_fp._entry_ptr.200, ptr @qede_io_error_detected._entry, ptr @qede_io_error_detected._entry.122, ptr @qede_io_error_detected._entry.125, ptr @qede_io_error_detected._entry_ptr, ptr @qede_io_error_detected._entry_ptr.124, ptr @qede_io_error_detected._entry_ptr.127, ptr @qede_ioctl._entry, ptr @qede_ioctl._entry_ptr, ptr @qede_link_update._entry, ptr @qede_link_update._entry.88, ptr @qede_link_update._entry.91, ptr @qede_link_update._entry_ptr, ptr @qede_link_update._entry_ptr.90, ptr @qede_link_update._entry_ptr.93, ptr @qede_load._entry, ptr @qede_load._entry.169, ptr @qede_load._entry.172, ptr @qede_load._entry.175, ptr @qede_load._entry.178, ptr @qede_load._entry.181, ptr @qede_load._entry_ptr, ptr @qede_load._entry_ptr.171, ptr @qede_load._entry_ptr.174, ptr @qede_load._entry_ptr.177, ptr @qede_load._entry_ptr.180, ptr @qede_load._entry_ptr.183, ptr @qede_log_probe._entry, ptr @qede_log_probe._entry_ptr, ptr @qede_probe._entry, ptr @qede_probe._entry.8, ptr @qede_probe._entry_ptr, ptr @qede_probe._entry_ptr.10, ptr @qede_recovery_handler._entry, ptr @qede_recovery_handler._entry.65, ptr @qede_recovery_handler._entry_ptr, ptr @qede_recovery_handler._entry_ptr.67, ptr @qede_req_msix_irqs._entry, ptr @qede_req_msix_irqs._entry.220, ptr @qede_req_msix_irqs._entry.223, ptr @qede_req_msix_irqs._entry.226, ptr @qede_req_msix_irqs._entry_ptr, ptr @qede_req_msix_irqs._entry_ptr.222, ptr @qede_req_msix_irqs._entry_ptr.225, ptr @qede_req_msix_irqs._entry_ptr.228, ptr @qede_schedule_hw_err_handler._entry, ptr @qede_schedule_hw_err_handler._entry.101, ptr @qede_schedule_hw_err_handler._entry.104, ptr @qede_schedule_hw_err_handler._entry_ptr, ptr @qede_schedule_hw_err_handler._entry_ptr.103, ptr @qede_schedule_hw_err_handler._entry_ptr.106, ptr @qede_schedule_recovery_handler._entry, ptr @qede_schedule_recovery_handler._entry.96, ptr @qede_schedule_recovery_handler._entry_ptr, ptr @qede_schedule_recovery_handler._entry_ptr.98, ptr @qede_set_hw_err_flags._entry, ptr @qede_set_hw_err_flags._entry_ptr, ptr @qede_set_num_queues._entry, ptr @qede_set_num_queues._entry_ptr, ptr @qede_set_real_num_queues._entry, ptr @qede_set_real_num_queues._entry.215, ptr @qede_set_real_num_queues._entry_ptr, ptr @qede_set_real_num_queues._entry_ptr.217, ptr @qede_set_vf_mac._entry, ptr @qede_set_vf_mac._entry.55, ptr @qede_set_vf_mac._entry_ptr, ptr @qede_set_vf_mac._entry_ptr.57, ptr @qede_set_vf_vlan._entry, ptr @qede_set_vf_vlan._entry.60, ptr @qede_set_vf_vlan._entry_ptr, ptr @qede_set_vf_vlan._entry_ptr.62, ptr @qede_sriov_configure._entry, ptr @qede_sriov_configure._entry_ptr, ptr @qede_start_queues._entry, ptr @qede_start_queues._entry.231, ptr @qede_start_queues._entry.234, ptr @qede_start_queues._entry.237, ptr @qede_start_queues._entry.240, ptr @qede_start_queues._entry_ptr, ptr @qede_start_queues._entry_ptr.233, ptr @qede_start_queues._entry_ptr.236, ptr @qede_start_queues._entry_ptr.239, ptr @qede_start_queues._entry_ptr.242, ptr @qede_start_txq._entry, ptr @qede_start_txq._entry_ptr, ptr @qede_stop_queues._entry, ptr @qede_stop_queues._entry.151, ptr @qede_stop_queues._entry.154, ptr @qede_stop_queues._entry_ptr, ptr @qede_stop_queues._entry_ptr.153, ptr @qede_stop_queues._entry_ptr.156, ptr @qede_tx_log_print._entry, ptr @qede_tx_log_print._entry_ptr, ptr @qede_tx_timeout._entry, ptr @qede_tx_timeout._entry.39, ptr @qede_tx_timeout._entry_ptr, ptr @qede_tx_timeout._entry_ptr.41, ptr @qede_txq_fp_log_metadata._entry, ptr @qede_txq_fp_log_metadata._entry.44, ptr @qede_txq_fp_log_metadata._entry_ptr, ptr @qede_txq_fp_log_metadata._entry_ptr.46, ptr @qede_unload._entry, ptr @qede_unload._entry.141, ptr @qede_unload._entry.144, ptr @qede_unload._entry.146, ptr @qede_unload._entry_ptr, ptr @qede_unload._entry_ptr.143, ptr @qede_unload._entry_ptr.145, ptr @qede_unload._entry_ptr.148, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qede_netdev_notifier, ptr @qede_pci_driver, ptr @.str.3, ptr @qede_pci_tbl, ptr @qede_err_handler, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @qed_ops, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @qede_ll_ops, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @qede_netdev_vf_xdp_ops, ptr @qede_netdev_vf_ops, ptr @qede_netdev_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @qede_block_cb_list, ptr @tc_cls_can_offload_and_chain0.__msg, ptr @tc_can_offload_extack.__msg, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.182, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.192, ptr @qede_init_fp.__key, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.199, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.206, ptr @.str.208, ptr @.str.209, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.218, ptr @.str.219, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.229, ptr @.str.230, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.243, ptr @.str.244], section "llvm.metadata"
@0 = internal global [238 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_pci_tbl to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ll_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_etherdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_etherdev._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_netdev_vf_xdp_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_netdev_vf_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tx_timeout._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_txq_fp_log_metadata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_txq_fp_log_metadata._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_tx_log_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_fp_sb_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_vf_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_vf_mac._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_vf_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_vf_vlan._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_cls_can_offload_and_chain0.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_can_offload_extack.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_recovery_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_recovery_handler._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_generic_hw_err_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_generic_hw_err_handler._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_generic_hw_err_handler._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_link_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_link_update._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_link_update._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_schedule_recovery_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_schedule_recovery_handler._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_schedule_hw_err_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_schedule_hw_err_handler._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_schedule_hw_err_handler._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_hw_err_flags._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_atomic_hw_err_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_atomic_hw_err_handler._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_log_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_sriov_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_io_error_detected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_io_error_detected._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_io_error_detected._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_init._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_unload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_unload._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_unload._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_unload._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_stop_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_stop_queues._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_stop_queues._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_drain_txq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_drain_txq._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_empty_tx_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_empty_tx_queue._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_load._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_load._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_load._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_load._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_load._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_num_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_fp_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_fp_array._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_fp_array._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_init_fp.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_init_fp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_init_fp._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_mem_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_mem_sb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_mem_sb._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_mem_rxq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_alloc_mem_rxq._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_real_num_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_set_real_num_queues._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_req_msix_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_req_msix_irqs._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_req_msix_irqs._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_req_msix_irqs._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_queues._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_queues._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_queues._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_queues._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qede_start_txq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qede_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @qede_netdev_notifier) #16
  tail call void @pci_unregister_driver(ptr noundef nonnull @qede_pci_driver) #16
  tail call void @qed_put_eth_ops() #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_put_eth_ops() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #19
  tail call void @qede_forced_speed_maps_init() #16
  %call1 = tail call ptr @qed_get_eth_ops() #16
  store ptr %call1, ptr @qed_ops, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @qede_netdev_notifier) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end15, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134) #19
  tail call void @qed_put_eth_ops() #16
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @__pci_register_driver(ptr noundef nonnull @qede_pci_driver, ptr noundef null, ptr noundef nonnull @.str.3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %do.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #19
  %call24 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @qede_netdev_notifier) #16
  tail call void @qed_put_eth_ops() #16
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end15.cleanup_crit_edge, %do.end12, %do.end4
  %retval.0 = phi i32 [ -22, %do.end12 ], [ -22, %do.end21 ], [ -22, %do.end4 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_fill_by_demand_stats(ptr noundef %edev) local_unnamed_addr #3 align 64 {
entry:
  %stats1 = alloca %struct.qed_eth_stats, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 576, ptr nonnull %stats1) #16
  %0 = call ptr @memset(ptr %stats1, i32 255, i32 576)
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %get_vport_stats = getelementptr inbounds %struct.qed_eth_ops, ptr %2, i32 0, i32 19
  %3 = ptrtoint ptr %get_vport_stats to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_vport_stats, align 4
  %5 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %edev, align 8
  call void %4(ptr noundef %6, ptr noundef nonnull %stats1) #16
  %7 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %stats1, align 8
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %stats, align 8
  %packet_too_big_discard = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 1
  %10 = ptrtoint ptr %packet_too_big_discard to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %packet_too_big_discard, align 8
  %packet_too_big_discard5 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 1
  %12 = ptrtoint ptr %packet_too_big_discard5 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %packet_too_big_discard5, align 8
  %ttl0_discard = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 2
  %13 = ptrtoint ptr %ttl0_discard to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ttl0_discard, align 8
  %ttl0_discard7 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 2
  %15 = ptrtoint ptr %ttl0_discard7 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %ttl0_discard7, align 8
  %rx_ucast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 3
  %16 = ptrtoint ptr %rx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_ucast_bytes, align 8
  %rx_ucast_bytes9 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 3
  %18 = ptrtoint ptr %rx_ucast_bytes9 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %rx_ucast_bytes9, align 8
  %rx_mcast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 4
  %19 = ptrtoint ptr %rx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_mcast_bytes, align 8
  %rx_mcast_bytes11 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 4
  %21 = ptrtoint ptr %rx_mcast_bytes11 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %rx_mcast_bytes11, align 8
  %rx_bcast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 5
  %22 = ptrtoint ptr %rx_bcast_bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_bcast_bytes, align 8
  %rx_bcast_bytes13 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 5
  %24 = ptrtoint ptr %rx_bcast_bytes13 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %rx_bcast_bytes13, align 8
  %rx_ucast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 6
  %25 = ptrtoint ptr %rx_ucast_pkts to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rx_ucast_pkts, align 8
  %rx_ucast_pkts15 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 6
  %27 = ptrtoint ptr %rx_ucast_pkts15 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %rx_ucast_pkts15, align 8
  %rx_mcast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 7
  %28 = ptrtoint ptr %rx_mcast_pkts to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rx_mcast_pkts, align 8
  %rx_mcast_pkts17 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 7
  %30 = ptrtoint ptr %rx_mcast_pkts17 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %rx_mcast_pkts17, align 8
  %rx_bcast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 8
  %31 = ptrtoint ptr %rx_bcast_pkts to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %rx_bcast_pkts, align 8
  %rx_bcast_pkts19 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 8
  %33 = ptrtoint ptr %rx_bcast_pkts19 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %rx_bcast_pkts19, align 8
  %mftag_filter_discards = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 9
  %34 = ptrtoint ptr %mftag_filter_discards to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %mftag_filter_discards, align 8
  %mftag_filter_discards21 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 9
  %36 = ptrtoint ptr %mftag_filter_discards21 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %mftag_filter_discards21, align 8
  %mac_filter_discards = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 10
  %37 = ptrtoint ptr %mac_filter_discards to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %mac_filter_discards, align 8
  %mac_filter_discards23 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 10
  %39 = ptrtoint ptr %mac_filter_discards23 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %mac_filter_discards23, align 8
  %gft_filter_drop = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 11
  %40 = ptrtoint ptr %gft_filter_drop to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %gft_filter_drop, align 8
  %gft_filter_drop25 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 11
  %42 = ptrtoint ptr %gft_filter_drop25 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %gft_filter_drop25, align 8
  %tx_ucast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 12
  %43 = ptrtoint ptr %tx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tx_ucast_bytes, align 8
  %tx_ucast_bytes27 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 12
  %45 = ptrtoint ptr %tx_ucast_bytes27 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %tx_ucast_bytes27, align 8
  %tx_mcast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 13
  %46 = ptrtoint ptr %tx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %tx_mcast_bytes, align 8
  %tx_mcast_bytes29 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 13
  %48 = ptrtoint ptr %tx_mcast_bytes29 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %tx_mcast_bytes29, align 8
  %tx_bcast_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 14
  %49 = ptrtoint ptr %tx_bcast_bytes to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %tx_bcast_bytes, align 8
  %tx_bcast_bytes31 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 14
  %51 = ptrtoint ptr %tx_bcast_bytes31 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %tx_bcast_bytes31, align 8
  %tx_ucast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 15
  %52 = ptrtoint ptr %tx_ucast_pkts to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tx_ucast_pkts, align 8
  %tx_ucast_pkts33 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 15
  %54 = ptrtoint ptr %tx_ucast_pkts33 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %tx_ucast_pkts33, align 8
  %tx_mcast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 16
  %55 = ptrtoint ptr %tx_mcast_pkts to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %tx_mcast_pkts, align 8
  %tx_mcast_pkts35 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 16
  %57 = ptrtoint ptr %tx_mcast_pkts35 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %tx_mcast_pkts35, align 8
  %tx_bcast_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 17
  %58 = ptrtoint ptr %tx_bcast_pkts to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tx_bcast_pkts, align 8
  %tx_bcast_pkts37 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 17
  %60 = ptrtoint ptr %tx_bcast_pkts37 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %tx_bcast_pkts37, align 8
  %tx_err_drop_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 18
  %61 = ptrtoint ptr %tx_err_drop_pkts to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tx_err_drop_pkts, align 8
  %tx_err_drop_pkts39 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 18
  %63 = ptrtoint ptr %tx_err_drop_pkts39 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %tx_err_drop_pkts39, align 8
  %tpa_coalesced_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 19
  %64 = ptrtoint ptr %tpa_coalesced_pkts to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %tpa_coalesced_pkts, align 8
  %coalesced_pkts = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 19
  %66 = ptrtoint ptr %coalesced_pkts to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %coalesced_pkts, align 8
  %tpa_coalesced_events = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 20
  %67 = ptrtoint ptr %tpa_coalesced_events to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %tpa_coalesced_events, align 8
  %coalesced_events = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 20
  %69 = ptrtoint ptr %coalesced_events to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %coalesced_events, align 8
  %tpa_aborts_num = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 21
  %70 = ptrtoint ptr %tpa_aborts_num to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %tpa_aborts_num, align 8
  %coalesced_aborts_num = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 21
  %72 = ptrtoint ptr %coalesced_aborts_num to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %coalesced_aborts_num, align 8
  %tpa_not_coalesced_pkts = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 22
  %73 = ptrtoint ptr %tpa_not_coalesced_pkts to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %tpa_not_coalesced_pkts, align 8
  %non_coalesced_pkts = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 22
  %75 = ptrtoint ptr %non_coalesced_pkts to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %non_coalesced_pkts, align 8
  %tpa_coalesced_bytes = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 23
  %76 = ptrtoint ptr %tpa_coalesced_bytes to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %tpa_coalesced_bytes, align 8
  %coalesced_bytes = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 23
  %78 = ptrtoint ptr %coalesced_bytes to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %coalesced_bytes, align 8
  %rx_64_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 24
  %79 = ptrtoint ptr %rx_64_byte_packets to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %rx_64_byte_packets, align 8
  %rx_64_byte_packets46 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 26
  %81 = ptrtoint ptr %rx_64_byte_packets46 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %rx_64_byte_packets46, align 8
  %rx_65_to_127_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 25
  %82 = ptrtoint ptr %rx_65_to_127_byte_packets to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rx_65_to_127_byte_packets, align 8
  %rx_65_to_127_byte_packets48 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 27
  %84 = ptrtoint ptr %rx_65_to_127_byte_packets48 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %rx_65_to_127_byte_packets48, align 8
  %rx_128_to_255_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 26
  %85 = ptrtoint ptr %rx_128_to_255_byte_packets to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %rx_128_to_255_byte_packets, align 8
  %rx_128_to_255_byte_packets50 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 28
  %87 = ptrtoint ptr %rx_128_to_255_byte_packets50 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %rx_128_to_255_byte_packets50, align 8
  %rx_256_to_511_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 27
  %88 = ptrtoint ptr %rx_256_to_511_byte_packets to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %rx_256_to_511_byte_packets, align 8
  %rx_256_to_511_byte_packets52 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 29
  %90 = ptrtoint ptr %rx_256_to_511_byte_packets52 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %89, ptr %rx_256_to_511_byte_packets52, align 8
  %rx_512_to_1023_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 28
  %91 = ptrtoint ptr %rx_512_to_1023_byte_packets to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %rx_512_to_1023_byte_packets, align 8
  %rx_512_to_1023_byte_packets54 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 30
  %93 = ptrtoint ptr %rx_512_to_1023_byte_packets54 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %92, ptr %rx_512_to_1023_byte_packets54, align 8
  %rx_1024_to_1518_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 29
  %94 = ptrtoint ptr %rx_1024_to_1518_byte_packets to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %rx_1024_to_1518_byte_packets, align 8
  %rx_1024_to_1518_byte_packets56 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 31
  %96 = ptrtoint ptr %rx_1024_to_1518_byte_packets56 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %rx_1024_to_1518_byte_packets56, align 8
  %rx_crc_errors = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 30
  %97 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %rx_crc_errors, align 8
  %rx_crc_errors58 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 32
  %99 = ptrtoint ptr %rx_crc_errors58 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %rx_crc_errors58, align 8
  %rx_mac_crtl_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 31
  %100 = ptrtoint ptr %rx_mac_crtl_frames to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %rx_mac_crtl_frames, align 8
  %rx_mac_crtl_frames60 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 33
  %102 = ptrtoint ptr %rx_mac_crtl_frames60 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %rx_mac_crtl_frames60, align 8
  %rx_pause_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 32
  %103 = ptrtoint ptr %rx_pause_frames to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %rx_pause_frames, align 8
  %rx_pause_frames62 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 34
  %105 = ptrtoint ptr %rx_pause_frames62 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %rx_pause_frames62, align 8
  %rx_pfc_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 33
  %106 = ptrtoint ptr %rx_pfc_frames to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %rx_pfc_frames, align 8
  %rx_pfc_frames64 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 35
  %108 = ptrtoint ptr %rx_pfc_frames64 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %rx_pfc_frames64, align 8
  %rx_align_errors = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 34
  %109 = ptrtoint ptr %rx_align_errors to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %rx_align_errors, align 8
  %rx_align_errors66 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 36
  %111 = ptrtoint ptr %rx_align_errors66 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %rx_align_errors66, align 8
  %rx_carrier_errors = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 35
  %112 = ptrtoint ptr %rx_carrier_errors to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %rx_carrier_errors, align 8
  %rx_carrier_errors68 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 37
  %114 = ptrtoint ptr %rx_carrier_errors68 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %rx_carrier_errors68, align 8
  %rx_oversize_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 36
  %115 = ptrtoint ptr %rx_oversize_packets to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %rx_oversize_packets, align 8
  %rx_oversize_packets70 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 38
  %117 = ptrtoint ptr %rx_oversize_packets70 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %rx_oversize_packets70, align 8
  %rx_jabbers = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 37
  %118 = ptrtoint ptr %rx_jabbers to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %rx_jabbers, align 8
  %rx_jabbers72 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 39
  %120 = ptrtoint ptr %rx_jabbers72 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %rx_jabbers72, align 8
  %rx_undersize_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 38
  %121 = ptrtoint ptr %rx_undersize_packets to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %rx_undersize_packets, align 8
  %rx_undersize_packets74 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 40
  %123 = ptrtoint ptr %rx_undersize_packets74 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %rx_undersize_packets74, align 8
  %rx_fragments = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 39
  %124 = ptrtoint ptr %rx_fragments to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %rx_fragments, align 8
  %rx_fragments76 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 41
  %126 = ptrtoint ptr %rx_fragments76 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %rx_fragments76, align 8
  %tx_64_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 40
  %127 = ptrtoint ptr %tx_64_byte_packets to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %tx_64_byte_packets, align 8
  %tx_64_byte_packets78 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 42
  %129 = ptrtoint ptr %tx_64_byte_packets78 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %tx_64_byte_packets78, align 8
  %tx_65_to_127_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 41
  %130 = ptrtoint ptr %tx_65_to_127_byte_packets to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %tx_65_to_127_byte_packets, align 8
  %tx_65_to_127_byte_packets80 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 43
  %132 = ptrtoint ptr %tx_65_to_127_byte_packets80 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %tx_65_to_127_byte_packets80, align 8
  %tx_128_to_255_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 42
  %133 = ptrtoint ptr %tx_128_to_255_byte_packets to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %tx_128_to_255_byte_packets, align 8
  %tx_128_to_255_byte_packets82 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 44
  %135 = ptrtoint ptr %tx_128_to_255_byte_packets82 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %tx_128_to_255_byte_packets82, align 8
  %tx_256_to_511_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 43
  %136 = ptrtoint ptr %tx_256_to_511_byte_packets to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %tx_256_to_511_byte_packets, align 8
  %tx_256_to_511_byte_packets84 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 45
  %138 = ptrtoint ptr %tx_256_to_511_byte_packets84 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %tx_256_to_511_byte_packets84, align 8
  %tx_512_to_1023_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 44
  %139 = ptrtoint ptr %tx_512_to_1023_byte_packets to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %tx_512_to_1023_byte_packets, align 8
  %tx_512_to_1023_byte_packets86 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 46
  %141 = ptrtoint ptr %tx_512_to_1023_byte_packets86 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %tx_512_to_1023_byte_packets86, align 8
  %tx_1024_to_1518_byte_packets = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 45
  %142 = ptrtoint ptr %tx_1024_to_1518_byte_packets to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %tx_1024_to_1518_byte_packets, align 8
  %tx_1024_to_1518_byte_packets88 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 47
  %144 = ptrtoint ptr %tx_1024_to_1518_byte_packets88 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %tx_1024_to_1518_byte_packets88, align 8
  %tx_pause_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 46
  %145 = ptrtoint ptr %tx_pause_frames to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %tx_pause_frames, align 8
  %tx_pause_frames90 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 48
  %147 = ptrtoint ptr %tx_pause_frames90 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %146, ptr %tx_pause_frames90, align 8
  %tx_pfc_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 47
  %148 = ptrtoint ptr %tx_pfc_frames to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %tx_pfc_frames, align 8
  %tx_pfc_frames92 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 49
  %150 = ptrtoint ptr %tx_pfc_frames92 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %149, ptr %tx_pfc_frames92, align 8
  %brb_truncates = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 48
  %151 = ptrtoint ptr %brb_truncates to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %brb_truncates, align 8
  %brb_truncates94 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 50
  %153 = ptrtoint ptr %brb_truncates94 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %brb_truncates94, align 8
  %brb_discards = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 49
  %154 = ptrtoint ptr %brb_discards to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %brb_discards, align 8
  %brb_discards96 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 51
  %156 = ptrtoint ptr %brb_discards96 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %brb_discards96, align 8
  %tx_mac_ctrl_frames = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 59
  %157 = ptrtoint ptr %tx_mac_ctrl_frames to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %tx_mac_ctrl_frames, align 8
  %tx_mac_ctrl_frames98 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 52
  %159 = ptrtoint ptr %tx_mac_ctrl_frames98 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %tx_mac_ctrl_frames98, align 8
  %link_change_count = getelementptr inbounds %struct.qed_eth_stats_common, ptr %stats1, i32 0, i32 60
  %160 = ptrtoint ptr %link_change_count to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %link_change_count, align 8
  %link_change_count100 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 24
  %162 = ptrtoint ptr %link_change_count100 to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %161, ptr %link_change_count100, align 8
  %ptp_skip_txts = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 9
  %163 = ptrtoint ptr %ptp_skip_txts to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %ptp_skip_txts, align 8
  %ptp_skip_txts101 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 0, i32 25
  %165 = ptrtoint ptr %ptp_skip_txts101 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %ptp_skip_txts101, align 8
  %dev_type = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 20
  %166 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %cmp = icmp eq i32 %167, 0
  %168 = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %168, align 8
  %rx_1519_to_2047_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 1
  %171 = ptrtoint ptr %rx_1519_to_2047_byte_packets to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %rx_1519_to_2047_byte_packets, align 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_2048_to_4095_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 2
  %173 = ptrtoint ptr %rx_2048_to_4095_byte_packets to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %rx_2048_to_4095_byte_packets, align 8
  %rx_2048_to_4095_byte_packets106 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 2
  %175 = ptrtoint ptr %rx_2048_to_4095_byte_packets106 to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %174, ptr %rx_2048_to_4095_byte_packets106, align 8
  %rx_4096_to_9216_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 3
  %176 = ptrtoint ptr %rx_4096_to_9216_byte_packets to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %rx_4096_to_9216_byte_packets, align 8
  %rx_4096_to_9216_byte_packets107 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 3
  %178 = ptrtoint ptr %rx_4096_to_9216_byte_packets107 to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %177, ptr %rx_4096_to_9216_byte_packets107, align 8
  %rx_9217_to_16383_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 4
  %179 = ptrtoint ptr %rx_9217_to_16383_byte_packets to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %rx_9217_to_16383_byte_packets, align 8
  %rx_9217_to_16383_byte_packets108 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 4
  %181 = ptrtoint ptr %rx_9217_to_16383_byte_packets108 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %rx_9217_to_16383_byte_packets108, align 8
  %tx_1519_to_2047_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 5
  %182 = ptrtoint ptr %tx_1519_to_2047_byte_packets to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %tx_1519_to_2047_byte_packets, align 8
  %tx_1519_to_2047_byte_packets109 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 5
  %184 = ptrtoint ptr %tx_1519_to_2047_byte_packets109 to i32
  call void @__asan_store8_noabort(i32 %184)
  store i64 %183, ptr %tx_1519_to_2047_byte_packets109, align 8
  %tx_2048_to_4095_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 6
  %185 = ptrtoint ptr %tx_2048_to_4095_byte_packets to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %tx_2048_to_4095_byte_packets, align 8
  %tx_2048_to_4095_byte_packets110 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 6
  %187 = ptrtoint ptr %tx_2048_to_4095_byte_packets110 to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %186, ptr %tx_2048_to_4095_byte_packets110, align 8
  %tx_4096_to_9216_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 7
  %188 = ptrtoint ptr %tx_4096_to_9216_byte_packets to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %tx_4096_to_9216_byte_packets, align 8
  %tx_4096_to_9216_byte_packets111 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 7
  %190 = ptrtoint ptr %tx_4096_to_9216_byte_packets111 to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %189, ptr %tx_4096_to_9216_byte_packets111, align 8
  %tx_9217_to_16383_byte_packets = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 8
  %191 = ptrtoint ptr %tx_9217_to_16383_byte_packets to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %tx_9217_to_16383_byte_packets, align 8
  %tx_9217_to_16383_byte_packets112 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 8
  %193 = ptrtoint ptr %tx_9217_to_16383_byte_packets112 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %192, ptr %tx_9217_to_16383_byte_packets112, align 8
  %tx_lpi_entry_count = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 9
  %194 = ptrtoint ptr %tx_lpi_entry_count to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %tx_lpi_entry_count, align 8
  %tx_lpi_entry_count113 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 9
  %196 = ptrtoint ptr %tx_lpi_entry_count113 to i32
  call void @__asan_store8_noabort(i32 %196)
  store i64 %195, ptr %tx_lpi_entry_count113, align 8
  %tx_total_collisions = getelementptr inbounds %struct.qed_eth_stats, ptr %stats1, i32 0, i32 1, i32 0, i32 10
  %197 = ptrtoint ptr %tx_total_collisions to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %tx_total_collisions, align 8
  %tx_total_collisions114 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 10
  %199 = ptrtoint ptr %tx_total_collisions114 to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %198, ptr %tx_total_collisions114, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %200 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %170, ptr %200, align 8
  %202 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 25, i32 1, i32 0, i32 1
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %172, ptr %202, align 8
  call void @llvm.lifetime.end.p0(i64 576, ptr nonnull %stats1) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qede_config_debug(i32 noundef %debug, ptr nocapture noundef writeonly %p_dp_module, ptr nocapture noundef writeonly %p_dp_level) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p_dp_level to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %p_dp_level, align 1
  %1 = ptrtoint ptr %p_dp_module to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %p_dp_module, align 4
  %and = and i32 %debug, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %p_dp_level to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %p_dp_level, align 1
  %3 = ptrtoint ptr %p_dp_module to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %p_dp_module, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %and2 = and i32 %debug, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %p_dp_level to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %p_dp_level, align 1
  br label %if.end10

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %debug)
  %tobool7.not = icmp sgt i32 %debug, -1
  br i1 %tobool7.not, label %if.else5.if.end10_crit_edge, label %if.then8

if.else5.if.end10_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then8:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %p_dp_level to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %p_dp_level, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else5.if.end10_crit_edge, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__qede_lock(ptr noundef %edev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qede_lock = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %qede_lock, i32 noundef 0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__qede_unlock(ptr noundef %edev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %qede_lock = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %qede_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qede_reload(ptr noundef %edev, ptr noundef %args, i1 noundef zeroext %is_locked) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_locked, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %qede_lock.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %qede_lock.i, i32 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  tail call fastcc void @qede_unload(ptr noundef %edev, i32 noundef 0, i1 noundef zeroext true)
  %tobool2.not = icmp eq ptr %args, null
  br i1 %tobool2.not, label %if.then1.if.end4_crit_edge, label %if.then3

if.then1.if.end4_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 8
  tail call void %3(ptr noundef %edev, ptr noundef nonnull %args) #16
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then1.if.end4_crit_edge
  %call = tail call fastcc i32 @qede_load(ptr noundef %edev, i32 noundef 1, i1 noundef zeroext true)
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void @qede_config_rx_mode(ptr noundef %5) #16
  br label %if.end9

if.else:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %args, null
  br i1 %tobool5.not, label %if.else.if.end9_crit_edge, label %if.then6

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args, align 8
  tail call void %7(ptr noundef %edev, ptr noundef nonnull %args) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else.if.end9_crit_edge, %if.end4
  br i1 %is_locked, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %qede_lock.i26 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %qede_lock.i26) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_unload(ptr noundef %edev, i32 noundef %mode, i1 noundef zeroext %is_locked) unnamed_addr #3 align 64 {
entry:
  %len.i.i = alloca i32, align 4
  %link_params = alloca %struct.qed_link_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %link_params) #16
  %0 = call ptr @memset(ptr %link_params, i32 255, i32 48)
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %1 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp ult i8 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge, !prof !474

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

do.end:                                           ; preds = %entry
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %4, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool4.not = icmp eq ptr %4, null
  %or.cond = and i1 %tobool4.not, %tobool2.not.i
  %spec.select.i199 = select i1 %tobool2.not.i, ptr %4, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i199
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.140, i32 noundef 2335, ptr noundef %cond) #19
  br label %do.end9

do.end9:                                          ; preds = %cond.end, %entry.do.end9_crit_edge
  br i1 %is_locked, label %do.end9.if.end12_crit_edge, label %if.then11

do.end9.if.end12_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  %qede_lock.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %qede_lock.i, i32 noundef 0) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end9.if.end12_crit_edge
  %flags = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp13.not = icmp eq i32 %mode, 1
  br i1 %cmp13.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %state = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 22
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %state, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  %ndev17 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %8 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev17, align 4
  tail call fastcc void @local_bh_disable() #16
  %10 = tail call i32 @llvm.read_register.i32(metadata !464) #16
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #16
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not.i = icmp eq i32 %15, 0
  br i1 %cmp13.not.i, label %if.end16.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end16.netif_tx_disable.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end16
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 11
  %18 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %13, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %19 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  %inc.i = add nuw i32 %i.014.i, 1
  %20 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.end16.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #16
  tail call fastcc void @local_bh_enable() #16
  %22 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev17, align 4
  tail call void @netif_carrier_off(ptr noundef %23) #16
  br i1 %cmp13.not, label %netif_tx_disable.exit.if.end68_crit_edge, label %if.then21

netif_tx_disable.exit.if.end68_crit_edge:         ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

if.then21:                                        ; preds = %netif_tx_disable.exit
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %24 = call ptr @memset(ptr %link_params, i32 0, i32 48)
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %set_link = getelementptr inbounds %struct.qed_common_ops, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %set_link to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_link, align 4
  %31 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edev, align 8
  %call22 = call i32 %30(ptr noundef %32, ptr noundef nonnull %link_params) #16
  %33 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %edev, align 8
  %call.i203 = call noalias ptr @vzalloc(i32 noundef 564) #20
  %tobool.not.i204 = icmp eq ptr %call.i203, null
  br i1 %tobool.not.i204, label %if.then21.if.then25_crit_edge, label %if.end.i

if.then21.if.then25_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.end.i:                                         ; preds = %if.then21
  %35 = ptrtoint ptr %call.i203 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %call.i203, align 4
  %update_vport_active_flg.i = getelementptr inbounds %struct.qed_update_vport_params, ptr %call.i203, i32 0, i32 1
  %36 = ptrtoint ptr %update_vport_active_flg.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %update_vport_active_flg.i, align 1
  %vport_active_flg.i = getelementptr inbounds %struct.qed_update_vport_params, ptr %call.i203, i32 0, i32 2
  %37 = ptrtoint ptr %vport_active_flg.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %vport_active_flg.i, align 2
  %update_rss_flg.i = getelementptr inbounds %struct.qed_update_vport_params, ptr %call.i203, i32 0, i32 7
  %38 = ptrtoint ptr %update_rss_flg.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %update_rss_flg.i, align 1
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops, align 4
  %vport_update.i = getelementptr inbounds %struct.qed_eth_ops, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %vport_update.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vport_update.i, align 4
  %call2.i = call i32 %42(ptr noundef %34, ptr noundef nonnull %call.i203) #16
  call void @vfree(ptr noundef nonnull %call.i203) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %num_queues.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %43 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_queues.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp284.not.i = icmp eq i16 %44, 0
  br i1 %cmp284.not.i, label %for.cond.preheader.i.for.end118.i_crit_edge, label %for.body.lr.ph.i205

for.cond.preheader.i.for.end118.i_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end118.i

for.body.lr.ph.i205:                              ; preds = %for.cond.preheader.i
  %fp_array.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %num_tc.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 2
  br label %for.body.i207

do.end.i:                                         ; preds = %if.end.i
  %45 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev17, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call ptr @strchr(ptr noundef %46, i32 noundef 37) #16
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool7.not.i = icmp eq ptr %46, null
  %or.cond.i = and i1 %tobool7.not.i, %tobool2.not.i.i
  %spec.select.i215.i = select i1 %tobool2.not.i.i, ptr %46, ptr @.str.34
  %spec.select.i206 = select i1 %or.cond.i, ptr @.str.20, ptr %spec.select.i215.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.34, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i206, %lor.lhs.false.i.i ]
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, i32 noundef 2079, ptr noundef %cond.i) #19
  br label %if.then25

for.cond44.preheader.i:                           ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp45293.not.i = icmp eq i16 %66, 0
  br i1 %cmp45293.not.i, label %for.cond44.preheader.i.for.end118.i_crit_edge, label %for.body47.i.preheader

for.cond44.preheader.i.for.end118.i_crit_edge:    ; preds = %for.cond44.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end118.i

for.body47.i.preheader:                           ; preds = %for.cond44.preheader.i
  %conv.i.le = zext i16 %66 to i32
  br label %for.body47.i

for.body.i207:                                    ; preds = %for.inc39.i.for.body.i207_crit_edge, %for.body.lr.ph.i205
  %i.0285.i = phi i32 [ 0, %for.body.lr.ph.i205 ], [ %inc40.i, %for.inc39.i.for.body.i207_crit_edge ]
  %49 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fp_array.i, align 4
  %type.i = getelementptr %struct.qede_fastpath, ptr %50, i32 %i.0285.i, i32 1
  %51 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %type.i, align 4
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool16.not.i = icmp eq i8 %53, 0
  br i1 %tobool16.not.i, label %for.body.i207.if.end28.i_crit_edge, label %for.cond18.preheader.i

for.body.i207.if.end28.i_crit_edge:               ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

for.cond18.preheader.i:                           ; preds = %for.body.i207
  %54 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp20281.not.i = icmp eq i8 %55, 0
  br i1 %cmp20281.not.i, label %for.cond18.preheader.i.if.end28.i_crit_edge, label %for.body22.lr.ph.i

for.cond18.preheader.i.if.end28.i_crit_edge:      ; preds = %for.cond18.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

for.body22.lr.ph.i:                               ; preds = %for.cond18.preheader.i
  %txq.i = getelementptr %struct.qede_fastpath, ptr %50, i32 %i.0285.i, i32 7
  br label %for.body22.i

for.cond18.i:                                     ; preds = %for.body22.i
  %inc.i208 = add nuw nsw i32 %cos.0282.i, 1
  %56 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num_tc.i, align 1
  %conv19.i = zext i8 %57 to i32
  %cmp20.i = icmp ult i32 %inc.i208, %conv19.i
  br i1 %cmp20.i, label %for.cond18.i.for.body22.i_crit_edge, label %for.cond18.i.if.end28.i_crit_edge

for.cond18.i.if.end28.i_crit_edge:                ; preds = %for.cond18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28.i

for.cond18.i.for.body22.i_crit_edge:              ; preds = %for.cond18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.cond18.i.for.body22.i_crit_edge, %for.body22.lr.ph.i
  %cos.0282.i = phi i32 [ 0, %for.body22.lr.ph.i ], [ %inc.i208, %for.cond18.i.for.body22.i_crit_edge ]
  %58 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %txq.i, align 8
  %arrayidx23.i = getelementptr %struct.qede_tx_queue, ptr %59, i32 %cos.0282.i
  %call24.i = call fastcc i32 @qede_drain_txq(ptr noundef %edev, ptr noundef %arrayidx23.i, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %for.cond18.i, label %for.body22.i.if.then25_crit_edge

for.body22.i.if.then25_crit_edge:                 ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.end28.i:                                       ; preds = %for.cond18.i.if.end28.i_crit_edge, %for.cond18.preheader.i.if.end28.i_crit_edge, %for.body.i207.if.end28.i_crit_edge
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %type.i, align 4
  %62 = and i8 %61, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool32.not.i = icmp eq i8 %62, 0
  br i1 %tobool32.not.i, label %if.end28.i.for.inc39.i_crit_edge, label %if.then33.i

if.end28.i.for.inc39.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc39.i

if.then33.i:                                      ; preds = %if.end28.i
  %xdp_tx.i = getelementptr %struct.qede_fastpath, ptr %50, i32 %i.0285.i, i32 8
  %63 = ptrtoint ptr %xdp_tx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %xdp_tx.i, align 4
  %call34.i = call fastcc i32 @qede_drain_txq(ptr noundef %edev, ptr noundef %64, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.for.inc39.i_crit_edge, label %if.then33.i.if.then25_crit_edge

if.then33.i.if.then25_crit_edge:                  ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.then33.i.for.inc39.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %if.then33.i.for.inc39.i_crit_edge, %if.end28.i.for.inc39.i_crit_edge
  %inc40.i = add nuw nsw i32 %i.0285.i, 1
  %65 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %num_queues.i, align 2
  %conv.i = zext i16 %66 to i32
  %cmp.i209 = icmp ult i32 %inc40.i, %conv.i
  br i1 %cmp.i209, label %for.inc39.i.for.body.i207_crit_edge, label %for.cond44.preheader.i

for.inc39.i.for.body.i207_crit_edge:              ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i207

for.body47.i:                                     ; preds = %for.inc117.i.for.body47.i_crit_edge, %for.body47.i.preheader
  %i.1294.in.i = phi i32 [ %i.1294.i, %for.inc117.i.for.body47.i_crit_edge ], [ %conv.i.le, %for.body47.i.preheader ]
  %i.1294.i = add nsw i32 %i.1294.in.i, -1
  %67 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fp_array.i, align 4
  %type50.i = getelementptr %struct.qede_fastpath, ptr %68, i32 %i.1294.i, i32 1
  %69 = ptrtoint ptr %type50.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %type50.i, align 4
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool53.not.i = icmp eq i8 %71, 0
  br i1 %tobool53.not.i, label %for.body47.i.if.end75.i_crit_edge, label %for.cond56.preheader.i

for.body47.i.if.end75.i_crit_edge:                ; preds = %for.body47.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75.i

for.cond56.preheader.i:                           ; preds = %for.body47.i
  %72 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp60290.not.i = icmp eq i8 %73, 0
  br i1 %cmp60290.not.i, label %for.cond56.preheader.i.if.end75.i_crit_edge, label %for.body62.lr.ph.i

for.cond56.preheader.i.if.end75.i_crit_edge:      ; preds = %for.cond56.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75.i

for.body62.lr.ph.i:                               ; preds = %for.cond56.preheader.i
  %txq63.i = getelementptr %struct.qede_fastpath, ptr %68, i32 %i.1294.i, i32 7
  %conv.i.i = trunc i32 %i.1294.i to i8
  br label %for.body62.i

for.cond56.i:                                     ; preds = %for.body62.i
  %inc70.i = add nuw nsw i32 %cos55.0291.i, 1
  %74 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %num_tc.i, align 1
  %conv59.i = zext i8 %75 to i32
  %cmp60.i = icmp ult i32 %inc70.i, %conv59.i
  br i1 %cmp60.i, label %for.cond56.i.for.body62.i_crit_edge, label %for.cond56.i.if.end75.i_crit_edge

for.cond56.i.if.end75.i_crit_edge:                ; preds = %for.cond56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75.i

for.cond56.i.for.body62.i_crit_edge:              ; preds = %for.cond56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.cond56.i.for.body62.i_crit_edge, %for.body62.lr.ph.i
  %cos55.0291.i = phi i32 [ 0, %for.body62.lr.ph.i ], [ %inc70.i, %for.cond56.i.for.body62.i_crit_edge ]
  %76 = ptrtoint ptr %txq63.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %txq63.i, align 8
  %78 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %db_recovery_del.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %81, i32 0, i32 32
  %82 = ptrtoint ptr %db_recovery_del.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %db_recovery_del.i.i, align 4
  %84 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %edev, align 8
  %doorbell_addr.i.i = getelementptr %struct.qede_tx_queue, ptr %77, i32 %cos55.0291.i, i32 10
  %86 = ptrtoint ptr %doorbell_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %doorbell_addr.i.i, align 8
  %tx_db.i.i = getelementptr %struct.qede_tx_queue, ptr %77, i32 %cos55.0291.i, i32 11
  %call.i219.i = call i32 %83(ptr noundef %85, ptr noundef %87, ptr noundef %tx_db.i.i) #16
  %88 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops, align 4
  %q_tx_stop.i.i = getelementptr inbounds %struct.qed_eth_ops, ptr %89, i32 0, i32 13
  %90 = ptrtoint ptr %q_tx_stop.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %q_tx_stop.i.i, align 4
  %92 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %edev, align 8
  %handle.i.i = getelementptr %struct.qede_tx_queue, ptr %77, i32 %cos55.0291.i, i32 16
  %94 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %handle.i.i, align 8
  %call3.i.i = call i32 %91(ptr noundef %93, i8 noundef zeroext %conv.i.i, ptr noundef %95) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool66.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool66.not.i, label %for.cond56.i, label %for.body62.i.if.then25_crit_edge

for.body62.i.if.then25_crit_edge:                 ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.end75.i:                                       ; preds = %for.cond56.i.if.end75.i_crit_edge, %for.cond56.preheader.i.if.end75.i_crit_edge, %for.body47.i.if.end75.i_crit_edge
  %96 = ptrtoint ptr %type50.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %type50.i, align 4
  %98 = and i8 %97, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool79.not.i = icmp eq i8 %98, 0
  br i1 %tobool79.not.i, label %if.end75.i.if.end104.i_crit_edge, label %if.then80.i

if.end75.i.if.end104.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104.i

if.then80.i:                                      ; preds = %if.end75.i
  %99 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops, align 4
  %q_rx_stop.i = getelementptr inbounds %struct.qed_eth_ops, ptr %100, i32 0, i32 11
  %101 = ptrtoint ptr %q_rx_stop.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %q_rx_stop.i, align 4
  %conv82.i = trunc i32 %i.1294.i to i8
  %rxq.i = getelementptr %struct.qede_fastpath, ptr %68, i32 %i.1294.i, i32 6
  %103 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rxq.i, align 4
  %handle.i = getelementptr inbounds %struct.qede_rx_queue, ptr %104, i32 0, i32 23
  %105 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %handle.i, align 8
  %call83.i = call i32 %102(ptr noundef %34, i8 noundef zeroext %conv82.i, ptr noundef %106) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.then80.i.if.end104.i_crit_edge, label %do.end89.i

if.then80.i.if.end104.i_crit_edge:                ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end104.i

do.end89.i:                                       ; preds = %if.then80.i
  %107 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ndev17, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i220.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i220.i, label %do.end89.i.cond.end98.i_crit_edge, label %lor.lhs.false.i224.i

do.end89.i.cond.end98.i_crit_edge:                ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end98.i

lor.lhs.false.i224.i:                             ; preds = %do.end89.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i221.i = call ptr @strchr(ptr noundef %108, i32 noundef 37) #16
  %tobool2.not.i222.i = icmp eq ptr %call.i221.i, null
  %tobool93.not.i = icmp eq ptr %108, null
  %or.cond270.i = and i1 %tobool93.not.i, %tobool2.not.i222.i
  %spec.select.i230.i = select i1 %tobool2.not.i222.i, ptr %108, ptr @.str.34
  %spec.select316.i = select i1 %or.cond270.i, ptr @.str.20, ptr %spec.select.i230.i
  br label %cond.end98.i

cond.end98.i:                                     ; preds = %lor.lhs.false.i224.i, %do.end89.i.cond.end98.i_crit_edge
  %cond99.i = phi ptr [ @.str.34, %do.end89.i.cond.end98.i_crit_edge ], [ %spec.select316.i, %lor.lhs.false.i224.i ]
  %call100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.150, i32 noundef 2123, ptr noundef %cond99.i, i32 noundef %i.1294.i) #19
  br label %if.then25

if.end104.i:                                      ; preds = %if.then80.i.if.end104.i_crit_edge, %if.end75.i.if.end104.i_crit_edge
  %111 = ptrtoint ptr %type50.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %type50.i, align 4
  %113 = and i8 %112, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool108.not.i = icmp eq i8 %113, 0
  br i1 %tobool108.not.i, label %if.end104.i.for.inc117.i_crit_edge, label %if.then109.i

if.end104.i.for.inc117.i_crit_edge:               ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc117.i

if.then109.i:                                     ; preds = %if.end104.i
  %xdp_tx110.i = getelementptr %struct.qede_fastpath, ptr %68, i32 %i.1294.i, i32 8
  %114 = ptrtoint ptr %xdp_tx110.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %xdp_tx110.i, align 4
  %116 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ops, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %db_recovery_del.i235.i = getelementptr inbounds %struct.qed_common_ops, ptr %119, i32 0, i32 32
  %120 = ptrtoint ptr %db_recovery_del.i235.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %db_recovery_del.i235.i, align 4
  %122 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %edev, align 8
  %doorbell_addr.i236.i = getelementptr inbounds %struct.qede_tx_queue, ptr %115, i32 0, i32 10
  %124 = ptrtoint ptr %doorbell_addr.i236.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %doorbell_addr.i236.i, align 8
  %tx_db.i237.i = getelementptr inbounds %struct.qede_tx_queue, ptr %115, i32 0, i32 11
  %call.i238.i = call i32 %121(ptr noundef %123, ptr noundef %125, ptr noundef %tx_db.i237.i) #16
  %126 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ops, align 4
  %q_tx_stop.i239.i = getelementptr inbounds %struct.qed_eth_ops, ptr %127, i32 0, i32 13
  %128 = ptrtoint ptr %q_tx_stop.i239.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %q_tx_stop.i239.i, align 4
  %130 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %edev, align 8
  %conv.i240.i = trunc i32 %i.1294.i to i8
  %handle.i241.i = getelementptr inbounds %struct.qede_tx_queue, ptr %115, i32 0, i32 16
  %132 = ptrtoint ptr %handle.i241.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %handle.i241.i, align 8
  %call3.i242.i = call i32 %129(ptr noundef %131, i8 noundef zeroext %conv.i240.i, ptr noundef %133) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i242.i)
  %tobool112.not.i = icmp eq i32 %call3.i242.i, 0
  br i1 %tobool112.not.i, label %if.end114.i, label %if.then109.i.if.then25_crit_edge

if.then109.i.if.then25_crit_edge:                 ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.end114.i:                                      ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #18
  %rxq115.i = getelementptr %struct.qede_fastpath, ptr %68, i32 %i.1294.i, i32 6
  %134 = ptrtoint ptr %rxq115.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rxq115.i, align 4
  %xdp_prog.i = getelementptr inbounds %struct.qede_rx_queue, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %xdp_prog.i, align 4
  call void @bpf_prog_put(ptr noundef %137) #16
  br label %for.inc117.i

for.inc117.i:                                     ; preds = %if.end114.i, %if.end104.i.for.inc117.i_crit_edge
  %cmp45.i = icmp sgt i32 %i.1294.in.i, 1
  br i1 %cmp45.i, label %for.inc117.i.for.body47.i_crit_edge, label %for.inc117.i.for.end118.i_crit_edge

for.inc117.i.for.end118.i_crit_edge:              ; preds = %for.inc117.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end118.i

for.inc117.i.for.body47.i_crit_edge:              ; preds = %for.inc117.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body47.i

for.end118.i:                                     ; preds = %for.inc117.i.for.end118.i_crit_edge, %for.cond44.preheader.i.for.end118.i_crit_edge, %for.cond.preheader.i.for.end118.i_crit_edge
  %138 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops, align 4
  %vport_stop.i = getelementptr inbounds %struct.qed_eth_ops, ptr %139, i32 0, i32 8
  %140 = ptrtoint ptr %vport_stop.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %vport_stop.i, align 4
  %call120.i = call i32 %141(ptr noundef %34, i8 noundef zeroext 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i)
  %tobool121.not.i = icmp eq i32 %call120.i, 0
  br i1 %tobool121.not.i, label %do.body39, label %do.end126.i

do.end126.i:                                      ; preds = %for.end118.i
  %142 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ndev17, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %143, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i243.i = icmp eq i8 %145, 0
  br i1 %tobool.not.i243.i, label %do.end126.i.cond.end135.i_crit_edge, label %lor.lhs.false.i247.i

do.end126.i.cond.end135.i_crit_edge:              ; preds = %do.end126.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end135.i

lor.lhs.false.i247.i:                             ; preds = %do.end126.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i244.i = call ptr @strchr(ptr noundef %143, i32 noundef 37) #16
  %tobool2.not.i245.i = icmp eq ptr %call.i244.i, null
  %tobool130.not.i = icmp eq ptr %143, null
  %or.cond271.i = and i1 %tobool130.not.i, %tobool2.not.i245.i
  %spec.select.i253.i = select i1 %tobool2.not.i245.i, ptr %143, ptr @.str.34
  %spec.select317.i = select i1 %or.cond271.i, ptr @.str.20, ptr %spec.select.i253.i
  br label %cond.end135.i

cond.end135.i:                                    ; preds = %lor.lhs.false.i247.i, %do.end126.i.cond.end135.i_crit_edge
  %cond136.i = phi ptr [ @.str.34, %do.end126.i.cond.end135.i_crit_edge ], [ %spec.select317.i, %lor.lhs.false.i247.i ]
  %call137.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.150, i32 noundef 2141, ptr noundef %cond136.i) #19
  br label %if.then25

if.then25:                                        ; preds = %cond.end135.i, %if.then109.i.if.then25_crit_edge, %cond.end98.i, %for.body62.i.if.then25_crit_edge, %if.then33.i.if.then25_crit_edge, %for.body22.i.if.then25_crit_edge, %cond.end.i, %if.then21.if.then25_crit_edge
  %b_arfs_capable = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 11
  %146 = ptrtoint ptr %b_arfs_capable to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %b_arfs_capable, align 4, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool27.not = icmp eq i8 %147, 0
  br i1 %tobool27.not, label %if.then25.if.end37_crit_edge, label %if.then28

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end37

if.then28:                                        ; preds = %if.then25
  call void @qede_poll_for_freeing_arfs_filters(ptr noundef %edev) #16
  %148 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ndev17, align 4
  %rx_cpu_rmap = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 100
  %150 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rx_cpu_rmap, align 4
  %tobool30.not = icmp eq ptr %151, null
  br i1 %tobool30.not, label %if.then28.if.end34_crit_edge, label %if.then31

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #18
  call void @free_irq_cpu_rmap(ptr noundef nonnull %151) #16
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then28.if.end34_crit_edge
  %152 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ndev17, align 4
  %rx_cpu_rmap36 = getelementptr inbounds %struct.net_device, ptr %153, i32 0, i32 100
  %154 = ptrtoint ptr %rx_cpu_rmap36 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr null, ptr %rx_cpu_rmap36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %if.then25.if.end37_crit_edge
  %int_info.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20
  %used_cnt.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 2
  %155 = ptrtoint ptr %used_cnt.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %used_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp27.not.i = icmp eq i8 %156, 0
  br i1 %cmp27.not.i, label %if.end37.qede_sync_free_irqs.exit_crit_edge, label %for.body.lr.ph.i212

if.end37.qede_sync_free_irqs.exit_crit_edge:      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_sync_free_irqs.exit

for.body.lr.ph.i212:                              ; preds = %if.end37
  %msix_cnt.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 1
  %fp_array.i210 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  br label %for.body.i214

for.body.i214:                                    ; preds = %for.inc.i.for.body.i214_crit_edge, %for.body.lr.ph.i212
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i212 ], [ %inc.i216, %for.inc.i.for.body.i214_crit_edge ]
  %157 = ptrtoint ptr %msix_cnt.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %msix_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i213 = icmp eq i8 %158, 0
  br i1 %tobool.not.i213, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #18
  %159 = ptrtoint ptr %int_info.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %int_info.i, align 8
  %arrayidx.i = getelementptr %struct.msix_entry, ptr %160, i32 %i.028.i
  %161 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i, align 4
  call void @synchronize_irq(i32 noundef %162) #16
  %163 = ptrtoint ptr %int_info.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %int_info.i, align 8
  %arrayidx6.i = getelementptr %struct.msix_entry, ptr %164, i32 %i.028.i
  %165 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx6.i, align 4
  %167 = ptrtoint ptr %fp_array.i210 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %fp_array.i210, align 4
  %arrayidx8.i = getelementptr %struct.qede_fastpath, ptr %168, i32 %i.028.i
  %call.i215 = call ptr @free_irq(i32 noundef %166, ptr noundef %arrayidx8.i) #16
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i214
  call void @__sanitizer_cov_trace_pc() #18
  %169 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ops, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %simd_handler_clean.i = getelementptr inbounds %struct.qed_common_ops, ptr %172, i32 0, i32 13
  %173 = ptrtoint ptr %simd_handler_clean.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %simd_handler_clean.i, align 4
  %175 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %edev, align 8
  call void %174(ptr noundef %176, i32 noundef %i.028.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %inc.i216 = add nuw nsw i32 %i.028.i, 1
  %177 = ptrtoint ptr %used_cnt.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %used_cnt.i, align 1
  %conv.i217 = zext i8 %178 to i32
  %cmp.i218 = icmp ult i32 %inc.i216, %conv.i217
  br i1 %cmp.i218, label %for.inc.i.for.body.i214_crit_edge, label %for.inc.i.qede_sync_free_irqs.exit_crit_edge

for.inc.i.qede_sync_free_irqs.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_sync_free_irqs.exit

for.inc.i.for.body.i214_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i214

qede_sync_free_irqs.exit:                         ; preds = %for.inc.i.qede_sync_free_irqs.exit_crit_edge, %if.end37.qede_sync_free_irqs.exit_crit_edge
  %179 = ptrtoint ptr %used_cnt.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %used_cnt.i, align 1
  %msix_cnt12.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 1
  %180 = ptrtoint ptr %msix_cnt12.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %msix_cnt12.i, align 4
  br label %out

do.body39:                                        ; preds = %for.end118.i
  %181 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %182)
  %cmp42 = icmp ult i8 %182, 2
  br i1 %cmp42, label %do.end53, label %do.body39.if.end68_crit_edge, !prof !474

do.body39.if.end68_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

do.end53:                                         ; preds = %do.body39
  %183 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %ndev17, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %184, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not.i219 = icmp eq i8 %186, 0
  br i1 %tobool.not.i219, label %do.end53.cond.end62_crit_edge, label %lor.lhs.false.i223

do.end53.cond.end62_crit_edge:                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end62

lor.lhs.false.i223:                               ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #18
  %call.i220 = call ptr @strchr(ptr noundef %184, i32 noundef 37) #16
  %tobool2.not.i221 = icmp eq ptr %call.i220, null
  %tobool57.not = icmp eq ptr %184, null
  %or.cond325 = and i1 %tobool57.not, %tobool2.not.i221
  %spec.select.i229 = select i1 %tobool2.not.i221, ptr %184, ptr @.str.34
  %spec.select351 = select i1 %or.cond325, ptr @.str.20, ptr %spec.select.i229
  br label %cond.end62

cond.end62:                                       ; preds = %lor.lhs.false.i223, %do.end53.cond.end62_crit_edge
  %cond63 = phi ptr [ @.str.34, %do.end53.cond.end62_crit_edge ], [ %spec.select351, %lor.lhs.false.i223 ]
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.140, i32 noundef 2372, ptr noundef %cond63) #19
  br label %if.end68

if.end68:                                         ; preds = %cond.end62, %do.body39.if.end68_crit_edge, %netif_tx_disable.exit.if.end68_crit_edge
  call void @qede_vlan_mark_nonconfigured(ptr noundef %edev) #16
  %ops69 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %187 = ptrtoint ptr %ops69 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ops69, align 4
  %fastpath_stop = getelementptr inbounds %struct.qed_eth_ops, ptr %188, i32 0, i32 17
  %189 = ptrtoint ptr %fastpath_stop to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %fastpath_stop, align 4
  %191 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %edev, align 8
  %call71 = call i32 %190(ptr noundef %192) #16
  %b_arfs_capable74 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 11
  %193 = ptrtoint ptr %b_arfs_capable74 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %b_arfs_capable74, align 4, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool75.not = icmp eq i8 %194, 0
  br i1 %tobool75.not, label %if.end68.if.end77_crit_edge, label %if.then76

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

if.then76:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  call void @qede_poll_for_freeing_arfs_filters(ptr noundef %edev) #16
  call void @qede_free_arfs(ptr noundef %edev) #16
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end68.if.end77_crit_edge
  %int_info.i233 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20
  %used_cnt.i234 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 2
  %195 = ptrtoint ptr %used_cnt.i234 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %used_cnt.i234, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %cmp27.not.i235 = icmp eq i8 %196, 0
  br i1 %cmp27.not.i235, label %if.end77.qede_sync_free_irqs.exit255_crit_edge, label %for.body.lr.ph.i239

if.end77.qede_sync_free_irqs.exit255_crit_edge:   ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_sync_free_irqs.exit255

for.body.lr.ph.i239:                              ; preds = %if.end77
  %msix_cnt.i236 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 1
  %fp_array.i237 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  br label %for.body.i242

for.body.i242:                                    ; preds = %for.inc.i253.for.body.i242_crit_edge, %for.body.lr.ph.i239
  %i.028.i240 = phi i32 [ 0, %for.body.lr.ph.i239 ], [ %inc.i250, %for.inc.i253.for.body.i242_crit_edge ]
  %197 = ptrtoint ptr %msix_cnt.i236 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %msix_cnt.i236, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool.not.i241 = icmp eq i8 %198, 0
  br i1 %tobool.not.i241, label %if.else.i249, label %if.then.i247

if.then.i247:                                     ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #18
  %199 = ptrtoint ptr %int_info.i233 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %int_info.i233, align 8
  %arrayidx.i243 = getelementptr %struct.msix_entry, ptr %200, i32 %i.028.i240
  %201 = ptrtoint ptr %arrayidx.i243 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i243, align 4
  call void @synchronize_irq(i32 noundef %202) #16
  %203 = ptrtoint ptr %int_info.i233 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %int_info.i233, align 8
  %arrayidx6.i244 = getelementptr %struct.msix_entry, ptr %204, i32 %i.028.i240
  %205 = ptrtoint ptr %arrayidx6.i244 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx6.i244, align 4
  %207 = ptrtoint ptr %fp_array.i237 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %fp_array.i237, align 4
  %arrayidx8.i245 = getelementptr %struct.qede_fastpath, ptr %208, i32 %i.028.i240
  %call.i246 = call ptr @free_irq(i32 noundef %206, ptr noundef %arrayidx8.i245) #16
  br label %for.inc.i253

if.else.i249:                                     ; preds = %for.body.i242
  call void @__sanitizer_cov_trace_pc() #18
  %209 = ptrtoint ptr %ops69 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %ops69, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %210, align 4
  %simd_handler_clean.i248 = getelementptr inbounds %struct.qed_common_ops, ptr %212, i32 0, i32 13
  %213 = ptrtoint ptr %simd_handler_clean.i248 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %simd_handler_clean.i248, align 4
  %215 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %edev, align 8
  call void %214(ptr noundef %216, i32 noundef %i.028.i240) #16
  br label %for.inc.i253

for.inc.i253:                                     ; preds = %if.else.i249, %if.then.i247
  %inc.i250 = add nuw nsw i32 %i.028.i240, 1
  %217 = ptrtoint ptr %used_cnt.i234 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %used_cnt.i234, align 1
  %conv.i251 = zext i8 %218 to i32
  %cmp.i252 = icmp ult i32 %inc.i250, %conv.i251
  br i1 %cmp.i252, label %for.inc.i253.for.body.i242_crit_edge, label %for.inc.i253.qede_sync_free_irqs.exit255_crit_edge

for.inc.i253.qede_sync_free_irqs.exit255_crit_edge: ; preds = %for.inc.i253
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_sync_free_irqs.exit255

for.inc.i253.for.body.i242_crit_edge:             ; preds = %for.inc.i253
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i242

qede_sync_free_irqs.exit255:                      ; preds = %for.inc.i253.qede_sync_free_irqs.exit255_crit_edge, %if.end77.qede_sync_free_irqs.exit255_crit_edge
  %219 = ptrtoint ptr %used_cnt.i234 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %used_cnt.i234, align 1
  %msix_cnt12.i254 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 1
  %220 = ptrtoint ptr %msix_cnt12.i254 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %msix_cnt12.i254, align 4
  %221 = ptrtoint ptr %ops69 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ops69, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %222, align 4
  %set_fp_int = getelementptr inbounds %struct.qed_common_ops, ptr %224, i32 0, i32 8
  %225 = ptrtoint ptr %set_fp_int to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %set_fp_int, align 4
  %227 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %edev, align 8
  %call81 = call i32 %226(ptr noundef %228, i16 noundef zeroext 0) #16
  %num_queues.i256 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %229 = ptrtoint ptr %num_queues.i256 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %num_queues.i256, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %230)
  %cmp11.not.i = icmp eq i16 %230, 0
  br i1 %cmp11.not.i, label %qede_sync_free_irqs.exit255.qede_napi_disable_remove.exit_crit_edge, label %for.body.lr.ph.i258

qede_sync_free_irqs.exit255.qede_napi_disable_remove.exit_crit_edge: ; preds = %qede_sync_free_irqs.exit255
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_napi_disable_remove.exit

for.body.lr.ph.i258:                              ; preds = %qede_sync_free_irqs.exit255
  %fp_array.i257 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  br label %for.body.i262

for.body.i262:                                    ; preds = %for.body.i262.for.body.i262_crit_edge, %for.body.lr.ph.i258
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i258 ], [ %inc.i259, %for.body.i262.for.body.i262_crit_edge ]
  %231 = ptrtoint ptr %fp_array.i257 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %fp_array.i257, align 4
  %napi.i = getelementptr %struct.qede_fastpath, ptr %232, i32 %i.012.i, i32 4
  call void @napi_disable(ptr noundef %napi.i) #16
  %233 = ptrtoint ptr %fp_array.i257 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %fp_array.i257, align 4
  %napi4.i = getelementptr %struct.qede_fastpath, ptr %234, i32 %i.012.i, i32 4
  call void @__netif_napi_del(ptr noundef %napi4.i) #16
  call void @synchronize_net() #16
  %inc.i259 = add nuw nsw i32 %i.012.i, 1
  %235 = ptrtoint ptr %num_queues.i256 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %num_queues.i256, align 2
  %conv.i260 = zext i16 %236 to i32
  %cmp.i261 = icmp ult i32 %inc.i259, %conv.i260
  br i1 %cmp.i261, label %for.body.i262.for.body.i262_crit_edge, label %for.body.i262.qede_napi_disable_remove.exit_crit_edge

for.body.i262.qede_napi_disable_remove.exit_crit_edge: ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_napi_disable_remove.exit

for.body.i262.for.body.i262_crit_edge:            ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i262

qede_napi_disable_remove.exit:                    ; preds = %for.body.i262.qede_napi_disable_remove.exit_crit_edge, %qede_sync_free_irqs.exit255.qede_napi_disable_remove.exit_crit_edge
  br i1 %cmp13.not, label %if.then84, label %qede_napi_disable_remove.exit.if.end85_crit_edge

qede_napi_disable_remove.exit.if.end85_crit_edge: ; preds = %qede_napi_disable_remove.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

if.then84:                                        ; preds = %qede_napi_disable_remove.exit
  %237 = ptrtoint ptr %num_queues.i256 to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %num_queues.i256, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %cmp29.not.i = icmp eq i16 %238, 0
  br i1 %cmp29.not.i, label %if.then84.if.end85_crit_edge, label %for.body.lr.ph.i266

if.then84.if.end85_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

for.body.lr.ph.i266:                              ; preds = %if.then84
  %fp_array.i264 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %num_tc.i265 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 2
  %dp_module.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  br label %for.body.i269

for.body.i269:                                    ; preds = %for.inc11.i.for.body.i269_crit_edge, %for.body.lr.ph.i266
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i266 ], [ %inc12.i, %for.inc11.i.for.body.i269_crit_edge ]
  %239 = ptrtoint ptr %fp_array.i264 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %fp_array.i264, align 4
  %type.i267 = getelementptr %struct.qede_fastpath, ptr %240, i32 %i.030.i, i32 1
  %241 = ptrtoint ptr %type.i267 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %type.i267, align 4
  %243 = and i8 %242, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool.not.i268 = icmp eq i8 %243, 0
  br i1 %tobool.not.i268, label %for.body.i269.for.inc11.i_crit_edge, label %for.cond3.preheader.i

for.body.i269.for.inc11.i_crit_edge:              ; preds = %for.body.i269
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc11.i

for.cond3.preheader.i:                            ; preds = %for.body.i269
  %244 = ptrtoint ptr %num_tc.i265 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %num_tc.i265, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %cmp525.not.i = icmp eq i8 %245, 0
  br i1 %cmp525.not.i, label %for.cond3.preheader.i.for.inc11.i_crit_edge, label %for.cond3.preheader.i.for.body7.i_crit_edge

for.cond3.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body7.i

for.cond3.preheader.i.for.inc11.i_crit_edge:      ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc11.i

for.body7.i:                                      ; preds = %qede_empty_tx_queue.exit.i.for.body7.i_crit_edge, %for.cond3.preheader.i.for.body7.i_crit_edge
  %cos.026.i = phi i32 [ %inc.i274, %qede_empty_tx_queue.exit.i.for.body7.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body7.i_crit_edge ]
  %246 = ptrtoint ptr %fp_array.i264 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %fp_array.i264, align 4
  %txq.i270 = getelementptr %struct.qede_fastpath, ptr %247, i32 %i.030.i, i32 7
  %248 = ptrtoint ptr %txq.i270 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %txq.i270, align 8
  %arrayidx10.i = getelementptr %struct.qede_tx_queue, ptr %249, i32 %cos.026.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #16
  %250 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %len.i.i, align 4
  %251 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ndev17, align 4
  %ndev_txq_id.i.i = getelementptr %struct.qede_tx_queue, ptr %249, i32 %cos.026.i, i32 18
  %253 = ptrtoint ptr %ndev_txq_id.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %ndev_txq_id.i.i, align 2
  %conv.i.i271 = zext i16 %254 to i32
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %252, i32 0, i32 103
  %255 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %_tx.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr %struct.netdev_queue, ptr %256, i32 %conv.i.i271
  %u.i.i.i = getelementptr %struct.qede_tx_queue, ptr %249, i32 %cos.026.i, i32 15, i32 3
  %cons_idx.i.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i.i, i32 0, i32 1
  %257 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %cons_idx.i.i.i, align 2
  %259 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %u.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %258, i16 %260)
  %cmp.not129.i.i = icmp eq i16 %258, %260
  br i1 %cmp.not129.i.i, label %for.body7.i.qede_empty_tx_queue.exit.i_crit_edge, label %do.body.lr.ph.i.i

for.body7.i.qede_empty_tx_queue.exit.i_crit_edge: ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_empty_tx_queue.exit.i

do.body.lr.ph.i.i:                                ; preds = %for.body7.i
  %index.i.i = getelementptr %struct.qede_tx_queue, ptr %249, i32 %cos.026.i, i32 13
  %sw_tx_cons.i.i = getelementptr %struct.qede_tx_queue, ptr %249, i32 %cos.026.i, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end66.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %261 = phi i16 [ %260, %do.body.lr.ph.i.i ], [ %292, %if.end66.i.i.do.body.i.i_crit_edge ]
  %262 = phi i16 [ %258, %do.body.lr.ph.i.i ], [ %290, %if.end66.i.i.do.body.i.i_crit_edge ]
  %bytes_compl.0130.i.i = phi i32 [ 0, %do.body.lr.ph.i.i ], [ %add.i.i, %if.end66.i.i.do.body.i.i_crit_edge ]
  %263 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %cmp8.i.i = icmp eq i8 %264, 0
  br i1 %cmp8.i.i, label %land.rhs.i.i, label %do.body.i.i.do.end26.i.i_crit_edge

do.body.i.i.do.end26.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26.i.i

land.rhs.i.i:                                     ; preds = %do.body.i.i
  %265 = ptrtoint ptr %dp_module.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %dp_module.i.i, align 8
  %and.i.i272 = and i32 %266, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i272)
  %tobool.not.i.i273 = icmp eq i32 %and.i.i272, 0
  br i1 %tobool.not.i.i273, label %land.rhs.i.i.do.end26.i.i_crit_edge, label %do.end.i.i, !prof !476

land.rhs.i.i.do.end26.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  %267 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ndev17, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %268, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool.not.i.i.i = icmp eq i8 %270, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.cond.end.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end.i.i.cond.end.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call ptr @strchr(ptr noundef %268, i32 noundef 37) #16
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %tobool15.not.i.i = icmp eq ptr %268, null
  %or.cond.i.i = and i1 %tobool15.not.i.i, %tobool2.not.i.i.i
  %spec.select.i92.i.i = select i1 %tobool2.not.i.i.i, ptr %268, ptr @.str.34
  %spec.select.i.i = select i1 %or.cond.i.i, ptr @.str.20, ptr %spec.select.i92.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %lor.lhs.false.i.i.i, %do.end.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ @.str.34, %do.end.i.i.cond.end.i.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i.i ]
  %271 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %index.i.i, align 4
  %conv20.i.i = zext i16 %262 to i32
  %conv23.i.i = zext i16 %261 to i32
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, i32 noundef 1757, ptr noundef %cond.i.i, i32 noundef %272, i32 noundef %conv20.i.i, i32 noundef %conv23.i.i) #19
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %cond.end.i.i, %land.rhs.i.i.do.end26.i.i_crit_edge, %do.body.i.i.do.end26.i.i_crit_edge
  %call27.i.i = call i32 @qede_free_tx_pkt(ptr noundef %edev, ptr noundef %arrayidx10.i, ptr noundef nonnull %len.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end66.i.i, label %do.body30.i.i

do.body30.i.i:                                    ; preds = %do.end26.i.i
  %273 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %274)
  %cmp33.i.i = icmp ult i8 %274, 3
  br i1 %cmp33.i.i, label %do.end44.i.i, label %do.body30.i.i.while.end.i.i_crit_edge, !prof !474

do.body30.i.i.while.end.i.i_crit_edge:            ; preds = %do.body30.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

do.end44.i.i:                                     ; preds = %do.body30.i.i
  %275 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ndev17, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %276, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %278)
  %tobool.not.i99.i.i = icmp eq i8 %278, 0
  br i1 %tobool.not.i99.i.i, label %do.end44.i.i.cond.end53.i.i_crit_edge, label %lor.lhs.false.i103.i.i

do.end44.i.i.cond.end53.i.i_crit_edge:            ; preds = %do.end44.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end53.i.i

lor.lhs.false.i103.i.i:                           ; preds = %do.end44.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i100.i.i = call ptr @strchr(ptr noundef %276, i32 noundef 37) #16
  %tobool2.not.i101.i.i = icmp eq ptr %call.i100.i.i, null
  %tobool48.not.i.i = icmp eq ptr %276, null
  %or.cond124.i.i = and i1 %tobool48.not.i.i, %tobool2.not.i101.i.i
  %spec.select.i109.i.i = select i1 %tobool2.not.i101.i.i, ptr %276, ptr @.str.34
  %spec.select135.i.i = select i1 %or.cond124.i.i, ptr @.str.20, ptr %spec.select.i109.i.i
  br label %cond.end53.i.i

cond.end53.i.i:                                   ; preds = %lor.lhs.false.i103.i.i, %do.end44.i.i.cond.end53.i.i_crit_edge
  %cond54.i.i = phi ptr [ @.str.34, %do.end44.i.i.cond.end53.i.i_crit_edge ], [ %spec.select135.i.i, %lor.lhs.false.i103.i.i ]
  %279 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %index.i.i, align 4
  %281 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %cons_idx.i.i.i, align 2
  %conv58.i.i = zext i16 %282 to i32
  %283 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %u.i.i.i, align 4
  %conv61.i.i = zext i16 %284 to i32
  %call62.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.163, i32 noundef 1765, ptr noundef %cond54.i.i, i32 noundef %280, i32 noundef %conv58.i.i, i32 noundef %conv61.i.i) #19
  br label %while.end.i.i

if.end66.i.i:                                     ; preds = %do.end26.i.i
  %285 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %len.i.i, align 4
  %add.i.i = add i32 %286, %bytes_compl.0130.i.i
  %287 = ptrtoint ptr %sw_tx_cons.i.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %sw_tx_cons.i.i, align 2
  %inc67.i.i = add i16 %288, 1
  store i16 %inc67.i.i, ptr %sw_tx_cons.i.i, align 2
  %289 = ptrtoint ptr %cons_idx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %cons_idx.i.i.i, align 2
  %291 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %u.i.i.i, align 4
  %cmp.not.i.i = icmp eq i16 %290, %292
  br i1 %cmp.not.i.i, label %if.end66.i.i.while.end.i.i_crit_edge, label %if.end66.i.i.do.body.i.i_crit_edge

if.end66.i.i.do.body.i.i_crit_edge:               ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i

if.end66.i.i.while.end.i.i_crit_edge:             ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end66.i.i.while.end.i.i_crit_edge, %cond.end53.i.i, %do.body30.i.i.while.end.i.i_crit_edge
  %bytes_compl.0128.i.i = phi i32 [ %bytes_compl.0130.i.i, %do.body30.i.i.while.end.i.i_crit_edge ], [ %bytes_compl.0130.i.i, %cond.end53.i.i ], [ %add.i.i, %if.end66.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_compl.0128.i.i)
  %tobool.not.i116.i.i = icmp eq i32 %bytes_compl.0128.i.i, 0
  br i1 %tobool.not.i116.i.i, label %while.end.i.i.qede_empty_tx_queue.exit.i_crit_edge, label %if.end.i.i.i, !prof !474

while.end.i.i.qede_empty_tx_queue.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_empty_tx_queue.exit.i

if.end.i.i.i:                                     ; preds = %while.end.i.i
  %dql.i.i.i = getelementptr %struct.netdev_queue, ptr %256, i32 %conv.i.i271, i32 15
  call void @dql_completed(ptr noundef %dql.i.i.i, i32 noundef %bytes_compl.0128.i.i) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !477
  %adj_limit.i.i.i.i = getelementptr %struct.netdev_queue, ptr %256, i32 %conv.i.i271, i32 15, i32 1
  %293 = ptrtoint ptr %adj_limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load volatile i32, ptr %adj_limit.i.i.i.i, align 4
  %295 = ptrtoint ptr %dql.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load volatile i32, ptr %dql.i.i.i, align 128
  %sub.i.i.i.i = sub i32 %294, %296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.qede_empty_tx_queue.exit.i_crit_edge, label %if.end14.i.i.i, !prof !474

if.end.i.i.i.qede_empty_tx_queue.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_empty_tx_queue.exit.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %state.i.i.i = getelementptr %struct.netdev_queue, ptr %256, i32 %conv.i.i271, i32 13
  %call15.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool16.not.i.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool16.not.i.i.i, label %if.end14.i.i.i.qede_empty_tx_queue.exit.i_crit_edge, label %if.then17.i.i.i

if.end14.i.i.i.qede_empty_tx_queue.exit.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_empty_tx_queue.exit.i

if.then17.i.i.i:                                  ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @netif_schedule_queue(ptr noundef %arrayidx.i.i.i) #16
  br label %qede_empty_tx_queue.exit.i

qede_empty_tx_queue.exit.i:                       ; preds = %if.then17.i.i.i, %if.end14.i.i.i.qede_empty_tx_queue.exit.i_crit_edge, %if.end.i.i.i.qede_empty_tx_queue.exit.i_crit_edge, %while.end.i.i.qede_empty_tx_queue.exit.i_crit_edge, %for.body7.i.qede_empty_tx_queue.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #16
  %inc.i274 = add nuw nsw i32 %cos.026.i, 1
  %297 = ptrtoint ptr %num_tc.i265 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %num_tc.i265, align 1
  %conv4.i = zext i8 %298 to i32
  %cmp5.i = icmp ult i32 %inc.i274, %conv4.i
  br i1 %cmp5.i, label %qede_empty_tx_queue.exit.i.for.body7.i_crit_edge, label %qede_empty_tx_queue.exit.i.for.inc11.i_crit_edge

qede_empty_tx_queue.exit.i.for.inc11.i_crit_edge: ; preds = %qede_empty_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc11.i

qede_empty_tx_queue.exit.i.for.body7.i_crit_edge: ; preds = %qede_empty_tx_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body7.i

for.inc11.i:                                      ; preds = %qede_empty_tx_queue.exit.i.for.inc11.i_crit_edge, %for.cond3.preheader.i.for.inc11.i_crit_edge, %for.body.i269.for.inc11.i_crit_edge
  %inc12.i = add nuw nsw i32 %i.030.i, 1
  %299 = ptrtoint ptr %num_queues.i256 to i32
  call void @__asan_load2_noabort(i32 %299)
  %300 = load i16, ptr %num_queues.i256, align 2
  %conv.i275 = zext i16 %300 to i32
  %cmp.i276 = icmp ult i32 %inc12.i, %conv.i275
  br i1 %cmp.i276, label %for.inc11.i.for.body.i269_crit_edge, label %for.inc11.i.if.end85_crit_edge

for.inc11.i.if.end85_crit_edge:                   ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end85

for.inc11.i.for.body.i269_crit_edge:              ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i269

if.end85:                                         ; preds = %for.inc11.i.if.end85_crit_edge, %if.then84.if.end85_crit_edge, %qede_napi_disable_remove.exit.if.end85_crit_edge
  call fastcc void @qede_free_mem_load(ptr noundef %edev)
  call fastcc void @qede_free_fp_array(ptr noundef %edev)
  br label %out

out:                                              ; preds = %if.end85, %qede_sync_free_irqs.exit
  br i1 %is_locked, label %out.if.end88_crit_edge, label %if.then87

out.if.end88_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.then87:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  %qede_lock.i277 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %qede_lock.i277) #16
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %out.if.end88_crit_edge
  br i1 %cmp13.not, label %if.end88.if.end121_crit_edge, label %do.body92

if.end88.if.end121_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end121

do.body92:                                        ; preds = %if.end88
  %301 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %302)
  %cmp95 = icmp ult i8 %302, 3
  br i1 %cmp95, label %do.end106, label %if.end121.thread, !prof !474

if.end121.thread:                                 ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #18
  %ptp_skip_txts319 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 9
  %303 = ptrtoint ptr %ptp_skip_txts319 to i32
  call void @__asan_store8_noabort(i32 %303)
  store i64 0, ptr %ptp_skip_txts319, align 8
  br label %do.end150

do.end106:                                        ; preds = %do.body92
  %304 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %ndev17, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %305, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool.not.i278 = icmp eq i8 %307, 0
  br i1 %tobool.not.i278, label %do.end106.cond.end115_crit_edge, label %lor.lhs.false.i282

do.end106.cond.end115_crit_edge:                  ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end115

lor.lhs.false.i282:                               ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #18
  %call.i279 = call ptr @strchr(ptr noundef %305, i32 noundef 37) #16
  %tobool2.not.i280 = icmp eq ptr %call.i279, null
  %tobool110.not = icmp eq ptr %305, null
  %or.cond326 = and i1 %tobool110.not, %tobool2.not.i280
  %spec.select.i288 = select i1 %tobool2.not.i280, ptr %305, ptr @.str.34
  %spec.select352 = select i1 %or.cond326, ptr @.str.20, ptr %spec.select.i288
  br label %cond.end115

cond.end115:                                      ; preds = %lor.lhs.false.i282, %do.end106.cond.end115_crit_edge
  %cond116 = phi ptr [ @.str.34, %do.end106.cond.end115_crit_edge ], [ %spec.select352, %lor.lhs.false.i282 ]
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.140, i32 noundef 2400, ptr noundef %cond116) #19
  br label %if.end121

if.end121:                                        ; preds = %cond.end115, %if.end88.if.end121_crit_edge
  %308 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %308)
  %.pr = load i8, ptr %dp_level, align 4
  %ptp_skip_txts = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 9
  %309 = ptrtoint ptr %ptp_skip_txts to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 0, ptr %ptp_skip_txts, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr)
  %cmp125 = icmp ult i8 %.pr, 2
  br i1 %cmp125, label %do.end136, label %if.end121.do.end150_crit_edge, !prof !474

if.end121.do.end150_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end150

do.end136:                                        ; preds = %if.end121
  %310 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %ndev17, align 4
  %312 = ptrtoint ptr %311 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %311, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool.not.i292 = icmp eq i8 %313, 0
  br i1 %tobool.not.i292, label %do.end136.cond.end145_crit_edge, label %lor.lhs.false.i296

do.end136.cond.end145_crit_edge:                  ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end145

lor.lhs.false.i296:                               ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #18
  %call.i293 = call ptr @strchr(ptr noundef %311, i32 noundef 37) #16
  %tobool2.not.i294 = icmp eq ptr %call.i293, null
  %tobool140.not = icmp eq ptr %311, null
  %or.cond327 = and i1 %tobool140.not, %tobool2.not.i294
  %spec.select.i302 = select i1 %tobool2.not.i294, ptr %311, ptr @.str.34
  %spec.select353 = select i1 %or.cond327, ptr @.str.20, ptr %spec.select.i302
  br label %cond.end145

cond.end145:                                      ; preds = %lor.lhs.false.i296, %do.end136.cond.end145_crit_edge
  %cond146 = phi ptr [ @.str.34, %do.end136.cond.end145_crit_edge ], [ %spec.select353, %lor.lhs.false.i296 ]
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.140, i32 noundef 2404, ptr noundef %cond146) #19
  br label %do.end150

do.end150:                                        ; preds = %cond.end145, %if.end121.do.end150_crit_edge, %if.end121.thread
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %link_params) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_load(ptr noundef %edev, i32 noundef %mode, i1 noundef zeroext %is_locked) unnamed_addr #3 align 64 {
entry:
  %params.i.i.i = alloca %struct.qed_chain_init_params, align 4
  %sb_phys.i.i.i = alloca i32, align 4
  %link_params = alloca %struct.qed_link_params, align 4
  %coal = alloca %struct.ethtool_coalesce, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %link_params) #16
  %0 = call ptr @memset(ptr %link_params, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %coal) #16
  %1 = call ptr @memset(ptr %coal, i32 0, i32 92)
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ult i8 %3, 2
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge, !prof !474

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9

do.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool4.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool4.not, %tobool2.not.i
  %spec.select.i316 = select i1 %tobool2.not.i, ptr %5, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i316
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.168, i32 noundef 2421, ptr noundef %cond) #19
  br label %do.end9

do.end9:                                          ; preds = %cond.end, %entry.do.end9_crit_edge
  br i1 %is_locked, label %do.end9.if.end12_crit_edge, label %if.then11

do.end9.if.end12_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #18
  %qede_lock.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %qede_lock.i, i32 noundef 0) #16
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end9.if.end12_crit_edge
  %req_queues.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 17
  %8 = ptrtoint ptr %req_queues.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %req_queues.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not.i320 = icmp eq i16 %9, 0
  br i1 %tobool.not.i320, label %if.else.i, label %if.end12.if.end.i_crit_edge

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %call.i321 = tail call i32 @netif_get_num_default_rss_queues() #16
  %num_hwfns.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 3
  %10 = ptrtoint ptr %num_hwfns.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_hwfns.i, align 4
  %conv.i = zext i8 %11 to i32
  %mul.i = mul i32 %call.i321, %conv.i
  %conv2.i = trunc i32 %mul.i to i16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end12.if.end.i_crit_edge
  %rss_num.0.i = phi i16 [ %conv2.i, %if.else.i ], [ %9, %if.end12.if.end.i_crit_edge ]
  %num_queues.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_queues.i, align 4
  %conv5.i = zext i8 %13 to i32
  %conv6.i = zext i16 %rss_num.0.i to i32
  %14 = tail call i32 @llvm.umin.i32(i32 %conv5.i, i32 %conv6.i) #16
  %conv10.i = trunc i32 %14 to i16
  %ops.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %set_fp_int.i = getelementptr inbounds %struct.qed_common_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %set_fp_int.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_fp_int.i, align 4
  %21 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %edev, align 8
  %call12.i = tail call i32 %20(ptr noundef %22, i16 noundef zeroext %conv10.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp sgt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then15.i, label %qede_set_num_queues.exit

if.then15.i:                                      ; preds = %if.end.i
  %conv16.i = trunc i32 %call12.i to i16
  %num_queues17.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %23 = ptrtoint ptr %num_queues17.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv16.i, ptr %num_queues17.i, align 2
  %24 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp19.i = icmp ult i8 %25, 2
  br i1 %cmp19.i, label %do.end.i, label %if.then15.i.qede_set_num_queues.exit.thread_crit_edge, !prof !474

if.then15.i.qede_set_num_queues.exit.thread_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_set_num_queues.exit.thread

do.end.i:                                         ; preds = %if.then15.i
  %ndev.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %26 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end32.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end32.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end32.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call ptr @strchr(ptr noundef %27, i32 noundef 37) #16
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool27.not.i = icmp eq ptr %27, null
  %or.cond.i = and i1 %tobool27.not.i, %tobool2.not.i.i
  %spec.select.i65.i = select i1 %tobool2.not.i.i, ptr %27, ptr @.str.34
  %spec.select.i322 = select i1 %or.cond.i, ptr @.str.20, ptr %spec.select.i65.i
  br label %cond.end32.i

cond.end32.i:                                     ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end32.i_crit_edge
  %cond33.i = phi ptr [ @.str.34, %do.end.i.cond.end32.i_crit_edge ], [ %spec.select.i322, %lor.lhs.false.i.i ]
  %conv35.i = and i32 %call12.i, 65535
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.185, i32 noundef 1433, ptr noundef %cond33.i, i32 noundef %conv35.i, i32 noundef %14) #19
  br label %qede_set_num_queues.exit.thread

qede_set_num_queues.exit.thread:                  ; preds = %cond.end32.i, %if.then15.i.qede_set_num_queues.exit.thread_crit_edge
  %req_num_tx.i490 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 13
  %30 = ptrtoint ptr %req_num_tx.i490 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %req_num_tx.i490, align 4
  %fp_num_tx.i491 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 14
  %32 = ptrtoint ptr %fp_num_tx.i491 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %fp_num_tx.i491, align 1
  %req_num_rx.i492 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 15
  %33 = ptrtoint ptr %req_num_rx.i492 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %req_num_rx.i492, align 2
  %fp_num_rx.i493 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 16
  %35 = ptrtoint ptr %fp_num_rx.i493 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %fp_num_rx.i493, align 1
  br label %if.end16

qede_set_num_queues.exit:                         ; preds = %if.end.i
  %req_num_tx.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 13
  %36 = ptrtoint ptr %req_num_tx.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %req_num_tx.i, align 4
  %fp_num_tx.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 14
  %38 = ptrtoint ptr %fp_num_tx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %fp_num_tx.i, align 1
  %req_num_rx.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 15
  %39 = ptrtoint ptr %req_num_rx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %req_num_rx.i, align 2
  %fp_num_rx.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 16
  %41 = ptrtoint ptr %fp_num_rx.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %fp_num_rx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool14.not = icmp eq i32 %call12.i, 0
  br i1 %tobool14.not, label %qede_set_num_queues.exit.if.end16_crit_edge, label %qede_set_num_queues.exit.out_crit_edge

qede_set_num_queues.exit.out_crit_edge:           ; preds = %qede_set_num_queues.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

qede_set_num_queues.exit.if.end16_crit_edge:      ; preds = %qede_set_num_queues.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.end16:                                         ; preds = %qede_set_num_queues.exit.if.end16_crit_edge, %qede_set_num_queues.exit.thread
  %fp_num_rx.i499 = phi ptr [ %fp_num_rx.i493, %qede_set_num_queues.exit.thread ], [ %fp_num_rx.i, %qede_set_num_queues.exit.if.end16_crit_edge ]
  %42 = phi i8 [ %34, %qede_set_num_queues.exit.thread ], [ %40, %qede_set_num_queues.exit.if.end16_crit_edge ]
  %fp_num_tx.i495 = phi ptr [ %fp_num_tx.i491, %qede_set_num_queues.exit.thread ], [ %fp_num_tx.i, %qede_set_num_queues.exit.if.end16_crit_edge ]
  %num_queues.i324 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %43 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_queues.i324, align 2
  %conv.i325 = zext i16 %44 to i32
  %45 = mul nuw nsw i32 %conv.i325, 272
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #20
  %fp_array.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %46 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i.i.i, ptr %fp_array.i, align 4
  %tobool.not.i326 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i326, label %do.body.i, label %if.end15.i

do.body.i:                                        ; preds = %if.end16
  %47 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %48)
  %cmp.i = icmp ult i8 %48, 3
  br i1 %cmp.i, label %do.end.i330, label %do.body.i.qede_alloc_fp_array.exit_crit_edge, !prof !474

do.body.i.qede_alloc_fp_array.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_fp_array.exit

do.end.i330:                                      ; preds = %do.body.i
  %ndev.i328 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %49 = ptrtoint ptr %ndev.i328 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev.i328, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i329 = icmp eq i8 %52, 0
  br i1 %tobool.not.i.i329, label %do.end.i330.cond.end.i_crit_edge, label %lor.lhs.false.i.i335

do.end.i330.cond.end.i_crit_edge:                 ; preds = %do.end.i330
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

lor.lhs.false.i.i335:                             ; preds = %do.end.i330
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i331 = tail call ptr @strchr(ptr noundef %50, i32 noundef 37) #16
  %tobool2.not.i.i332 = icmp eq ptr %call.i.i331, null
  %tobool9.not.i = icmp eq ptr %50, null
  %or.cond.i333 = and i1 %tobool9.not.i, %tobool2.not.i.i332
  %spec.select.i177.i = select i1 %tobool2.not.i.i332, ptr %50, ptr @.str.34
  %spec.select.i334 = select i1 %or.cond.i333, ptr @.str.20, ptr %spec.select.i177.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i335, %do.end.i330.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.34, %do.end.i330.cond.end.i_crit_edge ], [ %spec.select.i334, %lor.lhs.false.i.i335 ]
  %call12.i336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 969, ptr noundef %cond.i) #19
  br label %qede_alloc_fp_array.exit

if.end15.i:                                       ; preds = %if.end16
  %coal_entry.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 12
  %53 = ptrtoint ptr %coal_entry.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %coal_entry.i, align 8
  %55 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %num_queues.i324, align 2
  %conv17.i = zext i16 %56 to i32
  %mul.i337 = mul nuw nsw i32 %conv17.i, 6
  %call18.i = tail call noalias ptr @krealloc(ptr noundef %54, i32 noundef %mul.i337, i32 noundef 3264) #21
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %do.end24.i, label %if.end39.i

do.end24.i:                                       ; preds = %if.end15.i
  %ndev26.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %57 = ptrtoint ptr %ndev26.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev26.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i181.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i181.i, label %do.end24.i.cond.end33.i_crit_edge, label %lor.lhs.false.i185.i

do.end24.i.cond.end33.i_crit_edge:                ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end33.i

lor.lhs.false.i185.i:                             ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i182.i = tail call ptr @strchr(ptr noundef %58, i32 noundef 37) #16
  %tobool2.not.i183.i = icmp eq ptr %call.i182.i, null
  %tobool28.not.i = icmp eq ptr %58, null
  %or.cond279.i = and i1 %tobool28.not.i, %tobool2.not.i183.i
  %spec.select.i191.i = select i1 %tobool2.not.i183.i, ptr %58, ptr @.str.34
  %spec.select291.i = select i1 %or.cond279.i, ptr @.str.20, ptr %spec.select.i191.i
  br label %cond.end33.i

cond.end33.i:                                     ; preds = %lor.lhs.false.i185.i, %do.end24.i.cond.end33.i_crit_edge
  %cond34.i = phi ptr [ @.str.34, %do.end24.i.cond.end33.i_crit_edge ], [ %spec.select291.i, %lor.lhs.false.i185.i ]
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.187, i32 noundef 976, ptr noundef %cond34.i) #19
  %61 = ptrtoint ptr %coal_entry.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %coal_entry.i, align 8
  tail call void @kfree(ptr noundef %62) #16
  br label %qede_alloc_fp_array.exit

if.end39.i:                                       ; preds = %if.end15.i
  %63 = ptrtoint ptr %coal_entry.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call18.i, ptr %coal_entry.i, align 8
  %64 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %num_queues.i324, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp49284.not.i = icmp eq i16 %65, 0
  br i1 %cmp49284.not.i, label %if.end39.i.do.body25_crit_edge, label %for.body.lr.ph.i

if.end39.i.do.body25_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body25

for.body.lr.ph.i:                                 ; preds = %if.end39.i
  %conv42.i = trunc i16 %65 to i8
  %66 = ptrtoint ptr %fp_num_tx.i495 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %fp_num_tx.i495, align 1
  %68 = add i8 %42, %67
  %sub45.i = sub i8 %conv42.i, %68
  %num_tc.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 2
  %xdp_prog.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fp_combined.0290.i = phi i8 [ %sub45.i, %for.body.lr.ph.i ], [ %fp_combined.1.i, %for.inc.i.for.body.i_crit_edge ]
  %fp_rx.0289.i = phi i8 [ %42, %for.body.lr.ph.i ], [ %fp_rx.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0285.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %fp_array.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %71 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %71, i32 noundef 3520, i32 noundef 28) #22
  %sb_info.i = getelementptr %struct.qede_fastpath, ptr %70, i32 %i.0285.i, i32 5
  %72 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i.i, ptr %sb_info.i, align 8
  %tobool54.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool54.not.i, label %do.body56.i, label %if.end85.i

do.body56.i:                                      ; preds = %for.body.i
  %73 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %74)
  %cmp59.i = icmp ult i8 %74, 3
  br i1 %cmp59.i, label %do.end70.i, label %do.body56.i.qede_alloc_fp_array.exit_crit_edge, !prof !474

do.body56.i.qede_alloc_fp_array.exit_crit_edge:   ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_fp_array.exit

do.end70.i:                                       ; preds = %do.body56.i
  %ndev72.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %75 = ptrtoint ptr %ndev72.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ndev72.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i197.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i197.i, label %do.end70.i.cond.end79.i_crit_edge, label %lor.lhs.false.i201.i

do.end70.i.cond.end79.i_crit_edge:                ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end79.i

lor.lhs.false.i201.i:                             ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i198.i = tail call ptr @strchr(ptr noundef %76, i32 noundef 37) #16
  %tobool2.not.i199.i = icmp eq ptr %call.i198.i, null
  %tobool74.not.i = icmp eq ptr %76, null
  %or.cond280.i = and i1 %tobool74.not.i, %tobool2.not.i199.i
  %spec.select.i207.i = select i1 %tobool2.not.i199.i, ptr %76, ptr @.str.34
  %spec.select292.i = select i1 %or.cond280.i, ptr @.str.20, ptr %spec.select.i207.i
  br label %cond.end79.i

cond.end79.i:                                     ; preds = %lor.lhs.false.i201.i, %do.end70.i.cond.end79.i_crit_edge
  %cond80.i = phi ptr [ @.str.34, %do.end70.i.cond.end79.i_crit_edge ], [ %spec.select292.i, %lor.lhs.false.i201.i ]
  %call81.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.187, i32 noundef 994, ptr noundef %cond80.i) #19
  br label %qede_alloc_fp_array.exit

if.end85.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fp_rx.0289.i)
  %tobool86.not.i = icmp eq i8 %fp_rx.0289.i, 0
  br i1 %tobool86.not.i, label %if.else.i339, label %if.then87.i

if.then87.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #18
  %type.i = getelementptr %struct.qede_fastpath, ptr %70, i32 %i.0285.i, i32 1
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 2, ptr %type.i, align 4
  %dec.i = add i8 %fp_rx.0289.i, -1
  br label %if.end95.i

if.else.i339:                                     ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fp_combined.0290.i)
  %tobool88.not.i = icmp eq i8 %fp_combined.0290.i, 0
  %type93.i = getelementptr %struct.qede_fastpath, ptr %70, i32 %i.0285.i, i32 1
  br i1 %tobool88.not.i, label %if.else92.i, label %if.then89.i

if.then89.i:                                      ; preds = %if.else.i339
  call void @__sanitizer_cov_trace_pc() #18
  %80 = ptrtoint ptr %type93.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 3, ptr %type93.i, align 4
  %dec91.i = add i8 %fp_combined.0290.i, -1
  br label %if.end95.i

if.else92.i:                                      ; preds = %if.else.i339
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %type93.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %type93.i, align 4
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.else92.i, %if.then89.i, %if.then87.i
  %fp_rx.1.i = phi i8 [ %dec.i, %if.then87.i ], [ 0, %if.then89.i ], [ 0, %if.else92.i ]
  %fp_combined.1.i = phi i8 [ %fp_combined.0290.i, %if.then87.i ], [ %dec91.i, %if.then89.i ], [ 0, %if.else92.i ]
  %type96.i = getelementptr %struct.qede_fastpath, ptr %70, i32 %i.0285.i, i32 1
  %82 = ptrtoint ptr %type96.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %type96.i, align 4
  %84 = and i8 %83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool98.not.i = icmp eq i8 %84, 0
  br i1 %tobool98.not.i, label %if.end95.i.if.end106.i_crit_edge, label %if.end7.i.i244.i

if.end95.i.if.end106.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106.i

if.end7.i.i244.i:                                 ; preds = %if.end95.i
  %85 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %num_tc.i, align 1
  %conv100.i = zext i8 %86 to i32
  %87 = mul nuw nsw i32 %conv100.i, 200
  %call8.i.i243.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %87, i32 noundef 3520) #20
  %txq.i = getelementptr %struct.qede_fastpath, ptr %70, i32 %i.0285.i, i32 7
  %88 = ptrtoint ptr %txq.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call8.i.i243.i, ptr %txq.i, align 8
  %tobool103.not.i = icmp eq ptr %call8.i.i243.i, null
  br i1 %tobool103.not.i, label %if.end7.i.i244.i.qede_alloc_fp_array.exit_crit_edge, label %if.end7.i.i244.i.if.end106.i_crit_edge

if.end7.i.i244.i.if.end106.i_crit_edge:           ; preds = %if.end7.i.i244.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end106.i

if.end7.i.i244.i.qede_alloc_fp_array.exit_crit_edge: ; preds = %if.end7.i.i244.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_fp_array.exit

if.end106.i:                                      ; preds = %if.end7.i.i244.i.if.end106.i_crit_edge, %if.end95.i.if.end106.i_crit_edge
  %89 = ptrtoint ptr %type96.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %type96.i, align 4
  %91 = and i8 %90, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool110.not.i = icmp eq i8 %91, 0
  br i1 %tobool110.not.i, label %if.end106.i.for.inc.i_crit_edge, label %if.then111.i

if.end106.i.for.inc.i_crit_edge:                  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then111.i:                                     ; preds = %if.end106.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %92 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i249.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 2176) #22
  %rxq.i = getelementptr %struct.qede_fastpath, ptr %70, i32 %i.0285.i, i32 6
  %93 = ptrtoint ptr %rxq.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call7.i.i249.i, ptr %rxq.i, align 4
  %tobool114.not.i = icmp eq ptr %call7.i.i249.i, null
  br i1 %tobool114.not.i, label %if.then111.i.qede_alloc_fp_array.exit_crit_edge, label %if.end116.i

if.then111.i.qede_alloc_fp_array.exit_crit_edge:  ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_fp_array.exit

if.end116.i:                                      ; preds = %if.then111.i
  %94 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %xdp_prog.i, align 8
  %tobool117.not.i = icmp eq ptr %95, null
  br i1 %tobool117.not.i, label %if.end116.i.for.inc.i_crit_edge, label %if.then118.i

if.end116.i.for.inc.i_crit_edge:                  ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then118.i:                                     ; preds = %if.end116.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %96 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i252.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %96, i32 noundef 3520, i32 noundef 200) #22
  %xdp_tx.i = getelementptr %struct.qede_fastpath, ptr %70, i32 %i.0285.i, i32 8
  %97 = ptrtoint ptr %xdp_tx.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i252.i, ptr %xdp_tx.i, align 4
  %tobool121.not.i = icmp eq ptr %call7.i.i252.i, null
  br i1 %tobool121.not.i, label %if.then118.i.qede_alloc_fp_array.exit_crit_edge, label %if.end123.i

if.then118.i.qede_alloc_fp_array.exit_crit_edge:  ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_fp_array.exit

if.end123.i:                                      ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #18
  %98 = ptrtoint ptr %type96.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %type96.i, align 4
  %100 = or i8 %99, 4
  store i8 %100, ptr %type96.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end123.i, %if.end116.i.for.inc.i_crit_edge, %if.end106.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0285.i, 1
  %101 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %num_queues.i324, align 2
  %conv48.i = zext i16 %102 to i32
  %cmp49.i = icmp ult i32 %inc.i, %conv48.i
  br i1 %cmp49.i, label %for.inc.i.for.body.i_crit_edge, label %if.end20

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

qede_alloc_fp_array.exit:                         ; preds = %if.then118.i.qede_alloc_fp_array.exit_crit_edge, %if.then111.i.qede_alloc_fp_array.exit_crit_edge, %if.end7.i.i244.i.qede_alloc_fp_array.exit_crit_edge, %cond.end79.i, %do.body56.i.qede_alloc_fp_array.exit_crit_edge, %cond.end33.i, %cond.end.i, %do.body.i.qede_alloc_fp_array.exit_crit_edge
  tail call fastcc void @qede_free_fp_array(ptr noundef %edev) #16
  br label %out

if.end20:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %cmp258.not.i = icmp eq i16 %102, 0
  br i1 %cmp258.not.i, label %if.end20.qede_init_fp.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i347

if.end20.qede_init_fp.exitthread-pre-split_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_init_fp.exitthread-pre-split

for.body.lr.ph.i347:                              ; preds = %if.end20
  %fp_array.i342 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %pdev.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 2
  %ndev.i343 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %is_legacy.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 6
  br label %for.body.i350

for.body.i350:                                    ; preds = %if.end122.i.for.body.i350_crit_edge, %for.body.lr.ph.i347
  %queue_id.0263.i = phi i32 [ 0, %for.body.lr.ph.i347 ], [ %inc128.i, %if.end122.i.for.body.i350_crit_edge ]
  %rxq_index.0262.i = phi i32 [ 0, %for.body.lr.ph.i347 ], [ %rxq_index.1.i, %if.end122.i.for.body.i350_crit_edge ]
  %txq_index.0260.i = phi i32 [ 0, %for.body.lr.ph.i347 ], [ %txq_index.1.i, %if.end122.i.for.body.i350_crit_edge ]
  %init_xdp.0.off0259.i = phi i1 [ false, %for.body.lr.ph.i347 ], [ %init_xdp.1.off0.i, %if.end122.i.for.body.i350_crit_edge ]
  %103 = ptrtoint ptr %fp_array.i342 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fp_array.i342, align 4
  %arrayidx.i = getelementptr %struct.qede_fastpath, ptr %104, i32 %queue_id.0263.i
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %edev, ptr %arrayidx.i, align 8
  %conv3.i = trunc i32 %queue_id.0263.i to i8
  %id.i = getelementptr %struct.qede_fastpath, ptr %104, i32 %queue_id.0263.i, i32 2
  %106 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv3.i, ptr %id.i, align 1
  %type.i348 = getelementptr %struct.qede_fastpath, ptr %104, i32 %queue_id.0263.i, i32 1
  %107 = ptrtoint ptr %type.i348 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %type.i348, align 4
  %109 = and i8 %108, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i349 = icmp eq i8 %109, 0
  br i1 %tobool.not.i349, label %for.body.i350.if.end.i353_crit_edge, label %if.then.i

for.body.i350.if.end.i353_crit_edge:              ; preds = %for.body.i350
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i353

if.then.i:                                        ; preds = %for.body.i350
  call void @__sanitizer_cov_trace_pc() #18
  %110 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %num_queues.i, align 4
  %conv6.i351 = zext i8 %111 to i32
  %add.i = add i32 %rxq_index.0262.i, %conv6.i351
  %xdp_tx.i352 = getelementptr %struct.qede_fastpath, ptr %104, i32 %queue_id.0263.i, i32 8
  %112 = ptrtoint ptr %xdp_tx.i352 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %xdp_tx.i352, align 4
  %index.i = getelementptr inbounds %struct.qede_tx_queue, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add.i, ptr %index.i, align 4
  %115 = load ptr, ptr %xdp_tx.i352, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %115, align 8
  %117 = load ptr, ptr %xdp_tx.i352, align 4
  %xdp_tx_lock.i = getelementptr inbounds %struct.qede_tx_queue, ptr %117, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %xdp_tx_lock.i, ptr noundef nonnull @.str.194, ptr noundef nonnull @qede_init_fp.__key, i16 noundef signext 3) #16
  br label %if.end.i353

if.end.i353:                                      ; preds = %if.then.i, %for.body.i350.if.end.i353_crit_edge
  %init_xdp.1.off0.i = phi i1 [ true, %if.then.i ], [ %init_xdp.0.off0259.i, %for.body.i350.if.end.i353_crit_edge ]
  %118 = ptrtoint ptr %type.i348 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %type.i348, align 4
  %120 = and i8 %119, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool12.not.i = icmp eq i8 %120, 0
  br i1 %tobool12.not.i, label %if.end.i353.if.end87.i_crit_edge, label %if.then13.i

if.end.i353.if.end87.i_crit_edge:                 ; preds = %if.end.i353
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87.i

if.then13.i:                                      ; preds = %if.end.i353
  %inc.i354 = add i32 %rxq_index.0262.i, 1
  %conv14.i = trunc i32 %rxq_index.0262.i to i8
  %rxq.i355 = getelementptr %struct.qede_fastpath, ptr %104, i32 %queue_id.0263.i, i32 6
  %121 = ptrtoint ptr %rxq.i355 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rxq.i355, align 4
  %rxq_id.i = getelementptr inbounds %struct.qede_rx_queue, ptr %122, i32 0, i32 8
  %123 = ptrtoint ptr %rxq_id.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv14.i, ptr %rxq_id.i, align 1
  %124 = ptrtoint ptr %type.i348 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %type.i348, align 4
  %126 = load ptr, ptr %rxq.i355, align 4
  %data_direction22.i = getelementptr inbounds %struct.qede_rx_queue, ptr %126, i32 0, i32 7
  %127 = lshr i8 %125, 1
  %128 = and i8 %127, 2
  %129 = xor i8 %128, 2
  %130 = ptrtoint ptr %data_direction22.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %data_direction22.i, align 2
  %131 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %132, i32 0, i32 44
  %133 = load ptr, ptr %rxq.i355, align 4
  %dev25.i = getelementptr inbounds %struct.qede_rx_queue, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %dev25.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %dev.i, ptr %dev25.i, align 8
  %135 = load ptr, ptr %rxq.i355, align 4
  %xdp_rxq.i = getelementptr inbounds %struct.qede_rx_queue, ptr %135, i32 0, i32 25
  %136 = ptrtoint ptr %ndev.i343 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ndev.i343, align 4
  %rxq_id28.i = getelementptr inbounds %struct.qede_rx_queue, ptr %135, i32 0, i32 8
  %138 = ptrtoint ptr %rxq_id28.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %rxq_id28.i, align 1
  %conv29.i = zext i8 %139 to i32
  %call30.i = tail call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq.i, ptr noundef %137, i32 noundef %conv29.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end44.i, label %if.then13.i.if.end50.i_crit_edge, !prof !474

if.then13.i.if.end50.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

do.end44.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1829, i32 noundef 9, ptr noundef null) #16
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end44.i, %if.then13.i.if.end50.i_crit_edge
  %140 = ptrtoint ptr %rxq.i355 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rxq.i355, align 4
  %xdp_rxq58.i = getelementptr inbounds %struct.qede_rx_queue, ptr %141, i32 0, i32 25
  %call59.i = tail call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %xdp_rxq58.i, i32 noundef 1, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end50.i.if.end87.i_crit_edge, label %do.body62.i

if.end50.i.if.end87.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87.i

do.body62.i:                                      ; preds = %if.end50.i
  %142 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %143)
  %cmp64.i = icmp ult i8 %143, 3
  br i1 %cmp64.i, label %do.end75.i, label %do.body62.i.if.end87.i_crit_edge, !prof !474

do.body62.i.if.end87.i_crit_edge:                 ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87.i

do.end75.i:                                       ; preds = %do.body62.i
  %144 = ptrtoint ptr %ndev.i343 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ndev.i343, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %145, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i.i356 = icmp eq i8 %147, 0
  br i1 %tobool.not.i.i356, label %do.end75.i.cond.end.i363_crit_edge, label %lor.lhs.false.i.i361

do.end75.i.cond.end.i363_crit_edge:               ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i363

lor.lhs.false.i.i361:                             ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i357 = tail call ptr @strchr(ptr noundef %145, i32 noundef 37) #16
  %tobool2.not.i.i358 = icmp eq ptr %call.i.i357, null
  %tobool79.not.i = icmp eq ptr %145, null
  %or.cond.i359 = and i1 %tobool79.not.i, %tobool2.not.i.i358
  %spec.select.i227.i = select i1 %tobool2.not.i.i358, ptr %145, ptr @.str.34
  %spec.select.i360 = select i1 %or.cond.i359, ptr @.str.20, ptr %spec.select.i227.i
  br label %cond.end.i363

cond.end.i363:                                    ; preds = %lor.lhs.false.i.i361, %do.end75.i.cond.end.i363_crit_edge
  %cond.i362 = phi ptr [ @.str.34, %do.end75.i.cond.end.i363_crit_edge ], [ %spec.select.i360, %lor.lhs.false.i.i361 ]
  %call82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.196, i32 noundef 1835, ptr noundef %cond.i362) #19
  br label %if.end87.i

if.end87.i:                                       ; preds = %cond.end.i363, %do.body62.i.if.end87.i_crit_edge, %if.end50.i.if.end87.i_crit_edge, %if.end.i353.if.end87.i_crit_edge
  %rxq_index.1.i = phi i32 [ %inc.i354, %cond.end.i363 ], [ %inc.i354, %do.body62.i.if.end87.i_crit_edge ], [ %inc.i354, %if.end50.i.if.end87.i_crit_edge ], [ %rxq_index.0262.i, %if.end.i353.if.end87.i_crit_edge ]
  %148 = ptrtoint ptr %type.i348 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %type.i348, align 4
  %150 = and i8 %149, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool91.not.i = icmp eq i8 %150, 0
  br i1 %tobool91.not.i, label %if.end87.i.if.end122.i_crit_edge, label %for.cond93.preheader.i

if.end87.i.if.end122.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end122.i

for.cond93.preheader.i:                           ; preds = %if.end87.i
  %151 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %num_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %cmp96254.not.i = icmp eq i8 %152, 0
  br i1 %cmp96254.not.i, label %for.cond93.preheader.i.for.end.i_crit_edge, label %for.body98.lr.ph.i

for.cond93.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond93.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body98.lr.ph.i:                               ; preds = %for.cond93.preheader.i
  %txq99.i = getelementptr %struct.qede_fastpath, ptr %104, i32 %queue_id.0263.i, i32 7
  br label %for.body98.i

for.body98.i:                                     ; preds = %if.end116.i365.for.body98.i_crit_edge, %for.body98.lr.ph.i
  %cos.0255.i = phi i32 [ 0, %for.body98.lr.ph.i ], [ %inc120.i, %if.end116.i365.for.body98.i_crit_edge ]
  %153 = ptrtoint ptr %txq99.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %txq99.i, align 8
  %conv101.i = trunc i32 %cos.0255.i to i16
  %cos102.i = getelementptr %struct.qede_tx_queue, ptr %154, i32 %cos.0255.i, i32 17
  %155 = ptrtoint ptr %cos102.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv101.i, ptr %cos102.i, align 4
  %index103.i = getelementptr %struct.qede_tx_queue, ptr %154, i32 %cos.0255.i, i32 13
  %156 = ptrtoint ptr %index103.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %txq_index.0260.i, ptr %index103.i, align 4
  %157 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %num_queues.i324, align 2
  %conv105.i = zext i16 %158 to i32
  %159 = ptrtoint ptr %fp_num_rx.i499 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %fp_num_rx.i499, align 1
  %conv106.i = zext i8 %160 to i32
  %sub.i = sub nsw i32 %conv105.i, %conv106.i
  %mul.i364 = mul i32 %sub.i, %cos.0255.i
  %add110.i = add i32 %mul.i364, %txq_index.0260.i
  %conv111.i = trunc i32 %add110.i to i16
  %ndev_txq_id.i = getelementptr %struct.qede_tx_queue, ptr %154, i32 %cos.0255.i, i32 18
  %161 = ptrtoint ptr %ndev_txq_id.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv111.i, ptr %ndev_txq_id.i, align 2
  %162 = ptrtoint ptr %is_legacy.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %is_legacy.i, align 8, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool113.not.i = icmp eq i8 %163, 0
  br i1 %tobool113.not.i, label %for.body98.i.if.end116.i365_crit_edge, label %if.then114.i

for.body98.i.if.end116.i365_crit_edge:            ; preds = %for.body98.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end116.i365

if.then114.i:                                     ; preds = %for.body98.i
  call void @__sanitizer_cov_trace_pc() #18
  %is_legacy115.i = getelementptr %struct.qede_tx_queue, ptr %154, i32 %cos.0255.i, i32 1
  %164 = ptrtoint ptr %is_legacy115.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 1, ptr %is_legacy115.i, align 1
  br label %if.end116.i365

if.end116.i365:                                   ; preds = %if.then114.i, %for.body98.i.if.end116.i365_crit_edge
  %165 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %pdev.i, align 8
  %dev118.i = getelementptr inbounds %struct.pci_dev, ptr %166, i32 0, i32 44
  %dev119.i = getelementptr %struct.qede_tx_queue, ptr %154, i32 %cos.0255.i, i32 9
  %167 = ptrtoint ptr %dev119.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %dev118.i, ptr %dev119.i, align 4
  %inc120.i = add nuw nsw i32 %cos.0255.i, 1
  %168 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %num_tc.i, align 1
  %conv95.i = zext i8 %169 to i32
  %cmp96.i = icmp ult i32 %inc120.i, %conv95.i
  br i1 %cmp96.i, label %if.end116.i365.for.body98.i_crit_edge, label %if.end116.i365.for.end.i_crit_edge

if.end116.i365.for.end.i_crit_edge:               ; preds = %if.end116.i365
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

if.end116.i365.for.body98.i_crit_edge:            ; preds = %if.end116.i365
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body98.i

for.end.i:                                        ; preds = %if.end116.i365.for.end.i_crit_edge, %for.cond93.preheader.i.for.end.i_crit_edge
  %inc121.i = add i32 %txq_index.0260.i, 1
  br label %if.end122.i

if.end122.i:                                      ; preds = %for.end.i, %if.end87.i.if.end122.i_crit_edge
  %txq_index.1.i = phi i32 [ %inc121.i, %for.end.i ], [ %txq_index.0260.i, %if.end87.i.if.end122.i_crit_edge ]
  %name.i = getelementptr %struct.qede_fastpath, ptr %104, i32 %queue_id.0263.i, i32 9
  %170 = ptrtoint ptr %ndev.i343 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %ndev.i343, align 4
  %call126.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 24, ptr noundef nonnull @.str.197, ptr noundef %171, i32 noundef %queue_id.0263.i) #16
  %inc128.i = add nuw nsw i32 %queue_id.0263.i, 1
  %172 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %num_queues.i324, align 2
  %conv.i366 = zext i16 %173 to i32
  %cmp.i367 = icmp ult i32 %inc128.i, %conv.i366
  br i1 %cmp.i367, label %if.end122.i.for.body.i350_crit_edge, label %for.end129.i

if.end122.i.for.body.i350_crit_edge:              ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i350

for.end129.i:                                     ; preds = %if.end122.i
  br i1 %init_xdp.1.off0.i, label %if.then131.i, label %for.end129.i.qede_init_fp.exit_crit_edge

for.end129.i.qede_init_fp.exit_crit_edge:         ; preds = %for.end129.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_init_fp.exit

if.then131.i:                                     ; preds = %for.end129.i
  %174 = ptrtoint ptr %fp_num_tx.i495 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %fp_num_tx.i495, align 1
  %conv134.i = zext i8 %175 to i16
  %sub135.i = sub i16 %173, %conv134.i
  %total_xdp_queues.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 19
  %176 = ptrtoint ptr %total_xdp_queues.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %sub135.i, ptr %total_xdp_queues.i, align 4
  %177 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %178)
  %cmp140.i = icmp ult i8 %178, 2
  br i1 %cmp140.i, label %do.end151.i, label %if.then131.i.qede_init_fp.exitthread-pre-split_crit_edge, !prof !474

if.then131.i.qede_init_fp.exitthread-pre-split_crit_edge: ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_init_fp.exitthread-pre-split

do.end151.i:                                      ; preds = %if.then131.i
  %179 = ptrtoint ptr %ndev.i343 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %ndev.i343, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.not.i231.i = icmp eq i8 %182, 0
  br i1 %tobool.not.i231.i, label %do.end151.i.cond.end160.i_crit_edge, label %lor.lhs.false.i235.i

do.end151.i.cond.end160.i_crit_edge:              ; preds = %do.end151.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end160.i

lor.lhs.false.i235.i:                             ; preds = %do.end151.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i232.i = tail call ptr @strchr(ptr noundef %180, i32 noundef 37) #16
  %tobool2.not.i233.i = icmp eq ptr %call.i232.i, null
  %tobool155.not.i = icmp eq ptr %180, null
  %or.cond252.i = and i1 %tobool155.not.i, %tobool2.not.i233.i
  %spec.select.i241.i = select i1 %tobool2.not.i233.i, ptr %180, ptr @.str.34
  %spec.select272.i = select i1 %or.cond252.i, ptr @.str.20, ptr %spec.select.i241.i
  br label %cond.end160.i

cond.end160.i:                                    ; preds = %lor.lhs.false.i235.i, %do.end151.i.cond.end160.i_crit_edge
  %cond161.i = phi ptr [ @.str.34, %do.end151.i.cond.end160.i_crit_edge ], [ %spec.select272.i, %lor.lhs.false.i235.i ]
  %conv163.i = zext i16 %sub135.i to i32
  %call164.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.196, i32 noundef 1865, ptr noundef %cond161.i, i32 noundef %conv163.i) #19
  br label %qede_init_fp.exitthread-pre-split

qede_init_fp.exitthread-pre-split:                ; preds = %cond.end160.i, %if.then131.i.qede_init_fp.exitthread-pre-split_crit_edge, %if.end20.qede_init_fp.exitthread-pre-split_crit_edge
  %183 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %183)
  %.pr = load i16, ptr %num_queues.i324, align 2
  br label %qede_init_fp.exit

qede_init_fp.exit:                                ; preds = %qede_init_fp.exitthread-pre-split, %for.end129.i.qede_init_fp.exit_crit_edge
  %184 = phi i16 [ %.pr, %qede_init_fp.exitthread-pre-split ], [ %173, %for.end129.i.qede_init_fp.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %184)
  %cmp75.not.i = icmp eq i16 %184, 0
  br i1 %cmp75.not.i, label %qede_init_fp.exit.do.body25_crit_edge, label %for.body.lr.ph.i371

qede_init_fp.exit.do.body25_crit_edge:            ; preds = %qede_init_fp.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body25

for.body.lr.ph.i371:                              ; preds = %qede_init_fp.exit
  %fp_array.i370 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %pdev.i.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 2
  %q_num_rx_buffers.i.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 30
  %ndev.i49.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %intended_use.i.i.i = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i.i.i, i32 0, i32 1
  %elem_size.i.i.i = getelementptr inbounds %struct.qed_chain_init_params, ptr %params.i.i.i, i32 0, i32 5
  %gro_disable.i.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 32
  br label %for.body.i372

for.body.i372:                                    ; preds = %for.inc.i385.for.body.i372_crit_edge, %for.body.lr.ph.i371
  %queue_id.076.i = phi i32 [ 0, %for.body.lr.ph.i371 ], [ %inc.i382, %for.inc.i385.for.body.i372_crit_edge ]
  %185 = ptrtoint ptr %fp_array.i370 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %fp_array.i370, align 4
  %sb_info.i.i = getelementptr %struct.qede_fastpath, ptr %186, i32 %queue_id.076.i, i32 5
  %187 = ptrtoint ptr %sb_info.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sb_info.i.i, align 8
  %id.i.i = getelementptr %struct.qede_fastpath, ptr %186, i32 %queue_id.076.i, i32 2
  %189 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %id.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sb_phys.i.i.i) #16
  %191 = ptrtoint ptr %sb_phys.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -1, ptr %sb_phys.i.i.i, align 4, !annotation !478
  %192 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pdev.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %193, i32 0, i32 44
  %call.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i.i.i, i32 noundef 32, ptr noundef nonnull %sb_phys.i.i.i, i32 noundef 3264, i32 noundef 0) #16
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.body.i372
  %194 = ptrtoint ptr %ndev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ndev.i49.i.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %195, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i.i.i.i = icmp eq i8 %197, 0
  br i1 %tobool.not.i.i.i.i, label %do.end.i.i.i.cond.end.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

do.end.i.i.i.cond.end.i.i.i_crit_edge:            ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i44.i.i.i = call ptr @strchr(ptr noundef %195, i32 noundef 37) #16
  %tobool2.not.i.i.i.i = icmp eq ptr %call.i44.i.i.i, null
  %tobool3.not.i.i.i = icmp eq ptr %195, null
  %or.cond.i.i.i = and i1 %tobool3.not.i.i.i, %tobool2.not.i.i.i.i
  %spec.select.i48.i.i.i = select i1 %tobool2.not.i.i.i.i, ptr %195, ptr @.str.34
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, ptr @.str.20, ptr %spec.select.i48.i.i.i
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i, %do.end.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi ptr [ @.str.34, %do.end.i.i.i.cond.end.i.i.i_crit_edge ], [ %spec.select.i.i.i, %lor.lhs.false.i.i.i.i ]
  %call6.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.204, i32 noundef 1466, ptr noundef %cond.i.i.i) #19
  br label %qede_alloc_mem_sb.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %for.body.i372
  %conv.i.i = zext i8 %190 to i16
  %198 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %ops.i, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %sb_init.i.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %201, i32 0, i32 10
  %202 = ptrtoint ptr %sb_init.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %sb_init.i.i.i, align 4
  %204 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %edev, align 8
  %206 = ptrtoint ptr %sb_phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %sb_phys.i.i.i, align 4
  %call9.i.i.i = call i32 %203(ptr noundef %205, ptr noundef %188, ptr noundef nonnull %call.i.i.i.i, i32 noundef %207, i16 noundef zeroext %conv.i.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end.i.i, label %do.end15.i.i.i

do.end15.i.i.i:                                   ; preds = %if.end.i.i.i
  %208 = ptrtoint ptr %ndev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ndev.i49.i.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %209, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool.not.i52.i.i.i = icmp eq i8 %211, 0
  br i1 %tobool.not.i52.i.i.i, label %do.end15.i.i.i.cond.end24.i.i.i_crit_edge, label %lor.lhs.false.i56.i.i.i

do.end15.i.i.i.cond.end24.i.i.i_crit_edge:        ; preds = %do.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end24.i.i.i

lor.lhs.false.i56.i.i.i:                          ; preds = %do.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i53.i.i.i = call ptr @strchr(ptr noundef %209, i32 noundef 37) #16
  %tobool2.not.i54.i.i.i = icmp eq ptr %call.i53.i.i.i, null
  %tobool19.not.i.i.i = icmp eq ptr %209, null
  %or.cond73.i.i.i = and i1 %tobool19.not.i.i.i, %tobool2.not.i54.i.i.i
  %spec.select.i62.i.i.i = select i1 %tobool2.not.i54.i.i.i, ptr %209, ptr @.str.34
  %spec.select74.i.i.i = select i1 %or.cond73.i.i.i, ptr @.str.20, ptr %spec.select.i62.i.i.i
  br label %cond.end24.i.i.i

cond.end24.i.i.i:                                 ; preds = %lor.lhs.false.i56.i.i.i, %do.end15.i.i.i.cond.end24.i.i.i_crit_edge
  %cond25.i.i.i = phi ptr [ @.str.34, %do.end15.i.i.i.cond.end24.i.i.i_crit_edge ], [ %spec.select74.i.i.i, %lor.lhs.false.i56.i.i.i ]
  %call26.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.204, i32 noundef 1474, ptr noundef %cond25.i.i.i) #19
  %212 = ptrtoint ptr %pdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pdev.i.i.i, align 8
  %dev30.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %213, i32 0, i32 44
  %214 = ptrtoint ptr %sb_phys.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %sb_phys.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %dev30.i.i.i, i32 noundef 32, ptr noundef nonnull %call.i.i.i.i, i32 noundef %215, i32 noundef 0) #16
  br label %qede_alloc_mem_sb.exit.thread.i.i

qede_alloc_mem_sb.exit.thread.i.i:                ; preds = %cond.end24.i.i.i, %cond.end.i.i.i
  %retval.0.i.ph.i.i = phi i32 [ -12, %cond.end.i.i.i ], [ %call9.i.i.i, %cond.end24.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_phys.i.i.i) #16
  br label %do.end.i376

if.end.i.i:                                       ; preds = %if.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sb_phys.i.i.i) #16
  %type.i.i = getelementptr %struct.qede_fastpath, ptr %186, i32 %queue_id.076.i, i32 1
  %216 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %type.i.i, align 4
  %218 = and i8 %217, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool2.not.i.i373 = icmp eq i8 %218, 0
  br i1 %tobool2.not.i.i373, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %rxq.i.i = getelementptr %struct.qede_fastpath, ptr %186, i32 %queue_id.076.i, i32 6
  %219 = ptrtoint ptr %rxq.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rxq.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params.i.i.i) #16
  %221 = call ptr @memcpy(ptr %params.i.i.i, ptr @__const.qede_alloc_mem_rxq.params, i32 32)
  %222 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %edev, align 8
  %224 = ptrtoint ptr %q_num_rx_buffers.i.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %q_num_rx_buffers.i.i.i, align 2
  %num_rx_buffers.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %220, i32 0, i32 9
  %226 = ptrtoint ptr %num_rx_buffers.i.i.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %225, ptr %num_rx_buffers.i.i.i, align 8
  %227 = ptrtoint ptr %ndev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ndev.i49.i.i, align 4
  %mtu.i.i.i = getelementptr inbounds %struct.net_device, ptr %228, i32 0, i32 20
  %229 = ptrtoint ptr %mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %mtu.i.i.i, align 4
  %add.i.i.i = add i32 %230, 32
  %rx_buf_size.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %220, i32 0, i32 11
  %231 = ptrtoint ptr %rx_buf_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %add.i.i.i, ptr %rx_buf_size.i.i.i, align 4
  %232 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %xdp_prog.i, align 8
  %tobool.not.i50.i.i = icmp eq ptr %233, null
  %conv.i.i.i = select i1 %tobool.not.i50.i.i, i16 128, i16 256
  %rx_headroom.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %220, i32 0, i32 10
  %234 = ptrtoint ptr %rx_headroom.i.i.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv.i.i.i, ptr %rx_headroom.i.i.i, align 2
  %narrow.i.i.i = add nuw nsw i16 %conv.i.i.i, 256
  %add4.i.i.i = zext i16 %narrow.i.i.i to i32
  %add6.i.i.i = add i32 %add.i.i.i, %add4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add6.i.i.i)
  %cmp.i.i.i = icmp ugt i32 %add6.i.i.i, 4096
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then3.i.i.if.end.i52.i.i_crit_edge

if.then3.i.i.if.end.i52.i.i_crit_edge:            ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i52.i.i

if.then.i.i.i:                                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i.i = sub nuw nsw i32 4096, %add4.i.i.i
  %235 = ptrtoint ptr %rx_buf_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %sub.i.i.i, ptr %rx_buf_size.i.i.i, align 4
  br label %if.end.i52.i.i

if.end.i52.i.i:                                   ; preds = %if.then.i.i.i, %if.then3.i.i.if.end.i52.i.i_crit_edge
  %236 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %xdp_prog.i, align 8
  %tobool10.not.i51.i.i = icmp eq ptr %237, null
  br i1 %tobool10.not.i51.i.i, label %cond.end37.i.i.i, label %if.else.i.i.i

cond.end37.i.i.i:                                 ; preds = %if.end.i52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %238 = ptrtoint ptr %rx_buf_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %rx_buf_size.i.i.i, align 4
  %add13.i.i.i = add i32 %239, %add4.i.i.i
  %sub.i153.i.i.i = add i32 %add13.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i153.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %sub.i153.i.i.i, 0
  %240 = call i32 @llvm.ctlz.i32(i32 %sub.i153.i.i.i, i1 true) #16, !range !479
  %sub.i.i.i.i.i.i374 = sub nuw nsw i32 32, %240
  %sub.i.i.op.i.i.i.i = shl nuw i32 1, %sub.i.i.i.i.i.i374
  %shl.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i.i.i
  %rx_buf_seg_size.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %220, i32 0, i32 12
  %241 = ptrtoint ptr %rx_buf_seg_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %shl.i.i.i.i, ptr %rx_buf_seg_size.i.i.i, align 32
  br label %if.end41.i.i.i

if.else.i.i.i:                                    ; preds = %if.end.i52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %rx_buf_seg_size39.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %220, i32 0, i32 12
  %242 = ptrtoint ptr %rx_buf_seg_size39.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 4096, ptr %rx_buf_seg_size39.i.i.i, align 32
  %243 = ptrtoint ptr %ndev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %ndev.i49.i.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %244, i32 0, i32 23
  %245 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %245)
  %246 = load i64, ptr %features.i.i.i, align 16
  %and.i.i.i = and i64 %246, -36028797018963969
  store i64 %and.i.i.i, ptr %features.i.i.i, align 16
  br label %if.end41.i.i.i

if.end41.i.i.i:                                   ; preds = %if.else.i.i.i, %cond.end37.i.i.i
  %call1.i.i.i.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 98304, i32 noundef 3520, i32 noundef 5) #20
  %sw_rx_ring.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %220, i32 0, i32 13
  %247 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %call1.i.i.i.i.i.i, ptr %sw_rx_ring.i.i.i, align 4
  %tobool44.not.i.i.i = icmp eq ptr %call1.i.i.i.i.i.i, null
  br i1 %tobool44.not.i.i.i, label %do.end.i54.i.i, label %if.end59.i.i.i

do.end.i54.i.i:                                   ; preds = %if.end41.i.i.i
  %248 = ptrtoint ptr %ndev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %ndev.i49.i.i, align 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %249, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool.not.i.i53.i.i = icmp eq i8 %251, 0
  br i1 %tobool.not.i.i53.i.i, label %do.end.i54.i.i.cond.end54.i.i.i_crit_edge, label %lor.lhs.false.i.i59.i.i

do.end.i54.i.i.cond.end54.i.i.i_crit_edge:        ; preds = %do.end.i54.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end54.i.i.i

lor.lhs.false.i.i59.i.i:                          ; preds = %do.end.i54.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i55.i.i = call ptr @strchr(ptr noundef %249, i32 noundef 37) #16
  %tobool2.not.i.i56.i.i = icmp eq ptr %call.i.i55.i.i, null
  %tobool49.not.i.i.i = icmp eq ptr %249, null
  %or.cond.i57.i.i = and i1 %tobool49.not.i.i.i, %tobool2.not.i.i56.i.i
  %spec.select.i157.i.i.i = select i1 %tobool2.not.i.i56.i.i, ptr %249, ptr @.str.34
  %spec.select.i58.i.i = select i1 %or.cond.i57.i.i, ptr @.str.20, ptr %spec.select.i157.i.i.i
  br label %cond.end54.i.i.i

cond.end54.i.i.i:                                 ; preds = %lor.lhs.false.i.i59.i.i, %do.end.i54.i.i.cond.end54.i.i.i_crit_edge
  %cond55.i.i.i = phi ptr [ @.str.34, %do.end.i54.i.i.cond.end54.i.i.i_crit_edge ], [ %spec.select.i58.i.i, %lor.lhs.false.i.i59.i.i ]
  %call56.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.209, i32 noundef 1564, ptr noundef %cond55.i.i.i) #19
  br label %qede_alloc_mem_rxq.exit.thread.i.i

if.end59.i.i.i:                                   ; preds = %if.end41.i.i.i
  %252 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 0, ptr %params.i.i.i, align 4
  %253 = ptrtoint ptr %intended_use.i.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 2, ptr %intended_use.i.i.i, align 4
  %254 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 8, ptr %elem_size.i.i.i, align 4
  %255 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ops.i, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %256, align 4
  %chain_alloc.i.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %258, i32 0, i32 24
  %259 = ptrtoint ptr %chain_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %chain_alloc.i.i.i, align 4
  %rx_bd_ring.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %220, i32 0, i32 14
  %call60.i.i.i = call i32 %260(ptr noundef %223, ptr noundef %rx_bd_ring.i.i.i, ptr noundef nonnull %params.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i.i)
  %tobool61.not.i.i.i = icmp eq i32 %call60.i.i.i, 0
  br i1 %tobool61.not.i.i.i, label %if.end63.i.i.i, label %if.end59.i.i.i.qede_alloc_mem_rxq.exit.thread.i.i_crit_edge

if.end59.i.i.i.qede_alloc_mem_rxq.exit.thread.i.i_crit_edge: ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_mem_rxq.exit.thread.i.i

if.end63.i.i.i:                                   ; preds = %if.end59.i.i.i
  %261 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 2, ptr %params.i.i.i, align 4
  %262 = ptrtoint ptr %intended_use.i.i.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 1, ptr %intended_use.i.i.i, align 4
  %263 = ptrtoint ptr %elem_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 32, ptr %elem_size.i.i.i, align 4
  %264 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ops.i, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %265, align 4
  %chain_alloc69.i.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %267, i32 0, i32 24
  %268 = ptrtoint ptr %chain_alloc69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %chain_alloc69.i.i.i, align 4
  %rx_comp_ring.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %220, i32 0, i32 16
  %call70.i.i.i = call i32 %269(ptr noundef %223, ptr noundef %rx_comp_ring.i.i.i, ptr noundef nonnull %params.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i.i.i)
  %tobool71.not.i.i.i = icmp eq i32 %call70.i.i.i, 0
  br i1 %tobool71.not.i.i.i, label %if.end73.i.i.i, label %if.end63.i.i.i.qede_alloc_mem_rxq.exit.thread.i.i_crit_edge

if.end63.i.i.i.qede_alloc_mem_rxq.exit.thread.i.i_crit_edge: ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_mem_rxq.exit.thread.i.i

if.end73.i.i.i:                                   ; preds = %if.end63.i.i.i
  %filled_buffers.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %220, i32 0, i32 6
  %270 = ptrtoint ptr %filled_buffers.i.i.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 0, ptr %filled_buffers.i.i.i, align 4
  %271 = ptrtoint ptr %num_rx_buffers.i.i.i to i32
  call void @__asan_load2_noabort(i32 %271)
  %272 = load i16, ptr %num_rx_buffers.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %272)
  %cmp76186.not.i.i.i = icmp eq i16 %272, 0
  br i1 %cmp76186.not.i.i.i, label %if.end73.i.i.i.for.end.i.i.i_crit_edge, label %if.end73.i.i.i.for.body.i.i.i_crit_edge

if.end73.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end73.i.i.i
  br label %for.body.i.i.i

if.end73.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end73.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end73.i.i.i.for.body.i.i.i_crit_edge
  %i.0187.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end73.i.i.i.for.body.i.i.i_crit_edge ]
  %call78.i.i.i = call i32 @qede_alloc_rx_buffer(ptr noundef %220, i1 noundef zeroext false) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i.i.i)
  %tobool79.not.i.i.i = icmp eq i32 %call78.i.i.i, 0
  br i1 %tobool79.not.i.i.i, label %for.inc.i.i.i, label %do.end84.i.i.i

do.end84.i.i.i:                                   ; preds = %for.body.i.i.i
  %273 = ptrtoint ptr %ndev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ndev.i49.i.i, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %274, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool.not.i161.i.i.i = icmp eq i8 %276, 0
  br i1 %tobool.not.i161.i.i.i, label %do.end84.i.i.i.cond.end93.i.i.i_crit_edge, label %lor.lhs.false.i165.i.i.i

do.end84.i.i.i.cond.end93.i.i.i_crit_edge:        ; preds = %do.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end93.i.i.i

lor.lhs.false.i165.i.i.i:                         ; preds = %do.end84.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i162.i.i.i = call ptr @strchr(ptr noundef %274, i32 noundef 37) #16
  %tobool2.not.i163.i.i.i = icmp eq ptr %call.i162.i.i.i, null
  %tobool88.not.i.i.i = icmp eq ptr %274, null
  %or.cond183.i.i.i = and i1 %tobool88.not.i.i.i, %tobool2.not.i163.i.i.i
  %spec.select.i171.i.i.i = select i1 %tobool2.not.i163.i.i.i, ptr %274, ptr @.str.34
  %spec.select192.i.i.i = select i1 %or.cond183.i.i.i, ptr @.str.20, ptr %spec.select.i171.i.i.i
  br label %cond.end93.i.i.i

cond.end93.i.i.i:                                 ; preds = %lor.lhs.false.i165.i.i.i, %do.end84.i.i.i.cond.end93.i.i.i_crit_edge
  %cond94.i.i.i = phi ptr [ @.str.34, %do.end84.i.i.i.cond.end93.i.i.i_crit_edge ], [ %spec.select192.i.i.i, %lor.lhs.false.i165.i.i.i ]
  %call95.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.209, i32 noundef 1593, ptr noundef %cond94.i.i.i, i32 noundef %i.0187.i.i.i) #19
  br label %qede_alloc_mem_rxq.exit.thread.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.0187.i.i.i, 1
  %277 = ptrtoint ptr %num_rx_buffers.i.i.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %num_rx_buffers.i.i.i, align 8
  %conv75.i.i.i = zext i16 %278 to i32
  %cmp76.i.i.i = icmp ult i32 %inc.i.i.i, %conv75.i.i.i
  br i1 %cmp76.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.for.end.i.i.i_crit_edge

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end73.i.i.i.for.end.i.i.i_crit_edge
  %279 = ptrtoint ptr %ndev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %ndev.i49.i.i, align 4
  %features100.i.i.i = getelementptr inbounds %struct.net_device, ptr %280, i32 0, i32 23
  %281 = ptrtoint ptr %features100.i.i.i to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %features100.i.i.i, align 16
  %and101.i.i.i = and i64 %282, 36028797018963968
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and101.i.i.i)
  %tobool102.not.i.i.i = icmp eq i64 %and101.i.i.i, 0
  %and101.lobit.i.i.i = lshr exact i64 %and101.i.i.i, 55
  %283 = trunc i64 %and101.lobit.i.i.i to i8
  %284 = xor i8 %283, 1
  %285 = ptrtoint ptr %gro_disable.i.i.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 %284, ptr %gro_disable.i.i.i, align 2
  br i1 %tobool102.not.i.i.i, label %for.end.i.i.i.qede_alloc_mem_rxq.exit.i.i_crit_edge, label %for.end.i.i.i.for.body.i.i.i.i_crit_edge

for.end.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %for.end.i.i.i
  br label %for.body.i.i.i.i

for.end.i.i.i.qede_alloc_mem_rxq.exit.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_mem_rxq.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.end.i.i.i.for.body.i.i.i.i_crit_edge
  %i.04.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.end.i.i.i.for.body.i.i.i.i_crit_edge ]
  %state.i.i.i.i = getelementptr %struct.qede_rx_queue, ptr %220, i32 0, i32 17, i32 %i.04.i.i.i.i, i32 4
  %286 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 0, ptr %state.i.i.i.i, align 1
  %inc.i.i.i.i = add nuw nsw i32 %i.04.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 64
  br i1 %exitcond.not.i.i.i.i, label %for.body.i.i.i.i.qede_alloc_mem_rxq.exit.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i.i

for.body.i.i.i.i.qede_alloc_mem_rxq.exit.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_mem_rxq.exit.i.i

qede_alloc_mem_rxq.exit.thread.i.i:               ; preds = %cond.end93.i.i.i, %if.end63.i.i.i.qede_alloc_mem_rxq.exit.thread.i.i_crit_edge, %if.end59.i.i.i.qede_alloc_mem_rxq.exit.thread.i.i_crit_edge, %cond.end54.i.i.i
  %rc.1.i.ph.i.i = phi i32 [ -12, %cond.end54.i.i.i ], [ %call78.i.i.i, %cond.end93.i.i.i ], [ %call60.i.i.i, %if.end59.i.i.i.qede_alloc_mem_rxq.exit.thread.i.i_crit_edge ], [ %call70.i.i.i, %if.end63.i.i.i.qede_alloc_mem_rxq.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i.i.i) #16
  br label %do.end.i376

qede_alloc_mem_rxq.exit.i.i:                      ; preds = %for.body.i.i.i.i.qede_alloc_mem_rxq.exit.i.i_crit_edge, %for.end.i.i.i.qede_alloc_mem_rxq.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params.i.i.i) #16
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %qede_alloc_mem_rxq.exit.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %287 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %type.i.i, align 4
  %289 = and i8 %288, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %289)
  %tobool12.not.i.i = icmp eq i8 %289, 0
  br i1 %tobool12.not.i.i, label %if.end8.i.i.if.end18.i.i_crit_edge, label %if.then13.i.i

if.end8.i.i.if.end18.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i

if.then13.i.i:                                    ; preds = %if.end8.i.i
  %xdp_tx.i.i = getelementptr %struct.qede_fastpath, ptr %186, i32 %queue_id.076.i, i32 8
  %290 = ptrtoint ptr %xdp_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %xdp_tx.i.i, align 4
  %call14.i.i = call fastcc i32 @qede_alloc_mem_txq(ptr noundef %edev, ptr noundef %291) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.then13.i.i.if.end18.i.i_crit_edge, label %if.then13.i.i.do.end.i376_crit_edge

if.then13.i.i.do.end.i376_crit_edge:              ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i376

if.then13.i.i.if.end18.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then13.i.i.if.end18.i.i_crit_edge, %if.end8.i.i.if.end18.i.i_crit_edge
  %292 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %type.i.i, align 4
  %294 = and i8 %293, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool22.not.i.i = icmp eq i8 %294, 0
  br i1 %tobool22.not.i.i, label %if.end18.i.i.for.inc.i385_crit_edge, label %for.cond.preheader.i.i

if.end18.i.i.for.inc.i385_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i385

for.cond.preheader.i.i:                           ; preds = %if.end18.i.i
  %txq.i.i = getelementptr %struct.qede_fastpath, ptr %186, i32 %queue_id.076.i, i32 7
  %295 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %num_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %cmp68.not.i.i = icmp eq i8 %296, 0
  br i1 %cmp68.not.i.i, label %for.cond.preheader.i.i.for.inc.i385_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.inc.i385_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i385

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %cos.069.i.i, 1
  %297 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %num_tc.i, align 1
  %conv24.i.i = zext i8 %298 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv24.i.i
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.inc.i385_crit_edge

for.cond.i.i.for.inc.i385_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i385

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %cos.069.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %299 = ptrtoint ptr %txq.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %txq.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.qede_tx_queue, ptr %300, i32 %cos.069.i.i
  %call26.i.i = call fastcc i32 @qede_alloc_mem_txq(ptr noundef %edev, ptr noundef %arrayidx.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %for.cond.i.i, label %for.body.i.i.do.end.i376_crit_edge

for.body.i.i.do.end.i376_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i376

do.end.i376:                                      ; preds = %for.body.i.i.do.end.i376_crit_edge, %if.then13.i.i.do.end.i376_crit_edge, %qede_alloc_mem_rxq.exit.thread.i.i, %qede_alloc_mem_sb.exit.thread.i.i
  %rc.4.i.ph.i = phi i32 [ %rc.1.i.ph.i.i, %qede_alloc_mem_rxq.exit.thread.i.i ], [ %retval.0.i.ph.i.i, %qede_alloc_mem_sb.exit.thread.i.i ], [ %call26.i.i, %for.body.i.i.do.end.i376_crit_edge ], [ %call14.i.i, %if.then13.i.i.do.end.i376_crit_edge ]
  %301 = ptrtoint ptr %ndev.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %ndev.i49.i.i, align 4
  %303 = ptrtoint ptr %302 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %302, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool.not.i.i375 = icmp eq i8 %304, 0
  br i1 %tobool.not.i.i375, label %do.end.i376.qede_alloc_mem_load.exit_crit_edge, label %lor.lhs.false.i.i380

do.end.i376.qede_alloc_mem_load.exit_crit_edge:   ; preds = %do.end.i376
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_mem_load.exit

lor.lhs.false.i.i380:                             ; preds = %do.end.i376
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i377 = call ptr @strchr(ptr noundef %302, i32 noundef 37) #16
  %tobool2.not.i22.i = icmp eq ptr %call.i.i377, null
  %tobool4.not.i = icmp eq ptr %302, null
  %or.cond.i378 = and i1 %tobool4.not.i, %tobool2.not.i22.i
  %spec.select.i26.i = select i1 %tobool2.not.i22.i, ptr %302, ptr @.str.34
  %spec.select.i379 = select i1 %or.cond.i378, ptr @.str.20, ptr %spec.select.i26.i
  br label %qede_alloc_mem_load.exit

for.inc.i385:                                     ; preds = %for.cond.i.i.for.inc.i385_crit_edge, %for.cond.preheader.i.i.for.inc.i385_crit_edge, %if.end18.i.i.for.inc.i385_crit_edge
  %inc.i382 = add nuw nsw i32 %queue_id.076.i, 1
  %305 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %num_queues.i324, align 2
  %conv.i383 = zext i16 %306 to i32
  %cmp.i384 = icmp ult i32 %inc.i382, %conv.i383
  br i1 %cmp.i384, label %for.inc.i385.for.body.i372_crit_edge, label %for.inc.i385.do.body25_crit_edge

for.inc.i385.do.body25_crit_edge:                 ; preds = %for.inc.i385
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body25

for.inc.i385.for.body.i372_crit_edge:             ; preds = %for.inc.i385
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i372

qede_alloc_mem_load.exit:                         ; preds = %lor.lhs.false.i.i380, %do.end.i376.qede_alloc_mem_load.exit_crit_edge
  %cond.i381 = phi ptr [ @.str.34, %do.end.i376.qede_alloc_mem_load.exit_crit_edge ], [ %spec.select.i379, %lor.lhs.false.i.i380 ]
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.202, i32 noundef 1734, ptr noundef %cond.i381, i32 noundef %queue_id.076.i) #19
  call fastcc void @qede_free_mem_load(ptr noundef %edev) #16
  br label %err1

do.body25:                                        ; preds = %for.inc.i385.do.body25_crit_edge, %qede_init_fp.exit.do.body25_crit_edge, %if.end39.i.do.body25_crit_edge
  %307 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %308)
  %cmp28 = icmp ult i8 %308, 2
  br i1 %cmp28, label %do.end39, label %do.body25.do.end59_crit_edge, !prof !474

do.body25.do.end59_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end59

do.end39:                                         ; preds = %do.body25
  %ndev41 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %309 = ptrtoint ptr %ndev41 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %ndev41, align 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %310, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %312)
  %tobool.not.i386 = icmp eq i8 %312, 0
  br i1 %tobool.not.i386, label %do.end39.cond.end48_crit_edge, label %lor.lhs.false.i390

do.end39.cond.end48_crit_edge:                    ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end48

lor.lhs.false.i390:                               ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #18
  %call.i387 = call ptr @strchr(ptr noundef %310, i32 noundef 37) #16
  %tobool2.not.i388 = icmp eq ptr %call.i387, null
  %tobool43.not = icmp eq ptr %310, null
  %or.cond532 = and i1 %tobool43.not, %tobool2.not.i388
  %spec.select.i396 = select i1 %tobool2.not.i388, ptr %310, ptr @.str.34
  %spec.select628 = select i1 %or.cond532, ptr @.str.20, ptr %spec.select.i396
  br label %cond.end48

cond.end48:                                       ; preds = %lor.lhs.false.i390, %do.end39.cond.end48_crit_edge
  %cond49 = phi ptr [ @.str.34, %do.end39.cond.end48_crit_edge ], [ %spec.select628, %lor.lhs.false.i390 ]
  %313 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %num_queues.i324, align 2
  %conv50 = zext i16 %314 to i32
  %315 = ptrtoint ptr %fp_num_tx.i495 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %fp_num_tx.i495, align 1
  %conv51 = zext i8 %316 to i32
  %sub = sub nsw i32 %conv50, %conv51
  %317 = ptrtoint ptr %fp_num_rx.i499 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %fp_num_rx.i499, align 1
  %conv54 = zext i8 %318 to i32
  %sub55 = sub nsw i32 %conv50, %conv54
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.168, i32 noundef 2440, ptr noundef %cond49, i32 noundef %sub, i32 noundef %sub55) #19
  br label %do.end59

do.end59:                                         ; preds = %cond.end48, %do.body25.do.end59_crit_edge
  %ndev.i400 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %319 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %ndev.i400, align 4
  %321 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %num_queues.i324, align 2
  %conv.i402 = zext i16 %322 to i32
  %323 = ptrtoint ptr %fp_num_rx.i499 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %fp_num_rx.i499, align 1
  %conv1.i = zext i8 %324 to i32
  %sub.i404 = sub nsw i32 %conv.i402, %conv1.i
  %num_tc.i405 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 2
  %325 = ptrtoint ptr %num_tc.i405 to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %num_tc.i405, align 1
  %conv2.i406 = zext i8 %326 to i32
  %mul.i407 = mul nsw i32 %sub.i404, %conv2.i406
  %call.i408 = call i32 @netif_set_real_num_tx_queues(ptr noundef %320, i32 noundef %mul.i407) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i408)
  %tobool.not.i409 = icmp eq i32 %call.i408, 0
  br i1 %tobool.not.i409, label %if.end17.i, label %do.body.i412

do.body.i412:                                     ; preds = %do.end59
  %327 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %328)
  %cmp.i411 = icmp ult i8 %328, 3
  br i1 %cmp.i411, label %do.end.i414, label %do.body.i412.err2_crit_edge, !prof !474

do.body.i412.err2_crit_edge:                      ; preds = %do.body.i412
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

do.end.i414:                                      ; preds = %do.body.i412
  %329 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ndev.i400, align 4
  %331 = ptrtoint ptr %330 to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %330, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %332)
  %tobool.not.i.i413 = icmp eq i8 %332, 0
  br i1 %tobool.not.i.i413, label %do.end.i414.cond.end.i421_crit_edge, label %lor.lhs.false.i.i419

do.end.i414.cond.end.i421_crit_edge:              ; preds = %do.end.i414
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i421

lor.lhs.false.i.i419:                             ; preds = %do.end.i414
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i415 = call ptr @strchr(ptr noundef %330, i32 noundef 37) #16
  %tobool2.not.i.i416 = icmp eq ptr %call.i.i415, null
  %tobool11.not.i = icmp eq ptr %330, null
  %or.cond.i417 = and i1 %tobool11.not.i, %tobool2.not.i.i416
  %spec.select.i74.i = select i1 %tobool2.not.i.i416, ptr %330, ptr @.str.34
  %spec.select.i418 = select i1 %or.cond.i417, ptr @.str.20, ptr %spec.select.i74.i
  br label %cond.end.i421

cond.end.i421:                                    ; preds = %lor.lhs.false.i.i419, %do.end.i414.cond.end.i421_crit_edge
  %cond.i420 = phi ptr [ @.str.34, %do.end.i414.cond.end.i421_crit_edge ], [ %spec.select.i418, %lor.lhs.false.i.i419 ]
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214, i32 noundef 1877, ptr noundef %cond.i420) #19
  br label %err2

if.end17.i:                                       ; preds = %do.end59
  %333 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %ndev.i400, align 4
  %335 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %335)
  %336 = load i16, ptr %num_queues.i324, align 2
  %conv20.i = zext i16 %336 to i32
  %337 = ptrtoint ptr %fp_num_tx.i495 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %fp_num_tx.i495, align 1
  %conv21.i = zext i8 %338 to i32
  %sub22.i = sub nsw i32 %conv20.i, %conv21.i
  %call23.i = call i32 @netif_set_real_num_rx_queues(ptr noundef %334, i32 noundef %sub22.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end63, label %do.body26.i

do.body26.i:                                      ; preds = %if.end17.i
  %339 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %339)
  %340 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %340)
  %cmp29.i = icmp ult i8 %340, 3
  br i1 %cmp29.i, label %do.end40.i, label %do.body26.i.err2_crit_edge, !prof !474

do.body26.i.err2_crit_edge:                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

do.end40.i:                                       ; preds = %do.body26.i
  %341 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %ndev.i400, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %342, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %344)
  %tobool.not.i78.i = icmp eq i8 %344, 0
  br i1 %tobool.not.i78.i, label %do.end40.i.cond.end49.i_crit_edge, label %lor.lhs.false.i82.i

do.end40.i.cond.end49.i_crit_edge:                ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end49.i

lor.lhs.false.i82.i:                              ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i79.i = call ptr @strchr(ptr noundef %342, i32 noundef 37) #16
  %tobool2.not.i80.i = icmp eq ptr %call.i79.i, null
  %tobool44.not.i = icmp eq ptr %342, null
  %or.cond99.i = and i1 %tobool44.not.i, %tobool2.not.i80.i
  %spec.select.i88.i = select i1 %tobool2.not.i80.i, ptr %342, ptr @.str.34
  %spec.select100.i = select i1 %or.cond99.i, ptr @.str.20, ptr %spec.select.i88.i
  br label %cond.end49.i

cond.end49.i:                                     ; preds = %lor.lhs.false.i82.i, %do.end40.i.cond.end49.i_crit_edge
  %cond50.i = phi ptr [ @.str.34, %do.end40.i.cond.end49.i_crit_edge ], [ %spec.select100.i, %lor.lhs.false.i82.i ]
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.214, i32 noundef 1883, ptr noundef %cond50.i) #19
  br label %err2

if.end63:                                         ; preds = %if.end17.i
  %call64 = call i32 @qede_alloc_arfs(ptr noundef %edev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end63.if.end68_crit_edge, label %if.then66

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end68

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  %345 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %ndev.i400, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %346, i32 0, i32 23
  %347 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %features, align 16
  %and = and i64 %348, -274877906945
  store i64 %and, ptr %features, align 16
  %b_arfs_capable = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 11
  %349 = ptrtoint ptr %b_arfs_capable to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 0, ptr %b_arfs_capable, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63.if.end68_crit_edge
  call fastcc void @qede_napi_add_enable(ptr noundef %edev)
  %350 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %351)
  %cmp72 = icmp ult i8 %351, 2
  br i1 %cmp72, label %do.end83, label %if.end68.do.end97_crit_edge, !prof !474

if.end68.do.end97_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end97

do.end83:                                         ; preds = %if.end68
  %352 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %ndev.i400, align 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %353, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %355)
  %tobool.not.i425 = icmp eq i8 %355, 0
  br i1 %tobool.not.i425, label %do.end83.cond.end92_crit_edge, label %lor.lhs.false.i429

do.end83.cond.end92_crit_edge:                    ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end92

lor.lhs.false.i429:                               ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #18
  %call.i426 = call ptr @strchr(ptr noundef %353, i32 noundef 37) #16
  %tobool2.not.i427 = icmp eq ptr %call.i426, null
  %tobool87.not = icmp eq ptr %353, null
  %or.cond533 = and i1 %tobool87.not, %tobool2.not.i427
  %spec.select.i435 = select i1 %tobool2.not.i427, ptr %353, ptr @.str.34
  %spec.select629 = select i1 %or.cond533, ptr @.str.20, ptr %spec.select.i435
  br label %cond.end92

cond.end92:                                       ; preds = %lor.lhs.false.i429, %do.end83.cond.end92_crit_edge
  %cond93 = phi ptr [ @.str.34, %do.end83.cond.end92_crit_edge ], [ %spec.select629, %lor.lhs.false.i429 ]
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.168, i32 noundef 2452, ptr noundef %cond93) #19
  br label %do.end97

do.end97:                                         ; preds = %cond.end92, %if.end68.do.end97_crit_edge
  %call98 = call fastcc i32 @qede_setup_irqs(ptr noundef %edev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.body102, label %do.end97.err3_crit_edge

do.end97.err3_crit_edge:                          ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %err3

do.body102:                                       ; preds = %do.end97
  %356 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %357)
  %cmp105 = icmp ult i8 %357, 2
  br i1 %cmp105, label %do.end116, label %do.body102.do.end130_crit_edge, !prof !474

do.body102.do.end130_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end130

do.end116:                                        ; preds = %do.body102
  %358 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %ndev.i400, align 4
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %359, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %361)
  %tobool.not.i439 = icmp eq i8 %361, 0
  br i1 %tobool.not.i439, label %do.end116.cond.end125_crit_edge, label %lor.lhs.false.i443

do.end116.cond.end125_crit_edge:                  ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end125

lor.lhs.false.i443:                               ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #18
  %call.i440 = call ptr @strchr(ptr noundef %359, i32 noundef 37) #16
  %tobool2.not.i441 = icmp eq ptr %call.i440, null
  %tobool120.not = icmp eq ptr %359, null
  %or.cond534 = and i1 %tobool120.not, %tobool2.not.i441
  %spec.select.i449 = select i1 %tobool2.not.i441, ptr %359, ptr @.str.34
  %spec.select630 = select i1 %or.cond534, ptr @.str.20, ptr %spec.select.i449
  br label %cond.end125

cond.end125:                                      ; preds = %lor.lhs.false.i443, %do.end116.cond.end125_crit_edge
  %cond126 = phi ptr [ @.str.34, %do.end116.cond.end125_crit_edge ], [ %spec.select630, %lor.lhs.false.i443 ]
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.168, i32 noundef 2457, ptr noundef %cond126) #19
  br label %do.end130

do.end130:                                        ; preds = %cond.end125, %do.body102.do.end130_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp131 = icmp ne i32 %mode, 1
  %call133 = call fastcc i32 @qede_start_queues(ptr noundef %edev, i1 noundef zeroext %cmp131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %do.body137, label %err4

do.body137:                                       ; preds = %do.end130
  %362 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %363)
  %cmp140 = icmp ult i8 %363, 2
  br i1 %cmp140, label %do.end151, label %do.body137.do.end165_crit_edge, !prof !474

do.body137.do.end165_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end165

do.end151:                                        ; preds = %do.body137
  %364 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %ndev.i400, align 4
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %365, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %367)
  %tobool.not.i453 = icmp eq i8 %367, 0
  br i1 %tobool.not.i453, label %do.end151.cond.end160_crit_edge, label %lor.lhs.false.i457

do.end151.cond.end160_crit_edge:                  ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end160

lor.lhs.false.i457:                               ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #18
  %call.i454 = call ptr @strchr(ptr noundef %365, i32 noundef 37) #16
  %tobool2.not.i455 = icmp eq ptr %call.i454, null
  %tobool155.not = icmp eq ptr %365, null
  %or.cond535 = and i1 %tobool155.not, %tobool2.not.i455
  %spec.select.i463 = select i1 %tobool2.not.i455, ptr %365, ptr @.str.34
  %spec.select631 = select i1 %or.cond535, ptr @.str.20, ptr %spec.select.i463
  br label %cond.end160

cond.end160:                                      ; preds = %lor.lhs.false.i457, %do.end151.cond.end160_crit_edge
  %cond161 = phi ptr [ @.str.34, %do.end151.cond.end160_crit_edge ], [ %spec.select631, %lor.lhs.false.i457 ]
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.168, i32 noundef 2462, ptr noundef %cond161) #19
  br label %do.end165

do.end165:                                        ; preds = %cond.end160, %do.body137.do.end165_crit_edge
  %368 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %ndev.i400, align 4
  %num_tc.i467 = getelementptr inbounds %struct.net_device, ptr %369, i32 0, i32 140
  %370 = ptrtoint ptr %num_tc.i467 to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %num_tc.i467, align 4
  %372 = and i16 %371, 255
  %conv169 = trunc i16 %371 to i8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %372)
  %tobool170.not = icmp eq i16 %372, 0
  br i1 %tobool170.not, label %cond.false173, label %do.end165.cond.end177_crit_edge

do.end165.cond.end177_crit_edge:                  ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end177

cond.false173:                                    ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #18
  %373 = ptrtoint ptr %num_tc.i405 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %num_tc.i405, align 1
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false173, %do.end165.cond.end177_crit_edge
  %cond178 = phi i8 [ %374, %cond.false173 ], [ %conv169, %do.end165.cond.end177_crit_edge ]
  %call181 = call fastcc i32 @qede_setup_tc(ptr noundef %369, i8 noundef zeroext %cond178)
  %call182 = call i32 @qede_configure_vlan_filters(ptr noundef %edev) #16
  %flags = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 6
  call void @_set_bit(i32 noundef 1, ptr noundef %flags) #16
  %375 = call ptr @memset(ptr %link_params, i32 0, i32 48)
  %376 = ptrtoint ptr %link_params to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 1, ptr %link_params, align 4
  %377 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %ops.i, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %378, align 4
  %set_link = getelementptr inbounds %struct.qed_common_ops, ptr %380, i32 0, i32 20
  %381 = ptrtoint ptr %set_link to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %set_link, align 4
  %383 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %edev, align 8
  %call184 = call i32 %382(ptr noundef %384, ptr noundef nonnull %link_params) #16
  %state = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 22
  %385 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 1, ptr %state, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %386 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 12, ptr %rx_coalesce_usecs, align 4
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %387 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 48, ptr %tx_coalesce_usecs, align 4
  %388 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %num_queues.i324, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %389)
  %cmp187569.not = icmp eq i16 %389, 0
  br i1 %cmp187569.not, label %cond.end177.do.body202_crit_edge, label %for.body.lr.ph

cond.end177.do.body202_crit_edge:                 ; preds = %cond.end177
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body202

for.body.lr.ph:                                   ; preds = %cond.end177
  %qede_lock.i469 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %if.end199.for.body_crit_edge, %for.body.lr.ph
  %i.0570 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end199.for.body_crit_edge ]
  %390 = ptrtoint ptr %coal_entry.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %coal_entry.i, align 8
  %arrayidx = getelementptr %struct.qede_coalesce, ptr %391, i32 %i.0570
  %392 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %arrayidx, align 2, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %393)
  %tobool189.not = icmp eq i8 %393, 0
  br i1 %tobool189.not, label %for.body.if.end199_crit_edge, label %if.then190

for.body.if.end199_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end199

if.then190:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %rxc = getelementptr %struct.qede_coalesce, ptr %391, i32 %i.0570, i32 1
  %394 = ptrtoint ptr %rxc to i32
  call void @__asan_load2_noabort(i32 %394)
  %395 = load i16, ptr %rxc, align 2
  %conv193 = zext i16 %395 to i32
  %396 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %conv193, ptr %rx_coalesce_usecs, align 4
  %txc = getelementptr %struct.qede_coalesce, ptr %391, i32 %i.0570, i32 2
  %397 = ptrtoint ptr %txc to i32
  call void @__asan_load2_noabort(i32 %397)
  %398 = load i16, ptr %txc, align 2
  %conv197 = zext i16 %398 to i32
  %399 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 %conv197, ptr %tx_coalesce_usecs, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then190, %for.body.if.end199_crit_edge
  call void @mutex_unlock(ptr noundef %qede_lock.i469) #16
  %400 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %ndev.i400, align 4
  %call201 = call i32 @qede_set_per_coalesce(ptr noundef %401, i32 noundef %i.0570, ptr noundef nonnull %coal) #16
  call void @mutex_lock_nested(ptr noundef %qede_lock.i469, i32 noundef 0) #16
  %inc = add nuw nsw i32 %i.0570, 1
  %402 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %num_queues.i324, align 2
  %conv186 = zext i16 %403 to i32
  %cmp187 = icmp ult i32 %inc, %conv186
  br i1 %cmp187, label %if.end199.for.body_crit_edge, label %if.end199.do.body202_crit_edge

if.end199.do.body202_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body202

if.end199.for.body_crit_edge:                     ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.body202:                                       ; preds = %if.end199.do.body202_crit_edge, %cond.end177.do.body202_crit_edge
  %404 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %405)
  %cmp205 = icmp ult i8 %405, 2
  br i1 %cmp205, label %do.end216, label %do.body202.out_crit_edge, !prof !474

do.body202.out_crit_edge:                         ; preds = %do.body202
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end216:                                        ; preds = %do.body202
  %406 = ptrtoint ptr %ndev.i400 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %ndev.i400, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %407, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool.not.i471 = icmp eq i8 %409, 0
  br i1 %tobool.not.i471, label %do.end216.cond.end225_crit_edge, label %lor.lhs.false.i475

do.end216.cond.end225_crit_edge:                  ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end225

lor.lhs.false.i475:                               ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #18
  %call.i472 = call ptr @strchr(ptr noundef %407, i32 noundef 37) #16
  %tobool2.not.i473 = icmp eq ptr %call.i472, null
  %tobool220.not = icmp eq ptr %407, null
  %or.cond536 = and i1 %tobool220.not, %tobool2.not.i473
  %spec.select.i481 = select i1 %tobool2.not.i473, ptr %407, ptr @.str.34
  %spec.select632 = select i1 %or.cond536, ptr @.str.20, ptr %spec.select.i481
  br label %cond.end225

cond.end225:                                      ; preds = %lor.lhs.false.i475, %do.end216.cond.end225_crit_edge
  %cond226 = phi ptr [ @.str.34, %do.end216.cond.end225_crit_edge ], [ %spec.select632, %lor.lhs.false.i475 ]
  %call227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.168, i32 noundef 2492, ptr noundef %cond226) #19
  br label %out

err4:                                             ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @qede_sync_free_irqs(ptr noundef %edev)
  br label %err3

err3:                                             ; preds = %err4, %do.end97.err3_crit_edge
  %rc.0 = phi i32 [ %call98, %do.end97.err3_crit_edge ], [ %call133, %err4 ]
  call fastcc void @qede_napi_disable_remove(ptr noundef %edev)
  br label %err2

err2:                                             ; preds = %err3, %cond.end49.i, %do.body26.i.err2_crit_edge, %cond.end.i421, %do.body.i412.err2_crit_edge
  %rc.1 = phi i32 [ %rc.0, %err3 ], [ %call23.i, %do.body26.i.err2_crit_edge ], [ %call23.i, %cond.end49.i ], [ %call.i408, %do.body.i412.err2_crit_edge ], [ %call.i408, %cond.end.i421 ]
  call fastcc void @qede_free_mem_load(ptr noundef %edev)
  br label %err1

err1:                                             ; preds = %err2, %qede_alloc_mem_load.exit
  %rc.2 = phi i32 [ %rc.4.i.ph.i, %qede_alloc_mem_load.exit ], [ %rc.1, %err2 ]
  %410 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %ops.i, align 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %411, align 4
  %set_fp_int = getelementptr inbounds %struct.qed_common_ops, ptr %413, i32 0, i32 8
  %414 = ptrtoint ptr %set_fp_int to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %set_fp_int, align 4
  %416 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %edev, align 8
  %call234 = call i32 %415(ptr noundef %417, i16 noundef zeroext 0) #16
  call fastcc void @qede_free_fp_array(ptr noundef %edev)
  %418 = ptrtoint ptr %num_queues.i324 to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 0, ptr %num_queues.i324, align 2
  %419 = ptrtoint ptr %fp_num_tx.i495 to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 0, ptr %fp_num_tx.i495, align 1
  %420 = ptrtoint ptr %fp_num_rx.i499 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 0, ptr %fp_num_rx.i499, align 1
  br label %out

out:                                              ; preds = %err1, %cond.end225, %do.body202.out_crit_edge, %qede_alloc_fp_array.exit, %qede_set_num_queues.exit.out_crit_edge
  %rc.3 = phi i32 [ %call12.i, %qede_set_num_queues.exit.out_crit_edge ], [ -12, %qede_alloc_fp_array.exit ], [ %rc.2, %err1 ], [ 0, %cond.end225 ], [ 0, %do.body202.out_crit_edge ]
  br i1 %is_locked, label %out.if.end240_crit_edge, label %if.then239

out.if.end240_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end240

if.then239:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  %qede_lock.i485 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %qede_lock.i485) #16
  br label %if.end240

if.end240:                                        ; preds = %if.then239, %out.if.end240_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %coal) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %link_params) #16
  ret i32 %rc.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_config_rx_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  %drvinfo = alloca %struct.ethtool_drvinfo, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %drvinfo) #16
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.done_crit_edge [
    i32 11, label %entry.if.end_crit_edge
    i32 8, label %entry.if.end_crit_edge43
  ]

entry.if.end_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge43
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.done_crit_edge, label %lor.lhs.false

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

lor.lhs.false:                                    ; preds = %if.end
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %3 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ethtool_ops, align 16
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.done_crit_edge, label %lor.lhs.false3

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %get_drvinfo = getelementptr inbounds %struct.ethtool_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %get_drvinfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_drvinfo, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %lor.lhs.false3.done_crit_edge, label %if.end7

lor.lhs.false3.done_crit_edge:                    ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end7:                                          ; preds = %lor.lhs.false3
  %7 = call ptr @memset(ptr %drvinfo, i32 0, i32 196)
  %8 = ptrtoint ptr %get_drvinfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_drvinfo, align 4
  call void %9(ptr noundef nonnull %1, ptr noundef nonnull %drvinfo) #16
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(5) %driver, ptr noundef nonnull dereferenceable(5) @.str.3, i32 5) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.done_crit_edge

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end13:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %event)
  %cond = icmp eq i32 %event, 11
  br i1 %cond, label %sw.bb, label %if.end13.done_crit_edge

if.end13.done_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

sw.bb:                                            ; preds = %if.end13
  %ops = getelementptr i8, ptr %1, i32 2332
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %sw.bb.done_crit_edge, label %lor.lhs.false16

sw.bb.done_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

lor.lhs.false16:                                  ; preds = %sw.bb
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %lor.lhs.false16.done_crit_edge, label %if.end20

lor.lhs.false16.done_crit_edge:                   ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end20:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #18
  %set_name = getelementptr inbounds %struct.qed_common_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %set_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_name, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %ndev23 = getelementptr i8, ptr %1, i32 2308
  %18 = ptrtoint ptr %ndev23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev23, align 4
  call void %15(ptr noundef %17, ptr noundef %19) #16
  br label %done

done:                                             ; preds = %if.end20, %lor.lhs.false16.done_crit_edge, %sw.bb.done_crit_edge, %if.end13.done_crit_edge, %if.end7.done_crit_edge, %lor.lhs.false3.done_crit_edge, %lor.lhs.false.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %drvinfo) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.sw.epilog_crit_edge, label %sw.epilogthread-pre-split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilogthread-pre-split:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %.str.4..str.9 = select i1 %cond, ptr @.str.4, ptr @.str.9
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull %.str.4..str.9) #19
  %.pr = load i32, ptr @debug, align 4
  %.pre = and i32 %.pr, 1073741823
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %entry.sw.epilog_crit_edge
  %and.i.pre-phi = phi i32 [ %.pre, %sw.epilogthread-pre-split ], [ 0, %entry.sw.epilog_crit_edge ]
  %3 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %2, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.pre-phi)
  %tobool.not.i = icmp eq i32 %and.i.pre-phi, 0
  %and2.i = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %spec.select = select i1 %tobool3.not.i, i8 2, i8 1
  %dp_level.0 = select i1 %tobool.not.i, i8 %spec.select, i8 0
  %call = tail call fastcc i32 @__qede_probe(ptr noundef %pdev, i32 noundef %and.i.pre-phi, i8 noundef zeroext %dp_level.0, i1 noundef zeroext %cond, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__qede_remove(ptr noundef %pdev, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_shutdown(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__qede_remove(ptr noundef %pdev, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_sriov_configure(ptr nocapture noundef readonly %pdev, i32 noundef %num_vfs_param) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call2 = tail call noalias ptr @vzalloc(i32 noundef 564) #20
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %1, i32 2324
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %do.body.do.end16_crit_edge

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr i8, ptr %1, i32 2320
  %4 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module, align 8
  %and = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.rhs.do.end16_crit_edge, label %do.end, !prof !476

land.rhs.do.end16_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr i8, ptr %1, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool10.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool10.not, %tobool2.not.i
  %spec.select.i61 = select i1 %tobool2.not.i, ptr %7, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i61
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef 162, ptr noundef %cond, i32 noundef %num_vfs_param) #19
  br label %do.end16

do.end16:                                         ; preds = %cond.end, %land.rhs.do.end16_crit_edge, %do.body.do.end16_crit_edge
  %ops = getelementptr i8, ptr %1, i32 2332
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %iov = getelementptr inbounds %struct.qed_eth_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iov, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %call17 = tail call i32 %15(ptr noundef %17, i32 noundef %num_vfs_param) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %num_vfs_param)
  %cmp18 = icmp eq i32 %call17, %num_vfs_param
  br i1 %cmp18, label %land.lhs.true, label %do.end16.if.end35_crit_edge

do.end16.if.end35_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true:                                    ; preds = %do.end16
  %ndev20 = getelementptr i8, ptr %1, i32 2308
  %18 = ptrtoint ptr %ndev20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev20, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end35_crit_edge, label %land.lhs.true23

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true23:                                  ; preds = %land.lhs.true
  %b_inter_pf_switch = getelementptr i8, ptr %1, i32 2389
  %22 = ptrtoint ptr %b_inter_pf_switch to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b_inter_pf_switch, align 1, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  br i1 %tobool24.not, label %land.lhs.true25, label %land.lhs.true23.if.end35_crit_edge

land.lhs.true23.if.end35_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %tx_switching = getelementptr i8, ptr %1, i32 2390
  %24 = ptrtoint ptr %tx_switching to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %tx_switching, align 2, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool26.not = icmp eq i8 %25, 0
  br i1 %tobool26.not, label %land.lhs.true25.if.end35_crit_edge, label %if.then28

land.lhs.true25.if.end35_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #18
  %26 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %call2, align 4
  %update_tx_switching_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %call2, i32 0, i32 3
  %27 = ptrtoint ptr %update_tx_switching_flg to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %update_tx_switching_flg, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_vfs_param)
  %tobool29.not = icmp ne i32 %num_vfs_param, 0
  %conv31 = zext i1 %tobool29.not to i8
  %tx_switching_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %call2, i32 0, i32 4
  %28 = ptrtoint ptr %tx_switching_flg to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv31, ptr %tx_switching_flg, align 4
  %29 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops, align 4
  %vport_update = getelementptr inbounds %struct.qed_eth_ops, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %vport_update to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vport_update, align 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %call34 = tail call i32 %32(ptr noundef %34, ptr noundef nonnull %call2) #16
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %land.lhs.true25.if.end35_crit_edge, %land.lhs.true23.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %do.end16.if.end35_crit_edge
  tail call void @vfree(ptr noundef nonnull %call2) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end35 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__qede_probe(ptr noundef %pdev, i32 noundef %dp_module, i8 noundef zeroext %dp_level, i1 noundef zeroext %is_vf, i32 noundef %mode) unnamed_addr #3 align 64 {
entry:
  %buf.i = alloca [80 x i8], align 1
  %pf_params.i = alloca %struct.qed_pf_params, align 8
  %probe_params = alloca %struct.qed_probe_params, align 4
  %sp_params = alloca %struct.qed_slowpath_params, align 4
  %dev_info = alloca %struct.qed_dev_eth_info, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %is_vf to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %probe_params) #16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sp_params) #16
  %0 = getelementptr inbounds %struct.qed_slowpath_params, ptr %sp_params, i32 0, i32 5
  %1 = call ptr @memset(ptr %sp_params, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %dev_info) #16
  %2 = call ptr @memset(ptr %dev_info, i32 255, i32 76)
  %3 = and i8 %dp_level, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !476

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %dp_module3 = getelementptr inbounds %struct.qed_probe_params, ptr %probe_params, i32 0, i32 1
  %4 = call ptr @memset(ptr %probe_params, i32 0, i32 12)
  %5 = ptrtoint ptr %dp_module3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dp_module, ptr %dp_module3, align 4
  %dp_level4 = getelementptr inbounds %struct.qed_probe_params, ptr %probe_params, i32 0, i32 2
  %6 = ptrtoint ptr %dp_level4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %dp_level, ptr %dp_level4, align 4
  %is_vf6 = getelementptr inbounds %struct.qed_probe_params, ptr %probe_params, i32 0, i32 3
  %7 = ptrtoint ptr %is_vf6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %is_vf6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %recov_in_prog = getelementptr inbounds %struct.qed_probe_params, ptr %probe_params, i32 0, i32 4
  %frombool9 = zext i1 %cmp to i8
  %8 = ptrtoint ptr %recov_in_prog to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool9, ptr %recov_in_prog, align 2
  %9 = load ptr, ptr @qed_ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %probe = getelementptr inbounds %struct.qed_common_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %probe, align 4
  %call10 = call ptr %13(ptr noundef %pdev, ptr noundef nonnull %probe_params) #16
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %pf_params.i) #16
  %14 = call ptr @memset(ptr %pf_params.i, i32 0, i32 200)
  %15 = ptrtoint ptr %pf_params.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 768, ptr %pf_params.i, align 8
  %num_vf_cons.i = getelementptr inbounds %struct.qed_eth_pf_params, ptr %pf_params.i, i32 0, i32 1
  %16 = ptrtoint ptr %num_vf_cons.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 48, ptr %num_vf_cons.i, align 2
  %num_arfs_filters.i = getelementptr inbounds %struct.qed_eth_pf_params, ptr %pf_params.i, i32 0, i32 2
  %17 = ptrtoint ptr %num_arfs_filters.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 256, ptr %num_arfs_filters.i, align 4
  %18 = load ptr, ptr @qed_ops, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %update_pf_params.i = getelementptr inbounds %struct.qed_common_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %update_pf_params.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %update_pf_params.i, align 4
  call void %22(ptr noundef nonnull %call10, ptr noundef nonnull %pf_params.i) #16
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %pf_params.i) #16
  %23 = getelementptr inbounds i8, ptr %sp_params, i32 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 16)
  %25 = ptrtoint ptr %sp_params to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %sp_params, align 4
  %call14 = call i32 @strlcpy(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef 12) #16
  %26 = load ptr, ptr @qed_ops, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %slowpath_start = getelementptr inbounds %struct.qed_common_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %slowpath_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slowpath_start, align 4
  %call16 = call i32 %30(ptr noundef nonnull %call10, ptr noundef nonnull %sp_params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #19
  br label %err1

if.end24:                                         ; preds = %if.end13
  %31 = load ptr, ptr @qed_ops, align 4
  %fill_dev_info = getelementptr inbounds %struct.qed_eth_ops, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %fill_dev_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fill_dev_info, align 4
  %call25 = call i32 %33(ptr noundef nonnull %call10, ptr noundef nonnull %dev_info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.err2_crit_edge

if.end24.err2_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end28:                                         ; preds = %if.end24
  br i1 %cmp, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end28
  %num_queues.i = getelementptr inbounds %struct.qed_dev_eth_info, ptr %dev_info, i32 0, i32 1
  %34 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_queues.i, align 4
  %conv.i = zext i8 %35 to i32
  %num_tc.i = getelementptr inbounds %struct.qed_dev_eth_info, ptr %dev_info, i32 0, i32 2
  %36 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_tc.i, align 1
  %conv1.i = zext i8 %37 to i32
  %mul.i = mul nuw nsw i32 %conv1.i, %conv.i
  %call.i = call ptr @alloc_etherdev_mqs(i32 noundef 1336, i32 noundef %mul.i, i32 noundef %conv.i) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %qede_alloc_etherdev.exit.thread, label %if.end.i

qede_alloc_etherdev.exit.thread:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #19
  br label %err2

if.end.i:                                         ; preds = %if.then31
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 2304
  %ndev6.i = getelementptr i8, ptr %call.i, i32 2308
  %38 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %ndev6.i, align 4
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call10, ptr %add.ptr.i.i, align 8
  %pdev8.i = getelementptr i8, ptr %call.i, i32 2312
  %40 = ptrtoint ptr %pdev8.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %pdev, ptr %pdev8.i, align 8
  %dp_module9.i = getelementptr i8, ptr %call.i, i32 2320
  %41 = ptrtoint ptr %dp_module9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %dp_module, ptr %dp_module9.i, align 8
  %dp_level10.i = getelementptr i8, ptr %call.i, i32 2324
  %42 = ptrtoint ptr %dp_level10.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %dp_level, ptr %dp_level10.i, align 4
  %43 = load ptr, ptr @qed_ops, align 4
  %ops.i = getelementptr i8, ptr %call.i, i32 2332
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %ops.i, align 4
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %45 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %45)
  %cmp.i.not.i = icmp eq i64 %45, -1
  %spec.select.i = select i1 %cmp.i.not.i, i16 1023, i16 63
  %spec.select84.i = select i1 %cmp.i.not.i, i16 8191, i16 63
  %46 = getelementptr i8, ptr %call.i, i32 3374
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %spec.select.i, ptr %46, align 2
  %48 = getelementptr i8, ptr %call.i, i32 3376
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %spec.select84.i, ptr %48, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %dp_level)
  %cmp.i = icmp ult i8 %dp_level, 2
  br i1 %cmp.i, label %do.end25.i, label %if.end.i.do.end39.i_crit_edge, !prof !474

if.end.i.do.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end39.i

do.end25.i:                                       ; preds = %if.end.i
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %call.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i.i, label %do.end25.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end25.i.cond.end.i_crit_edge:                  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call ptr @strchr(ptr noundef nonnull %call.i, i32 noundef 37) #16
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %spec.select.i76.i = select i1 %tobool2.not.i.i, ptr %call.i, ptr @.str.34
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end25.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.34, %do.end25.i.cond.end.i_crit_edge ], [ %spec.select.i76.i, %lor.lhs.false.i.i ]
  %52 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num_queues.i, align 4
  %conv33.i = zext i8 %53 to i32
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 805, ptr noundef %cond.i, i32 noundef %conv33.i, i32 noundef %conv33.i) #19
  br label %do.end39.i

do.end39.i:                                       ; preds = %cond.end.i, %if.end.i.do.end39.i_crit_edge
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 133, i32 1
  %54 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev.i, ptr %parent.i, align 8
  %stats.i = getelementptr i8, ptr %call.i, i32 2560
  %55 = call ptr @memset(ptr %stats.i, i32 0, i32 512)
  %dev_info.i = getelementptr i8, ptr %call.i, i32 2352
  %56 = call ptr @memcpy(ptr %dev_info.i, ptr %dev_info, i32 76)
  %wol_support.i = getelementptr i8, ptr %call.i, i32 2394
  %57 = ptrtoint ptr %wol_support.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %wol_support.i, align 2, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool42.not.i = icmp eq i8 %58, 0
  br i1 %tobool42.not.i, label %do.end39.i.qede_alloc_etherdev.exit_crit_edge, label %if.then43.i

do.end39.i.qede_alloc_etherdev.exit_crit_edge:    ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_alloc_etherdev.exit

if.then43.i:                                      ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #18
  %wol_enabled.i = getelementptr i8, ptr %call.i, i32 3508
  %59 = ptrtoint ptr %wol_enabled.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %wol_enabled.i, align 4
  br label %qede_alloc_etherdev.exit

qede_alloc_etherdev.exit:                         ; preds = %if.then43.i, %do.end39.i.qede_alloc_etherdev.exit_crit_edge
  %vlan_list.i = getelementptr i8, ptr %call.i, i32 3380
  %60 = ptrtoint ptr %vlan_list.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %vlan_list.i, ptr %vlan_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %call.i, i32 3384
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %vlan_list.i, ptr %prev.i.i, align 4
  %tobool33.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool33.not, label %qede_alloc_etherdev.exit.err2_crit_edge, label %if.end35

qede_alloc_etherdev.exit.err2_crit_edge:          ; preds = %qede_alloc_etherdev.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end35:                                         ; preds = %qede_alloc_etherdev.exit
  %62 = load ptr, ptr @qed_ops, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %devlink_register = getelementptr inbounds %struct.qed_common_ops, ptr %64, i32 0, i32 44
  %65 = ptrtoint ptr %devlink_register to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %devlink_register, align 4
  %call37 = call ptr %66(ptr noundef nonnull %call10) #16
  %devlink = getelementptr i8, ptr %call.i, i32 2316
  %67 = ptrtoint ptr %devlink to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call37, ptr %devlink, align 4
  %cmp.i243 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %do.body41, label %if.end35.if.end77_crit_edge

if.end35.if.end77_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end77

do.body41:                                        ; preds = %if.end35
  %68 = ptrtoint ptr %dp_level10.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dp_level10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %69)
  %cmp44 = icmp ult i8 %69, 3
  br i1 %cmp44, label %do.end55, label %do.body41.do.end64_crit_edge, !prof !474

do.body41.do.end64_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end64

do.end55:                                         ; preds = %do.body41
  %70 = ptrtoint ptr %ndev6.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ndev6.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i244 = icmp eq i8 %73, 0
  br i1 %tobool.not.i244, label %do.end55.cond.end_crit_edge, label %lor.lhs.false.i

do.end55.cond.end_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #18
  %call.i245 = call ptr @strchr(ptr noundef %71, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i245, null
  %tobool58.not = icmp eq ptr %71, null
  %or.cond = and i1 %tobool58.not, %tobool2.not.i
  %spec.select.i251 = select i1 %tobool2.not.i, ptr %71, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i251
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end55.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end55.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.12, i32 noundef 1239, ptr noundef %cond) #19
  br label %do.end64

do.end64:                                         ; preds = %cond.end, %do.body41.do.end64_crit_edge
  %74 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %devlink, align 4
  %76 = ptrtoint ptr %75 to i32
  store ptr null, ptr %devlink, align 4
  br label %if.then166

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %77 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %78, i32 2304
  %devlink72 = getelementptr i8, ptr %78, i32 2316
  %79 = ptrtoint ptr %devlink72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %devlink72, align 4
  %call73 = call ptr @devlink_priv(ptr noundef %80) #16
  %81 = ptrtoint ptr %call73 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call10, ptr %call73, align 4
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call10, ptr %add.ptr.i, align 8
  %stats = getelementptr i8, ptr %78, i32 2560
  %83 = call ptr @memset(ptr %stats, i32 0, i32 512)
  %dev_info76 = getelementptr i8, ptr %78, i32 2352
  %84 = call ptr @memcpy(ptr %dev_info76, ptr %dev_info, i32 76)
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.end35.if.end77_crit_edge
  %edev.0 = phi ptr [ %add.ptr.i.i, %if.end35.if.end77_crit_edge ], [ %add.ptr.i, %if.else ]
  br i1 %is_vf, label %if.then79, label %if.end77.if.end80_crit_edge

if.end77.if.end80_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #16
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end77.if.end80_crit_edge
  %ndev1.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 1
  %85 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ndev1.i, align 4
  %pdev2.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 2
  %87 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdev2.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %88, i32 0, i32 44, i32 8
  %89 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %driver_data.i.i.i, align 4
  %dev_info.i255 = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10
  %90 = ptrtoint ptr %dev_info.i255 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dev_info.i255, align 8
  %mem_start.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 4
  %92 = ptrtoint ptr %mem_start.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %mem_start.i, align 4
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 5
  %93 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %91, ptr %base_addr.i, align 32
  %pci_mem_end.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 1
  %94 = ptrtoint ptr %pci_mem_end.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pci_mem_end.i, align 4
  %mem_end.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 3
  %96 = ptrtoint ptr %mem_end.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %mem_end.i, align 8
  %pci_irq.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 2
  %97 = ptrtoint ptr %pci_irq.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pci_irq.i, align 8
  %irq.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 64
  %99 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %irq.i, align 4
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 115
  %100 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 500, ptr %watchdog_timeo.i, align 4
  %flags.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 6
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i256 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i256, label %if.else12.i, label %if.then.i

if.then.i:                                        ; preds = %if.end80
  %xdp_supported.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 7
  %103 = ptrtoint ptr %xdp_supported.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %xdp_supported.i, align 1, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool9.not.i = icmp eq i8 %104, 0
  %netdev_ops11.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 16
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %105 = ptrtoint ptr %netdev_ops11.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @qede_netdev_vf_xdp_ops, ptr %netdev_ops11.i, align 8
  br label %if.end14.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %netdev_ops11.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @qede_netdev_vf_ops, ptr %netdev_ops11.i, align 8
  br label %if.end14.i

if.else12.i:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  %netdev_ops13.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 16
  %107 = ptrtoint ptr %netdev_ops13.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @qede_netdev_ops, ptr %netdev_ops13.i, align 8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else12.i, %if.else.i, %if.then10.i
  call void @qede_set_ethtool_ops(ptr noundef %86) #16
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 15
  %108 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %priv_flags.i, align 16
  %or.i = or i64 %109, 4096
  store i64 %or.i, ptr %priv_flags.i, align 16
  %b_arfs_capable.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 11
  %110 = ptrtoint ptr %b_arfs_capable.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %b_arfs_capable.i, align 4, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool17.not.i = icmp eq i8 %111, 0
  %spec.select.i257 = select i1 %tobool17.not.i, i64 36591746973515795, i64 36592021851422739
  %vxlan_enable.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 21
  %112 = ptrtoint ptr %vxlan_enable.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %vxlan_enable.i, align 8, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool23.not.i = icmp eq i8 %113, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i258, label %if.end14.i.if.then38.i_crit_edge

if.end14.i.if.then38.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38.i

lor.lhs.false.i258:                               ; preds = %if.end14.i
  %geneve_enable.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 23
  %114 = ptrtoint ptr %geneve_enable.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %geneve_enable.i, align 2, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool26.not.i = icmp eq i8 %115, 0
  br i1 %tobool26.not.i, label %lor.lhs.false30.i, label %lor.lhs.false.i258.if.then38.i_crit_edge

lor.lhs.false.i258.if.then38.i_crit_edge:         ; preds = %lor.lhs.false.i258
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then38.i

lor.lhs.false30.i:                                ; preds = %lor.lhs.false.i258
  %gre_enable.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 22
  %116 = ptrtoint ptr %gre_enable.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %gre_enable.i, align 1, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool33.not.i = icmp eq i8 %117, 0
  br i1 %tobool33.not.i, label %lor.lhs.false30.i.if.end42.i_crit_edge, label %if.end36.i

lor.lhs.false30.i.if.end42.i_crit_edge:           ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i

if.end36.i:                                       ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #18
  %or35.i = or i64 %spec.select.i257, 262144
  %hw_enc_features.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 27
  %118 = ptrtoint ptr %hw_enc_features.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 1099513004051, ptr %hw_enc_features.i, align 16
  br label %if.end42.i

if.then38.i:                                      ; preds = %lor.lhs.false.i258.if.then38.i_crit_edge, %if.end14.i.if.then38.i_crit_edge
  %or39.i = or i64 %spec.select.i257, 201588736
  %hw_enc_features40.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 27
  %119 = ptrtoint ptr %hw_enc_features40.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 1099714330643, ptr %hw_enc_features40.i, align 16
  call void @qede_set_udp_tunnels(ptr noundef %edev.0) #16
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.end36.i, %lor.lhs.false30.i.if.end42.i_crit_edge
  %hw_features.2.i = phi i64 [ %or39.i, %if.then38.i ], [ %or35.i, %if.end36.i ], [ %spec.select.i257, %lor.lhs.false30.i.if.end42.i_crit_edge ]
  %gre_enable45.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 22
  %120 = ptrtoint ptr %gre_enable45.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %gre_enable45.i, align 1, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool46.not.i = icmp eq i8 %121, 0
  br i1 %tobool46.not.i, label %if.end42.i.qede_init_ndev.exit_crit_edge, label %if.then47.i

if.end42.i.qede_init_ndev.exit_crit_edge:         ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_init_ndev.exit

if.then47.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #18
  %or48.i = or i64 %hw_features.2.i, 12582912
  %hw_enc_features49.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 27
  %122 = ptrtoint ptr %hw_enc_features49.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %hw_enc_features49.i, align 16
  %or50.i = or i64 %123, 12582912
  store i64 %or50.i, ptr %hw_enc_features49.i, align 16
  br label %qede_init_ndev.exit

qede_init_ndev.exit:                              ; preds = %if.then47.i, %if.end42.i.qede_init_ndev.exit_crit_edge
  %hw_features.3.i = phi i64 [ %or48.i, %if.then47.i ], [ %hw_features.2.i, %if.end42.i.qede_init_ndev.exit_crit_edge ]
  %or54.i = or i64 %hw_features.3.i, 1649267441696
  %vlan_features.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 26
  %124 = ptrtoint ptr %vlan_features.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %or54.i, ptr %vlan_features.i, align 8
  %or60.i = or i64 %hw_features.3.i, 1649267442592
  %features.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 23
  %125 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %or60.i, ptr %features.i, align 16
  %hw_features61.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 24
  %126 = ptrtoint ptr %hw_features61.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %hw_features.3.i, ptr %hw_features61.i, align 8
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 30
  %127 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 46, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 31
  %128 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 9600, ptr %max_mtu.i, align 4
  %129 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ndev1.i, align 4
  %hw_mac.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 4
  call void @dev_addr_mod(ptr noundef %130, i32 noundef 0, ptr noundef %hw_mac.i, i32 noundef 6) #16
  %mtu.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 15
  %131 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %mtu.i, align 8
  %conv.i259 = zext i16 %132 to i32
  %mtu67.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 20
  %133 = ptrtoint ptr %mtu67.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv.i259, ptr %mtu67.i, align 4
  br i1 %cmp, label %qede_init_ndev.exit.if.end146_crit_edge, label %do.body91

qede_init_ndev.exit.if.end146_crit_edge:          ; preds = %qede_init_ndev.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end146

do.body91:                                        ; preds = %qede_init_ndev.exit
  %sp_task = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 37
  call void @__init_work(ptr noundef %sp_task, i32 noundef 0) #16
  %134 = ptrtoint ptr %sp_task to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -64, ptr %sp_task, align 4
  %lockdep_map = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 37, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @__qede_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry98 = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 37, i32 0, i32 1
  %135 = ptrtoint ptr %entry98 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %entry98, ptr %entry98, align 4
  %prev.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 37, i32 0, i32 1, i32 1
  %136 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %entry98, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 37, i32 0, i32 2
  %137 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @qede_sp_task, ptr %func, align 4
  %timer = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 37, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.23, ptr noundef nonnull @__qede_probe.__key.22) #16
  %qede_lock = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 21
  call void @__mutex_init(ptr noundef %qede_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @__qede_probe.__key.24) #16
  %138 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ndev1.i, align 4
  %call113 = call i32 @register_netdev(ptr noundef %139) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %do.body91.if.end146_crit_edge, label %do.body116

do.body91.if.end146_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end146

do.body116:                                       ; preds = %do.body91
  %dp_level117 = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 5
  %140 = ptrtoint ptr %dp_level117 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %dp_level117, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %141)
  %cmp119 = icmp ult i8 %141, 3
  br i1 %cmp119, label %do.end130, label %do.body116.if.then166_crit_edge, !prof !474

do.body116.if.then166_crit_edge:                  ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then166

do.end130:                                        ; preds = %do.body116
  %142 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ndev1.i, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %143, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i260 = icmp eq i8 %145, 0
  br i1 %tobool.not.i260, label %do.end130.cond.end139_crit_edge, label %lor.lhs.false.i264

do.end130.cond.end139_crit_edge:                  ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end139

lor.lhs.false.i264:                               ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #18
  %call.i261 = call ptr @strchr(ptr noundef %143, i32 noundef 37) #16
  %tobool2.not.i262 = icmp eq ptr %call.i261, null
  %tobool134.not = icmp eq ptr %143, null
  %or.cond292 = and i1 %tobool134.not, %tobool2.not.i262
  %spec.select.i270 = select i1 %tobool2.not.i262, ptr %143, ptr @.str.34
  %spec.select293 = select i1 %or.cond292, ptr @.str.20, ptr %spec.select.i270
  br label %cond.end139

cond.end139:                                      ; preds = %lor.lhs.false.i264, %do.end130.cond.end139_crit_edge
  %cond140 = phi ptr [ @.str.34, %do.end130.cond.end139_crit_edge ], [ %spec.select293, %lor.lhs.false.i264 ]
  %call141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.12, i32 noundef 1276, ptr noundef %cond140) #19
  br label %if.then166

if.end146:                                        ; preds = %do.body91.if.end146_crit_edge, %qede_init_ndev.exit.if.end146_crit_edge
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 7
  %146 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ops, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %set_name = getelementptr inbounds %struct.qed_common_ops, ptr %149, i32 0, i32 4
  %150 = ptrtoint ptr %set_name to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %set_name, align 4
  %152 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ndev1.i, align 4
  call void %151(ptr noundef nonnull %call10, ptr noundef %153) #16
  br i1 %is_vf, label %if.end146.if.end154_crit_edge, label %if.then152

if.end146.if.end154_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end154

if.then152:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #18
  %call153 = call i32 @qede_ptp_enable(ptr noundef %edev.0) #16
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.end146.if.end154_crit_edge
  %154 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ops, align 4
  %register_ops = getelementptr inbounds %struct.qed_eth_ops, ptr %155, i32 0, i32 5
  %156 = ptrtoint ptr %register_ops to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %register_ops, align 4
  call void %157(ptr noundef nonnull %call10, ptr noundef nonnull @qede_ll_ops, ptr noundef %edev.0) #16
  %158 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %flags.i, align 4
  %and1.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool158.not = icmp eq i32 %and1.i, 0
  br i1 %tobool158.not, label %if.then159, label %if.end154.if.end161_crit_edge

if.end154.if.end161_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end161

if.then159:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #18
  %160 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ndev1.i, align 4
  call void @qede_set_dcbnl_ops(ptr noundef %161) #16
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.end154.if.end161_crit_edge
  %rx_copybreak = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 24
  %162 = ptrtoint ptr %rx_copybreak to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 256, ptr %rx_copybreak, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf.i) #16
  %163 = call ptr @memset(ptr %buf.i, i32 255, i32 80)
  %fw_major.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 5
  %164 = ptrtoint ptr %fw_major.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %fw_major.i, align 4
  %conv.i274 = zext i16 %165 to i32
  %fw_minor.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 6
  %166 = ptrtoint ptr %fw_minor.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %fw_minor.i, align 2
  %conv1.i275 = zext i16 %167 to i32
  %fw_rev.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 7
  %168 = ptrtoint ptr %fw_rev.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %fw_rev.i, align 4
  %conv2.i = zext i16 %169 to i32
  %fw_eng.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 8
  %170 = ptrtoint ptr %fw_eng.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %fw_eng.i, align 2
  %conv3.i = zext i16 %171 to i32
  %mfw_rev.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 9
  %172 = ptrtoint ptr %mfw_rev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %mfw_rev.i, align 4
  %shr.i = lshr i32 %173, 24
  %and5.i = lshr i32 %173, 16
  %shr6.i = and i32 %and5.i, 255
  %and8.i = lshr i32 %173, 8
  %shr9.i = and i32 %and8.i, 255
  %and11.i = and i32 %173, 255
  %call.i276 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 80, ptr noundef nonnull @.str.114, i32 noundef %conv.i274, i32 noundef %conv1.i275, i32 noundef %conv2.i, i32 noundef %conv3.i, i32 noundef %shr.i, i32 noundef %shr6.i, i32 noundef %shr9.i, i32 noundef %and11.i) #16
  %call14.i = call i32 @strlen(ptr noundef nonnull %buf.i) #24
  %mbi_version.i = getelementptr inbounds %struct.qede_dev, ptr %edev.0, i32 0, i32 10, i32 0, i32 19
  %174 = ptrtoint ptr %mbi_version.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mbi_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.i277 = icmp eq i32 %175, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 80
  %or.cond.i278 = select i1 %tobool.not.i277, i1 true, i1 %tobool15.not.i
  br i1 %or.cond.i278, label %if.end161.qede_log_probe.exit_crit_edge, label %if.then.i280

if.end161.qede_log_probe.exit_crit_edge:          ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_log_probe.exit

if.then.i280:                                     ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i = sub i32 80, %call14.i
  %add.ptr.i279 = getelementptr i8, ptr %buf.i, i32 %call14.i
  %and20.i = lshr i32 %175, 16
  %shr21.i = and i32 %and20.i, 255
  %and23.i = lshr i32 %175, 8
  %shr24.i = and i32 %and23.i, 255
  %and26.i = and i32 %175, 255
  %call28.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i279, i32 noundef %sub.i, ptr noundef nonnull @.str.115, i32 noundef %shr21.i, i32 noundef %shr24.i, i32 noundef %and26.i) #16
  br label %qede_log_probe.exit

qede_log_probe.exit:                              ; preds = %if.then.i280, %if.end161.qede_log_probe.exit_crit_edge
  %176 = ptrtoint ptr %pdev2.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pdev2.i, align 8
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %179, i32 0, i32 12
  %180 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %number.i, align 4
  %conv29.i = zext i8 %181 to i32
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %177, i32 0, i32 6
  %182 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %devfn.i, align 4
  %shr31.i = lshr i32 %183, 3
  %and32.i = and i32 %shr31.i, 31
  %and35.i = and i32 %183, 7
  %184 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ndev1.i, align 4
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv29.i, i32 noundef %and32.i, i32 noundef %and35.i, ptr noundef nonnull %buf.i, ptr noundef %185) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf.i) #16
  br label %cleanup

if.then166:                                       ; preds = %cond.end139, %do.body116.if.then166_crit_edge, %do.end64
  %rc.0 = phi i32 [ %76, %do.end64 ], [ %call113, %do.body116.if.then166_crit_edge ], [ %call113, %cond.end139 ]
  %edev.1 = phi ptr [ %add.ptr.i.i, %do.end64 ], [ %edev.0, %do.body116.if.then166_crit_edge ], [ %edev.0, %cond.end139 ]
  %ndev167 = getelementptr inbounds %struct.qede_dev, ptr %edev.1, i32 0, i32 1
  %186 = ptrtoint ptr %ndev167 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ndev167, align 4
  call void @free_netdev(ptr noundef %187) #16
  br label %err2

err2:                                             ; preds = %if.then166, %qede_alloc_etherdev.exit.err2_crit_edge, %qede_alloc_etherdev.exit.thread, %if.end24.err2_crit_edge
  %rc.1 = phi i32 [ %call25, %if.end24.err2_crit_edge ], [ %rc.0, %if.then166 ], [ -12, %qede_alloc_etherdev.exit.err2_crit_edge ], [ -12, %qede_alloc_etherdev.exit.thread ]
  %188 = load ptr, ptr @qed_ops, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %slowpath_stop = getelementptr inbounds %struct.qed_common_ops, ptr %190, i32 0, i32 7
  %191 = ptrtoint ptr %slowpath_stop to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %slowpath_stop, align 4
  %call172 = call i32 %192(ptr noundef nonnull %call10) #16
  br label %err1

err1:                                             ; preds = %err2, %do.end21
  %rc.2 = phi i32 [ %call16, %do.end21 ], [ %rc.1, %err2 ]
  %193 = load ptr, ptr @qed_ops, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %remove = getelementptr inbounds %struct.qed_common_ops, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %remove, align 4
  call void %197(ptr noundef nonnull %call10) #16
  br label %cleanup

cleanup:                                          ; preds = %err1, %qede_log_probe.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qede_log_probe.exit ], [ %rc.2, %err1 ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %dev_info) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sp_params) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %probe_params) #16
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_sp_task(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1092
  %sp_flags = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %sp_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sp_flags, align 4
  %2 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %sp_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %pdev = getelementptr i8, ptr %work, i32 -1084
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %call5 = tail call i32 @pci_num_vf(ptr noundef %4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end10_crit_edge, label %if.then7

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call9 = tail call i32 @qede_sriov_configure(ptr noundef %6, i32 noundef 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then4.if.end10_crit_edge
  tail call void @rtnl_lock() #16
  %qede_lock.i.i = getelementptr i8, ptr %work, i32 -940
  tail call void @mutex_lock_nested(ptr noundef %qede_lock.i.i, i32 noundef 0) #16
  %state.i = getelementptr i8, ptr %work, i32 -848
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  %dp_level.i = getelementptr i8, ptr %work, i32 -1072
  %9 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.i = icmp ult i8 %10, 3
  br i1 %cmp.i, label %do.end.i, label %if.end10.do.end9.i_crit_edge, !prof !474

if.end10.do.end9.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end9.i

do.end.i:                                         ; preds = %if.end10
  %ndev.i = getelementptr i8, ptr %work, i32 -1088
  %11 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call ptr @strchr(ptr noundef %12, i32 noundef 37) #16
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool4.not.i = icmp eq ptr %12, null
  %or.cond.i = and i1 %tobool4.not.i, %tobool2.not.i.i
  %spec.select.i93.i = select i1 %tobool2.not.i.i, ptr %12, ptr @.str.34
  %spec.select.i = select i1 %or.cond.i, ptr @.str.20, ptr %spec.select.i93.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.34, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i.i ]
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 2633, ptr noundef %cond.i) #19
  br label %do.end9.i

do.end9.i:                                        ; preds = %cond.end.i, %if.end10.do.end9.i_crit_edge
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %state.i, align 4
  %ops.i = getelementptr i8, ptr %work, i32 -1064
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %recovery_prolog.i = getelementptr inbounds %struct.qed_common_ops, ptr %19, i32 0, i32 34
  %20 = ptrtoint ptr %recovery_prolog.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %recovery_prolog.i, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %call11.i = tail call i32 %21(ptr noundef %23) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp12.i = icmp eq i32 %8, 1
  br i1 %cmp12.i, label %if.then14.i, label %do.end9.i.if.end15.i_crit_edge

do.end9.i.if.end15.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i

if.then14.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @qede_unload(ptr noundef %add.ptr, i32 noundef 1, i1 noundef zeroext true) #16
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %do.end9.i.if.end15.i_crit_edge
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  tail call fastcc void @__qede_remove(ptr noundef %25, i32 noundef 1) #16
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %dp_module.i = getelementptr i8, ptr %work, i32 -1076
  %28 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dp_module.i, align 8
  %30 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %dp_level.i, align 4
  %flags.i = getelementptr i8, ptr %work, i32 -1068
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool19.i = icmp ne i32 %and1.i.i, 0
  %call20.i = tail call fastcc i32 @__qede_probe(ptr noundef %27, i32 noundef %29, i8 noundef zeroext %31, i1 noundef zeroext %tobool19.i, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end24.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %add.ptr, align 8
  br label %err.i

if.end24.i:                                       ; preds = %if.end15.i
  br i1 %cmp12.i, label %if.then27.i, label %if.end24.i.if.end34.i_crit_edge

if.end24.i.if.end34.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then27.i:                                      ; preds = %if.end24.i
  %call28.i = tail call fastcc i32 @qede_load(ptr noundef %add.ptr, i32 noundef 2, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.then27.i.err.i_crit_edge

if.then27.i.err.i_crit_edge:                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err.i

if.end31.i:                                       ; preds = %if.then27.i
  %ndev32.i = getelementptr i8, ptr %work, i32 -1088
  %35 = ptrtoint ptr %ndev32.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ndev32.i, align 4
  tail call void @qede_config_rx_mode(ptr noundef %36) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %37 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i97.i = icmp eq ptr %37, null
  br i1 %tobool.not.i97.i, label %if.end31.i.if.end34.i_crit_edge, label %if.then.i.i

if.end31.i.if.end34.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.i

if.then.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %ndev32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev32.i, align 4
  %reset_ntf.i.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %reset_ntf.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reset_ntf.i.i, align 4
  tail call void %41(ptr noundef %39) #16
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then.i.i, %if.end31.i.if.end34.i_crit_edge, %if.end24.i.if.end34.i_crit_edge
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %8, ptr %state.i, align 4
  %43 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp39.i = icmp ult i8 %44, 3
  br i1 %cmp39.i, label %do.end50.i, label %if.end34.i.qede_recovery_handler.exit_crit_edge, !prof !474

if.end34.i.qede_recovery_handler.exit_crit_edge:  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_recovery_handler.exit

do.end50.i:                                       ; preds = %if.end34.i
  %ndev52.i = getelementptr i8, ptr %work, i32 -1088
  %45 = ptrtoint ptr %ndev52.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ndev52.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i98.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i98.i, label %do.end50.i.cond.end59.i_crit_edge, label %lor.lhs.false.i102.i

do.end50.i.cond.end59.i_crit_edge:                ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end59.i

lor.lhs.false.i102.i:                             ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i99.i = tail call ptr @strchr(ptr noundef %46, i32 noundef 37) #16
  %tobool2.not.i100.i = icmp eq ptr %call.i99.i, null
  %tobool54.not.i = icmp eq ptr %46, null
  %or.cond122.i = and i1 %tobool54.not.i, %tobool2.not.i100.i
  %spec.select.i108.i = select i1 %tobool2.not.i100.i, ptr %46, ptr @.str.34
  %spec.select123.i = select i1 %or.cond122.i, ptr @.str.20, ptr %spec.select.i108.i
  br label %cond.end59.i

cond.end59.i:                                     ; preds = %lor.lhs.false.i102.i, %do.end50.i.cond.end59.i_crit_edge
  %cond60.i = phi ptr [ @.str.34, %do.end50.i.cond.end59.i_crit_edge ], [ %spec.select123.i, %lor.lhs.false.i102.i ]
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef 2665, ptr noundef %cond60.i) #19
  br label %qede_recovery_handler.exit

err.i:                                            ; preds = %if.then27.i.err.i_crit_edge, %if.then22.i
  %ndev.i.i = getelementptr i8, ptr %work, i32 -1088
  %49 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.77) #19
  %51 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ndev.i.i, align 4
  tail call void @netif_device_detach(ptr noundef %52) #16
  %53 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr, align 8
  %tobool.not.i112.i = icmp eq ptr %54, null
  br i1 %tobool.not.i112.i, label %err.i.qede_recovery_handler.exit_crit_edge, label %if.then.i114.i

err.i.qede_recovery_handler.exit_crit_edge:       ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_recovery_handler.exit

if.then.i114.i:                                   ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #18
  %55 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %set_power_state.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %set_power_state.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_power_state.i.i, align 4
  %call.i113.i = tail call i32 %60(ptr noundef nonnull %54, i32 noundef 3) #16
  br label %qede_recovery_handler.exit

qede_recovery_handler.exit:                       ; preds = %if.then.i114.i, %err.i.qede_recovery_handler.exit_crit_edge, %cond.end59.i, %if.end34.i.qede_recovery_handler.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %qede_lock.i.i) #16
  tail call void @rtnl_unlock() #16
  br label %if.end11

if.end11:                                         ; preds = %qede_recovery_handler.exit, %if.end.if.end11_crit_edge
  %qede_lock.i = getelementptr i8, ptr %work, i32 -940
  tail call void @mutex_lock_nested(ptr noundef %qede_lock.i, i32 noundef 0) #16
  %call13 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %sp_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.if.end18_crit_edge, label %if.then15

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then15:                                        ; preds = %if.end11
  %state = getelementptr i8, ptr %work, i32 -848
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp = icmp eq i32 %62, 1
  br i1 %cmp, label %if.then16, label %if.then15.if.end18_crit_edge

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then16:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %ndev = getelementptr i8, ptr %work, i32 -1088
  %63 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ndev, align 4
  tail call void @qede_config_rx_mode(ptr noundef %64) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.then15.if.end18_crit_edge, %if.end11.if.end18_crit_edge
  %call20 = tail call i32 @_test_and_clear_bit(i32 noundef 5, ptr noundef %sp_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end18.if.end27_crit_edge, label %if.then22

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then22:                                        ; preds = %if.end18
  %state23 = getelementptr i8, ptr %work, i32 -848
  %65 = ptrtoint ptr %state23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp24 = icmp eq i32 %66, 1
  br i1 %cmp24, label %if.then25, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @qede_process_arfs_filters(ptr noundef %add.ptr, i1 noundef zeroext false) #16
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %call29 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %sp_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.if.end32_crit_edge, label %if.then31

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.then31:                                        ; preds = %if.end27
  %dp_level.i68 = getelementptr i8, ptr %work, i32 -1072
  %67 = ptrtoint ptr %dp_level.i68 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %dp_level.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %68)
  %cmp.i69 = icmp ult i8 %68, 3
  br i1 %cmp.i69, label %do.end.i72, label %if.then31.do.end8.i_crit_edge, !prof !474

if.then31.do.end8.i_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8.i

do.end.i72:                                       ; preds = %if.then31
  %ndev.i70 = getelementptr i8, ptr %work, i32 -1088
  %69 = ptrtoint ptr %ndev.i70 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ndev.i70, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %70, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i71 = icmp eq i8 %72, 0
  br i1 %tobool.not.i.i71, label %do.end.i72.cond.end.i81_crit_edge, label %lor.lhs.false.i.i78

do.end.i72.cond.end.i81_crit_edge:                ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i81

lor.lhs.false.i.i78:                              ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i73 = tail call ptr @strchr(ptr noundef %70, i32 noundef 37) #16
  %tobool2.not.i.i74 = icmp eq ptr %call.i.i73, null
  %tobool4.not.i75 = icmp eq ptr %70, null
  %or.cond.i76 = and i1 %tobool4.not.i75, %tobool2.not.i.i74
  %spec.select.i86.i = select i1 %tobool2.not.i.i74, ptr %70, ptr @.str.34
  %spec.select.i77 = select i1 %or.cond.i76, ptr @.str.20, ptr %spec.select.i86.i
  br label %cond.end.i81

cond.end.i81:                                     ; preds = %lor.lhs.false.i.i78, %do.end.i72.cond.end.i81_crit_edge
  %cond.i79 = phi ptr [ @.str.34, %do.end.i72.cond.end.i81_crit_edge ], [ %spec.select.i77, %lor.lhs.false.i.i78 ]
  %err_flags.i = getelementptr i8, ptr %work, i32 212
  %73 = ptrtoint ptr %err_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %err_flags.i, align 8
  %call7.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 2695, ptr noundef %cond.i79, i32 noundef %74) #19
  br label %do.end8.i

do.end8.i:                                        ; preds = %cond.end.i81, %if.then31.do.end8.i_crit_edge
  %devlink.i = getelementptr i8, ptr %work, i32 -1080
  %75 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %devlink.i, align 4
  %tobool9.not.i = icmp eq ptr %76, null
  br i1 %tobool9.not.i, label %do.end8.i.if.end40.i_crit_edge, label %do.body11.i

do.end8.i.if.end40.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i

do.body11.i:                                      ; preds = %do.end8.i
  %77 = ptrtoint ptr %dp_level.i68 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dp_level.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %78)
  %cmp14.i = icmp ult i8 %78, 3
  br i1 %cmp14.i, label %do.end24.i, label %do.body11.i.do.end37.i_crit_edge, !prof !474

do.body11.i.do.end37.i_crit_edge:                 ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end37.i

do.end24.i:                                       ; preds = %do.body11.i
  %ndev26.i = getelementptr i8, ptr %work, i32 -1088
  %79 = ptrtoint ptr %ndev26.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ndev26.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i90.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i90.i, label %do.end24.i.cond.end33.i_crit_edge, label %lor.lhs.false.i94.i

do.end24.i.cond.end33.i_crit_edge:                ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end33.i

lor.lhs.false.i94.i:                              ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i91.i = tail call ptr @strchr(ptr noundef %80, i32 noundef 37) #16
  %tobool2.not.i92.i = icmp eq ptr %call.i91.i, null
  %tobool28.not.i = icmp eq ptr %80, null
  %or.cond129.i = and i1 %tobool28.not.i, %tobool2.not.i92.i
  %spec.select.i100.i = select i1 %tobool2.not.i92.i, ptr %80, ptr @.str.34
  %spec.select131.i = select i1 %or.cond129.i, ptr @.str.20, ptr %spec.select.i100.i
  br label %cond.end33.i

cond.end33.i:                                     ; preds = %lor.lhs.false.i94.i, %do.end24.i.cond.end33.i_crit_edge
  %cond34.i = phi ptr [ @.str.34, %do.end24.i.cond.end33.i_crit_edge ], [ %spec.select131.i, %lor.lhs.false.i94.i ]
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef 2698, ptr noundef %cond34.i) #19
  br label %do.end37.i

do.end37.i:                                       ; preds = %cond.end33.i, %do.body11.i.do.end37.i_crit_edge
  %ops.i82 = getelementptr i8, ptr %work, i32 -1064
  %83 = ptrtoint ptr %ops.i82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i82, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %report_fatal_error.i = getelementptr inbounds %struct.qed_common_ops, ptr %86, i32 0, i32 18
  %87 = ptrtoint ptr %report_fatal_error.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %report_fatal_error.i, align 4
  %89 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %devlink.i, align 4
  %last_err_type.i = getelementptr i8, ptr %work, i32 208
  %91 = ptrtoint ptr %last_err_type.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %last_err_type.i, align 4
  %call39.i = tail call i32 %88(ptr noundef %90, i32 noundef %92) #16
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end37.i, %do.end8.i.if.end40.i_crit_edge
  %err_flags41.i = getelementptr i8, ptr %work, i32 212
  tail call void @_clear_bit(i32 noundef 31, ptr noundef %err_flags41.i) #16
  %93 = ptrtoint ptr %dp_level.i68 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %dp_level.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %94)
  %cmp45.i = icmp ult i8 %94, 3
  br i1 %cmp45.i, label %do.end55.i, label %if.end40.i.if.end32_crit_edge, !prof !474

if.end40.i.if.end32_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

do.end55.i:                                       ; preds = %if.end40.i
  %ndev57.i = getelementptr i8, ptr %work, i32 -1088
  %95 = ptrtoint ptr %ndev57.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ndev57.i, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i104.i = icmp eq i8 %98, 0
  br i1 %tobool.not.i104.i, label %do.end55.i.cond.end64.i_crit_edge, label %lor.lhs.false.i108.i

do.end55.i.cond.end64.i_crit_edge:                ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end64.i

lor.lhs.false.i108.i:                             ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i105.i = tail call ptr @strchr(ptr noundef %96, i32 noundef 37) #16
  %tobool2.not.i106.i = icmp eq ptr %call.i105.i, null
  %tobool59.not.i = icmp eq ptr %96, null
  %or.cond130.i = and i1 %tobool59.not.i, %tobool2.not.i106.i
  %spec.select.i114.i = select i1 %tobool2.not.i106.i, ptr %96, ptr @.str.34
  %spec.select132.i = select i1 %or.cond130.i, ptr @.str.20, ptr %spec.select.i114.i
  br label %cond.end64.i

cond.end64.i:                                     ; preds = %lor.lhs.false.i108.i, %do.end55.i.cond.end64.i_crit_edge
  %cond65.i = phi ptr [ @.str.34, %do.end55.i.cond.end64.i_crit_edge ], [ %spec.select132.i, %lor.lhs.false.i108.i ]
  %call66.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.79, i32 noundef 2704, ptr noundef %cond65.i) #19
  br label %if.end32

if.end32:                                         ; preds = %cond.end64.i, %if.end40.i.if.end32_crit_edge, %if.end27.if.end32_crit_edge
  tail call void @mutex_unlock(ptr noundef %qede_lock.i) #16
  %call34 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %sp_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end32.cleanup_crit_edge, label %if.then36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then36:                                        ; preds = %if.end32
  %pdev37 = getelementptr i8, ptr %work, i32 -1084
  %99 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev37, align 8
  %call38 = tail call i32 @pci_num_vf(ptr noundef %100) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then36.if.end43_crit_edge, label %if.then40

if.then36.if.end43_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end43

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  %101 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev37, align 8
  %call42 = tail call i32 @qede_sriov_configure(ptr noundef %102, i32 noundef 0)
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then36.if.end43_crit_edge
  %ops = getelementptr i8, ptr %work, i32 -1064
  %103 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ops, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %recovery_process = getelementptr inbounds %struct.qed_common_ops, ptr %106, i32 0, i32 33
  %107 = ptrtoint ptr %recovery_process to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %recovery_process, align 4
  %109 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr, align 8
  %call44 = tail call i32 %108(ptr noundef %110) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_ptp_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_set_dcbnl_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_set_ethtool_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_set_udp_tunnels(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_open(ptr noundef %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call void @netif_carrier_off(ptr noundef %ndev) #16
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %set_power_state = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_power_state, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, i32 noundef 0) #16
  %call2 = tail call fastcc i32 @qede_load(ptr noundef %add.ptr.i, i32 noundef 0, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %8 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.udp_tunnel_nic_reset_ntf.exit_crit_edge, label %if.then.i

if.end.udp_tunnel_nic_reset_ntf.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %udp_tunnel_nic_reset_ntf.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %reset_ntf.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %reset_ntf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_ntf.i, align 4
  tail call void %10(ptr noundef %ndev) #16
  br label %udp_tunnel_nic_reset_ntf.exit

udp_tunnel_nic_reset_ntf.exit:                    ; preds = %if.then.i, %if.end.udp_tunnel_nic_reset_ntf.exit_crit_edge
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %update_drv_state = getelementptr inbounds %struct.qed_common_ops, ptr %14, i32 0, i32 35
  %15 = ptrtoint ptr %update_drv_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %update_drv_state, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 8
  %call6 = tail call i32 %16(ptr noundef %18, i1 noundef zeroext true) #16
  br label %cleanup

cleanup:                                          ; preds = %udp_tunnel_nic_reset_ntf.exit, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_close(ptr noundef %ndev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  tail call fastcc void @qede_unload(ptr noundef %add.ptr.i, i32 noundef 0, i1 noundef zeroext false)
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %update_drv_state = getelementptr inbounds %struct.qed_common_ops, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %update_drv_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %update_drv_state, align 4
  %call2 = tail call i32 %7(ptr noundef nonnull %1, i1 noundef zeroext false) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @qede_features_check(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @qede_select_queue(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_set_rx_mode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_set_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_change_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_get_stats64(ptr noundef %dev, ptr nocapture noundef writeonly %stats) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @qede_fill_by_demand_stats(ptr noundef %add.ptr.i)
  %stats1 = getelementptr i8, ptr %dev, i32 2560
  %rx_ucast_pkts = getelementptr i8, ptr %dev, i32 2608
  %0 = ptrtoint ptr %rx_ucast_pkts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rx_ucast_pkts, align 8
  %rx_mcast_pkts = getelementptr i8, ptr %dev, i32 2616
  %2 = ptrtoint ptr %rx_mcast_pkts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rx_mcast_pkts, align 8
  %add = add i64 %3, %1
  %rx_bcast_pkts = getelementptr i8, ptr %dev, i32 2624
  %4 = ptrtoint ptr %rx_bcast_pkts to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rx_bcast_pkts, align 8
  %add2 = add i64 %add, %5
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add2, ptr %stats, align 8
  %tx_ucast_pkts = getelementptr i8, ptr %dev, i32 2680
  %7 = ptrtoint ptr %tx_ucast_pkts to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tx_ucast_pkts, align 8
  %tx_mcast_pkts = getelementptr i8, ptr %dev, i32 2688
  %9 = ptrtoint ptr %tx_mcast_pkts to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tx_mcast_pkts, align 8
  %add3 = add i64 %10, %8
  %tx_bcast_pkts = getelementptr i8, ptr %dev, i32 2696
  %11 = ptrtoint ptr %tx_bcast_pkts to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tx_bcast_pkts, align 8
  %add4 = add i64 %add3, %12
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %13 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add4, ptr %tx_packets, align 8
  %rx_ucast_bytes = getelementptr i8, ptr %dev, i32 2584
  %14 = ptrtoint ptr %rx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_ucast_bytes, align 8
  %rx_mcast_bytes = getelementptr i8, ptr %dev, i32 2592
  %16 = ptrtoint ptr %rx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rx_mcast_bytes, align 8
  %add5 = add i64 %17, %15
  %rx_bcast_bytes = getelementptr i8, ptr %dev, i32 2600
  %18 = ptrtoint ptr %rx_bcast_bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_bcast_bytes, align 8
  %add6 = add i64 %add5, %19
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %20 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add6, ptr %rx_bytes, align 8
  %tx_ucast_bytes = getelementptr i8, ptr %dev, i32 2656
  %21 = ptrtoint ptr %tx_ucast_bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_ucast_bytes, align 8
  %tx_mcast_bytes = getelementptr i8, ptr %dev, i32 2664
  %23 = ptrtoint ptr %tx_mcast_bytes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tx_mcast_bytes, align 8
  %add7 = add i64 %24, %22
  %tx_bcast_bytes = getelementptr i8, ptr %dev, i32 2672
  %25 = ptrtoint ptr %tx_bcast_bytes to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %tx_bcast_bytes, align 8
  %add8 = add i64 %add7, %26
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %27 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add8, ptr %tx_bytes, align 8
  %tx_err_drop_pkts = getelementptr i8, ptr %dev, i32 2704
  %28 = ptrtoint ptr %tx_err_drop_pkts to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tx_err_drop_pkts, align 8
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %30 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %tx_errors, align 8
  %31 = load i64, ptr %rx_mcast_pkts, align 8
  %32 = load i64, ptr %rx_bcast_pkts, align 8
  %add11 = add i64 %32, %31
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %33 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add11, ptr %multicast, align 8
  %34 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %stats1, align 8
  %rx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  %36 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %rx_fifo_errors, align 8
  %dev_type = getelementptr i8, ptr %dev, i32 2404
  %37 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp = icmp eq i32 %38, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %tx_total_collisions = getelementptr i8, ptr %dev, i32 3064
  %39 = ptrtoint ptr %tx_total_collisions to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %tx_total_collisions, align 8
  %collisions = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 9
  %41 = ptrtoint ptr %collisions to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %collisions, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_crc_errors = getelementptr i8, ptr %dev, i32 2816
  %42 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_crc_errors, align 8
  %rx_crc_errors14 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %44 = ptrtoint ptr %rx_crc_errors14 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %rx_crc_errors14, align 8
  %rx_align_errors = getelementptr i8, ptr %dev, i32 2848
  %45 = ptrtoint ptr %rx_align_errors to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rx_align_errors, align 8
  %rx_frame_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 13
  %47 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %rx_frame_errors, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_vlan_rx_add_vid(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_vlan_rx_kill_vid(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @qede_fix_features(ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_set_features(ptr noundef, i64 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_xdp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_xdp_transmit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 35248, i32 %cmd)
  %cond16 = icmp eq i32 %cmd, 35248
  br i1 %cond16, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 @qede_ptp_hw_ts(ptr noundef %add.ptr.i, ptr noundef %ifr) #16
  br label %cleanup

do.body:                                          ; preds = %if.end
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr i8, ptr %dev, i32 2320
  %4 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dp_module, align 8
  %and = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !476

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %land.rhs
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i26 = select i1 %tobool2.not.i, ptr %7, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i26
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef 505, ptr noundef %cond, i32 noundef %cmd) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb ], [ -11, %entry.cleanup_crit_edge ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %cond.end ], [ -95, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #3 align 64 {
entry:
  %sb_dbg.i = alloca %struct.qed_sb_info_dbg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @netif_carrier_off(ptr noundef %dev) #16
  %dp_level = getelementptr i8, ptr %dev, i32 2324
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp ult i8 %1, 3
  br i1 %cmp, label %do.end, label %entry.do.end10_crit_edge, !prof !474

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10

do.end:                                           ; preds = %entry
  %ndev = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %3, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool5.not = icmp eq ptr %3, null
  %or.cond = and i1 %tobool5.not, %tobool2.not.i
  %spec.select.i114 = select i1 %tobool2.not.i, ptr %3, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i114
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 580, ptr noundef %cond, i32 noundef %txqueue) #19
  br label %do.end10

do.end10:                                         ; preds = %cond.end, %entry.do.end10_crit_edge
  %num_queues = getelementptr i8, ptr %dev, i32 2442
  %6 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp12173.not = icmp eq i16 %7, 0
  br i1 %cmp12173.not, label %do.end10.for.end38_crit_edge, label %for.body.lr.ph

do.end10.for.end38_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end38

for.body.lr.ph:                                   ; preds = %do.end10
  %fp_array = getelementptr i8, ptr %dev, i32 2428
  %num_tc = getelementptr i8, ptr %dev, i32 2413
  %ndev.i = getelementptr i8, ptr %dev, i32 2308
  %8 = getelementptr inbounds %struct.qed_sb_info_dbg, ptr %sb_dbg.i, i32 0, i32 1
  %ops.i = getelementptr i8, ptr %dev, i32 2332
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0174 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %cleanup.for.body_crit_edge ]
  %9 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fp_array, align 4
  %type = getelementptr %struct.qede_fastpath, ptr %10, i32 %i.0174, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 4
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %for.body.cleanup_crit_edge, label %for.cond18.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond18.preheader:                             ; preds = %for.body
  %14 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_tc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp20166.not = icmp eq i8 %15, 0
  br i1 %cmp20166.not, label %for.cond18.preheader.cleanup_crit_edge, label %for.body22.lr.ph

for.cond18.preheader.cleanup_crit_edge:           ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body22.lr.ph:                                 ; preds = %for.cond18.preheader
  %txq23 = getelementptr %struct.qede_fastpath, ptr %10, i32 %i.0174, i32 7
  %id.i = getelementptr %struct.qede_fastpath, ptr %10, i32 %i.0174, i32 2
  %sb_info.i = getelementptr %struct.qede_fastpath, ptr %10, i32 %i.0174, i32 5
  br label %for.body22

for.body22:                                       ; preds = %for.inc.for.body22_crit_edge, %for.body22.lr.ph
  %cos.0167 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc, %for.inc.for.body22_crit_edge ]
  %16 = ptrtoint ptr %txq23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txq23, align 8
  %tx_pbl.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 15
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp.i = icmp ult i8 %19, 3
  br i1 %cmp.i, label %do.end.i, label %for.body22.qede_txq_fp_log_metadata.exit_crit_edge, !prof !474

for.body22.qede_txq_fp_log_metadata.exit_crit_edge: ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_txq_fp_log_metadata.exit

do.end.i:                                         ; preds = %for.body22
  %20 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i, label %do.end.i.do.body14.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.do.body14.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body14.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = call ptr @strchr(ptr noundef %21, i32 noundef 37) #16
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool4.not.i = icmp eq ptr %21, null
  %or.cond.i = and i1 %tobool4.not.i, %tobool2.not.i.i
  %spec.select.i69.i = select i1 %tobool2.not.i.i, ptr %21, ptr @.str.34
  %spec.select.i118 = select i1 %or.cond.i, ptr @.str.20, ptr %spec.select.i69.i
  br label %do.body14.i

do.body14.i:                                      ; preds = %lor.lhs.false.i.i, %do.end.i.do.body14.i_crit_edge
  %cond.i = phi ptr [ @.str.34, %do.end.i.do.body14.i_crit_edge ], [ %spec.select.i118, %lor.lhs.false.i.i ]
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %id.i, align 1
  %conv7.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sb_info.i, align 8
  %igu_sb_id.i = getelementptr inbounds %struct.qed_sb_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %igu_sb_id.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %igu_sb_id.i, align 4
  %conv8.i = zext i16 %29 to i32
  %index.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 13
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i, align 4
  %ndev_txq_id.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 18
  %32 = ptrtoint ptr %ndev_txq_id.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ndev_txq_id.i, align 2
  %conv9.i = zext i16 %33 to i32
  %cos.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 17
  %34 = ptrtoint ptr %cos.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cos.i, align 4
  %conv10.i = zext i16 %35 to i32
  %capacity.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 15, i32 4
  %36 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %capacity.i, align 4
  %size.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 15, i32 18
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 536, ptr noundef %cond.i, i32 noundef %conv7.i, i32 noundef %conv8.i, i32 noundef %31, i32 noundef %conv9.i, i32 noundef %conv10.i, ptr noundef %tx_pbl.i, i32 noundef %37, i32 noundef %39, i32 noundef %40, i32 noundef 100) #19
  %41 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr.i = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr.i)
  %cmp17.i = icmp ult i8 %.pr.i, 3
  br i1 %cmp17.i, label %do.end28.i, label %do.body14.i.qede_txq_fp_log_metadata.exit_crit_edge, !prof !474

do.body14.i.qede_txq_fp_log_metadata.exit_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_txq_fp_log_metadata.exit

do.end28.i:                                       ; preds = %do.body14.i
  %42 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ndev.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i73.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i73.i, label %do.end28.i.cond.end37.i_crit_edge, label %lor.lhs.false.i77.i

do.end28.i.cond.end37.i_crit_edge:                ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end37.i

lor.lhs.false.i77.i:                              ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i74.i = call ptr @strchr(ptr noundef %43, i32 noundef 37) #16
  %tobool2.not.i75.i = icmp eq ptr %call.i74.i, null
  %tobool32.not.i = icmp eq ptr %43, null
  %or.cond96.i = and i1 %tobool32.not.i, %tobool2.not.i75.i
  %spec.select.i83.i = select i1 %tobool2.not.i75.i, ptr %43, ptr @.str.34
  %spec.select97.i = select i1 %or.cond96.i, ptr @.str.20, ptr %spec.select.i83.i
  br label %cond.end37.i

cond.end37.i:                                     ; preds = %lor.lhs.false.i77.i, %do.end28.i.cond.end37.i_crit_edge
  %cond38.i = phi ptr [ @.str.34, %do.end28.i.cond.end37.i_crit_edge ], [ %spec.select97.i, %lor.lhs.false.i77.i ]
  %hw_cons_ptr.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 8
  %46 = ptrtoint ptr %hw_cons_ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_cons_ptr.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %47, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49) #16
  %conv39.i = zext i16 %50 to i32
  %sw_tx_prod.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 3
  %51 = ptrtoint ptr %sw_tx_prod.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %sw_tx_prod.i, align 4
  %conv40.i = zext i16 %52 to i32
  %sw_tx_cons.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 2
  %53 = ptrtoint ptr %sw_tx_cons.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %sw_tx_cons.i, align 2
  %conv41.i = zext i16 %54 to i32
  %u.i.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 15, i32 3
  %55 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %u.i.i, align 4
  %conv43.i = zext i16 %56 to i32
  %cons_idx.i.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %cons_idx.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cons_idx.i.i, align 2
  %conv45.i = zext i16 %58 to i32
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef 542, ptr noundef %cond38.i, i32 noundef %conv39.i, i32 noundef %conv40.i, i32 noundef %conv41.i, i32 noundef %conv43.i, i32 noundef %conv45.i) #19
  br label %qede_txq_fp_log_metadata.exit

qede_txq_fp_log_metadata.exit:                    ; preds = %cond.end37.i, %do.body14.i.qede_txq_fp_log_metadata.exit_crit_edge, %for.body22.qede_txq_fp_log_metadata.exit_crit_edge
  %u.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 15, i32 3
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %59 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %cons_idx.i, align 2
  %61 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp30.not = icmp eq i16 %60, %62
  br i1 %cmp30.not, label %qede_txq_fp_log_metadata.exit.for.inc_crit_edge, label %if.then32

qede_txq_fp_log_metadata.exit.for.inc_crit_edge:  ; preds = %qede_txq_fp_log_metadata.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then32:                                        ; preds = %qede_txq_fp_log_metadata.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sb_dbg.i) #16
  %63 = call ptr @memset(ptr %sb_dbg.i, i32 255, i32 32)
  %64 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sb_info.i, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %68 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %69)
  %cmp1.i.i = icmp ult i8 %69, 3
  br i1 %cmp1.i.i, label %do.end.i.i, label %if.then32.for.inc.i.3.i_crit_edge, !prof !474

if.then32.for.inc.i.3.i_crit_edge:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.3.i

do.end.i.i:                                       ; preds = %if.then32
  %70 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ndev.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i.i.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i.i

do.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

lor.lhs.false.i.i.i:                              ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call ptr @strchr(ptr noundef %71, i32 noundef 37) #16
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i.i, null
  %tobool5.not.i.i = icmp eq ptr %71, null
  %or.cond.i.i = and i1 %tobool5.not.i.i, %tobool2.not.i.i.i
  %spec.select.i54.i.i = select i1 %tobool2.not.i.i.i, ptr %71, ptr @.str.34
  %spec.select.i.i = select i1 %or.cond.i.i, ptr @.str.20, ptr %spec.select.i54.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %lor.lhs.false.i.i.i, %do.end.i.i.for.inc.i.i_crit_edge
  %cond.i.i = phi ptr [ @.str.34, %do.end.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i.i ]
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %67, align 1
  %conv8.i.i = zext i8 %75 to i32
  %arrayidx9.i.i = getelementptr i8, ptr %67, i32 1
  %76 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx9.i.i, align 1
  %conv10.i.i = zext i8 %77 to i32
  %arrayidx12.i.i = getelementptr i8, ptr %67, i32 2
  %78 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx12.i.i, align 1
  %conv13.i.i = zext i8 %79 to i32
  %arrayidx15.i.i = getelementptr i8, ptr %67, i32 3
  %80 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx15.i.i, align 1
  %conv16.i.i = zext i8 %81 to i32
  %arrayidx18.i.i = getelementptr i8, ptr %67, i32 4
  %82 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = zext i8 %83 to i32
  %arrayidx21.i.i = getelementptr i8, ptr %67, i32 5
  %84 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx21.i.i, align 1
  %conv22.i.i = zext i8 %85 to i32
  %arrayidx24.i.i = getelementptr i8, ptr %67, i32 6
  %86 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %87 to i32
  %arrayidx27.i.i = getelementptr i8, ptr %67, i32 7
  %88 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx27.i.i, align 1
  %conv28.i.i = zext i8 %89 to i32
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 523, ptr noundef %cond.i.i, i32 noundef %conv8.i.i, i32 noundef %conv10.i.i, i32 noundef %conv13.i.i, i32 noundef %conv16.i.i, i32 noundef %conv19.i.i, i32 noundef %conv22.i.i, i32 noundef %conv25.i.i, i32 noundef %conv28.i.i) #19
  %90 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %90)
  %.pr.i120 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr.i120)
  %cmp1.i.1.i = icmp ult i8 %.pr.i120, 3
  br i1 %cmp1.i.1.i, label %do.end.i.1.i, label %for.inc.i.i.for.inc.i.3.i_crit_edge, !prof !474

for.inc.i.i.for.inc.i.3.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.3.i

do.end.i.1.i:                                     ; preds = %for.inc.i.i
  %91 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ndev.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i.1.i = icmp eq i8 %94, 0
  br i1 %tobool.not.i.i.1.i, label %do.end.i.1.i.for.inc.i.1.i_crit_edge, label %lor.lhs.false.i.i.1.i

do.end.i.1.i.for.inc.i.1.i_crit_edge:             ; preds = %do.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.1.i

lor.lhs.false.i.i.1.i:                            ; preds = %do.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.1.i = call ptr @strchr(ptr noundef %92, i32 noundef 37) #16
  %tobool2.not.i.i.1.i = icmp eq ptr %call.i.i.1.i, null
  %tobool5.not.i.1.i = icmp eq ptr %92, null
  %or.cond.i.1.i = and i1 %tobool5.not.i.1.i, %tobool2.not.i.i.1.i
  %spec.select.i54.i.1.i = select i1 %tobool2.not.i.i.1.i, ptr %92, ptr @.str.34
  %spec.select.i.1.i = select i1 %or.cond.i.1.i, ptr @.str.20, ptr %spec.select.i54.i.1.i
  br label %for.inc.i.1.i

for.inc.i.1.i:                                    ; preds = %lor.lhs.false.i.i.1.i, %do.end.i.1.i.for.inc.i.1.i_crit_edge
  %cond.i.1.i = phi ptr [ @.str.34, %do.end.i.1.i.for.inc.i.1.i_crit_edge ], [ %spec.select.i.1.i, %lor.lhs.false.i.i.1.i ]
  %arrayidx.i.1.i = getelementptr i8, ptr %67, i32 8
  %95 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.1.i, align 1
  %conv8.i.1.i = zext i8 %96 to i32
  %arrayidx9.i.1.i = getelementptr i8, ptr %67, i32 9
  %97 = ptrtoint ptr %arrayidx9.i.1.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx9.i.1.i, align 1
  %conv10.i.1.i = zext i8 %98 to i32
  %arrayidx12.i.1.i = getelementptr i8, ptr %67, i32 10
  %99 = ptrtoint ptr %arrayidx12.i.1.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx12.i.1.i, align 1
  %conv13.i.1.i = zext i8 %100 to i32
  %arrayidx15.i.1.i = getelementptr i8, ptr %67, i32 11
  %101 = ptrtoint ptr %arrayidx15.i.1.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx15.i.1.i, align 1
  %conv16.i.1.i = zext i8 %102 to i32
  %arrayidx18.i.1.i = getelementptr i8, ptr %67, i32 12
  %103 = ptrtoint ptr %arrayidx18.i.1.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx18.i.1.i, align 1
  %conv19.i.1.i = zext i8 %104 to i32
  %arrayidx21.i.1.i = getelementptr i8, ptr %67, i32 13
  %105 = ptrtoint ptr %arrayidx21.i.1.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx21.i.1.i, align 1
  %conv22.i.1.i = zext i8 %106 to i32
  %arrayidx24.i.1.i = getelementptr i8, ptr %67, i32 14
  %107 = ptrtoint ptr %arrayidx24.i.1.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx24.i.1.i, align 1
  %conv25.i.1.i = zext i8 %108 to i32
  %arrayidx27.i.1.i = getelementptr i8, ptr %67, i32 15
  %109 = ptrtoint ptr %arrayidx27.i.1.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx27.i.1.i, align 1
  %conv28.i.1.i = zext i8 %110 to i32
  %call29.i.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 523, ptr noundef %cond.i.1.i, i32 noundef %conv8.i.1.i, i32 noundef %conv10.i.1.i, i32 noundef %conv13.i.1.i, i32 noundef %conv16.i.1.i, i32 noundef %conv19.i.1.i, i32 noundef %conv22.i.1.i, i32 noundef %conv25.i.1.i, i32 noundef %conv28.i.1.i) #19
  %111 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %111)
  %.pr72.i = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr72.i)
  %cmp1.i.2.i = icmp ult i8 %.pr72.i, 3
  br i1 %cmp1.i.2.i, label %do.end.i.2.i, label %for.inc.i.1.i.for.inc.i.3.i_crit_edge, !prof !474

for.inc.i.1.i.for.inc.i.3.i_crit_edge:            ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.3.i

do.end.i.2.i:                                     ; preds = %for.inc.i.1.i
  %112 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ndev.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i.i.2.i = icmp eq i8 %115, 0
  br i1 %tobool.not.i.i.2.i, label %do.end.i.2.i.for.inc.i.2.i_crit_edge, label %lor.lhs.false.i.i.2.i

do.end.i.2.i.for.inc.i.2.i_crit_edge:             ; preds = %do.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.2.i

lor.lhs.false.i.i.2.i:                            ; preds = %do.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.2.i = call ptr @strchr(ptr noundef %113, i32 noundef 37) #16
  %tobool2.not.i.i.2.i = icmp eq ptr %call.i.i.2.i, null
  %tobool5.not.i.2.i = icmp eq ptr %113, null
  %or.cond.i.2.i = and i1 %tobool5.not.i.2.i, %tobool2.not.i.i.2.i
  %spec.select.i54.i.2.i = select i1 %tobool2.not.i.i.2.i, ptr %113, ptr @.str.34
  %spec.select.i.2.i = select i1 %or.cond.i.2.i, ptr @.str.20, ptr %spec.select.i54.i.2.i
  br label %for.inc.i.2.i

for.inc.i.2.i:                                    ; preds = %lor.lhs.false.i.i.2.i, %do.end.i.2.i.for.inc.i.2.i_crit_edge
  %cond.i.2.i = phi ptr [ @.str.34, %do.end.i.2.i.for.inc.i.2.i_crit_edge ], [ %spec.select.i.2.i, %lor.lhs.false.i.i.2.i ]
  %arrayidx.i.2.i = getelementptr i8, ptr %67, i32 16
  %116 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i.2.i, align 1
  %conv8.i.2.i = zext i8 %117 to i32
  %arrayidx9.i.2.i = getelementptr i8, ptr %67, i32 17
  %118 = ptrtoint ptr %arrayidx9.i.2.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx9.i.2.i, align 1
  %conv10.i.2.i = zext i8 %119 to i32
  %arrayidx12.i.2.i = getelementptr i8, ptr %67, i32 18
  %120 = ptrtoint ptr %arrayidx12.i.2.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx12.i.2.i, align 1
  %conv13.i.2.i = zext i8 %121 to i32
  %arrayidx15.i.2.i = getelementptr i8, ptr %67, i32 19
  %122 = ptrtoint ptr %arrayidx15.i.2.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx15.i.2.i, align 1
  %conv16.i.2.i = zext i8 %123 to i32
  %arrayidx18.i.2.i = getelementptr i8, ptr %67, i32 20
  %124 = ptrtoint ptr %arrayidx18.i.2.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx18.i.2.i, align 1
  %conv19.i.2.i = zext i8 %125 to i32
  %arrayidx21.i.2.i = getelementptr i8, ptr %67, i32 21
  %126 = ptrtoint ptr %arrayidx21.i.2.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx21.i.2.i, align 1
  %conv22.i.2.i = zext i8 %127 to i32
  %arrayidx24.i.2.i = getelementptr i8, ptr %67, i32 22
  %128 = ptrtoint ptr %arrayidx24.i.2.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx24.i.2.i, align 1
  %conv25.i.2.i = zext i8 %129 to i32
  %arrayidx27.i.2.i = getelementptr i8, ptr %67, i32 23
  %130 = ptrtoint ptr %arrayidx27.i.2.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx27.i.2.i, align 1
  %conv28.i.2.i = zext i8 %131 to i32
  %call29.i.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 523, ptr noundef %cond.i.2.i, i32 noundef %conv8.i.2.i, i32 noundef %conv10.i.2.i, i32 noundef %conv13.i.2.i, i32 noundef %conv16.i.2.i, i32 noundef %conv19.i.2.i, i32 noundef %conv22.i.2.i, i32 noundef %conv25.i.2.i, i32 noundef %conv28.i.2.i) #19
  %132 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %132)
  %.pr74.pr.i = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr74.pr.i)
  %cmp1.i.3.i = icmp ult i8 %.pr74.pr.i, 3
  br i1 %cmp1.i.3.i, label %do.end.i.3.i, label %for.inc.i.2.i.for.inc.i.3.i_crit_edge, !prof !474

for.inc.i.2.i.for.inc.i.3.i_crit_edge:            ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.3.i

do.end.i.3.i:                                     ; preds = %for.inc.i.2.i
  %133 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ndev.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %134, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i.i.3.i = icmp eq i8 %136, 0
  br i1 %tobool.not.i.i.3.i, label %do.end.i.3.i.cond.end.i.3.i_crit_edge, label %lor.lhs.false.i.i.3.i

do.end.i.3.i.cond.end.i.3.i_crit_edge:            ; preds = %do.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.3.i

lor.lhs.false.i.i.3.i:                            ; preds = %do.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.3.i = call ptr @strchr(ptr noundef %134, i32 noundef 37) #16
  %tobool2.not.i.i.3.i = icmp eq ptr %call.i.i.3.i, null
  %tobool5.not.i.3.i = icmp eq ptr %134, null
  %or.cond.i.3.i = and i1 %tobool5.not.i.3.i, %tobool2.not.i.i.3.i
  %spec.select.i54.i.3.i = select i1 %tobool2.not.i.i.3.i, ptr %134, ptr @.str.34
  %spec.select.i.3.i = select i1 %or.cond.i.3.i, ptr @.str.20, ptr %spec.select.i54.i.3.i
  br label %cond.end.i.3.i

cond.end.i.3.i:                                   ; preds = %lor.lhs.false.i.i.3.i, %do.end.i.3.i.cond.end.i.3.i_crit_edge
  %cond.i.3.i = phi ptr [ @.str.34, %do.end.i.3.i.cond.end.i.3.i_crit_edge ], [ %spec.select.i.3.i, %lor.lhs.false.i.i.3.i ]
  %arrayidx.i.3.i = getelementptr i8, ptr %67, i32 24
  %137 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i.3.i, align 1
  %conv8.i.3.i = zext i8 %138 to i32
  %arrayidx9.i.3.i = getelementptr i8, ptr %67, i32 25
  %139 = ptrtoint ptr %arrayidx9.i.3.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx9.i.3.i, align 1
  %conv10.i.3.i = zext i8 %140 to i32
  %arrayidx12.i.3.i = getelementptr i8, ptr %67, i32 26
  %141 = ptrtoint ptr %arrayidx12.i.3.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx12.i.3.i, align 1
  %conv13.i.3.i = zext i8 %142 to i32
  %arrayidx15.i.3.i = getelementptr i8, ptr %67, i32 27
  %143 = ptrtoint ptr %arrayidx15.i.3.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx15.i.3.i, align 1
  %conv16.i.3.i = zext i8 %144 to i32
  %arrayidx18.i.3.i = getelementptr i8, ptr %67, i32 28
  %145 = ptrtoint ptr %arrayidx18.i.3.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx18.i.3.i, align 1
  %conv19.i.3.i = zext i8 %146 to i32
  %arrayidx21.i.3.i = getelementptr i8, ptr %67, i32 29
  %147 = ptrtoint ptr %arrayidx21.i.3.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx21.i.3.i, align 1
  %conv22.i.3.i = zext i8 %148 to i32
  %arrayidx24.i.3.i = getelementptr i8, ptr %67, i32 30
  %149 = ptrtoint ptr %arrayidx24.i.3.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx24.i.3.i, align 1
  %conv25.i.3.i = zext i8 %150 to i32
  %arrayidx27.i.3.i = getelementptr i8, ptr %67, i32 31
  %151 = ptrtoint ptr %arrayidx27.i.3.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx27.i.3.i, align 1
  %conv28.i.3.i = zext i8 %152 to i32
  %call29.i.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef 523, ptr noundef %cond.i.3.i, i32 noundef %conv8.i.3.i, i32 noundef %conv10.i.3.i, i32 noundef %conv13.i.3.i, i32 noundef %conv16.i.3.i, i32 noundef %conv19.i.3.i, i32 noundef %conv22.i.3.i, i32 noundef %conv25.i.3.i, i32 noundef %conv28.i.3.i) #19
  br label %for.inc.i.3.i

for.inc.i.3.i:                                    ; preds = %cond.end.i.3.i, %for.inc.i.2.i.for.inc.i.3.i_crit_edge, %for.inc.i.1.i.for.inc.i.3.i_crit_edge, %for.inc.i.i.for.inc.i.3.i_crit_edge, %if.then32.for.inc.i.3.i_crit_edge
  %153 = call ptr @memset(ptr %sb_dbg.i, i32 0, i32 32)
  %154 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ops.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %get_sb_info.i = getelementptr inbounds %struct.qed_common_ops, ptr %157, i32 0, i32 47
  %158 = ptrtoint ptr %get_sb_info.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %get_sb_info.i, align 4
  %160 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %add.ptr.i, align 8
  %162 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %sb_info.i, align 8
  %164 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %id.i, align 1
  %conv.i = zext i8 %165 to i16
  %call.i122 = call i32 %159(ptr noundef %161, ptr noundef %163, i16 noundef zeroext %conv.i, ptr noundef nonnull %sb_dbg.i) #16
  %166 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %167)
  %cmp.i123 = icmp ult i8 %167, 3
  br i1 %cmp.i123, label %do.end.i125, label %for.inc.i.3.i.do.end13.i_crit_edge, !prof !474

for.inc.i.3.i.do.end13.i_crit_edge:               ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13.i

do.end.i125:                                      ; preds = %for.inc.i.3.i
  %168 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ndev.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %169, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i.i124 = icmp eq i8 %171, 0
  br i1 %tobool.not.i.i124, label %do.end.i125.cond.end.i_crit_edge, label %lor.lhs.false.i.i130

do.end.i125.cond.end.i_crit_edge:                 ; preds = %do.end.i125
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

lor.lhs.false.i.i130:                             ; preds = %do.end.i125
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i126 = call ptr @strchr(ptr noundef %169, i32 noundef 37) #16
  %tobool2.not.i.i127 = icmp eq ptr %call.i.i126, null
  %tobool6.not.i = icmp eq ptr %169, null
  %or.cond.i128 = and i1 %tobool6.not.i, %tobool2.not.i.i127
  %spec.select.i63.i = select i1 %tobool2.not.i.i127, ptr %169, ptr @.str.34
  %spec.select.i129 = select i1 %or.cond.i128, ptr @.str.20, ptr %spec.select.i63.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i130, %do.end.i125.cond.end.i_crit_edge
  %cond.i131 = phi ptr [ @.str.34, %do.end.i125.cond.end.i_crit_edge ], [ %spec.select.i129, %lor.lhs.false.i.i130 ]
  %172 = ptrtoint ptr %sb_dbg.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %sb_dbg.i, align 4
  %174 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %8, align 4
  %cos.i132 = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 17
  %176 = ptrtoint ptr %cos.i132 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %cos.i132, align 4
  %conv9.i133 = zext i16 %177 to i32
  %add.i = add nuw nsw i32 %conv9.i133, 1
  %arrayidx.i = getelementptr %struct.qed_sb_info_dbg, ptr %sb_dbg.i, i32 0, i32 2, i32 %add.i
  %178 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx.i, align 2
  %conv10.i134 = zext i16 %179 to i32
  %call11.i135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 558, ptr noundef %cond.i131, i32 noundef %173, i32 noundef %175, i32 noundef %conv10.i134) #19
  br label %do.end13.i

do.end13.i:                                       ; preds = %cond.end.i, %for.inc.i.3.i.do.end13.i_crit_edge
  %180 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ops.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %mfw_report.i = getelementptr inbounds %struct.qed_common_ops, ptr %183, i32 0, i32 46
  %184 = ptrtoint ptr %mfw_report.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mfw_report.i, align 4
  %186 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %add.ptr.i, align 8
  %index.i136 = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 13
  %188 = ptrtoint ptr %index.i136 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %index.i136, align 4
  %hw_cons_ptr.i137 = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 8
  %190 = ptrtoint ptr %hw_cons_ptr.i137 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw_cons_ptr.i137, align 8
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %191, align 2
  %194 = call i16 @llvm.bswap.i16(i16 %193) #16
  %conv17.i = zext i16 %194 to i32
  %195 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %cons_idx.i, align 2
  %conv19.i = zext i16 %196 to i32
  %197 = ptrtoint ptr %u.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %u.i, align 4
  %conv22.i = zext i16 %198 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %199 = load volatile i32, ptr @jiffies, align 128
  call void (ptr, ptr, ...) %185(ptr noundef %187, ptr noundef nonnull @.str.49, i32 noundef %189, i32 noundef %conv17.i, i32 noundef %conv19.i, i32 noundef %conv22.i, i32 noundef %199) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool23.not.i = icmp eq i32 %call.i122, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %do.end13.i.qede_tx_log_print.exit_crit_edge

do.end13.i.qede_tx_log_print.exit_crit_edge:      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_tx_log_print.exit

if.then24.i:                                      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  %200 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ops.i, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %mfw_report27.i = getelementptr inbounds %struct.qed_common_ops, ptr %203, i32 0, i32 46
  %204 = ptrtoint ptr %mfw_report27.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mfw_report27.i, align 4
  %206 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %add.ptr.i, align 8
  %208 = ptrtoint ptr %index.i136 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %index.i136, align 4
  %210 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %sb_info.i, align 8
  %igu_sb_id.i140 = getelementptr inbounds %struct.qed_sb_info, ptr %211, i32 0, i32 3
  %212 = ptrtoint ptr %igu_sb_id.i140 to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %igu_sb_id.i140, align 4
  %conv31.i = zext i16 %213 to i32
  %214 = ptrtoint ptr %sb_dbg.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %sb_dbg.i, align 4
  %216 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %8, align 4
  %cos35.i = getelementptr %struct.qede_tx_queue, ptr %17, i32 %cos.0167, i32 17
  %218 = ptrtoint ptr %cos35.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %cos35.i, align 4
  %conv36.i = zext i16 %219 to i32
  %add37.i = add nuw nsw i32 %conv36.i, 1
  %arrayidx38.i = getelementptr %struct.qed_sb_info_dbg, ptr %sb_dbg.i, i32 0, i32 2, i32 %add37.i
  %220 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx38.i, align 2
  %conv39.i141 = zext i16 %221 to i32
  call void (ptr, ptr, ...) %205(ptr noundef %207, ptr noundef nonnull @.str.50, i32 noundef %209, i32 noundef %conv31.i, i32 noundef %215, i32 noundef %217, i32 noundef %conv39.i141) #16
  br label %qede_tx_log_print.exit

qede_tx_log_print.exit:                           ; preds = %if.then24.i, %do.end13.i.qede_tx_log_print.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sb_dbg.i) #16
  br label %for.inc

for.inc:                                          ; preds = %qede_tx_log_print.exit, %qede_txq_fp_log_metadata.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %cos.0167, 1
  %222 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %num_tc, align 1
  %conv19 = zext i8 %223 to i32
  %cmp20 = icmp ult i32 %inc, %conv19
  br i1 %cmp20, label %for.inc.for.body22_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.inc.for.body22_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body22

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond18.preheader.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc37 = add nuw nsw i32 %i.0174, 1
  %224 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %num_queues, align 2
  %conv11 = zext i16 %225 to i32
  %cmp12 = icmp ult i32 %inc37, %conv11
  br i1 %cmp12, label %cleanup.for.body_crit_edge, label %cleanup.for.end38_crit_edge

cleanup.for.end38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end38

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end38:                                        ; preds = %cleanup.for.end38_crit_edge, %do.end10.for.end38_crit_edge
  %flags = getelementptr i8, ptr %dev, i32 2328
  %226 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %227, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool40.not = icmp eq i32 %and1.i, 0
  br i1 %tobool40.not, label %if.end42, label %for.end38.cleanup80_crit_edge

for.end38.cleanup80_crit_edge:                    ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup80

if.end42:                                         ; preds = %for.end38
  %err_flags = getelementptr i8, ptr %dev, i32 3608
  %call43 = call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %err_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %lor.lhs.false, label %if.end42.do.body48_crit_edge

if.end42.do.body48_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body48

lor.lhs.false:                                    ; preds = %if.end42
  %state = getelementptr i8, ptr %dev, i32 2548
  %228 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %229)
  %cmp45 = icmp eq i32 %229, 2
  br i1 %cmp45, label %lor.lhs.false.do.body48_crit_edge, label %if.end77

lor.lhs.false.do.body48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body48

do.body48:                                        ; preds = %lor.lhs.false.do.body48_crit_edge, %if.end42.do.body48_crit_edge
  %230 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %231)
  %cmp51 = icmp ult i8 %231, 2
  br i1 %cmp51, label %do.end62, label %do.body48.cleanup80_crit_edge, !prof !474

do.body48.cleanup80_crit_edge:                    ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup80

do.end62:                                         ; preds = %do.body48
  %ndev64 = getelementptr i8, ptr %dev, i32 2308
  %232 = ptrtoint ptr %ndev64 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ndev64, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %233, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool.not.i142 = icmp eq i8 %235, 0
  br i1 %tobool.not.i142, label %do.end62.cond.end71_crit_edge, label %lor.lhs.false.i146

do.end62.cond.end71_crit_edge:                    ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end71

lor.lhs.false.i146:                               ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #18
  %call.i143 = call ptr @strchr(ptr noundef %233, i32 noundef 37) #16
  %tobool2.not.i144 = icmp eq ptr %call.i143, null
  %tobool66.not = icmp eq ptr %233, null
  %or.cond164 = and i1 %tobool66.not, %tobool2.not.i144
  %spec.select.i152 = select i1 %tobool2.not.i144, ptr %233, ptr @.str.34
  %spec.select177 = select i1 %or.cond164, ptr @.str.20, ptr %spec.select.i152
  br label %cond.end71

cond.end71:                                       ; preds = %lor.lhs.false.i146, %do.end62.cond.end71_crit_edge
  %cond72 = phi ptr [ @.str.34, %do.end62.cond.end71_crit_edge ], [ %spec.select177, %lor.lhs.false.i146 ]
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef 609, ptr noundef %cond72) #19
  br label %cleanup80

if.end77:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef 1, ptr noundef %err_flags) #16
  %sp_flags = getelementptr i8, ptr %dev, i32 3496
  call void @_set_bit(i32 noundef 4, ptr noundef %sp_flags) #16
  %sp_task = getelementptr i8, ptr %dev, i32 3396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %236 = load ptr, ptr @system_wq, align 4
  %call.i.i156 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %236, ptr noundef %sp_task, i32 noundef 0) #16
  br label %cleanup80

cleanup80:                                        ; preds = %if.end77, %cond.end71, %do.body48.cleanup80_crit_edge, %for.end38.cleanup80_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_vf_mac(ptr nocapture noundef readonly %ndev, i32 noundef %vfidx, ptr noundef %mac) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %dp_level = getelementptr i8, ptr %ndev, i32 2324
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

land.rhs:                                         ; preds = %entry
  %dp_module = getelementptr i8, ptr %ndev, i32 2320
  %2 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dp_module, align 8
  %and = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.do.end12_crit_edge, label %do.end, !prof !476

land.rhs.do.end12_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

do.end:                                           ; preds = %land.rhs
  %ndev5 = getelementptr i8, ptr %ndev, i32 2308
  %4 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev5, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool7.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool7.not, %tobool2.not.i
  %spec.select.i66 = select i1 %tobool2.not.i, ptr %5, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i66
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 142, ptr noundef %cond, ptr noundef %mac, i32 noundef %vfidx) #19
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %land.rhs.do.end12_crit_edge, %entry.do.end12_crit_edge
  %8 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mac, align 4
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %do.end12.do.body15_crit_edge

do.end12.do.body15_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15

is_valid_ether_addr.exit:                         ; preds = %do.end12
  %add.ptr.i.i = getelementptr i8, ptr %mac, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %or.i.i = or i32 %9, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body15_crit_edge, label %if.end49

is_valid_ether_addr.exit.do.body15_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body15

do.body15:                                        ; preds = %is_valid_ether_addr.exit.do.body15_crit_edge, %do.end12.do.body15_crit_edge
  %13 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp18 = icmp eq i8 %14, 0
  br i1 %cmp18, label %land.rhs20, label %do.body15.cleanup_crit_edge

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs20:                                       ; preds = %do.body15
  %dp_module21 = getelementptr i8, ptr %ndev, i32 2320
  %15 = ptrtoint ptr %dp_module21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dp_module21, align 8
  %and22 = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.rhs20.cleanup_crit_edge, label %do.end34, !prof !476

land.rhs20.cleanup_crit_edge:                     ; preds = %land.rhs20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end34:                                         ; preds = %land.rhs20
  %ndev36 = getelementptr i8, ptr %ndev, i32 2308
  %17 = ptrtoint ptr %ndev36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev36, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i70 = icmp eq i8 %20, 0
  br i1 %tobool.not.i70, label %do.end34.cond.end43_crit_edge, label %lor.lhs.false.i74

do.end34.cond.end43_crit_edge:                    ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end43

lor.lhs.false.i74:                                ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call.i71 = tail call ptr @strchr(ptr noundef %18, i32 noundef 37) #16
  %tobool2.not.i72 = icmp eq ptr %call.i71, null
  %tobool38.not = icmp eq ptr %18, null
  %or.cond91 = and i1 %tobool38.not, %tobool2.not.i72
  %spec.select.i80 = select i1 %tobool2.not.i72, ptr %18, ptr @.str.34
  %spec.select92 = select i1 %or.cond91, ptr @.str.20, ptr %spec.select.i80
  br label %cond.end43

cond.end43:                                       ; preds = %lor.lhs.false.i74, %do.end34.cond.end43_crit_edge
  %cond44 = phi ptr [ @.str.34, %do.end34.cond.end43_crit_edge ], [ %spec.select92, %lor.lhs.false.i74 ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef 145, ptr noundef %cond44) #19
  br label %cleanup

if.end49:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #18
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %iov = getelementptr inbounds %struct.qed_eth_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iov, align 4
  %set_mac = getelementptr inbounds %struct.qed_iov_hv_ops, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %set_mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_mac, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  %call50 = tail call i32 %26(ptr noundef %28, ptr noundef %mac, i32 noundef %vfidx) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %cond.end43, %land.rhs20.cleanup_crit_edge, %do.body15.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end49 ], [ -22, %do.body15.cleanup_crit_edge ], [ -22, %cond.end43 ], [ -22, %land.rhs20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_vf_vlan(ptr nocapture noundef readonly %ndev, i32 noundef %vf, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %conv = zext i16 %vlan to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan)
  %cmp = icmp ugt i16 %vlan, 4095
  br i1 %cmp, label %do.body, label %if.end17

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %ndev, i32 2324
  %0 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp3 = icmp ult i8 %1, 3
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge, !prof !474

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev8 = getelementptr i8, ptr %ndev, i32 2308
  %2 = ptrtoint ptr %ndev8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev8, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %do.end.cond.end_crit_edge, label %lor.lhs.false.i

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %3, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool10.not = icmp eq ptr %3, null
  %or.cond = and i1 %tobool10.not, %tobool2.not.i
  %spec.select.i70 = select i1 %tobool2.not.i, ptr %3, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i70
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 125, ptr noundef %cond, i32 noundef %conv) #19
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %vlan_proto)
  %cmp19.not = icmp eq i16 %vlan_proto, -32512
  br i1 %cmp19.not, label %do.body23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body23:                                        ; preds = %if.end17
  %dp_level24 = getelementptr i8, ptr %ndev, i32 2324
  %6 = ptrtoint ptr %dp_level24 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dp_level24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp26 = icmp eq i8 %7, 0
  br i1 %cmp26, label %land.rhs, label %do.body23.do.end53_crit_edge

do.body23.do.end53_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end53

land.rhs:                                         ; preds = %do.body23
  %dp_module = getelementptr i8, ptr %ndev, i32 2320
  %8 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dp_module, align 8
  %and = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %land.rhs.do.end53_crit_edge, label %do.end38, !prof !476

land.rhs.do.end53_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end53

do.end38:                                         ; preds = %land.rhs
  %ndev40 = getelementptr i8, ptr %ndev, i32 2308
  %10 = ptrtoint ptr %ndev40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev40, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i74 = icmp eq i8 %13, 0
  br i1 %tobool.not.i74, label %do.end38.cond.end47_crit_edge, label %lor.lhs.false.i78

do.end38.cond.end47_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end47

lor.lhs.false.i78:                                ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #18
  %call.i75 = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #16
  %tobool2.not.i76 = icmp eq ptr %call.i75, null
  %tobool42.not = icmp eq ptr %11, null
  %or.cond95 = and i1 %tobool42.not, %tobool2.not.i76
  %spec.select.i84 = select i1 %tobool2.not.i76, ptr %11, ptr @.str.34
  %spec.select96 = select i1 %or.cond95, ptr @.str.20, ptr %spec.select.i84
  br label %cond.end47

cond.end47:                                       ; preds = %lor.lhs.false.i78, %do.end38.cond.end47_crit_edge
  %cond48 = phi ptr [ @.str.34, %do.end38.cond.end47_crit_edge ], [ %spec.select96, %lor.lhs.false.i78 ]
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 133, ptr noundef %cond48, i32 noundef %conv, i32 noundef %vf) #19
  br label %do.end53

do.end53:                                         ; preds = %cond.end47, %land.rhs.do.end53_crit_edge, %do.body23.do.end53_crit_edge
  %ops = getelementptr i8, ptr %ndev, i32 2332
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %iov = getelementptr inbounds %struct.qed_eth_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iov, align 4
  %set_vlan = getelementptr inbounds %struct.qed_iov_hv_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %set_vlan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_vlan, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 8
  %call54 = tail call i32 %19(ptr noundef %21, i16 noundef zeroext %vlan, i32 noundef %vf) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.end17.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %do.end53 ], [ -22, %cond.end ], [ -22, %do.body.cleanup_crit_edge ], [ -93, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_vf_rate(ptr nocapture noundef readonly %dev, i32 noundef %vfidx, i32 noundef %min_tx_rate, i32 noundef %max_tx_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %iov = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov, align 4
  %set_rate = getelementptr inbounds %struct.qed_iov_hv_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_rate, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call1 = tail call i32 %5(ptr noundef %7, i32 noundef %vfidx, i32 noundef %min_tx_rate, i32 noundef %max_tx_rate) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_vf_spoofchk(ptr nocapture noundef readonly %dev, i32 noundef %vfidx, i1 noundef zeroext %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %iov = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov, align 4
  %set_spoof = getelementptr inbounds %struct.qed_iov_hv_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %set_spoof to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_spoof, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call3 = tail call i32 %5(ptr noundef %7, i32 noundef %vfidx, i1 noundef zeroext %val) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_vf_trust(ptr nocapture noundef readonly %dev, i32 noundef %vfidx, i1 noundef zeroext %setting) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %iov = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov, align 4
  %set_trust = getelementptr inbounds %struct.qed_iov_hv_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %set_trust to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_trust, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call3 = tail call i32 %5(ptr noundef %7, i32 noundef %vfidx, i1 noundef zeroext %setting) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_get_vf_config(ptr nocapture noundef readonly %dev, i32 noundef %vfidx, ptr noundef %ivi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %iov = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov, align 4
  %get_config = getelementptr inbounds %struct.qed_iov_hv_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %get_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_config, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 %5(ptr noundef %7, i32 noundef %vfidx, ptr noundef %ivi) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_set_vf_link_state(ptr nocapture noundef readonly %dev, i32 noundef %vfidx, i32 noundef %link_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr i8, ptr %dev, i32 2332
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %iov = getelementptr inbounds %struct.qed_eth_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %iov to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iov, align 4
  %set_link_state = getelementptr inbounds %struct.qed_iov_hv_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %set_link_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_link_state, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 %5(ptr noundef %7, i32 noundef %vfidx, i32 noundef %link_state) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_setup_tc_offload(ptr noundef %dev, i32 noundef %type, ptr noundef %type_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @flow_block_cb_setup_simple(ptr noundef %type_data, ptr noundef nonnull @qede_block_cb_list, ptr noundef nonnull @qede_setup_tc_block_cb, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i, i1 noundef zeroext true) #16
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 2
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %hw, align 1
  %2 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type_data, align 2
  %num_tc1.i = getelementptr i8, ptr %dev, i32 2413
  %4 = ptrtoint ptr %num_tc1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_tc1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp.i = icmp ult i8 %5, %3
  br i1 %cmp.i, label %sw.bb2.cleanup_crit_edge, label %if.end.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2
  tail call void @netdev_reset_tc(ptr noundef %dev) #16
  %call4.i = tail call i32 @netdev_set_num_tc(ptr noundef %dev, i8 noundef zeroext %3) #16
  %6 = ptrtoint ptr %num_tc1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_tc1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp837.not.i = icmp eq i8 %7, 0
  br i1 %cmp837.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %num_queues.i = getelementptr i8, ptr %dev, i32 2442
  %fp_num_rx.i = getelementptr i8, ptr %dev, i32 2439
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cos.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %num_queues.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_queues.i, align 2
  %conv10.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %fp_num_rx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fp_num_rx.i, align 1
  %conv11.i = zext i8 %11 to i32
  %sub.i = sub nsw i32 %conv10.i, %conv11.i
  %mul.i = mul i32 %sub.i, %cos.038.i
  %conv17.i = trunc i32 %cos.038.i to i8
  %conv18.i = trunc i32 %sub.i to i16
  %conv19.i = trunc i32 %mul.i to i16
  %call20.i = tail call i32 @netdev_set_tc_queue(ptr noundef %dev, i8 noundef zeroext %conv17.i, i16 noundef zeroext %conv18.i, i16 noundef zeroext %conv19.i) #16
  %inc.i = add nuw nsw i32 %cos.038.i, 1
  %12 = ptrtoint ptr %num_tc1.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_tc1.i, align 1
  %conv7.i = zext i8 %13 to i32
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  br i1 %cmp8.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_rx_flow_steer(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_ptp_hw_ts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_setup_simple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_setup_tc_block_cb(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %cb_priv, i32 0, i32 1
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %extack.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 3
  %2 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack.i, align 4
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i.i, align 16
  %and.i.i.i = and i64 %5, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %do.body.i.i, label %if.end.i

do.body.i.i:                                      ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_can_offload_extack.__msg) #16
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then2.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tc_can_offload_extack.__msg, ptr %3, align 4
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %type_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %tc_cls_can_offload_and_chain0.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_cls_can_offload_and_chain0.__msg) #16
  %tobool3.not.i = icmp eq ptr %3, null
  br i1 %tobool3.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tc_cls_can_offload_and_chain0.__msg, ptr %3, align 4
  br label %cleanup

tc_cls_can_offload_and_chain0.exit:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  br i1 %cond, label %sw.bb, label %tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge

tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge: ; preds = %tc_cls_can_offload_and_chain0.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %tc_cls_can_offload_and_chain0.exit
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %10 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %command.i, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %11, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %protocol = getelementptr inbounds %struct.flow_cls_common_offload, ptr %type_data, i32 0, i32 1
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 4
  %call.i = tail call i32 @qede_add_tc_flower_fltr(ptr noundef %cb_priv, i16 noundef zeroext %14, ptr noundef %type_data) #16
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  %cookie.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  %15 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cookie.i, align 4
  %conv.i = zext i32 %16 to i64
  %call2.i = tail call i32 @qede_delete_flow_filter(ptr noundef %cb_priv, i64 noundef %conv.i) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1.i, %sw.bb.i, %sw.bb.cleanup_crit_edge, %tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then2.i.i, %do.body.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %tc_cls_can_offload_and_chain0.exit.cleanup_crit_edge ], [ %call2.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %if.then4.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %do.body.i.i.cleanup_crit_edge ], [ -95, %if.then2.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_setup_tc(ptr noundef %ndev, i8 noundef zeroext %num_tc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_tc1 = getelementptr i8, ptr %ndev, i32 2413
  %0 = ptrtoint ptr %num_tc1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_tc1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %num_tc)
  %cmp = icmp ult i8 %1, %num_tc
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netdev_reset_tc(ptr noundef %ndev) #16
  %call4 = tail call i32 @netdev_set_num_tc(ptr noundef %ndev, i8 noundef zeroext %num_tc) #16
  %2 = ptrtoint ptr %num_tc1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tc1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp837.not = icmp eq i8 %3, 0
  br i1 %cmp837.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %num_queues = getelementptr i8, ptr %ndev, i32 2442
  %fp_num_rx = getelementptr i8, ptr %ndev, i32 2439
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %cos.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_queues, align 2
  %conv10 = zext i16 %5 to i32
  %6 = ptrtoint ptr %fp_num_rx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fp_num_rx, align 1
  %conv11 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv10, %conv11
  %mul = mul i32 %sub, %cos.038
  %conv17 = trunc i32 %cos.038 to i8
  %conv18 = trunc i32 %sub to i16
  %conv19 = trunc i32 %mul to i16
  %call20 = tail call i32 @netdev_set_tc_queue(ptr noundef %ndev, i8 noundef zeroext %conv17, i16 noundef zeroext %conv18, i16 noundef zeroext %conv19) #16
  %inc = add nuw nsw i32 %cos.038, 1
  %8 = ptrtoint ptr %num_tc1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_tc1, align 1
  %conv7 = zext i8 %9 to i32
  %cmp8 = icmp ult i32 %inc, %conv7
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_add_tc_flower_fltr(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_delete_flow_filter(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_num_vf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_process_arfs_filters(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__qede_remove(ptr noundef %pdev, i32 noundef %mode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %dp_level = getelementptr i8, ptr %1, i32 2324
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp ult i8 %5, 2
  br i1 %cmp, label %do.end10, label %if.end.do.end19_crit_edge, !prof !474

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end19

do.end10:                                         ; preds = %if.end
  %ndev11 = getelementptr i8, ptr %1, i32 2308
  %6 = ptrtoint ptr %ndev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev11, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.end10.cond.end_crit_edge, label %lor.lhs.false.i

do.end10.cond.end_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool13.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool13.not, %tobool2.not.i
  %spec.select.i84 = select i1 %tobool2.not.i, ptr %7, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i84
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end10.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end10.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.69, i32 noundef 1356, ptr noundef %cond) #19
  br label %do.end19

do.end19:                                         ; preds = %cond.end, %if.end.do.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp22.not = icmp eq i32 %mode, 1
  br i1 %cmp22.not, label %do.end19.if.end27_crit_edge, label %if.then24

do.end19.if.end27_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then24:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #18
  %sp_flags = getelementptr i8, ptr %1, i32 3496
  tail call void @_set_bit(i32 noundef 8, ptr noundef %sp_flags) #16
  tail call void @unregister_netdev(ptr noundef nonnull %1) #16
  %sp_task = getelementptr i8, ptr %1, i32 3396
  %call25 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %sp_task) #16
  %ops = getelementptr i8, ptr %1, i32 2332
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %set_power_state = getelementptr inbounds %struct.qed_common_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %set_power_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_power_state, align 4
  %call26 = tail call i32 %15(ptr noundef %3, i32 noundef 0) #16
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %do.end19.if.end27_crit_edge
  tail call void @qede_ptp_disable(ptr noundef %add.ptr.i) #16
  %17 = load ptr, ptr @qed_ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %slowpath_stop = getelementptr inbounds %struct.qed_common_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %slowpath_stop to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slowpath_stop, align 4
  %call29 = tail call i32 %21(ptr noundef %3) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %22 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp30 = icmp eq i32 %22, 5
  br i1 %cmp30, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  br i1 %cmp22.not, label %do.end50.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end33
  %devlink = getelementptr i8, ptr %1, i32 2316
  %23 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devlink, align 4
  %tobool36.not = icmp eq ptr %24, null
  %25 = load ptr, ptr @qed_ops, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  br i1 %tobool36.not, label %land.lhs.true.if.then46_crit_edge, label %if.then37

land.lhs.true.if.then46_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %devlink_unregister = getelementptr inbounds %struct.qed_common_ops, ptr %27, i32 0, i32 45
  %28 = ptrtoint ptr %devlink_unregister to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %devlink_unregister, align 4
  tail call void %29(ptr noundef nonnull %24) #16
  %30 = ptrtoint ptr %devlink to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %devlink, align 4
  %31 = load ptr, ptr @qed_ops, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  br label %if.then46

if.then46:                                        ; preds = %if.then37, %land.lhs.true.if.then46_crit_edge
  %.sink = phi ptr [ %33, %if.then37 ], [ %27, %land.lhs.true.if.then46_crit_edge ]
  %remove.c79 = getelementptr inbounds %struct.qed_common_ops, ptr %.sink, i32 0, i32 2
  %34 = ptrtoint ptr %remove.c79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remove.c79, align 4
  tail call void %35(ptr noundef %3) #16
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %add.ptr.i, align 8
  %coal_entry = getelementptr i8, ptr %1, i32 2432
  %37 = ptrtoint ptr %coal_entry to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %coal_entry, align 8
  tail call void @kfree(ptr noundef %38) #16
  tail call void @free_netdev(ptr noundef nonnull %1) #16
  br label %cleanup.sink.split

do.end50.critedge:                                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %39 = load ptr, ptr @qed_ops, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %remove.c80 = getelementptr inbounds %struct.qed_common_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %remove.c80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remove.c80, align 4
  tail call void %43(ptr noundef %3) #16
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %add.ptr.i, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end50.critedge, %if.then46, %entry.cleanup.sink.split_crit_edge
  %.str.75.sink = phi ptr [ @.str.68, %entry.cleanup.sink.split_crit_edge ], [ @.str.75, %do.end50.critedge ], [ @.str.75, %if.then46 ]
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev51, ptr noundef nonnull %.str.75.sink) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_ptp_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_arfs_filter_op(ptr noundef, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_link_update(ptr noundef %dev, ptr nocapture noundef readonly %link) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %if.end14

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %land.rhs, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.rhs:                                         ; preds = %do.body
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp_module, align 8
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.rhs.cleanup_crit_edge, label %do.end, !prof !476

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %8, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool8.not = icmp eq ptr %8, null
  %or.cond = and i1 %tobool8.not, %tobool2.not.i
  %spec.select.i109 = select i1 %tobool2.not.i, ptr %8, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i109
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, i32 noundef 2581, ptr noundef %cond) #19
  br label %cleanup

if.end14:                                         ; preds = %entry
  %11 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %link, align 4, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  %ndev52 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %ndev52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev52, align 4
  %state.i128 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %state.i128 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i128, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i129 = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  br i1 %tobool.not.i129, label %if.then16.cleanup_crit_edge, label %do.body20

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body20:                                        ; preds = %if.then16
  %dp_level21 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %dp_level21 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp23 = icmp ult i8 %19, 3
  br i1 %cmp23, label %do.end34, label %do.body20.do.end48_crit_edge, !prof !474

do.body20.do.end48_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end48

do.end34:                                         ; preds = %do.body20
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %14, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i114 = icmp eq i8 %21, 0
  br i1 %tobool.not.i114, label %do.end34.cond.end43_crit_edge, label %lor.lhs.false.i118

do.end34.cond.end43_crit_edge:                    ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end43

lor.lhs.false.i118:                               ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #18
  %call.i115 = tail call ptr @strchr(ptr noundef %14, i32 noundef 37) #16
  %tobool2.not.i116 = icmp eq ptr %call.i115, null
  %tobool38.not = icmp eq ptr %14, null
  %or.cond162 = select i1 %tobool2.not.i116, i1 %tobool38.not, i1 false
  %spec.select.i124 = select i1 %tobool2.not.i116, ptr %14, ptr @.str.34
  %spec.select164 = select i1 %or.cond162, ptr @.str.20, ptr %spec.select.i124
  br label %cond.end43

cond.end43:                                       ; preds = %lor.lhs.false.i118, %do.end34.cond.end43_crit_edge
  %cond44 = phi ptr [ @.str.34, %do.end34.cond.end43_crit_edge ], [ %spec.select164, %lor.lhs.false.i118 ]
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87, i32 noundef 2587, ptr noundef %cond44) #19
  br label %do.end48

do.end48:                                         ; preds = %cond.end43, %do.body20.do.end48_crit_edge
  %22 = ptrtoint ptr %ndev52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev52, align 4
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 104
  %24 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp4.not.i = icmp eq i32 %25, 0
  br i1 %cmp4.not.i, label %do.end48.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i

do.end48.netif_tx_start_all_queues.exit_crit_edge: ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %do.end48
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %27, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %inc.i = add nuw i32 %i.05.i, 1
  %28 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_start_all_queues.exit_crit_edge

for.body.i.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_start_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i.netif_tx_start_all_queues.exit_crit_edge, %do.end48.netif_tx_start_all_queues.exit_crit_edge
  %30 = ptrtoint ptr %ndev52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev52, align 4
  tail call void @netif_carrier_on(ptr noundef %31) #16
  br label %cleanup

if.else:                                          ; preds = %if.end14
  br i1 %tobool.not.i129, label %do.body55, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body55:                                        ; preds = %if.else
  %dp_level56 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %32 = ptrtoint ptr %dp_level56 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %dp_level56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp58 = icmp ult i8 %33, 3
  br i1 %cmp58, label %do.end69, label %do.body55.do.end83_crit_edge, !prof !474

do.body55.do.end83_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end83

do.end69:                                         ; preds = %do.body55
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %14, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i130 = icmp eq i8 %35, 0
  br i1 %tobool.not.i130, label %do.end69.cond.end78_crit_edge, label %lor.lhs.false.i134

do.end69.cond.end78_crit_edge:                    ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end78

lor.lhs.false.i134:                               ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #18
  %call.i131 = tail call ptr @strchr(ptr noundef %14, i32 noundef 37) #16
  %tobool2.not.i132 = icmp eq ptr %call.i131, null
  %tobool73.not = icmp eq ptr %14, null
  %or.cond163 = select i1 %tobool2.not.i132, i1 %tobool73.not, i1 false
  %spec.select.i140 = select i1 %tobool2.not.i132, ptr %14, ptr @.str.34
  %spec.select165 = select i1 %or.cond163, ptr @.str.20, ptr %spec.select.i140
  br label %cond.end78

cond.end78:                                       ; preds = %lor.lhs.false.i134, %do.end69.cond.end78_crit_edge
  %cond79 = phi ptr [ @.str.34, %do.end69.cond.end78_crit_edge ], [ %spec.select165, %lor.lhs.false.i134 ]
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.87, i32 noundef 2594, ptr noundef %cond79) #19
  br label %do.end83

do.end83:                                         ; preds = %cond.end78, %do.body55.do.end83_crit_edge
  %36 = ptrtoint ptr %ndev52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ndev52, align 4
  tail call fastcc void @local_bh_disable() #16
  %38 = tail call i32 @llvm.read_register.i32(metadata !464) #16
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #16
  %num_tx_queues.i144 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 104
  %42 = ptrtoint ptr %num_tx_queues.i144 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_tx_queues.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp13.not.i = icmp eq i32 %43, 0
  br i1 %cmp13.not.i, label %do.end83.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i146

do.end83.netif_tx_disable.exit_crit_edge:         ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.lr.ph.i146:                              ; preds = %do.end83
  %_tx.i.i145 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 103
  br label %for.body.i150

for.body.i150:                                    ; preds = %for.body.i150.for.body.i150_crit_edge, %for.body.lr.ph.i146
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i146 ], [ %inc.i148, %for.body.i150.for.body.i150_crit_edge ]
  %44 = ptrtoint ptr %_tx.i.i145 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %_tx.i.i145, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %45, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %45, i32 %i.014.i, i32 11
  %46 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile i32 %41, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i147 = getelementptr %struct.netdev_queue, ptr %45, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i147) #16
  %47 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  %inc.i148 = add nuw i32 %i.014.i, 1
  %48 = ptrtoint ptr %num_tx_queues.i144 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_tx_queues.i144, align 4
  %cmp.i149 = icmp ult i32 %inc.i148, %49
  br i1 %cmp.i149, label %for.body.i150.for.body.i150_crit_edge, label %for.body.i150.netif_tx_disable.exit_crit_edge

for.body.i150.netif_tx_disable.exit_crit_edge:    ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i150.for.body.i150_crit_edge:            ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i150

netif_tx_disable.exit:                            ; preds = %for.body.i150.netif_tx_disable.exit_crit_edge, %do.end83.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #16
  tail call fastcc void @local_bh_enable() #16
  %50 = ptrtoint ptr %ndev52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndev52, align 4
  tail call void @netif_carrier_off(ptr noundef %51) #16
  br label %cleanup

cleanup:                                          ; preds = %netif_tx_disable.exit, %if.else.cleanup_crit_edge, %netif_tx_start_all_queues.exit, %if.then16.cleanup_crit_edge, %cond.end, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_schedule_recovery_handler(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp1 = icmp ult i8 %3, 3
  br i1 %cmp1, label %do.end, label %do.body.cleanup_crit_edge, !prof !474

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool6.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool6.not, %tobool2.not.i
  %spec.select.i54 = select i1 %tobool2.not.i, ptr %5, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i54
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95, i32 noundef 2608, ptr noundef %cond) #19
  br label %cleanup

if.end12:                                         ; preds = %entry
  %sp_flags = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 0, ptr noundef %sp_flags) #16
  %sp_task = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %sp_task, i32 noundef 0) #16
  %dp_level15 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %dp_level15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dp_level15, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp17 = icmp ult i8 %10, 2
  br i1 %cmp17, label %do.end28, label %if.end12.cleanup_crit_edge, !prof !474

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end28:                                         ; preds = %if.end12
  %ndev30 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %ndev30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev30, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i58 = icmp eq i8 %14, 0
  br i1 %tobool.not.i58, label %do.end28.cond.end37_crit_edge, label %lor.lhs.false.i62

do.end28.cond.end37_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end37

lor.lhs.false.i62:                                ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #18
  %call.i59 = tail call ptr @strchr(ptr noundef %12, i32 noundef 37) #16
  %tobool2.not.i60 = icmp eq ptr %call.i59, null
  %tobool32.not = icmp eq ptr %12, null
  %or.cond79 = and i1 %tobool32.not, %tobool2.not.i60
  %spec.select.i68 = select i1 %tobool2.not.i60, ptr %12, ptr @.str.34
  %spec.select80 = select i1 %or.cond79, ptr @.str.20, ptr %spec.select.i68
  br label %cond.end37

cond.end37:                                       ; preds = %lor.lhs.false.i62, %do.end28.cond.end37_crit_edge
  %cond38 = phi ptr [ @.str.34, %do.end28.cond.end37_crit_edge ], [ %spec.select80, %lor.lhs.false.i62 ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.95, i32 noundef 2615, ptr noundef %cond38) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end37, %if.end12.cleanup_crit_edge, %cond.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_schedule_hw_err_handler(ptr noundef %dev, i32 noundef %err_type) #3 align 64 {
entry:
  %err_flags.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %err_flags = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 46
  %call = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %err_flags) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ne i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_type)
  %cmp1.not = icmp eq i32 %err_type, 0
  %or.cond = or i1 %cmp1.not, %cmp
  br i1 %or.cond, label %if.end15, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err_type)
  %cmp1.not.old = icmp eq i32 %err_type, 0
  br i1 %cmp1.not.old, label %if.end49.thread, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.end49.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %last_err_type162 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 45
  %2 = ptrtoint ptr %last_err_type162 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %last_err_type162, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_flags.i) #16
  %3 = ptrtoint ptr %err_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %err_flags.i, align 4
  br label %do.body.i

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp2 = icmp ult i8 %5, 2
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge, !prof !474

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %do.body
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool9.not = icmp eq ptr %7, null
  %or.cond167 = and i1 %tobool9.not, %tobool2.not.i
  %spec.select.i104 = select i1 %tobool2.not.i, ptr %7, ptr @.str.34
  %spec.select = select i1 %or.cond167, ptr @.str.20, ptr %spec.select.i104
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, i32 noundef 2746, ptr noundef %cond) #19
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %err_type)
  %cmp16 = icmp ugt i32 %err_type, 5
  br i1 %cmp16, label %do.body19, label %if.end49

do.body19:                                        ; preds = %if.end15
  %dp_level20 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %10 = ptrtoint ptr %dp_level20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level20, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp22 = icmp ult i8 %11, 3
  br i1 %cmp22, label %do.end33, label %do.body19.do.end47_crit_edge, !prof !474

do.body19.do.end47_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

do.end33:                                         ; preds = %do.body19
  %ndev35 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %ndev35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev35, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i108 = icmp eq i8 %15, 0
  br i1 %tobool.not.i108, label %do.end33.cond.end42_crit_edge, label %lor.lhs.false.i112

do.end33.cond.end42_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end42

lor.lhs.false.i112:                               ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #18
  %call.i109 = tail call ptr @strchr(ptr noundef %13, i32 noundef 37) #16
  %tobool2.not.i110 = icmp eq ptr %call.i109, null
  %tobool37.not = icmp eq ptr %13, null
  %or.cond168 = and i1 %tobool37.not, %tobool2.not.i110
  %spec.select.i118 = select i1 %tobool2.not.i110, ptr %13, ptr @.str.34
  %spec.select170 = select i1 %or.cond168, ptr @.str.20, ptr %spec.select.i118
  br label %cond.end42

cond.end42:                                       ; preds = %lor.lhs.false.i112, %do.end33.cond.end42_crit_edge
  %cond43 = phi ptr [ @.str.34, %do.end33.cond.end42_crit_edge ], [ %spec.select170, %lor.lhs.false.i112 ]
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef 2751, ptr noundef %cond43, i32 noundef %err_type) #19
  br label %do.end47

do.end47:                                         ; preds = %cond.end42, %do.body19.do.end47_crit_edge
  tail call void @_clear_bit(i32 noundef 31, ptr noundef %err_flags) #16
  br label %cleanup

if.end49:                                         ; preds = %if.end15
  %last_err_type = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 45
  %16 = ptrtoint ptr %last_err_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %err_type, ptr %last_err_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_flags.i) #16
  %17 = ptrtoint ptr %err_flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %err_flags.i, align 4
  %18 = zext i32 %err_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %err_type, label %if.end49.do.body.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 1, label %if.end49.sw.bb1.i_crit_edge
    i32 2, label %if.end49.sw.bb1.i_crit_edge172
    i32 4, label %if.end49.sw.bb1.i_crit_edge173
    i32 5, label %if.end49.sw.bb1.i_crit_edge174
  ]

if.end49.sw.bb1.i_crit_edge174:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i

if.end49.sw.bb1.i_crit_edge173:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i

if.end49.sw.bb1.i_crit_edge172:                   ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i

if.end49.sw.bb1.i_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb1.i

if.end49.do.body.i_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

sw.bb.i:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  call void @_set_bit(i32 noundef 3, ptr noundef nonnull %err_flags.i) #16
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %sw.bb.i, %if.end49.sw.bb1.i_crit_edge, %if.end49.sw.bb1.i_crit_edge172, %if.end49.sw.bb1.i_crit_edge173, %if.end49.sw.bb1.i_crit_edge174
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %err_flags.i) #16
  call void @_set_bit(i32 noundef 1, ptr noundef nonnull %err_flags.i) #16
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %err_flags.i) #16
  br label %qede_set_hw_err_flags.exit

do.body.i:                                        ; preds = %if.end49.do.body.i_crit_edge, %if.end49.thread
  %dp_level.i = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %19 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp.i = icmp ult i8 %20, 3
  br i1 %cmp.i, label %do.end.i, label %do.body.i.qede_set_hw_err_flags.exit_crit_edge, !prof !474

do.body.i.qede_set_hw_err_flags.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_set_hw_err_flags.exit

do.end.i:                                         ; preds = %do.body.i
  %ndev.i = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %21 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ndev.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call ptr @strchr(ptr noundef %22, i32 noundef 37) #16
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool5.not.i = icmp eq ptr %22, null
  %or.cond.i = and i1 %tobool5.not.i, %tobool2.not.i.i
  %spec.select.i19.i = select i1 %tobool2.not.i.i, ptr %22, ptr @.str.34
  %spec.select.i122 = select i1 %or.cond.i, ptr @.str.20, ptr %spec.select.i19.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.34, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i122, %lor.lhs.false.i.i ]
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108, i32 noundef 2727, ptr noundef %cond.i, i32 noundef %err_type) #19
  br label %qede_set_hw_err_flags.exit

qede_set_hw_err_flags.exit:                       ; preds = %cond.end.i, %do.body.i.qede_set_hw_err_flags.exit_crit_edge, %sw.bb1.i
  %25 = ptrtoint ptr %err_flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %err_flags.i, align 4
  %27 = ptrtoint ptr %err_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err_flags, align 8
  %or.i = or i32 %28, %26
  store i32 %or.i, ptr %err_flags, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_flags.i) #16
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %dp_level.i123 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 5
  %31 = ptrtoint ptr %dp_level.i123 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %dp_level.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %cmp.i124 = icmp ult i8 %32, 3
  br i1 %cmp.i124, label %do.end.i127, label %qede_set_hw_err_flags.exit.do.end10.i_crit_edge, !prof !474

qede_set_hw_err_flags.exit.do.end10.i_crit_edge:  ; preds = %qede_set_hw_err_flags.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10.i

do.end.i127:                                      ; preds = %qede_set_hw_err_flags.exit
  %ndev.i125 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %33 = ptrtoint ptr %ndev.i125 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ndev.i125, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i.i126 = icmp eq i8 %36, 0
  br i1 %tobool.not.i.i126, label %do.end.i127.cond.end.i137_crit_edge, label %lor.lhs.false.i.i133

do.end.i127.cond.end.i137_crit_edge:              ; preds = %do.end.i127
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i137

lor.lhs.false.i.i133:                             ; preds = %do.end.i127
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i128 = call ptr @strchr(ptr noundef %34, i32 noundef 37) #16
  %tobool2.not.i.i129 = icmp eq ptr %call.i.i128, null
  %tobool5.not.i130 = icmp eq ptr %34, null
  %or.cond.i131 = and i1 %tobool5.not.i130, %tobool2.not.i.i129
  %spec.select.i92.i = select i1 %tobool2.not.i.i129, ptr %34, ptr @.str.34
  %spec.select.i132 = select i1 %or.cond.i131, ptr @.str.20, ptr %spec.select.i92.i
  br label %cond.end.i137

cond.end.i137:                                    ; preds = %lor.lhs.false.i.i133, %do.end.i127.cond.end.i137_crit_edge
  %cond.i134 = phi ptr [ @.str.34, %do.end.i127.cond.end.i137_crit_edge ], [ %spec.select.i132, %lor.lhs.false.i.i133 ]
  %call8.i136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i32 noundef 2679, ptr noundef %cond.i134, i32 noundef %or.i) #19
  br label %do.end10.i

do.end10.i:                                       ; preds = %cond.end.i137, %qede_set_hw_err_flags.exit.do.end10.i_crit_edge
  %37 = ptrtoint ptr %err_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %err_flags, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool13.not.i = icmp eq i32 %39, 0
  br i1 %tobool13.not.i, label %do.end10.i.if.end35.i_crit_edge, label %do.end29.i, !prof !476

do.end10.i.if.end35.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35.i

do.end29.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2682, i32 noundef 9, ptr noundef null) #16
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end29.i, %do.end10.i.if.end35.i_crit_edge
  %40 = ptrtoint ptr %err_flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %err_flags, align 4
  %and1.i88.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i88.i)
  %tobool45.not.i = icmp eq i32 %and1.i88.i, 0
  br i1 %tobool45.not.i, label %if.end35.i.do.body48.i_crit_edge, label %if.then46.i

if.end35.i.do.body48.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body48.i

if.then46.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  %ops.i = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 7
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %attn_clr_enable.i = getelementptr inbounds %struct.qed_common_ops, ptr %45, i32 0, i32 30
  %46 = ptrtoint ptr %attn_clr_enable.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %attn_clr_enable.i, align 4
  call void %47(ptr noundef %30, i1 noundef zeroext true) #16
  br label %do.body48.i

do.body48.i:                                      ; preds = %if.then46.i, %if.end35.i.do.body48.i_crit_edge
  %48 = ptrtoint ptr %dp_level.i123 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dp_level.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %cmp51.i = icmp ult i8 %49, 3
  br i1 %cmp51.i, label %do.end62.i, label %do.body48.i.qede_atomic_hw_err_handler.exit_crit_edge, !prof !474

do.body48.i.qede_atomic_hw_err_handler.exit_crit_edge: ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_atomic_hw_err_handler.exit

do.end62.i:                                       ; preds = %do.body48.i
  %ndev64.i = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %50 = ptrtoint ptr %ndev64.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndev64.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i96.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i96.i, label %do.end62.i.cond.end71.i_crit_edge, label %lor.lhs.false.i100.i

do.end62.i.cond.end71.i_crit_edge:                ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end71.i

lor.lhs.false.i100.i:                             ; preds = %do.end62.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i97.i = call ptr @strchr(ptr noundef %51, i32 noundef 37) #16
  %tobool2.not.i98.i = icmp eq ptr %call.i97.i, null
  %tobool66.not.i = icmp eq ptr %51, null
  %or.cond117.i = and i1 %tobool66.not.i, %tobool2.not.i98.i
  %spec.select.i106.i = select i1 %tobool2.not.i98.i, ptr %51, ptr @.str.34
  %spec.select118.i = select i1 %or.cond117.i, ptr @.str.20, ptr %spec.select.i106.i
  br label %cond.end71.i

cond.end71.i:                                     ; preds = %lor.lhs.false.i100.i, %do.end62.i.cond.end71.i_crit_edge
  %cond72.i = phi ptr [ @.str.34, %do.end62.i.cond.end71.i_crit_edge ], [ %spec.select118.i, %lor.lhs.false.i100.i ]
  %call73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110, i32 noundef 2688, ptr noundef %cond72.i) #19
  br label %qede_atomic_hw_err_handler.exit

qede_atomic_hw_err_handler.exit:                  ; preds = %cond.end71.i, %do.body48.i.qede_atomic_hw_err_handler.exit_crit_edge
  %sp_flags = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 38
  call void @_set_bit(i32 noundef 4, ptr noundef %sp_flags) #16
  %sp_task = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %call.i.i139 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %sp_task, i32 noundef 0) #16
  %55 = ptrtoint ptr %dp_level.i123 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dp_level.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp54 = icmp ult i8 %56, 2
  br i1 %cmp54, label %do.end65, label %qede_atomic_hw_err_handler.exit.cleanup_crit_edge, !prof !474

qede_atomic_hw_err_handler.exit.cleanup_crit_edge: ; preds = %qede_atomic_hw_err_handler.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end65:                                         ; preds = %qede_atomic_hw_err_handler.exit
  %ndev67 = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %57 = ptrtoint ptr %ndev67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev67, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i140 = icmp eq i8 %60, 0
  br i1 %tobool.not.i140, label %do.end65.cond.end74_crit_edge, label %lor.lhs.false.i144

do.end65.cond.end74_crit_edge:                    ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end74

lor.lhs.false.i144:                               ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #18
  %call.i141 = call ptr @strchr(ptr noundef %58, i32 noundef 37) #16
  %tobool2.not.i142 = icmp eq ptr %call.i141, null
  %tobool69.not = icmp eq ptr %58, null
  %or.cond169 = and i1 %tobool69.not, %tobool2.not.i142
  %spec.select.i150 = select i1 %tobool2.not.i142, ptr %58, ptr @.str.34
  %spec.select171 = select i1 %or.cond169, ptr @.str.20, ptr %spec.select.i150
  br label %cond.end74

cond.end74:                                       ; preds = %lor.lhs.false.i144, %do.end65.cond.end74_crit_edge
  %cond75 = phi ptr [ @.str.34, %do.end65.cond.end74_crit_edge ], [ %spec.select171, %lor.lhs.false.i144 ]
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.100, i32 noundef 2762, ptr noundef %cond75, i32 noundef %err_type) #19
  br label %cleanup

cleanup:                                          ; preds = %cond.end74, %qede_atomic_hw_err_handler.exit.cleanup_crit_edge, %do.end47, %cond.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_get_generic_tlv_data(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features, align 16
  %and = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data, align 2
  %6 = or i16 %5, 1
  store i16 %6, ptr %data, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndev, align 4
  %features3 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %features3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features3, align 16
  %and4 = and i64 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %if.then6

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data, align 2
  %13 = or i16 %12, 2
  store i16 %13, ptr %data, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %mac = getelementptr inbounds %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mac, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i, align 2
  %arrayidx14 = getelementptr %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1, i32 1
  %arrayidx17 = getelementptr %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1, i32 2
  %24 = call ptr @memset(ptr %arrayidx14, i32 0, i32 12)
  %25 = load ptr, ptr %ndev, align 4
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 73
  %26 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #16
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 63
  %conv.i = zext i8 %27 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #16
  %28 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ndev, align 4
  %uc = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 65
  %30 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %30)
  %ha.0 = load ptr, ptr %uc, align 4
  %cmp.not = icmp eq ptr %ha.0, %uc
  br i1 %cmp.not, label %if.end11.for.end_crit_edge, label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %if.end11
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addr, align 4
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx14, align 4
  %add.ptr.i54 = getelementptr %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %add.ptr.i54 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i54, align 2
  %add.ptr1.i55 = getelementptr %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1, i32 1, i32 4
  %36 = ptrtoint ptr %add.ptr1.i55 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %add.ptr1.i55, align 2
  %37 = ptrtoint ptr %ha.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %ha.0.1 = load ptr, ptr %ha.0, align 4
  %38 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ndev, align 4
  %uc23.1 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 65
  %cmp.not.1 = icmp eq ptr %ha.0.1, %uc23.1
  br i1 %cmp.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %addr.1 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0.1, i32 0, i32 2
  %40 = ptrtoint ptr %addr.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.1, align 4
  %42 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx17, align 4
  %add.ptr.i54.1 = getelementptr %struct.netdev_hw_addr, ptr %ha.0.1, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %add.ptr.i54.1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i54.1, align 2
  %add.ptr1.i55.1 = getelementptr %struct.qed_generic_tlvs, ptr %data, i32 0, i32 1, i32 2, i32 4
  %45 = ptrtoint ptr %add.ptr1.i55.1 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %add.ptr1.i55.1, align 2
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  %46 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ndev, align 4
  %addr_list_lock.i56 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 63
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i56) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_get_eth_tlv_data(ptr noundef %dev, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 4
  %lso_maxoff_size_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %lso_maxoff_size_set to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %lso_maxoff_size_set, align 2
  %lso_minseg_size = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %lso_minseg_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 9700, ptr %lso_minseg_size, align 4
  %lso_minseg_size_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %lso_minseg_size_set to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %lso_minseg_size_set, align 2
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = lshr i32 %7, 8
  %8 = trunc i32 %and to i8
  %9 = and i8 %8, 1
  %prom_mode = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %prom_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %prom_mode, align 1
  %prom_mode_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 5
  %11 = ptrtoint ptr %prom_mode_set to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %prom_mode_set, align 4
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_queues, align 2
  %fp_num_rx = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 16
  %14 = ptrtoint ptr %fp_num_rx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fp_num_rx, align 1
  %conv3 = zext i8 %15 to i16
  %sub = sub i16 %13, %conv3
  %tx_descr_size = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 6
  %16 = ptrtoint ptr %tx_descr_size to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %sub, ptr %tx_descr_size, align 2
  %tx_descr_size_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 7
  %17 = ptrtoint ptr %tx_descr_size_set to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %tx_descr_size_set, align 4
  %18 = load i16, ptr %num_queues, align 2
  %fp_num_tx = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 14
  %19 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fp_num_tx, align 1
  %conv7 = zext i8 %20 to i16
  %sub8 = sub i16 %18, %conv7
  %rx_descr_size = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 8
  %21 = ptrtoint ptr %rx_descr_size to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %sub8, ptr %rx_descr_size, align 2
  %rx_descr_size_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 9
  %22 = ptrtoint ptr %rx_descr_size_set to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %rx_descr_size_set, align 4
  %iov_offload = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 20
  %23 = ptrtoint ptr %iov_offload to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %iov_offload, align 1
  %iov_offload_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 21
  %24 = ptrtoint ptr %iov_offload_set to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %iov_offload_set, align 2
  %txqs_empty = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 22
  %25 = ptrtoint ptr %txqs_empty to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %txqs_empty, align 1
  %rxqs_empty = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 24
  %26 = ptrtoint ptr %rxqs_empty to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %rxqs_empty, align 1
  %num_txqs_full = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 26
  %27 = ptrtoint ptr %num_txqs_full to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %num_txqs_full, align 1
  %num_rxqs_full = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 28
  %28 = ptrtoint ptr %num_rxqs_full to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %num_rxqs_full, align 1
  %qede_lock.i = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %qede_lock.i, i32 noundef 0) #16
  %29 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp94.not = icmp eq i16 %30, 0
  br i1 %cmp94.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fp_array = getelementptr inbounds %struct.qede_dev, ptr %dev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc50, %for.inc.for.body_crit_edge ]
  %31 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fp_array, align 4
  %type = getelementptr %struct.qede_fastpath, ptr %32, i32 %i.095, i32 1
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type, align 4
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool15.not = icmp eq i8 %35, 0
  br i1 %tobool15.not, label %for.body.if.end27_crit_edge, label %if.then

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then:                                          ; preds = %for.body
  %txq16 = getelementptr %struct.qede_fastpath, ptr %32, i32 %i.095, i32 7
  %36 = ptrtoint ptr %txq16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %txq16, align 8
  %sw_tx_cons = getelementptr inbounds %struct.qede_tx_queue, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %sw_tx_cons to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %sw_tx_cons, align 2
  %sw_tx_prod = getelementptr inbounds %struct.qede_tx_queue, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %sw_tx_prod to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sw_tx_prod, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp20.not = icmp eq i16 %39, %41
  br i1 %cmp20.not, label %if.then.if.end_crit_edge, label %if.then22

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %txqs_empty to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %txqs_empty, align 1
  br label %if.end

if.end:                                           ; preds = %if.then22, %if.then.if.end_crit_edge
  %43 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ndev, align 4
  %ndev_txq_id.i = getelementptr inbounds %struct.qede_tx_queue, ptr %37, i32 0, i32 18
  %45 = ptrtoint ptr %ndev_txq_id.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ndev_txq_id.i, align 2
  %conv.i = zext i16 %46 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 103
  %47 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %48, i32 %conv.i, i32 13
  %49 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %if.end.if.end27_crit_edge, label %if.then24

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %num_txqs_full to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_txqs_full, align 1
  %inc = add i8 %52, 1
  store i8 %inc, ptr %num_txqs_full, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %53 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type, align 4
  %55 = and i8 %54, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool31.not = icmp eq i8 %55, 0
  br i1 %tobool31.not, label %if.end27.for.inc_crit_edge, label %if.then32

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then32:                                        ; preds = %if.end27
  %rxq = getelementptr %struct.qede_fastpath, ptr %32, i32 %i.095, i32 6
  %56 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rxq, align 4
  %call33 = tail call zeroext i1 @qede_has_rx_work(ptr noundef %57) #16
  br i1 %call33, label %if.then34, label %if.then32.if.end36_crit_edge

if.then32.if.end36_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  %58 = ptrtoint ptr %rxqs_empty to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %rxqs_empty, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then32.if.end36_crit_edge
  %59 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rxq, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 128
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %62, align 2
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %conv38 = zext i16 %65 to i32
  %u.i = getelementptr inbounds %struct.qede_rx_queue, ptr %60, i32 0, i32 16, i32 3
  %cons_idx.i = getelementptr inbounds %struct.qed_chain_u16, ptr %u.i, i32 0, i32 1
  %66 = ptrtoint ptr %cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %cons_idx.i, align 2
  %conv41 = zext i16 %67 to i32
  %sub42 = sub nsw i32 %conv38, %conv41
  call void @__sanitizer_cov_trace_const_cmp4(i32 8092, i32 %sub42)
  %cmp43 = icmp sgt i32 %sub42, 8092
  br i1 %cmp43, label %if.then45, label %if.end36.for.inc_crit_edge

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %68 = ptrtoint ptr %num_rxqs_full to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_rxqs_full, align 1
  %inc47 = add i8 %69, 1
  store i8 %inc47, ptr %num_rxqs_full, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %if.end36.for.inc_crit_edge, %if.end27.for.inc_crit_edge
  %inc50 = add nuw nsw i32 %i.095, 1
  %70 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %num_queues, align 2
  %conv11 = zext i16 %71 to i32
  %cmp = icmp ult i32 %inc50, %conv11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %qede_lock.i) #16
  %txqs_empty_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 23
  %72 = ptrtoint ptr %txqs_empty_set to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %txqs_empty_set, align 4
  %rxqs_empty_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 25
  %73 = ptrtoint ptr %rxqs_empty_set to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %rxqs_empty_set, align 2
  %num_txqs_full_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 27
  %74 = ptrtoint ptr %num_txqs_full_set to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %num_txqs_full_set, align 4
  %num_rxqs_full_set = getelementptr inbounds %struct.qed_mfw_tlv_eth, ptr %data, i32 0, i32 29
  %75 = ptrtoint ptr %num_rxqs_full_set to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %num_rxqs_full_set, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_force_mac(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_udp_ports_update(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qede_has_rx_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qede_io_error_detected(ptr nocapture noundef readonly %pdev, i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  %dp_level = getelementptr i8, ptr %1, i32 2324
  %2 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp ult i8 %3, 3
  br i1 %cmp, label %do.end, label %do.body.do.end14_crit_edge, !prof !474

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end14

do.end:                                           ; preds = %do.body
  %ndev = getelementptr i8, ptr %1, i32 2308
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %5, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool8.not = icmp eq ptr %5, null
  %or.cond = and i1 %tobool8.not, %tobool2.not.i
  %spec.select.i110 = select i1 %tobool2.not.i, ptr %5, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i110
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, i32 noundef 2883, ptr noundef %cond, i32 noundef %state) #19
  br label %do.end14

do.end14:                                         ; preds = %cond.end, %do.body.do.end14_crit_edge
  %qede_lock.i = getelementptr i8, ptr %1, i32 2456
  tail call void @mutex_lock_nested(ptr noundef %qede_lock.i, i32 noundef 0) #16
  %state15 = getelementptr i8, ptr %1, i32 2548
  %8 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp16 = icmp eq i32 %9, 2
  br i1 %cmp16, label %do.body19, label %if.end48

do.body19:                                        ; preds = %do.end14
  %10 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp22 = icmp ult i8 %11, 3
  br i1 %cmp22, label %do.end33, label %do.body19.cleanup.sink.split_crit_edge, !prof !474

do.body19.cleanup.sink.split_crit_edge:           ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

do.end33:                                         ; preds = %do.body19
  %ndev35 = getelementptr i8, ptr %1, i32 2308
  %12 = ptrtoint ptr %ndev35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev35, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i114 = icmp eq i8 %15, 0
  br i1 %tobool.not.i114, label %do.end33.cond.end42_crit_edge, label %lor.lhs.false.i118

do.end33.cond.end42_crit_edge:                    ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end42

lor.lhs.false.i118:                               ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #18
  %call.i115 = tail call ptr @strchr(ptr noundef %13, i32 noundef 37) #16
  %tobool2.not.i116 = icmp eq ptr %call.i115, null
  %tobool37.not = icmp eq ptr %13, null
  %or.cond156 = and i1 %tobool37.not, %tobool2.not.i116
  %spec.select.i124 = select i1 %tobool2.not.i116, ptr %13, ptr @.str.34
  %spec.select158 = select i1 %or.cond156, ptr @.str.20, ptr %spec.select.i124
  br label %cond.end42

cond.end42:                                       ; preds = %lor.lhs.false.i118, %do.end33.cond.end42_crit_edge
  %cond43 = phi ptr [ @.str.34, %do.end33.cond.end42_crit_edge ], [ %spec.select158, %lor.lhs.false.i118 ]
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121, i32 noundef 2887, ptr noundef %cond43) #19
  br label %cleanup.sink.split

if.end48:                                         ; preds = %do.end14
  %flags = getelementptr i8, ptr %1, i32 2328
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool50.not = icmp eq i32 %and1.i, 0
  br i1 %tobool50.not, label %if.end82, label %do.body52

do.body52:                                        ; preds = %if.end48
  %18 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp55 = icmp eq i8 %19, 0
  br i1 %cmp55, label %land.rhs, label %do.body52.cleanup.sink.split_crit_edge

do.body52.cleanup.sink.split_crit_edge:           ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

land.rhs:                                         ; preds = %do.body52
  %dp_module = getelementptr i8, ptr %1, i32 2320
  %20 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dp_module, align 8
  %and = and i32 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %land.rhs.cleanup.sink.split_crit_edge, label %do.end67, !prof !476

land.rhs.cleanup.sink.split_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

do.end67:                                         ; preds = %land.rhs
  %ndev69 = getelementptr i8, ptr %1, i32 2308
  %22 = ptrtoint ptr %ndev69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndev69, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i129 = icmp eq i8 %25, 0
  br i1 %tobool.not.i129, label %do.end67.cond.end76_crit_edge, label %lor.lhs.false.i133

do.end67.cond.end76_crit_edge:                    ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end76

lor.lhs.false.i133:                               ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #18
  %call.i130 = tail call ptr @strchr(ptr noundef %23, i32 noundef 37) #16
  %tobool2.not.i131 = icmp eq ptr %call.i130, null
  %tobool71.not = icmp eq ptr %23, null
  %or.cond157 = and i1 %tobool71.not, %tobool2.not.i131
  %spec.select.i139 = select i1 %tobool2.not.i131, ptr %23, ptr @.str.34
  %spec.select159 = select i1 %or.cond157, ptr @.str.20, ptr %spec.select.i139
  br label %cond.end76

cond.end76:                                       ; preds = %lor.lhs.false.i133, %do.end67.cond.end76_crit_edge
  %cond77 = phi ptr [ @.str.34, %do.end67.cond.end76_crit_edge ], [ %spec.select159, %lor.lhs.false.i133 ]
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.121, i32 noundef 2895, ptr noundef %cond77) #19
  br label %cleanup.sink.split

if.end82:                                         ; preds = %if.end48
  %ndev83 = getelementptr i8, ptr %1, i32 2308
  %26 = ptrtoint ptr %ndev83 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndev83, align 4
  tail call fastcc void @local_bh_disable() #16
  %28 = tail call i32 @llvm.read_register.i32(metadata !464) #16
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #16
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 104
  %32 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp13.not.i = icmp eq i32 %33, 0
  br i1 %cmp13.not.i, label %if.end82.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end82.netif_tx_disable.exit_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end82
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %35, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #16
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %35, i32 %i.014.i, i32 11
  %36 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %31, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %35, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #16
  %37 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #16
  %inc.i = add nuw i32 %i.014.i, 1
  %38 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %39
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.end82.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #16
  tail call fastcc void @local_bh_enable() #16
  %40 = ptrtoint ptr %ndev83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev83, align 4
  tail call void @netif_carrier_off(ptr noundef %41) #16
  %sp_flags = getelementptr i8, ptr %1, i32 3496
  tail call void @_set_bit(i32 noundef 7, ptr noundef %sp_flags) #16
  %sp_task = getelementptr i8, ptr %1, i32 3396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %42 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %42, ptr noundef %sp_task, i32 noundef 0) #16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %netif_tx_disable.exit, %cond.end76, %land.rhs.cleanup.sink.split_crit_edge, %do.body52.cleanup.sink.split_crit_edge, %cond.end42, %do.body19.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 2, %netif_tx_disable.exit ], [ 1, %cond.end42 ], [ 1, %do.body19.cleanup.sink.split_crit_edge ], [ 5, %do.body52.cleanup.sink.split_crit_edge ], [ 5, %cond.end76 ], [ 5, %land.rhs.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %qede_lock.i) #16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_forced_speed_maps_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_get_eth_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_poll_for_freeing_arfs_filters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_irq_cpu_rmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_sync_free_irqs(ptr nocapture noundef %edev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %int_info = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20
  %used_cnt = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 2
  %0 = ptrtoint ptr %used_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %used_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp27.not = icmp eq i8 %1, 0
  br i1 %cmp27.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %msix_cnt = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 1
  %fp_array = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %int_info, align 8
  %arrayidx = getelementptr %struct.msix_entry, ptr %5, i32 %i.028
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void @synchronize_irq(i32 noundef %7) #16
  %8 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %int_info, align 8
  %arrayidx6 = getelementptr %struct.msix_entry, ptr %9, i32 %i.028
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %12 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fp_array, align 4
  %arrayidx8 = getelementptr %struct.qede_fastpath, ptr %13, i32 %i.028
  %call = tail call ptr @free_irq(i32 noundef %11, ptr noundef %arrayidx8) #16
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %simd_handler_clean = getelementptr inbounds %struct.qed_common_ops, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %simd_handler_clean to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %simd_handler_clean, align 4
  %20 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edev, align 8
  tail call void %19(ptr noundef %21, i32 noundef %i.028) #16
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %i.028, 1
  %22 = ptrtoint ptr %used_cnt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %used_cnt, align 1
  %conv = zext i8 %23 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %24 = ptrtoint ptr %used_cnt to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %used_cnt, align 1
  %msix_cnt12 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 1
  %25 = ptrtoint ptr %msix_cnt12 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %msix_cnt12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_vlan_mark_nonconfigured(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_free_arfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_napi_disable_remove(ptr nocapture noundef readonly %edev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp11.not = icmp eq i16 %1, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fp_array = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp_array, align 4
  %napi = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.012, i32 4
  tail call void @napi_disable(ptr noundef %napi) #16
  %4 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp_array, align 4
  %napi4 = getelementptr %struct.qede_fastpath, ptr %5, i32 %i.012, i32 4
  tail call void @__netif_napi_del(ptr noundef %napi4) #16
  tail call void @synchronize_net() #16
  %inc = add nuw nsw i32 %i.012, 1
  %6 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_free_mem_load(ptr nocapture noundef readonly %edev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp7.not = icmp eq i16 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %fp_array = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %ops.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %pdev.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 2
  %num_tc.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 2
  br label %for.body

for.body:                                         ; preds = %qede_free_mem_fp.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %qede_free_mem_fp.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp_array, align 4
  %sb_info.i = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.08, i32 5
  %4 = ptrtoint ptr %sb_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sb_info.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %for.body.qede_free_mem_sb.exit.i_crit_edge, label %if.then.i.i

for.body.qede_free_mem_sb.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_free_mem_sb.exit.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %id.i = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.08, i32 2
  %8 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id.i, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %sb_release.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %sb_release.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sb_release.i.i, align 4
  %16 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edev, align 8
  %call.i.i = tail call i32 %15(ptr noundef %17, ptr noundef %5, i16 noundef zeroext %conv.i, i32 noundef 0) #16
  %18 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %sb_phys.i.i = getelementptr inbounds %struct.qed_sb_info, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %sb_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sb_phys.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef 32, ptr noundef %21, i32 noundef %23, i32 noundef 0) #16
  %24 = call ptr @memset(ptr %5, i32 0, i32 28)
  br label %qede_free_mem_sb.exit.i

qede_free_mem_sb.exit.i:                          ; preds = %if.then.i.i, %for.body.qede_free_mem_sb.exit.i_crit_edge
  %type.i = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.08, i32 1
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %type.i, align 4
  %27 = and i8 %26, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %qede_free_mem_sb.exit.i.if.end.i_crit_edge, label %if.then.i

qede_free_mem_sb.exit.i.if.end.i_crit_edge:       ; preds = %qede_free_mem_sb.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %qede_free_mem_sb.exit.i
  %rxq.i = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.08, i32 6
  %28 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rxq.i, align 4
  %sw_rx_cons.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %sw_rx_cons.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sw_rx_cons.i.i.i, align 16
  %sw_rx_prod.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %sw_rx_prod.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sw_rx_prod.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp.not14.i.i.i = icmp eq i16 %31, %33
  br i1 %cmp.not14.i.i.i, label %if.then.i.qede_free_mem_rxq.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i.qede_free_mem_rxq.exit.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_free_mem_rxq.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i
  %sw_rx_ring.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %29, i32 0, i32 13
  %data_direction.i.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %29, i32 0, i32 7
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.015.i.i.i = phi i16 [ %31, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %34 = ptrtoint ptr %sw_rx_ring.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sw_rx_ring.i.i.i, align 4
  %36 = and i16 %i.015.i.i.i, 8191
  %and.i.i.i = zext i16 %36 to i32
  %arrayidx.i.i.i = getelementptr %struct.sw_rx_data, ptr %35, i32 %and.i.i.i
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i.i, align 4
  %39 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %mapping.i.i.i = getelementptr %struct.sw_rx_data, ptr %35, i32 %and.i.i.i, i32 1
  %41 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mapping.i.i.i, align 4
  %43 = ptrtoint ptr %data_direction.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data_direction.i.i.i, align 2
  %conv5.i.i.i = zext i8 %44 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i, i32 noundef %42, i32 noundef 4096, i32 noundef %conv5.i.i.i, i32 noundef 0) #16
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx.i.i.i, align 4
  tail call void @__free_pages(ptr noundef %38, i32 noundef 0) #16
  %inc.i.i.i = add i16 %i.015.i.i.i, 1
  %46 = ptrtoint ptr %sw_rx_prod.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %sw_rx_prod.i.i.i, align 2
  %cmp.not.i.i.i = icmp eq i16 %inc.i.i.i, %47
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.qede_free_mem_rxq.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.body.i.i.i.qede_free_mem_rxq.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_free_mem_rxq.exit.i

qede_free_mem_rxq.exit.i:                         ; preds = %for.body.i.i.i.qede_free_mem_rxq.exit.i_crit_edge, %if.then.i.qede_free_mem_rxq.exit.i_crit_edge
  %sw_rx_ring.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %29, i32 0, i32 13
  %48 = ptrtoint ptr %sw_rx_ring.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sw_rx_ring.i.i, align 4
  tail call void @kfree(ptr noundef %49) #16
  %50 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %chain_free.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %53, i32 0, i32 25
  %54 = ptrtoint ptr %chain_free.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chain_free.i.i, align 4
  %56 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %edev, align 8
  %rx_bd_ring.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %29, i32 0, i32 14
  tail call void %55(ptr noundef %57, ptr noundef %rx_bd_ring.i.i) #16
  %58 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %chain_free3.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %61, i32 0, i32 25
  %62 = ptrtoint ptr %chain_free3.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chain_free3.i.i, align 4
  %64 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %edev, align 8
  %rx_comp_ring.i.i = getelementptr inbounds %struct.qede_rx_queue, ptr %29, i32 0, i32 16
  tail call void %63(ptr noundef %65, ptr noundef %rx_comp_ring.i.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %qede_free_mem_rxq.exit.i, %qede_free_mem_sb.exit.i.if.end.i_crit_edge
  %66 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %type.i, align 4
  %68 = and i8 %67, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool5.not.i = icmp eq i8 %68, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then6.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %xdp_tx.i = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.08, i32 8
  %69 = ptrtoint ptr %xdp_tx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xdp_tx.i, align 4
  %sw_tx_ring1.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %70, i32 0, i32 14
  %71 = ptrtoint ptr %sw_tx_ring1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sw_tx_ring1.i.i, align 8
  tail call void @kfree(ptr noundef %72) #16
  %73 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %chain_free.i31.i = getelementptr inbounds %struct.qed_common_ops, ptr %76, i32 0, i32 25
  %77 = ptrtoint ptr %chain_free.i31.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %chain_free.i31.i, align 4
  %79 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %edev, align 8
  %tx_pbl.i.i = getelementptr inbounds %struct.qede_tx_queue, ptr %70, i32 0, i32 15
  tail call void %78(ptr noundef %80, ptr noundef %tx_pbl.i.i) #16
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.end.i.if.end7.i_crit_edge
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %type.i, align 4
  %83 = and i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool11.not.i = icmp eq i8 %83, 0
  br i1 %tobool11.not.i, label %if.end7.i.qede_free_mem_fp.exit_crit_edge, label %for.cond.preheader.i

if.end7.i.qede_free_mem_fp.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_free_mem_fp.exit

for.cond.preheader.i:                             ; preds = %if.end7.i
  %84 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %num_tc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp37.not.i = icmp eq i8 %85, 0
  br i1 %cmp37.not.i, label %for.cond.preheader.i.qede_free_mem_fp.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.qede_free_mem_fp.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_free_mem_fp.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %txq.i = getelementptr %struct.qede_fastpath, ptr %3, i32 %i.08, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cos.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %86 = ptrtoint ptr %txq.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %txq.i, align 8
  %sw_tx_ring1.i32.i = getelementptr %struct.qede_tx_queue, ptr %87, i32 %cos.038.i, i32 14
  %88 = ptrtoint ptr %sw_tx_ring1.i32.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sw_tx_ring1.i32.i, align 8
  tail call void @kfree(ptr noundef %89) #16
  %90 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %chain_free.i34.i = getelementptr inbounds %struct.qed_common_ops, ptr %93, i32 0, i32 25
  %94 = ptrtoint ptr %chain_free.i34.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %chain_free.i34.i, align 4
  %96 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %edev, align 8
  %tx_pbl.i35.i = getelementptr %struct.qede_tx_queue, ptr %87, i32 %cos.038.i, i32 15
  tail call void %95(ptr noundef %97, ptr noundef %tx_pbl.i35.i) #16
  %inc.i = add nuw nsw i32 %cos.038.i, 1
  %98 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %num_tc.i, align 1
  %conv13.i = zext i8 %99 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv13.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.qede_free_mem_fp.exit_crit_edge

for.body.i.qede_free_mem_fp.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %qede_free_mem_fp.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

qede_free_mem_fp.exit:                            ; preds = %for.body.i.qede_free_mem_fp.exit_crit_edge, %for.cond.preheader.i.qede_free_mem_fp.exit_crit_edge, %if.end7.i.qede_free_mem_fp.exit_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %100 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %101 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %qede_free_mem_fp.exit.for.body_crit_edge, label %qede_free_mem_fp.exit.for.end_crit_edge

qede_free_mem_fp.exit.for.end_crit_edge:          ; preds = %qede_free_mem_fp.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

qede_free_mem_fp.exit.for.body_crit_edge:         ; preds = %qede_free_mem_fp.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %qede_free_mem_fp.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_free_fp_array(ptr nocapture noundef %edev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fp_array = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %0 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp_array, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %for.cond.preheader

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.cond.preheader:                               ; preds = %entry
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %2 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp28.not = icmp eq i16 %3, 0
  br i1 %cmp28.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp_array, align 4
  %sb_info = getelementptr %struct.qede_fastpath, ptr %5, i32 %i.029, i32 5
  %6 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sb_info, align 8
  tail call void @kfree(ptr noundef %7) #16
  %rxq = getelementptr %struct.qede_fastpath, ptr %5, i32 %i.029, i32 6
  %8 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rxq, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %xdp_rxq = getelementptr inbounds %struct.qede_rx_queue, ptr %9, i32 0, i32 25
  %call = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %xdp_rxq) #16
  br i1 %call, label %if.then6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxq, align 4
  %xdp_rxq8 = getelementptr inbounds %struct.qede_rx_queue, ptr %11, i32 0, i32 25
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq8) #16
  br label %if.end

if.end:                                           ; preds = %if.then6, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %12 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rxq, align 4
  tail call void @kfree(ptr noundef %13) #16
  %xdp_tx = getelementptr %struct.qede_fastpath, ptr %5, i32 %i.029, i32 8
  %14 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xdp_tx, align 4
  tail call void @kfree(ptr noundef %15) #16
  %txq = getelementptr %struct.qede_fastpath, ptr %5, i32 %i.029, i32 7
  %16 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txq, align 8
  tail call void @kfree(ptr noundef %17) #16
  %inc = add nuw nsw i32 %i.029, 1
  %18 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %20 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fp_array, align 4
  tail call void @kfree(ptr noundef %21) #16
  br label %if.end11

if.end11:                                         ; preds = %for.end, %entry.if.end11_crit_edge
  %num_queues12 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %22 = ptrtoint ptr %num_queues12 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %num_queues12, align 2
  %fp_num_tx = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 14
  %23 = ptrtoint ptr %fp_num_tx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %fp_num_tx, align 1
  %fp_num_rx = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 16
  %24 = ptrtoint ptr %fp_num_rx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %fp_num_rx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_drain_txq(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %txq, i1 noundef zeroext %allow_drain) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_tx_cons = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 2
  %sw_tx_prod = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 3
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %index = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 13
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  br label %tailrecurse

tailrecurse:                                      ; preds = %do.end17.tailrecurse_crit_edge, %entry
  %allow_drain.tr = phi i1 [ %allow_drain, %entry ], [ false, %do.end17.tailrecurse_crit_edge ]
  %0 = ptrtoint ptr %sw_tx_cons to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sw_tx_cons, align 2
  %2 = ptrtoint ptr %sw_tx_prod to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sw_tx_prod, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not110 = icmp eq i16 %1, %3
  br i1 %cmp.not110, label %tailrecurse.while.end_crit_edge, label %tailrecurse.if.end58_crit_edge

tailrecurse.if.end58_crit_edge:                   ; preds = %tailrecurse
  br label %if.end58

tailrecurse.while.end_crit_edge:                  ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %if.end58
  %dec = add nsw i32 %cnt.0111131, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %while.body.if.end58_crit_edge

while.body.if.end58_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then:                                          ; preds = %while.body
  %4 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp6 = icmp ult i8 %5, 3
  br i1 %allow_drain.tr, label %do.body, label %do.body24

do.body:                                          ; preds = %if.then
  br i1 %cmp6, label %do.end, label %do.body.do.end17_crit_edge, !prof !474

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end17

do.end:                                           ; preds = %do.body
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %7, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool12.not = icmp eq ptr %7, null
  %or.cond = and i1 %tobool12.not, %tobool2.not.i
  %spec.select.i79 = select i1 %tobool2.not.i, ptr %7, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i79
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, i32 noundef 2025, ptr noundef %cond, i32 noundef %11) #19
  br label %do.end17

do.end17:                                         ; preds = %cond.end, %do.body.do.end17_crit_edge
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %drain = getelementptr inbounds %struct.qed_common_ops, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %drain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drain, align 4
  %18 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %edev, align 8
  %call18 = tail call i32 %17(ptr noundef %19) #16
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.end17.tailrecurse_crit_edge, label %do.end17.cleanup_crit_edge

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end17.tailrecurse_crit_edge:                   ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %tailrecurse

do.body24:                                        ; preds = %if.then
  br i1 %cmp6, label %do.end38, label %do.body24.cleanup_crit_edge, !prof !474

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end38:                                         ; preds = %do.body24
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i83 = icmp eq i8 %23, 0
  br i1 %tobool.not.i83, label %do.end38.cond.end47_crit_edge, label %lor.lhs.false.i87

do.end38.cond.end47_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end47

lor.lhs.false.i87:                                ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #18
  %call.i84 = tail call ptr @strchr(ptr noundef %21, i32 noundef 37) #16
  %tobool2.not.i85 = icmp eq ptr %call.i84, null
  %tobool42.not = icmp eq ptr %21, null
  %or.cond104 = and i1 %tobool42.not, %tobool2.not.i85
  %spec.select.i93 = select i1 %tobool2.not.i85, ptr %21, ptr @.str.34
  %spec.select124 = select i1 %or.cond104, ptr @.str.20, ptr %spec.select.i93
  br label %cond.end47

cond.end47:                                       ; preds = %lor.lhs.false.i87, %do.end38.cond.end47_crit_edge
  %cond48 = phi ptr [ @.str.34, %do.end38.cond.end47_crit_edge ], [ %spec.select124, %lor.lhs.false.i87 ]
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  %conv51 = zext i16 %29 to i32
  %conv53 = zext i16 %27 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.158, i32 noundef 2034, ptr noundef %cond48, i32 noundef %25, i32 noundef %conv51, i32 noundef %conv53) #19
  br label %cleanup

if.end58:                                         ; preds = %while.body.if.end58_crit_edge, %tailrecurse.if.end58_crit_edge
  %cnt.0111131 = phi i32 [ %dec, %while.body.if.end58_crit_edge ], [ 1000, %tailrecurse.if.end58_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !480
  %26 = ptrtoint ptr %sw_tx_cons to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sw_tx_cons, align 2
  %28 = ptrtoint ptr %sw_tx_prod to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sw_tx_prod, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp.not = icmp eq i16 %27, %29
  br i1 %cmp.not, label %if.end58.while.end_crit_edge, label %while.body

if.end58.while.end_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %if.end58.while.end_crit_edge, %tailrecurse.while.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #16
  br label %cleanup

cleanup:                                          ; preds = %while.end, %cond.end47, %do.body24.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -19, %cond.end47 ], [ -19, %do.body24.cleanup_crit_edge ], [ %call18, %do.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_free_tx_pkt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_alloc_arfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qede_napi_add_enable(ptr nocapture noundef readonly %edev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %0 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp12.not = icmp eq i16 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %fp_array = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %4 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp_array, align 4
  %napi = getelementptr %struct.qede_fastpath, ptr %5, i32 %i.013, i32 4
  tail call void @netif_napi_add(ptr noundef %3, ptr noundef %napi, ptr noundef nonnull @qede_poll, i32 noundef 64) #16
  %6 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp_array, align 4
  %napi4 = getelementptr %struct.qede_fastpath, ptr %7, i32 %i.013, i32 4
  tail call void @napi_enable(ptr noundef %napi4) #16
  %inc = add nuw nsw i32 %i.013, 1
  %8 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %9 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_setup_irqs(ptr noundef %edev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %get_fp_int = getelementptr inbounds %struct.qed_common_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %get_fp_int to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_fp_int, align 4
  %6 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edev, align 8
  %int_info = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20
  %call = tail call i32 %5(ptr noundef %7, ptr noundef %int_info) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %msix_cnt = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msix_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %10 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %num_queues, align 2
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %12 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp.i = icmp ugt i16 %11, %12
  br i1 %cmp.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp16240.not.i = icmp eq i16 %11, 0
  br i1 %cmp16240.not.i, label %for.cond.preheader.i.if.end7_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end7_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %fp_array.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %ndev18.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %used_cnt.i.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 2
  %dp_level.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %dp_module.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  br label %for.body.i

do.end.i:                                         ; preds = %if.then3
  %ndev.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %13 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %do.end.i.cond.end.i_crit_edge, label %lor.lhs.false.i.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

lor.lhs.false.i.i:                                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call ptr @strchr(ptr noundef %14, i32 noundef 37) #16
  %tobool2.not.i.i = icmp eq ptr %call.i.i, null
  %tobool.not.i = icmp eq ptr %14, null
  %or.cond.i = and i1 %tobool.not.i, %tobool2.not.i.i
  %spec.select.i169.i = select i1 %tobool2.not.i.i, ptr %14, ptr @.str.34
  %spec.select.i = select i1 %or.cond.i, ptr @.str.20, ptr %spec.select.i169.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %lor.lhs.false.i.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ @.str.34, %do.end.i.cond.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i.i ]
  %conv7.i = zext i16 %11 to i32
  %conv10.i = zext i8 %9 to i32
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, i32 noundef 1939, ptr noundef %cond.i, i32 noundef %conv7.i, i32 noundef %conv10.i) #19
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0241.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc120.i, %for.inc.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %ndev18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev18.i, align 4
  %rx_cpu_rmap.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 100
  %19 = ptrtoint ptr %rx_cpu_rmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_cpu_rmap.i, align 4
  %tobool19.not.i = icmp eq ptr %20, null
  br i1 %tobool19.not.i, label %for.body.i.if.end48.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end48.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %21 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fp_array.i, align 4
  %type.i = getelementptr %struct.qede_fastpath, ptr %22, i32 %i.0241.i, i32 1
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %type.i, align 4
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool21.not.i = icmp eq i8 %25, 0
  br i1 %tobool21.not.i, label %land.lhs.true.i.if.end48.i_crit_edge, label %if.then22.i

land.lhs.true.i.if.end48.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  %26 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %int_info, align 8
  %arrayidx26.i = getelementptr %struct.msix_entry, ptr %27, i32 %i.0241.i
  %28 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx26.i, align 4
  %call27.i = tail call i32 @irq_cpu_rmap_add(ptr noundef nonnull %20, i32 noundef %29) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then22.i.if.end48.i_crit_edge, label %do.end33.i

if.then22.i.if.end48.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48.i

do.end33.i:                                       ; preds = %if.then22.i
  %30 = ptrtoint ptr %ndev18.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev18.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i173.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i173.i, label %do.end33.i.cond.end42.i_crit_edge, label %lor.lhs.false.i177.i

do.end33.i.cond.end42.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end42.i

lor.lhs.false.i177.i:                             ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i174.i = tail call ptr @strchr(ptr noundef %31, i32 noundef 37) #16
  %tobool2.not.i175.i = icmp eq ptr %call.i174.i, null
  %tobool37.not.i = icmp eq ptr %31, null
  %or.cond236.i = and i1 %tobool37.not.i, %tobool2.not.i175.i
  %spec.select.i183.i = select i1 %tobool2.not.i175.i, ptr %31, ptr @.str.34
  %spec.select249.i = select i1 %or.cond236.i, ptr @.str.20, ptr %spec.select.i183.i
  br label %cond.end42.i

cond.end42.i:                                     ; preds = %lor.lhs.false.i177.i, %do.end33.i.cond.end42.i_crit_edge
  %cond43.i = phi ptr [ @.str.34, %do.end33.i.cond.end42.i_crit_edge ], [ %spec.select249.i, %lor.lhs.false.i177.i ]
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.219, i32 noundef 1951, ptr noundef %cond43.i) #19
  tail call void @qede_free_arfs(ptr noundef %edev) #16
  br label %if.end48.i

if.end48.i:                                       ; preds = %cond.end42.i, %if.then22.i.if.end48.i_crit_edge, %land.lhs.true.i.if.end48.i_crit_edge, %for.body.i.if.end48.i_crit_edge
  %34 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %int_info, align 8
  %arrayidx51.i = getelementptr %struct.msix_entry, ptr %35, i32 %i.0241.i
  %36 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx51.i, align 4
  %38 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fp_array.i, align 4
  %arrayidx54.i = getelementptr %struct.qede_fastpath, ptr %39, i32 %i.0241.i
  %name.i = getelementptr %struct.qede_fastpath, ptr %39, i32 %i.0241.i, i32 9
  %call.i187.i = tail call i32 @request_threaded_irq(i32 noundef %37, ptr noundef nonnull @qede_msix_fp_int, ptr noundef null, i32 noundef 0, ptr noundef %name.i, ptr noundef %arrayidx54.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187.i)
  %tobool58.not.i = icmp eq i32 %call.i187.i, 0
  br i1 %tobool58.not.i, label %do.body87.i, label %do.end63.i

do.end63.i:                                       ; preds = %if.end48.i
  %40 = ptrtoint ptr %ndev18.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ndev18.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i188.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i188.i, label %do.end63.i.cond.end72.i_crit_edge, label %lor.lhs.false.i192.i

do.end63.i.cond.end72.i_crit_edge:                ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end72.i

lor.lhs.false.i192.i:                             ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i189.i = tail call ptr @strchr(ptr noundef %41, i32 noundef 37) #16
  %tobool2.not.i190.i = icmp eq ptr %call.i189.i, null
  %tobool67.not.i = icmp eq ptr %41, null
  %or.cond237.i = and i1 %tobool67.not.i, %tobool2.not.i190.i
  %spec.select.i198.i = select i1 %tobool2.not.i190.i, ptr %41, ptr @.str.34
  %spec.select250.i = select i1 %or.cond237.i, ptr @.str.20, ptr %spec.select.i198.i
  br label %cond.end72.i

cond.end72.i:                                     ; preds = %lor.lhs.false.i192.i, %do.end63.i.cond.end72.i_crit_edge
  %cond73.i = phi ptr [ @.str.34, %do.end63.i.cond.end72.i_crit_edge ], [ %spec.select250.i, %lor.lhs.false.i192.i ]
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.219, i32 noundef 1960, ptr noundef %cond73.i, i32 noundef %i.0241.i) #19
  %44 = ptrtoint ptr %ndev18.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndev18.i, align 4
  %rx_cpu_rmap78.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 100
  %46 = ptrtoint ptr %rx_cpu_rmap78.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_cpu_rmap78.i, align 4
  %tobool79.not.i = icmp eq ptr %47, null
  br i1 %tobool79.not.i, label %cond.end72.i.if.end83.i_crit_edge, label %if.then80.i

cond.end72.i.if.end83.i_crit_edge:                ; preds = %cond.end72.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end83.i

if.then80.i:                                      ; preds = %cond.end72.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @free_irq_cpu_rmap(ptr noundef nonnull %47) #16
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then80.i, %cond.end72.i.if.end83.i_crit_edge
  %48 = ptrtoint ptr %ndev18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ndev18.i, align 4
  %rx_cpu_rmap85.i = getelementptr inbounds %struct.net_device, ptr %49, i32 0, i32 100
  %50 = ptrtoint ptr %rx_cpu_rmap85.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rx_cpu_rmap85.i, align 4
  %51 = ptrtoint ptr %used_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %used_cnt.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp27.not.i.i = icmp eq i8 %52, 0
  br i1 %cmp27.not.i.i, label %cleanup.thread235.i, label %if.end83.i.for.body.i.i_crit_edge

if.end83.i.for.body.i.i_crit_edge:                ; preds = %if.end83.i
  br label %for.body.i.i

cleanup.thread235.i:                              ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #18
  %53 = ptrtoint ptr %used_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %used_cnt.i.i, align 1
  %54 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %msix_cnt, align 4
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end83.i.for.body.i.i_crit_edge
  %i.028.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end83.i.for.body.i.i_crit_edge ]
  %55 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %msix_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i202.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i202.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %int_info, align 8
  %arrayidx.i.i = getelementptr %struct.msix_entry, ptr %58, i32 %i.028.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  tail call void @synchronize_irq(i32 noundef %60) #16
  %61 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %int_info, align 8
  %arrayidx6.i.i = getelementptr %struct.msix_entry, ptr %62, i32 %i.028.i.i
  %63 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx6.i.i, align 4
  %65 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fp_array.i, align 4
  %arrayidx8.i.i = getelementptr %struct.qede_fastpath, ptr %66, i32 %i.028.i.i
  %call.i203.i = tail call ptr @free_irq(i32 noundef %64, ptr noundef %arrayidx8.i.i) #16
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %simd_handler_clean.i.i = getelementptr inbounds %struct.qed_common_ops, ptr %70, i32 0, i32 13
  %71 = ptrtoint ptr %simd_handler_clean.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %simd_handler_clean.i.i, align 4
  %73 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %edev, align 8
  tail call void %72(ptr noundef %74, i32 noundef %i.028.i.i) #16
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %inc.i.i = add nuw nsw i32 %i.028.i.i, 1
  %75 = ptrtoint ptr %used_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %used_cnt.i.i, align 1
  %conv.i.i = zext i8 %76 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %qede_req_msix_irqs.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

do.body87.i:                                      ; preds = %if.end48.i
  %77 = ptrtoint ptr %dp_level.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dp_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp89.i = icmp eq i8 %78, 0
  br i1 %cmp89.i, label %land.rhs.i, label %do.body87.i.for.inc.i_crit_edge

do.body87.i.for.inc.i_crit_edge:                  ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

land.rhs.i:                                       ; preds = %do.body87.i
  %79 = ptrtoint ptr %dp_module.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dp_module.i, align 8
  %and91.i = and i32 %80, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  br i1 %tobool92.not.i, label %land.rhs.i.for.inc.i_crit_edge, label %do.end98.i, !prof !476

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

do.end98.i:                                       ; preds = %land.rhs.i
  %81 = ptrtoint ptr %ndev18.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ndev18.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i204.i = icmp eq i8 %84, 0
  br i1 %tobool.not.i204.i, label %do.end98.i.cond.end107.i_crit_edge, label %lor.lhs.false.i208.i

do.end98.i.cond.end107.i_crit_edge:               ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end107.i

lor.lhs.false.i208.i:                             ; preds = %do.end98.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i205.i = tail call ptr @strchr(ptr noundef %82, i32 noundef 37) #16
  %tobool2.not.i206.i = icmp eq ptr %call.i205.i, null
  %tobool102.not.i = icmp eq ptr %82, null
  %or.cond238.i = and i1 %tobool102.not.i, %tobool2.not.i206.i
  %spec.select.i214.i = select i1 %tobool2.not.i206.i, ptr %82, ptr @.str.34
  %spec.select251.i = select i1 %or.cond238.i, ptr @.str.20, ptr %spec.select.i214.i
  br label %cond.end107.i

cond.end107.i:                                    ; preds = %lor.lhs.false.i208.i, %do.end98.i.cond.end107.i_crit_edge
  %cond108.i = phi ptr [ @.str.34, %do.end98.i.cond.end107.i_crit_edge ], [ %spec.select251.i, %lor.lhs.false.i208.i ]
  %85 = ptrtoint ptr %fp_array.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fp_array.i, align 4
  %arrayidx110.i = getelementptr %struct.qede_fastpath, ptr %86, i32 %i.0241.i
  %name111.i = getelementptr %struct.qede_fastpath, ptr %86, i32 %i.0241.i, i32 9
  %call115.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.219, i32 noundef 1973, ptr noundef %cond108.i, ptr noundef %name111.i, i32 noundef %i.0241.i, ptr noundef %arrayidx110.i) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end107.i, %land.rhs.i.for.inc.i_crit_edge, %do.body87.i.for.inc.i_crit_edge
  %87 = ptrtoint ptr %used_cnt.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %used_cnt.i.i, align 1
  %inc.i = add i8 %88, 1
  store i8 %inc.i, ptr %used_cnt.i.i, align 1
  %inc120.i = add nuw nsw i32 %i.0241.i, 1
  %89 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %num_queues, align 2
  %conv15.i = zext i16 %90 to i32
  %cmp16.i = icmp ult i32 %inc120.i, %conv15.i
  br i1 %cmp16.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end7_crit_edge

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

qede_req_msix_irqs.exit:                          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %used_cnt.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %used_cnt.i.i, align 1
  %92 = ptrtoint ptr %msix_cnt to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %msix_cnt, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %for.cond.preheader.i.if.end7_crit_edge
  %93 = ptrtoint ptr %int_info to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %int_info, align 8
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %94, align 4
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %97 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ndev, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %98, i32 0, i32 64
  %99 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %96, ptr %irq, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp47.not = icmp eq i16 %11, 0
  br i1 %cmp47.not, label %if.else.for.end_crit_edge, label %for.body.lr.ph

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %100 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %simd_handler_config = getelementptr inbounds %struct.qed_common_ops, ptr %103, i32 0, i32 12
  %fp_array = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %104 = ptrtoint ptr %simd_handler_config to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %simd_handler_config, align 4
  %106 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %edev, align 8
  %108 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %fp_array, align 4
  %arrayidx14 = getelementptr %struct.qede_fastpath, ptr %109, i32 %i.048
  tail call void %105(ptr noundef %107, ptr noundef %arrayidx14, i32 noundef %i.048, ptr noundef nonnull @qede_simd_fp_handler) #16
  %inc = add nuw nsw i32 %i.048, 1
  %110 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %num_queues, align 2
  %conv = zext i16 %111 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %extract.t49 = trunc i16 %111 to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.else.for.end_crit_edge
  %.lcssa.off0 = phi i8 [ 0, %if.else.for.end_crit_edge ], [ %extract.t49, %for.end.loopexit ]
  %used_cnt = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 20, i32 2
  %112 = ptrtoint ptr %used_cnt to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %.lcssa.off0, ptr %used_cnt, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7, %qede_req_msix_irqs.exit, %cleanup.thread235.i, %cond.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i187.i, %qede_req_msix_irqs.exit ], [ 0, %for.end ], [ 0, %if.end7 ], [ %call.i187.i, %cleanup.thread235.i ], [ -22, %cond.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_start_queues(ptr noundef %edev, i1 noundef zeroext %clear_stats) unnamed_addr #3 align 64 {
entry:
  %q_params = alloca %struct.qed_queue_start_common_params, align 4
  %start = alloca %struct.qed_start_vport_params, align 2
  %ret_params = alloca %struct.qed_rxq_start_ret_params, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %clear_stats to i8
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %q_params) #16
  %2 = call ptr @memset(ptr %q_params, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %start) #16
  %3 = getelementptr inbounds i8, ptr %start, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 6)
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 18
  %5 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call ptr @strchr(ptr noundef %8, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool3.not = icmp eq ptr %8, null
  %or.cond = and i1 %tobool3.not, %tobool2.not.i
  %spec.select.i291 = select i1 %tobool2.not.i, ptr %8, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i291
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.230, i32 noundef 2211, ptr noundef %cond) #19
  br label %cleanup197

if.end:                                           ; preds = %entry
  %call9 = tail call noalias ptr @vzalloc(i32 noundef 564) #20
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.cleanup197_crit_edge, label %if.end12

if.end.cleanup197_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup197

if.end12:                                         ; preds = %if.end
  %ptp = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 8
  %11 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp, align 8
  %tobool13 = icmp ne ptr %12, null
  %handle_ptp_pkts = getelementptr inbounds %struct.qed_start_vport_params, ptr %start, i32 0, i32 1
  %frombool15 = zext i1 %tobool13 to i8
  %13 = ptrtoint ptr %handle_ptp_pkts to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool15, ptr %handle_ptp_pkts, align 1
  %gro_disable = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 32
  %14 = ptrtoint ptr %gro_disable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gro_disable, align 2, !range !475
  %gro_enable = getelementptr inbounds %struct.qed_start_vport_params, ptr %start, i32 0, i32 2
  %16 = xor i8 %15, 1
  %17 = ptrtoint ptr %gro_enable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %gro_enable, align 2
  %ndev19 = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
  %18 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev19, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mtu, align 4
  %conv = trunc i32 %21 to i16
  %mtu20 = getelementptr inbounds %struct.qed_start_vport_params, ptr %start, i32 0, i32 5
  %22 = ptrtoint ptr %mtu20 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv, ptr %mtu20, align 2
  %vport_id = getelementptr inbounds %struct.qed_start_vport_params, ptr %start, i32 0, i32 4
  %23 = ptrtoint ptr %vport_id to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %vport_id, align 2
  %drop_ttl0 = getelementptr inbounds %struct.qed_start_vport_params, ptr %start, i32 0, i32 3
  %24 = ptrtoint ptr %drop_ttl0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %drop_ttl0, align 1
  %25 = ptrtoint ptr %start to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %start, align 2
  %clear_stats24 = getelementptr inbounds %struct.qed_start_vport_params, ptr %start, i32 0, i32 6
  %26 = ptrtoint ptr %clear_stats24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %clear_stats24, align 2
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %vport_start = getelementptr inbounds %struct.qed_eth_ops, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %vport_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vport_start, align 4
  %call26 = call i32 %30(ptr noundef %1, ptr noundef nonnull %start) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body47, label %do.end32

do.end32:                                         ; preds = %if.end12
  %31 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ndev19, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i295 = icmp eq i8 %34, 0
  br i1 %tobool.not.i295, label %do.end32.cond.end41_crit_edge, label %lor.lhs.false.i299

do.end32.cond.end41_crit_edge:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end41

lor.lhs.false.i299:                               ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #18
  %call.i296 = call ptr @strchr(ptr noundef %32, i32 noundef 37) #16
  %tobool2.not.i297 = icmp eq ptr %call.i296, null
  %tobool36.not = icmp eq ptr %32, null
  %or.cond375 = and i1 %tobool36.not, %tobool2.not.i297
  %spec.select.i305 = select i1 %tobool2.not.i297, ptr %32, ptr @.str.34
  %spec.select397 = select i1 %or.cond375, ptr @.str.20, ptr %spec.select.i305
  br label %cond.end41

cond.end41:                                       ; preds = %lor.lhs.false.i299, %do.end32.cond.end41_crit_edge
  %cond42 = phi ptr [ @.str.34, %do.end32.cond.end41_crit_edge ], [ %spec.select397, %lor.lhs.false.i299 ]
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.230, i32 noundef 2230, ptr noundef %cond42, i32 noundef %call26) #19
  br label %out

do.body47:                                        ; preds = %if.end12
  %dp_level = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 5
  %35 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dp_level, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp = icmp eq i8 %36, 0
  br i1 %cmp, label %land.rhs, label %do.body47.do.end75_crit_edge

do.body47.do.end75_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end75

land.rhs:                                         ; preds = %do.body47
  %dp_module = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 4
  %37 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dp_module, align 8
  %and = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %land.rhs.do.end75_crit_edge, label %do.end57, !prof !476

land.rhs.do.end75_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end75

do.end57:                                         ; preds = %land.rhs
  %39 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev19, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i309 = icmp eq i8 %42, 0
  br i1 %tobool.not.i309, label %do.end57.cond.end66_crit_edge, label %lor.lhs.false.i313

do.end57.cond.end66_crit_edge:                    ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end66

lor.lhs.false.i313:                               ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #18
  %call.i310 = call ptr @strchr(ptr noundef %40, i32 noundef 37) #16
  %tobool2.not.i311 = icmp eq ptr %call.i310, null
  %tobool61.not = icmp eq ptr %40, null
  %or.cond376 = and i1 %tobool61.not, %tobool2.not.i311
  %spec.select.i319 = select i1 %tobool2.not.i311, ptr %40, ptr @.str.34
  %spec.select398 = select i1 %or.cond376, ptr @.str.20, ptr %spec.select.i319
  br label %cond.end66

cond.end66:                                       ; preds = %lor.lhs.false.i313, %do.end57.cond.end66_crit_edge
  %cond67 = phi ptr [ @.str.34, %do.end57.cond.end66_crit_edge ], [ %spec.select398, %lor.lhs.false.i313 ]
  %43 = ptrtoint ptr %vport_id to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vport_id, align 2
  %conv69 = zext i8 %44 to i32
  %mtu71 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 20
  %45 = ptrtoint ptr %mtu71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mtu71, align 4
  %add = add i32 %46, 14
  %call72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.230, i32 noundef 2236, ptr noundef %cond67, i32 noundef %conv69, i32 noundef %add, i32 noundef 1) #19
  br label %do.end75

do.end75:                                         ; preds = %cond.end66, %land.rhs.do.end75_crit_edge, %do.body47.do.end75_crit_edge
  %47 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %num_queues, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp78384.not = icmp eq i16 %48, 0
  br i1 %cmp78384.not, label %do.end75.for.end164_crit_edge, label %for.body.lr.ph

do.end75.for.end164_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end164

for.body.lr.ph:                                   ; preds = %do.end75
  %fp_array = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 11
  %49 = getelementptr inbounds %struct.qed_rxq_start_ret_params, ptr %ret_params, i32 0, i32 1
  %queue_id = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %q_params, i32 0, i32 1
  %p_sb = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %q_params, i32 0, i32 3
  %sb_idx = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %q_params, i32 0, i32 4
  %xdp_prog = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 44
  %num_tc = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc162.for.body_crit_edge, %for.body.lr.ph
  %i.0385 = phi i32 [ 0, %for.body.lr.ph ], [ %inc163, %for.inc162.for.body_crit_edge ]
  %50 = ptrtoint ptr %fp_array to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fp_array, align 4
  %arrayidx = getelementptr %struct.qede_fastpath, ptr %51, i32 %i.0385
  %type = getelementptr %struct.qede_fastpath, ptr %51, i32 %i.0385, i32 1
  %52 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %type, align 4
  %54 = and i8 %53, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool82.not = icmp eq i8 %54, 0
  br i1 %tobool82.not, label %for.body.if.end119_crit_edge, label %if.then83

for.body.if.end119_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end119

if.then83:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret_params) #16
  %55 = ptrtoint ptr %ret_params to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -1 to ptr), ptr %ret_params, align 8, !annotation !478
  %56 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 -1 to ptr), ptr %49, align 4, !annotation !478
  %rxq84 = getelementptr %struct.qede_fastpath, ptr %51, i32 %i.0385, i32 6
  %57 = ptrtoint ptr %rxq84 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rxq84, align 4
  store i64 0, ptr %ret_params, align 8
  %59 = call ptr @memset(ptr %q_params, i32 0, i32 16)
  %rxq_id = getelementptr inbounds %struct.qede_rx_queue, ptr %58, i32 0, i32 8
  %60 = ptrtoint ptr %rxq_id to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %rxq_id, align 1
  %conv85 = zext i8 %61 to i16
  %62 = ptrtoint ptr %queue_id to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv85, ptr %queue_id, align 2
  %sb_info = getelementptr %struct.qede_fastpath, ptr %51, i32 %i.0385, i32 5
  %63 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sb_info, align 8
  %65 = ptrtoint ptr %p_sb to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %p_sb, align 4
  %66 = ptrtoint ptr %sb_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %sb_idx, align 4
  %table_phys.i = getelementptr inbounds %struct.qede_rx_queue, ptr %58, i32 0, i32 16, i32 15, i32 1
  %67 = ptrtoint ptr %table_phys.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %table_phys.i, align 4
  %page_cnt.i = getelementptr inbounds %struct.qede_rx_queue, ptr %58, i32 0, i32 16, i32 5
  %69 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %page_cnt.i, align 4
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops, align 4
  %q_rx_start = getelementptr inbounds %struct.qed_eth_ops, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %q_rx_start to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %q_rx_start, align 4
  %conv91 = trunc i32 %i.0385 to i8
  %rx_buf_size = getelementptr inbounds %struct.qede_rx_queue, ptr %58, i32 0, i32 11
  %75 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_buf_size, align 4
  %conv92 = trunc i32 %76 to i16
  %p_phys_addr = getelementptr inbounds %struct.qede_rx_queue, ptr %58, i32 0, i32 14, i32 17
  %77 = ptrtoint ptr %p_phys_addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %p_phys_addr, align 4
  %conv93 = trunc i32 %70 to i16
  %call94 = call i32 %74(ptr noundef %1, i8 noundef zeroext %conv91, ptr noundef nonnull %q_params, i16 noundef zeroext %conv92, i32 noundef %78, i32 noundef %68, i16 noundef zeroext %conv93, ptr noundef nonnull %ret_params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %cleanup.thread, label %do.end100

do.end100:                                        ; preds = %if.then83
  %79 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ndev19, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i323 = icmp eq i8 %82, 0
  br i1 %tobool.not.i323, label %do.end100.cleanup_crit_edge, label %lor.lhs.false.i327

do.end100.cleanup_crit_edge:                      ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i327:                               ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #18
  %call.i324 = call ptr @strchr(ptr noundef %80, i32 noundef 37) #16
  %tobool2.not.i325 = icmp eq ptr %call.i324, null
  %tobool104.not = icmp eq ptr %80, null
  %or.cond377 = and i1 %tobool104.not, %tobool2.not.i325
  %spec.select.i333 = select i1 %tobool2.not.i325, ptr %80, ptr @.str.34
  %spec.select399 = select i1 %or.cond377, ptr @.str.20, ptr %spec.select.i333
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #18
  %83 = ptrtoint ptr %ret_params to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ret_params, align 8
  %hw_rxq_prod_addr = getelementptr inbounds %struct.qede_rx_queue, ptr %58, i32 0, i32 1
  %85 = ptrtoint ptr %hw_rxq_prod_addr to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %hw_rxq_prod_addr, align 4
  %86 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %49, align 4
  %handle = getelementptr inbounds %struct.qede_rx_queue, ptr %58, i32 0, i32 23
  %88 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %handle, align 8
  %89 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %sb_info, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %58, align 128
  call void @qede_update_rx_prod(ptr noundef %edev, ptr noundef %58) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret_params) #16
  br label %if.end119

cleanup:                                          ; preds = %lor.lhs.false.i327, %do.end100.cleanup_crit_edge
  %cond110 = phi ptr [ @.str.34, %do.end100.cleanup_crit_edge ], [ %spec.select399, %lor.lhs.false.i327 ]
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.230, i32 noundef 2266, ptr noundef %cond110, i32 noundef %i.0385, i32 noundef %call94) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret_params) #16
  br label %out

if.end119:                                        ; preds = %cleanup.thread, %for.body.if.end119_crit_edge
  %94 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %type, align 4
  %96 = and i8 %95, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool123.not = icmp eq i8 %96, 0
  br i1 %tobool123.not, label %if.end119.if.end133_crit_edge, label %if.then124

if.end119.if.end133_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end133

if.then124:                                       ; preds = %if.end119
  %xdp_tx = getelementptr %struct.qede_fastpath, ptr %51, i32 %i.0385, i32 8
  %97 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %xdp_tx, align 4
  %conv125 = trunc i32 %i.0385 to i8
  %call126 = call fastcc i32 @qede_start_txq(ptr noundef %edev, ptr noundef %arrayidx, ptr noundef %98, i8 noundef zeroext %conv125, i16 noundef zeroext 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.then124.out_crit_edge

if.then124.out_crit_edge:                         ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end129:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #18
  %99 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %xdp_prog, align 8
  call void @bpf_prog_add(ptr noundef %100, i32 noundef 1) #16
  %101 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xdp_prog, align 8
  %rxq131 = getelementptr %struct.qede_fastpath, ptr %51, i32 %i.0385, i32 6
  %103 = ptrtoint ptr %rxq131 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rxq131, align 4
  %xdp_prog132 = getelementptr inbounds %struct.qede_rx_queue, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %xdp_prog132 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %xdp_prog132, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.end129, %if.end119.if.end133_crit_edge
  %106 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %type, align 4
  %108 = and i8 %107, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool137.not = icmp eq i8 %108, 0
  br i1 %tobool137.not, label %if.end133.for.inc162_crit_edge, label %for.cond139.preheader

if.end133.for.inc162_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc162

for.cond139.preheader:                            ; preds = %if.end133
  %txq = getelementptr %struct.qede_fastpath, ptr %51, i32 %i.0385, i32 7
  %conv146 = trunc i32 %i.0385 to i8
  br label %for.cond139

for.cond139:                                      ; preds = %for.body144.for.cond139_crit_edge, %for.cond139.preheader
  %cos.0 = phi i32 [ %add147, %for.body144.for.cond139_crit_edge ], [ 0, %for.cond139.preheader ]
  %109 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_tc, align 1
  %conv141 = zext i8 %110 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cos.0, i32 %conv141)
  %cmp142 = icmp ult i32 %cos.0, %conv141
  br i1 %cmp142, label %for.body144, label %for.cond139.for.inc162_crit_edge

for.cond139.for.inc162_crit_edge:                 ; preds = %for.cond139
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc162

for.body144:                                      ; preds = %for.cond139
  %111 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %txq, align 8
  %arrayidx145 = getelementptr %struct.qede_tx_queue, ptr %112, i32 %cos.0
  %add147 = add nuw nsw i32 %cos.0, 1
  %conv148 = trunc i32 %add147 to i16
  %call149 = call fastcc i32 @qede_start_txq(ptr noundef %edev, ptr noundef %arrayidx, ptr noundef %arrayidx145, i8 noundef zeroext %conv146, i16 noundef zeroext %conv148)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %for.body144.for.cond139_crit_edge, label %for.body144.out_crit_edge

for.body144.out_crit_edge:                        ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body144.for.cond139_crit_edge:                ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond139

for.inc162:                                       ; preds = %for.cond139.for.inc162_crit_edge, %if.end133.for.inc162_crit_edge
  %inc163 = add nuw nsw i32 %i.0385, 1
  %113 = ptrtoint ptr %num_queues to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %num_queues, align 2
  %conv77 = zext i16 %114 to i32
  %cmp78 = icmp ult i32 %inc163, %conv77
  br i1 %cmp78, label %for.inc162.for.body_crit_edge, label %for.inc162.for.end164_crit_edge

for.inc162.for.end164_crit_edge:                  ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end164

for.inc162.for.body_crit_edge:                    ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end164:                                       ; preds = %for.inc162.for.end164_crit_edge, %do.end75.for.end164_crit_edge
  %115 = ptrtoint ptr %vport_id to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %vport_id, align 2
  %117 = ptrtoint ptr %call9 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %call9, align 4
  %update_vport_active_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %call9, i32 0, i32 1
  %118 = ptrtoint ptr %update_vport_active_flg to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %update_vport_active_flg, align 1
  %vport_active_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %call9, i32 0, i32 2
  %119 = ptrtoint ptr %vport_active_flg to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %vport_active_flg, align 2
  %b_inter_pf_switch = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 12
  %120 = ptrtoint ptr %b_inter_pf_switch to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %b_inter_pf_switch, align 1, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool167.not = icmp eq i8 %121, 0
  br i1 %tobool167.not, label %lor.lhs.false, label %for.end164.land.lhs.true_crit_edge

for.end164.land.lhs.true_crit_edge:               ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.end164
  %pdev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 2
  %122 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pdev, align 8
  %call169 = call i32 @pci_num_vf(ptr noundef %123) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %lor.lhs.false.if.end174_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

lor.lhs.false.if.end174_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end174

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.end164.land.lhs.true_crit_edge
  %tx_switching = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 0, i32 13
  %124 = ptrtoint ptr %tx_switching to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %tx_switching, align 2, !range !475
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool171.not = icmp eq i8 %125, 0
  br i1 %tobool171.not, label %land.lhs.true.if.end174_crit_edge, label %if.then173

land.lhs.true.if.end174_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end174

if.then173:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %update_tx_switching_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %call9, i32 0, i32 3
  %126 = ptrtoint ptr %update_tx_switching_flg to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %update_tx_switching_flg, align 1
  %tx_switching_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %call9, i32 0, i32 4
  %127 = ptrtoint ptr %tx_switching_flg to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %tx_switching_flg, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then173, %land.lhs.true.if.end174_crit_edge, %lor.lhs.false.if.end174_crit_edge
  %rss_params = getelementptr inbounds %struct.qed_update_vport_params, ptr %call9, i32 0, i32 8
  %update_rss_flg = getelementptr inbounds %struct.qed_update_vport_params, ptr %call9, i32 0, i32 7
  call void @qede_fill_rss_params(ptr noundef %edev, ptr noundef %rss_params, ptr noundef %update_rss_flg) #16
  %128 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops, align 4
  %vport_update = getelementptr inbounds %struct.qed_eth_ops, ptr %129, i32 0, i32 9
  %130 = ptrtoint ptr %vport_update to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vport_update, align 4
  %call176 = call i32 %131(ptr noundef %1, ptr noundef nonnull %call9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end174.out_crit_edge, label %do.end182

if.end174.out_crit_edge:                          ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

do.end182:                                        ; preds = %if.end174
  %132 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ndev19, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %133, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i337 = icmp eq i8 %135, 0
  br i1 %tobool.not.i337, label %do.end182.cond.end191_crit_edge, label %lor.lhs.false.i341

do.end182.cond.end191_crit_edge:                  ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end191

lor.lhs.false.i341:                               ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #18
  %call.i338 = call ptr @strchr(ptr noundef %133, i32 noundef 37) #16
  %tobool2.not.i339 = icmp eq ptr %call.i338, null
  %tobool186.not = icmp eq ptr %133, null
  %or.cond378 = and i1 %tobool186.not, %tobool2.not.i339
  %spec.select.i347 = select i1 %tobool2.not.i339, ptr %133, ptr @.str.34
  %spec.select400 = select i1 %or.cond378, ptr @.str.20, ptr %spec.select.i347
  br label %cond.end191

cond.end191:                                      ; preds = %lor.lhs.false.i341, %do.end182.cond.end191_crit_edge
  %cond192 = phi ptr [ @.str.34, %do.end182.cond.end191_crit_edge ], [ %spec.select400, %lor.lhs.false.i341 ]
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.230, i32 noundef 2317, ptr noundef %cond192, i32 noundef %call176) #19
  br label %out

out:                                              ; preds = %cond.end191, %if.end174.out_crit_edge, %for.body144.out_crit_edge, %if.then124.out_crit_edge, %cleanup, %cond.end41
  %rc.7 = phi i32 [ %call26, %cond.end41 ], [ %call176, %cond.end191 ], [ 0, %if.end174.out_crit_edge ], [ %call94, %cleanup ], [ %call149, %for.body144.out_crit_edge ], [ %call126, %if.then124.out_crit_edge ]
  call void @vfree(ptr noundef nonnull %call9) #16
  br label %cleanup197

cleanup197:                                       ; preds = %out, %if.end.cleanup197_crit_edge, %cond.end
  %retval.0 = phi i32 [ %rc.7, %out ], [ -22, %cond.end ], [ -12, %if.end.cleanup197_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %start) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %q_params) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_configure_vlan_filters(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_set_per_coalesce(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_get_num_default_rss_queues() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_alloc_mem_txq(ptr nocapture noundef readonly %edev, ptr noundef %txq) unnamed_addr #3 align 64 {
entry:
  %params = alloca %struct.qed_chain_init_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %params) #16
  %0 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 4
  %4 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 5
  %5 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 6
  %6 = getelementptr inbounds %struct.qed_chain_init_params, ptr %params, i32 0, i32 7
  %7 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %params, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %2, align 4
  %q_num_tx_buffers = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 31
  %11 = ptrtoint ptr %q_num_tx_buffers to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %q_num_tx_buffers, align 8
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %6, align 4
  %num_tx_buffers = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 4
  %17 = ptrtoint ptr %num_tx_buffers to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %12, ptr %num_tx_buffers, align 2
  %18 = ptrtoint ptr %txq to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %txq, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end8.i.i66, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %entry
  %mul = mul nuw nsw i32 %conv, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #20
  %sw_tx_ring = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 14
  %20 = ptrtoint ptr %sw_tx_ring to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9.i.i, ptr %sw_tx_ring, align 8
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %if.end8.i.i.err_crit_edge, label %if.end8.i.i.if.end16_crit_edge

if.end8.i.i.if.end16_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.end8.i.i.err_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end8.i.i66:                                    ; preds = %entry
  %mul9 = shl nuw nsw i32 %conv, 3
  %call9.i.i65 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul9, i32 noundef 3520) #20
  %sw_tx_ring11 = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 14
  %21 = ptrtoint ptr %sw_tx_ring11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i65, ptr %sw_tx_ring11, align 8
  %tobool13.not = icmp eq ptr %call9.i.i65, null
  br i1 %tobool13.not, label %if.end8.i.i66.err_crit_edge, label %if.end8.i.i66.if.end16_crit_edge

if.end8.i.i66.if.end16_crit_edge:                 ; preds = %if.end8.i.i66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.end8.i.i66.err_crit_edge:                      ; preds = %if.end8.i.i66
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end16:                                         ; preds = %if.end8.i.i66.if.end16_crit_edge, %if.end8.i.i.if.end16_crit_edge
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %chain_alloc = getelementptr inbounds %struct.qed_common_ops, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %chain_alloc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chain_alloc, align 4
  %28 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %edev, align 8
  %tx_pbl = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15
  %call17 = call i32 %27(ptr noundef %29, ptr noundef %tx_pbl, ptr noundef nonnull %params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end16.err_crit_edge

if.end16.err_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

err:                                              ; preds = %if.end16.err_crit_edge, %if.end8.i.i66.err_crit_edge, %if.end8.i.i.err_crit_edge
  %sw_tx_ring1.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 14
  %30 = ptrtoint ptr %sw_tx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sw_tx_ring1.i, align 8
  call void @kfree(ptr noundef %31) #16
  %ops.i = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %chain_free.i = getelementptr inbounds %struct.qed_common_ops, ptr %35, i32 0, i32 25
  %36 = ptrtoint ptr %chain_free.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chain_free.i, align 4
  %38 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %edev, align 8
  %tx_pbl.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15
  call void %37(ptr noundef %39, ptr noundef %tx_pbl.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %params) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_alloc_rx_buffer(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_poll(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qede_simd_fp_handler(ptr noundef %cookie) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.qede_fastpath, ptr %cookie, i32 0, i32 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #16
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule_irqoff.exit_crit_edge

entry.napi_schedule_irqoff.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %napi_schedule_irqoff.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__napi_schedule_irqoff(ptr noundef %napi) #16
  br label %napi_schedule_irqoff.exit

napi_schedule_irqoff.exit:                        ; preds = %if.then.i, %entry.napi_schedule_irqoff.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_cpu_rmap_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qede_msix_fp_int(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule_irqoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_update_rx_prod(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qede_start_txq(ptr nocapture noundef readonly %edev, ptr nocapture noundef readonly %fp, ptr noundef %txq, i8 noundef zeroext %rss_id, i16 noundef zeroext %sb_idx) unnamed_addr #3 align 64 {
entry:
  %params = alloca %struct.qed_queue_start_common_params, align 4
  %ret_params = alloca %struct.qed_txq_start_ret_params, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %table_phys.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 15, i32 1
  %0 = ptrtoint ptr %table_phys.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %table_phys.i, align 4
  %page_cnt.i = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 15, i32 5
  %2 = ptrtoint ptr %page_cnt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_cnt.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ret_params) #16
  %4 = getelementptr inbounds %struct.qed_txq_start_ret_params, ptr %ret_params, i32 0, i32 1
  %5 = call ptr @memset(ptr %params, i32 0, i32 16)
  %6 = ptrtoint ptr %ret_params to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %ret_params, align 8
  %7 = ptrtoint ptr %txq to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %txq, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %index4 = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 13
  %9 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index4, align 4
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %num_queues = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %num_queues to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_queues, align 4
  %conv = zext i8 %12 to i32
  %sub = sub i32 %10, %conv
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv3.sink.in = phi i32 [ %sub, %if.then ], [ %10, %entry.if.end_crit_edge ]
  %conv3.sink = trunc i32 %conv3.sink.in to i16
  %13 = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %params, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv3.sink, ptr %13, align 2
  %sb_info = getelementptr inbounds %struct.qede_fastpath, ptr %fp, i32 0, i32 5
  %15 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sb_info, align 8
  %p_sb = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %params, i32 0, i32 3
  %17 = ptrtoint ptr %p_sb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %p_sb, align 4
  %conv7 = trunc i16 %sb_idx to i8
  %sb_idx8 = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %params, i32 0, i32 4
  %18 = ptrtoint ptr %sb_idx8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7, ptr %sb_idx8, align 4
  %cos = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 17
  %19 = ptrtoint ptr %cos to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cos, align 4
  %conv9 = trunc i16 %20 to i8
  %tc = getelementptr inbounds %struct.qed_queue_start_common_params, ptr %params, i32 0, i32 5
  %21 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv9, ptr %tc, align 1
  %ops = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 7
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %q_tx_start = getelementptr inbounds %struct.qed_eth_ops, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %q_tx_start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %q_tx_start, align 4
  %26 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edev, align 8
  %conv10 = trunc i32 %3 to i16
  %call11 = call i32 %25(ptr noundef %27, i8 noundef zeroext %rss_id, ptr noundef nonnull %params, i32 noundef %1, i16 noundef zeroext %conv10, ptr noundef nonnull %ret_params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end23, label %do.end

do.end:                                           ; preds = %if.end
  %ndev = getelementptr inbounds %struct.qede_dev, ptr %edev, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = call ptr @strchr(ptr noundef %29, i32 noundef 37) #16
  %tobool2.not.i = icmp eq ptr %call.i, null
  %tobool16.not = icmp eq ptr %29, null
  %or.cond = and i1 %tobool16.not, %tobool2.not.i
  %spec.select.i103 = select i1 %tobool2.not.i, ptr %29, ptr @.str.34
  %spec.select = select i1 %or.cond, ptr @.str.20, ptr %spec.select.i103
  br label %cond.end

cond.end:                                         ; preds = %lor.lhs.false.i, %do.end.cond.end_crit_edge
  %cond = phi ptr [ @.str.34, %do.end.cond.end_crit_edge ], [ %spec.select, %lor.lhs.false.i ]
  %index19 = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 13
  %32 = ptrtoint ptr %index19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index19, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.244, i32 noundef 2174, ptr noundef %cond, i32 noundef %33, i32 noundef %call11) #19
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %ret_params to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ret_params, align 8
  %doorbell_addr = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 10
  %36 = ptrtoint ptr %doorbell_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %doorbell_addr, align 8
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %4, align 4
  %handle = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 16
  %39 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %handle, align 8
  %40 = ptrtoint ptr %sb_info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sb_info, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %idxprom = zext i16 %sb_idx to i32
  %arrayidx = getelementptr [12 x i16], ptr %43, i32 0, i32 %idxprom
  %hw_cons_ptr = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 8
  %44 = ptrtoint ptr %hw_cons_ptr to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx, ptr %hw_cons_ptr, align 8
  %tx_db = getelementptr inbounds %struct.qede_tx_queue, ptr %txq, i32 0, i32 11
  %45 = ptrtoint ptr %tx_db to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_db, align 4
  %47 = and i8 %46, 48
  %48 = or i8 %47, -124
  store i8 %48, ptr %tx_db, align 4
  %agg_flags = getelementptr inbounds %struct.eth_db_data, ptr %tx_db, i32 0, i32 1
  %49 = ptrtoint ptr %agg_flags to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 16, ptr %agg_flags, align 1
  %50 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %db_recovery_add = getelementptr inbounds %struct.qed_common_ops, ptr %53, i32 0, i32 31
  %54 = ptrtoint ptr %db_recovery_add to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %db_recovery_add, align 4
  %56 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %edev, align 8
  %call66 = call i32 %55(ptr noundef %57, ptr noundef %35, ptr noundef %tx_db, i32 noundef 0, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %cond.end
  %retval.0 = phi i32 [ %call11, %cond.end ], [ %call66, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ret_params) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qede_fill_rss_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 238)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 238)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nobuiltin }
attributes #24 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !243, !245, !246, !247, !248, !250, !251, !252, !253, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !299, !300, !301, !303, !304, !305, !306, !308, !309, !310, !312, !313, !314, !316, !317, !318, !319, !321, !322, !323, !325, !326, !327, !328, !330, !331, !332, !334, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !362, !364, !365, !366, !367, !369, !370, !371, !373, !374, !375, !377, !378, !380, !381, !382, !383, !385, !387, !388, !389, !391, !392, !393, !394, !396, !397, !398, !399, !401, !402, !403, !405, !406, !407, !408, !410, !411, !412, !414, !415, !416, !417, !419, !420, !421, !423, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !443, !445, !446, !447, !449, !450, !451, !453, !454, !455, !457, !458, !459, !461, !462, !463}
!llvm.named.register.sp = !{!464}
!llvm.module.flags = !{!465, !466, !467, !468, !469, !470, !471, !472}
!llvm.ident = !{!473}

!0 = !{ptr @__UNIQUE_ID_description677, !1, !"__UNIQUE_ID_description677", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_file678, !3, !"__UNIQUE_ID_file678", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 43, i32 1}
!4 = !{ptr @__UNIQUE_ID_license679, !3, !"__UNIQUE_ID_license679", i1 false, i1 false}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 46, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype680, !6, !"__UNIQUE_ID_debugtype680", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug681, !9, !"__UNIQUE_ID_debug681", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 47, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 291, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @qede_cleanup._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @qede_cleanup._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_qede__682_298_qede_init6, !17, !"__initcall__kmod_qede__682_298_qede_init6", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 298, i32 1}
!18 = !{ptr @__exitcall_qede_cleanup, !19, !"__exitcall_qede_cleanup", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 299, i32 1}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 45, i32 13}
!22 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!23 = !{ptr @qede_netdev_notifier, !24, !"qede_netdev_notifier", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 248, i32 30}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 227, i32 29}
!27 = !{ptr @qede_pci_driver, !28, !"qede_pci_driver", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 184, i32 26}
!29 = !{ptr @qede_pci_tbl, !30, !"qede_pci_tbl", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 79, i32 35}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1323, i32 4}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qede_probe._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @qede_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1328, i32 4}
!40 = !{ptr @qede_probe._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qede_probe._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1198, i32 3}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__qede_probe._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @__qede_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1217, i32 26}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1220, i32 3}
!51 = !{ptr @__qede_probe._entry.14, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @__qede_probe._entry_ptr.16, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1239, i32 4}
!55 = !{ptr @__qede_probe._entry.17, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @__qede_probe._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__qede_probe.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1271, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @__qede_probe.__key.22, !59, !"__key", i1 false, i1 false}
!62 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__qede_probe.__key.24, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1272, i32 3}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1276, i32 4}
!68 = !{ptr @__qede_probe._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @__qede_probe._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @qed_ops, !71, !"qed_ops", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 49, i32 34}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 784, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @qede_alloc_etherdev._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @qede_alloc_etherdev._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 804, i32 2}
!79 = !{ptr @qede_alloc_etherdev._entry.31, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @qede_alloc_etherdev._entry_ptr.33, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!83 = !{ptr @qede_netdev_vf_xdp_ops, !84, !"qede_netdev_vf_xdp_ops", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 748, i32 36}
!85 = !{ptr @qede_netdev_vf_ops, !86, !"qede_netdev_vf_ops", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 731, i32 36}
!87 = !{ptr @qede_netdev_ops, !88, !"qede_netdev_ops", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 695, i32 36}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 504, i32 3}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @qede_ioctl._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @qede_ioctl._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 580, i32 2}
!96 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @qede_tx_timeout._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @qede_tx_timeout._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 608, i32 3}
!101 = !{ptr @qede_tx_timeout._entry.39, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @qede_tx_timeout._entry_ptr.41, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 533, i32 2}
!105 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @qede_txq_fp_log_metadata._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @qede_txq_fp_log_metadata._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 539, i32 2}
!110 = !{ptr @qede_txq_fp_log_metadata._entry.44, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @qede_txq_fp_log_metadata._entry_ptr.46, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 557, i32 2}
!114 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @qede_tx_log_print._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @qede_tx_log_print._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 562, i32 11}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 568, i32 12}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 520, i32 3}
!123 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @qede_fp_sb_dump._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @qede_fp_sb_dump._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 142, i32 2}
!128 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @qede_set_vf_mac._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @qede_set_vf_mac._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 145, i32 3}
!133 = !{ptr @qede_set_vf_mac._entry.55, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @qede_set_vf_mac._entry_ptr.57, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 125, i32 3}
!137 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @qede_set_vf_vlan._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @qede_set_vf_vlan._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 132, i32 2}
!142 = !{ptr @qede_set_vf_vlan._entry.60, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @qede_set_vf_vlan._entry_ptr.62, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @qede_block_cb_list, !145, !"qede_block_cb_list", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 670, i32 8}
!146 = !{ptr @tc_cls_can_offload_and_chain0.__msg, !147, !"__msg", i1 false, i1 false}
!147 = !{!"../include/net/pkt_cls.h", i32 676, i32 3}
!148 = !{ptr @tc_can_offload_extack.__msg, !149, !"__msg", i1 false, i1 false}
!149 = !{!"../include/net/pkt_cls.h", i32 664, i32 3}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2633, i32 2}
!152 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @qede_recovery_handler._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @qede_recovery_handler._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2665, i32 2}
!157 = !{ptr @qede_recovery_handler._entry.65, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @qede_recovery_handler._entry_ptr.67, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1349, i32 3}
!161 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @__qede_remove._entry, !160, !"_entry", i1 false, i1 false}
!164 = !{ptr @__qede_remove._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1356, i32 2}
!167 = !{ptr @__qede_remove._entry.71, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @__qede_remove._entry_ptr.73, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1396, i32 2}
!171 = !{ptr @__qede_remove._entry.74, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @__qede_remove._entry_ptr.76, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2620, i32 25}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2693, i32 2}
!177 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @qede_generic_hw_err_handler._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @qede_generic_hw_err_handler._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2698, i32 3}
!182 = !{ptr @qede_generic_hw_err_handler._entry.80, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @qede_generic_hw_err_handler._entry_ptr.82, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2704, i32 2}
!186 = !{ptr @qede_generic_hw_err_handler._entry.83, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @qede_generic_hw_err_handler._entry_ptr.85, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @qede_ll_ops, !189, !"qede_ll_ops", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 196, i32 30}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2581, i32 3}
!192 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @qede_link_update._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @qede_link_update._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.89, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2587, i32 4}
!197 = !{ptr @qede_link_update._entry.88, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @qede_link_update._entry_ptr.90, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2594, i32 4}
!201 = !{ptr @qede_link_update._entry.91, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @qede_link_update._entry_ptr.93, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2607, i32 3}
!205 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @qede_schedule_recovery_handler._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @qede_schedule_recovery_handler._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2615, i32 2}
!210 = !{ptr @qede_schedule_recovery_handler._entry.96, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @qede_schedule_recovery_handler._entry_ptr.98, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2745, i32 3}
!214 = !{ptr @.str.100, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @qede_schedule_hw_err_handler._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @qede_schedule_hw_err_handler._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2751, i32 3}
!219 = !{ptr @qede_schedule_hw_err_handler._entry.101, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @qede_schedule_hw_err_handler._entry_ptr.103, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2762, i32 2}
!223 = !{ptr @qede_schedule_hw_err_handler._entry.104, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @qede_schedule_hw_err_handler._entry_ptr.106, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2727, i32 3}
!227 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @qede_set_hw_err_flags._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @qede_set_hw_err_flags._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2677, i32 2}
!232 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @qede_atomic_hw_err_handler._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @qede_atomic_hw_err_handler._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2688, i32 2}
!237 = !{ptr @qede_atomic_hw_err_handler._entry.111, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @qede_atomic_hw_err_handler._entry_ptr.113, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.114, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1154, i32 4}
!241 = !{ptr @.str.115, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1169, i32 5}
!243 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1177, i32 2}
!245 = !{ptr @.str.117, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @qede_log_probe._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @qede_log_probe._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 162, i32 2}
!250 = !{ptr @.str.119, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @qede_sriov_configure._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @qede_sriov_configure._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @qede_err_handler, !254, !"qede_err_handler", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 180, i32 40}
!255 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2883, i32 2}
!257 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @qede_io_error_detected._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @qede_io_error_detected._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.123, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2887, i32 3}
!262 = !{ptr @qede_io_error_detected._entry.122, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @qede_io_error_detected._entry_ptr.124, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2894, i32 3}
!266 = !{ptr @qede_io_error_detected._entry.125, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @qede_io_error_detected._entry_ptr.127, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 257, i32 2}
!270 = !{ptr @.str.129, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @qede_init._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @qede_init._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.131, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 263, i32 3}
!275 = !{ptr @qede_init._entry.130, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @qede_init._entry_ptr.132, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.134, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 272, i32 3}
!279 = !{ptr @qede_init._entry.133, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @qede_init._entry_ptr.135, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 279, i32 3}
!283 = !{ptr @qede_init._entry.136, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @qede_init._entry_ptr.138, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2335, i32 2}
!287 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @qede_unload._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @qede_unload._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.142, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2372, i32 3}
!292 = !{ptr @qede_unload._entry.141, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @qede_unload._entry_ptr.143, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @qede_unload._entry.144, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2400, i32 3}
!296 = !{ptr @qede_unload._entry_ptr.145, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.147, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2404, i32 2}
!299 = !{ptr @qede_unload._entry.146, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @qede_unload._entry_ptr.148, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.149, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2079, i32 3}
!303 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @qede_stop_queues._entry, !302, !"_entry", i1 false, i1 false}
!305 = !{ptr @qede_stop_queues._entry_ptr, !302, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.152, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2123, i32 5}
!308 = !{ptr @qede_stop_queues._entry.151, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @qede_stop_queues._entry_ptr.153, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.155, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2141, i32 3}
!312 = !{ptr @qede_stop_queues._entry.154, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @qede_stop_queues._entry_ptr.156, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.157, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2023, i32 5}
!316 = !{ptr @.str.158, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @qede_drain_txq._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @qede_drain_txq._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.160, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2031, i32 4}
!321 = !{ptr @qede_drain_txq._entry.159, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @qede_drain_txq._entry_ptr.161, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.162, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1754, i32 3}
!325 = !{ptr @.str.163, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @qede_empty_tx_queue._entry, !324, !"_entry", i1 false, i1 false}
!327 = !{ptr @qede_empty_tx_queue._entry_ptr, !324, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.165, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1761, i32 4}
!330 = !{ptr @qede_empty_tx_queue._entry.164, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @qede_empty_tx_queue._entry_ptr.166, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.167, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2421, i32 2}
!334 = !{ptr @.str.168, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @qede_load._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @qede_load._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.170, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2439, i32 2}
!339 = !{ptr @qede_load._entry.169, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @qede_load._entry_ptr.171, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.173, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2452, i32 2}
!343 = !{ptr @qede_load._entry.172, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @qede_load._entry_ptr.174, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.176, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2457, i32 2}
!347 = !{ptr @qede_load._entry.175, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @qede_load._entry_ptr.177, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.179, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2462, i32 2}
!351 = !{ptr @qede_load._entry.178, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @qede_load._entry_ptr.180, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.182, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2492, i32 2}
!355 = !{ptr @qede_load._entry.181, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @qede_load._entry_ptr.183, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.184, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1432, i32 3}
!359 = !{ptr @.str.185, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @qede_set_num_queues._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @qede_set_num_queues._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.186, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 969, i32 3}
!364 = !{ptr @.str.187, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @qede_alloc_fp_array._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @qede_alloc_fp_array._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.189, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 976, i32 3}
!369 = !{ptr @qede_alloc_fp_array._entry.188, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @qede_alloc_fp_array._entry_ptr.190, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.192, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 994, i32 4}
!373 = !{ptr @qede_alloc_fp_array._entry.191, !372, !"_entry", i1 false, i1 false}
!374 = !{ptr @qede_alloc_fp_array._entry_ptr.193, !372, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @qede_init_fp.__key, !376, !"__key", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1813, i32 4}
!377 = !{ptr @.str.194, !376, !"<string literal>", i1 false, i1 false}
!378 = !{ptr @.str.195, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1834, i32 5}
!380 = !{ptr @.str.196, !379, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @qede_init_fp._entry, !379, !"_entry", i1 false, i1 false}
!382 = !{ptr @qede_init_fp._entry_ptr, !379, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.197, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1859, i32 40}
!385 = !{ptr @.str.199, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1865, i32 3}
!387 = !{ptr @qede_init_fp._entry.198, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @qede_init_fp._entry_ptr.200, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.201, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1732, i32 4}
!391 = !{ptr @.str.202, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @qede_alloc_mem_load._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @qede_alloc_mem_load._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.203, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1466, i32 3}
!396 = !{ptr @.str.204, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @qede_alloc_mem_sb._entry, !395, !"_entry", i1 false, i1 false}
!398 = !{ptr @qede_alloc_mem_sb._entry_ptr, !395, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.206, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1474, i32 3}
!401 = !{ptr @qede_alloc_mem_sb._entry.205, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @qede_alloc_mem_sb._entry_ptr.207, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.208, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1564, i32 3}
!405 = !{ptr @.str.209, !404, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @qede_alloc_mem_rxq._entry, !404, !"_entry", i1 false, i1 false}
!407 = !{ptr @qede_alloc_mem_rxq._entry_ptr, !404, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.211, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1592, i32 4}
!410 = !{ptr @qede_alloc_mem_rxq._entry.210, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @qede_alloc_mem_rxq._entry_ptr.212, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.213, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1877, i32 3}
!414 = !{ptr @.str.214, !413, !"<string literal>", i1 false, i1 false}
!415 = !{ptr @qede_set_real_num_queues._entry, !413, !"_entry", i1 false, i1 false}
!416 = !{ptr @qede_set_real_num_queues._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.216, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1883, i32 3}
!419 = !{ptr @qede_set_real_num_queues._entry.215, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @qede_set_real_num_queues._entry_ptr.217, !418, !"_entry_ptr", i1 false, i1 false}
!421 = !{ptr @.str.218, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1937, i32 3}
!423 = !{ptr @.str.219, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @qede_req_msix_irqs._entry, !422, !"_entry", i1 false, i1 false}
!425 = !{ptr @qede_req_msix_irqs._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.221, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1951, i32 5}
!428 = !{ptr @qede_req_msix_irqs._entry.220, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @qede_req_msix_irqs._entry_ptr.222, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.224, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1960, i32 4}
!432 = !{ptr @qede_req_msix_irqs._entry.223, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @qede_req_msix_irqs._entry_ptr.225, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.227, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 1970, i32 3}
!436 = !{ptr @qede_req_msix_irqs._entry.226, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @qede_req_msix_irqs._entry_ptr.228, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.229, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2210, i32 3}
!440 = !{ptr @.str.230, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @qede_start_queues._entry, !439, !"_entry", i1 false, i1 false}
!442 = !{ptr @qede_start_queues._entry_ptr, !439, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.232, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2230, i32 3}
!445 = !{ptr @qede_start_queues._entry.231, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @qede_start_queues._entry_ptr.233, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.235, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2234, i32 2}
!449 = !{ptr @qede_start_queues._entry.234, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @qede_start_queues._entry_ptr.236, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.238, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2265, i32 5}
!453 = !{ptr @qede_start_queues._entry.237, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @qede_start_queues._entry_ptr.239, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.241, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2317, i32 3}
!457 = !{ptr @qede_start_queues._entry.240, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @qede_start_queues._entry_ptr.242, !456, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.243, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/net/ethernet/qlogic/qede/qede_main.c", i32 2174, i32 3}
!461 = !{ptr @.str.244, !460, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @qede_start_txq._entry, !460, !"_entry", i1 false, i1 false}
!463 = !{ptr @qede_start_txq._entry_ptr, !460, !"_entry_ptr", i1 false, i1 false}
!464 = !{!"sp"}
!465 = !{i32 1, !"wchar_size", i32 2}
!466 = !{i32 1, !"min_enum_size", i32 4}
!467 = !{i32 8, !"branch-target-enforcement", i32 0}
!468 = !{i32 8, !"sign-return-address", i32 0}
!469 = !{i32 8, !"sign-return-address-all", i32 0}
!470 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!471 = !{i32 7, !"uwtable", i32 1}
!472 = !{i32 7, !"frame-pointer", i32 2}
!473 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!474 = !{!"branch_weights", i32 1, i32 2000}
!475 = !{i8 0, i8 2}
!476 = !{!"branch_weights", i32 2000, i32 1}
!477 = !{i64 2156306439}
!478 = !{!"auto-init"}
!479 = !{i32 0, i32 33}
!480 = !{i64 2160068000}
