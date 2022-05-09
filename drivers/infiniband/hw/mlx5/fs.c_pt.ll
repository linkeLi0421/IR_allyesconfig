; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx5/fs.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx5/fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uverbs_object_def = type { i16, ptr, i32, ptr }
%struct.anon.178 = type { i16 }
%union.anon.180 = type { ptr }
%struct.uapi_definition = type { i8, i8, %union.anon.177, %union.anon.180 }
%union.anon.177 = type { %struct.anon.179 }
%struct.anon.179 = type { i16, i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.uverbs_obj_type_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uverbs_obj_idr_type = type { %struct.uverbs_obj_type, ptr }
%struct.uverbs_obj_type = type { ptr, i32 }
%struct.uverbs_method_def = type { i16, i32, i32, ptr, ptr }
%struct.anon.183 = type { i16, i8 }
%union.anon.185 = type { %struct.anon.186, [4 x i8] }
%struct.anon.186 = type { ptr }
%struct.uverbs_attr_def = type { i16, %struct.uverbs_attr_spec }
%struct.uverbs_attr_spec = type { i8, i8, %union.anon.181, %union.anon.185 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i16, i16 }
%struct.anon.184 = type { i8 }
%struct.anon.187 = type { i16, i16, i16, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.218 = type { %struct.ib_flow_attr, %struct.ib_flow_spec_eth }
%struct.ib_flow_attr = type { i32, i16, i16, i32, i8, i32, [0 x %union.ib_flow_spec] }
%union.ib_flow_spec = type { %struct.ib_flow_spec_ipv6 }
%struct.ib_flow_spec_ipv6 = type { i32, i16, %struct.ib_flow_ipv6_filter, %struct.ib_flow_ipv6_filter }
%struct.ib_flow_ipv6_filter = type { [16 x i8], [16 x i8], i32, i8, i8, i8, [0 x i8] }
%struct.ib_flow_spec_eth = type { i32, i16, %struct.ib_flow_eth_filter, %struct.ib_flow_eth_filter }
%struct.ib_flow_eth_filter = type { [6 x i8], [6 x i8], i16, i16, [0 x i8] }
%struct.ib_flow_action = type { ptr, ptr, i32, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mlx5_ib_flow_action = type { %struct.ib_flow_action, %union.anon.188 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i64, ptr }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.204, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.204 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.anon.202 = type { ptr, i32, %union.anon.203 }
%union.anon.203 = type { ptr }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.207 }
%struct.anon.207 = type { i32, i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.205 }
%union.anon.205 = type { %struct.anon.206 }
%struct.anon.206 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_ib_dev = type { %struct.ib_device, ptr, %struct.notifier_block, i32, %struct.mutex, i8, i8, %struct.umr_common, %struct.mlx5_ib_resources, %struct.atomic_t, %struct.mlx5_mr_cache, %struct.timer_list, %struct.mutex, %struct.ib_odp_caps, i64, %struct.mutex, %struct.mlx5_ib_pf_eq, %struct.xarray, i32, ptr, %struct.spinlock, %struct.list_head, ptr, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg, %struct.mlx5_ib_delay_drop, ptr, %struct.mlx5_ib_lb_state, i8, %struct.list_head, i64, %struct.mlx5_dm, i16, %struct.mlx5_srq_table, %struct.mlx5_qp_table, %struct.mlx5_async_ctx, %struct.mlx5_devx_event_table, %struct.mlx5_var_table, %struct.xarray, [2 x %struct.mlx5_port_caps], i16 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.176 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.umr_common = type { ptr, ptr, ptr, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_ib_resources = type { ptr, i32, i32, ptr, ptr, ptr, [2 x %struct.mlx5_ib_port_resources] }
%struct.mlx5_ib_port_resources = type { ptr, %struct.work_struct }
%struct.mlx5_mr_cache = type { ptr, [23 x %struct.mlx5_cache_ent], ptr, i32 }
%struct.mlx5_cache_ent = type { %struct.list_head, %struct.spinlock, [4 x i8], i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ib_odp_caps = type { i64, %struct.anon.167 }
%struct.anon.167 = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_ib_pf_eq = type { %struct.notifier_block, ptr, ptr, %struct.work_struct, %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.mlx5_ib_delay_drop = type { ptr, %struct.work_struct, %struct.mutex, i32, i8, %struct.atomic_t, %struct.atomic_t, ptr }
%struct.mlx5_ib_lb_state = type { %struct.mutex, i32, i32, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_dm = type { ptr, %struct.spinlock, [8 x i32] }
%struct.mlx5_srq_table = type { %struct.notifier_block, %struct.xarray }
%struct.mlx5_qp_table = type { %struct.notifier_block, %struct.spinlock, %struct.xarray }
%struct.mlx5_async_ctx = type { ptr, %struct.atomic_t, %struct.wait_queue_head }
%struct.mlx5_devx_event_table = type { %struct.mlx5_nb, %struct.mutex, %struct.xarray }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.mlx5_var_table = type { %struct.mutex, ptr, i64, i32, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_port_caps = type { i8, i8 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.191, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.193, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.191 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.192] }
%struct.anon.192 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.151 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.151 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.193 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_ib_flow_db = type { [34 x %struct.mlx5_ib_flow_prio], [34 x %struct.mlx5_ib_flow_prio], [2 x %struct.mlx5_ib_flow_prio], [1 x %struct.mlx5_ib_flow_prio], [16 x %struct.mlx5_ib_flow_prio], [34 x %struct.mlx5_ib_flow_prio], [34 x %struct.mlx5_ib_flow_prio], [3 x %struct.mlx5_ib_flow_prio], ptr, %struct.mutex }
%struct.mlx5_ib_flow_prio = type { ptr, i32 }
%struct.mlx5_ib_op_fc = type { ptr, [2 x ptr] }
%struct.ib_uobject = type { i64, ptr, ptr, ptr, %struct.list_head, %struct.ib_rdmacg_object, i32, %struct.kref, %struct.atomic_t, %struct.callback_head, ptr }
%struct.ib_rdmacg_object = type { ptr }
%struct.mlx5_ib_flow_matcher = type { %struct.mlx5_ib_match_params, i32, i32, i32, i16, ptr, %struct.atomic_t, i8 }
%struct.mlx5_ib_match_params = type { [160 x i32] }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.127 }
%union.anon.127 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.128, i16, i16, i8 }
%union.anon.128 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.devx_obj = type { ptr, i64, i32, [16 x i32], i32, %union.anon.210, %struct.list_head }
%union.anon.210 = type { %struct.mlx5_core_cq }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.217, i32, %struct.list_head, ptr, i16 }
%struct.anon.217 = type { %struct.list_head, ptr, ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx5_ib_qp = type { %struct.ib_qp, %union.anon.208, %struct.mlx5_frag_buf, %struct.mlx5_db, %struct.mlx5_ib_wq, i8, i8, %struct.mlx5_ib_wq, %struct.mutex, i32, i32, i8, i32, %struct.mlx5_bf, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mlx5_rate_limit, i32, i32, i32, i32, i16 }
%union.anon.208 = type { %struct.mlx5_ib_raw_packet_qp }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_sq, %struct.mlx5_ib_rq }
%struct.mlx5_ib_sq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, ptr, i32, i8 }
%struct.mlx5_ib_qp_base = type { ptr, %struct.mlx5_core_qp, %struct.mlx5_ib_ubuffer }
%struct.mlx5_core_qp = type { %struct.mlx5_core_rsc_common, ptr, i32, ptr, i32, i16 }
%struct.mlx5_core_rsc_common = type { i32, %struct.refcount_struct, %struct.completion }
%struct.mlx5_ib_ubuffer = type { ptr, i32, i64 }
%struct.mlx5_ib_rq = type { %struct.mlx5_ib_qp_base, ptr, %struct.mlx5_ib_ubuffer, ptr, i32, i8, i32 }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.209, i32, i32 }
%union.anon.209 = type { ptr }
%struct.mlx5_ib_wq = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, ptr, ptr, i16, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i16, ptr }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_bf = type { i32, i32, ptr }
%struct.mlx5_rate_limit = type { i32, i32, i16 }
%struct.mlx5_ib_flow_handler = type { %struct.list_head, %struct.ib_flow, ptr, ptr, ptr, ptr, ptr }
%struct.ib_flow = type { ptr, ptr, ptr }
%struct.ib_uflow_object = type { %struct.ib_uobject, ptr }
%struct.mlx5_pkt_reformat_params = type { i32, i8, i8, i32, ptr }
%struct.mlx5_ib_create_flow = type { i32, i32, [0 x %struct.mlx5_ib_flow_counters_data] }
%struct.mlx5_ib_flow_counters_data = type { i64, i32, i32 }
%struct.anon.173 = type { i32, i16 }
%struct.ib_flow_spec_ipv4 = type { i32, i16, %struct.ib_flow_ipv4_filter, %struct.ib_flow_ipv4_filter }
%struct.ib_flow_ipv4_filter = type { i32, i32, i8, i8, i8, i8, [0 x i8] }
%struct.ib_flow_spec_esp = type { i32, i16, %struct.ib_flow_esp_filter, %struct.ib_flow_esp_filter }
%struct.ib_flow_esp_filter = type { i32, i32, [0 x i8] }
%struct.ib_flow_spec_tcp_udp = type { i32, i16, %struct.ib_flow_tcp_udp_filter, %struct.ib_flow_tcp_udp_filter }
%struct.ib_flow_tcp_udp_filter = type { i16, i16, [0 x i8] }
%struct.ib_flow_spec_gre = type { i32, i16, %struct.ib_flow_gre_filter, %struct.ib_flow_gre_filter }
%struct.ib_flow_gre_filter = type { i16, i16, i32, [0 x i8] }
%struct.ib_flow_spec_mpls = type { i32, i16, %struct.ib_flow_mpls_filter, %struct.ib_flow_mpls_filter }
%struct.ib_flow_mpls_filter = type { i32, [0 x i8] }
%struct.ib_flow_spec_tunnel = type { i32, i16, %struct.ib_flow_tunnel_filter, %struct.ib_flow_tunnel_filter }
%struct.ib_flow_tunnel_filter = type { i32, [0 x i8] }
%struct.ib_flow_spec_action_tag = type { i32, i16, i32 }
%struct.ib_flow_spec_action_drop = type { i32, i16 }
%struct.ib_flow_spec_action_handle = type { i32, i16, ptr }
%struct.ib_flow_spec_action_count = type { i32, i16, ptr }
%struct.mlx5_ib_port = type { %struct.mlx5_ib_counters, %struct.mlx5_ib_multiport, ptr, %struct.mlx5_roce, ptr }
%struct.mlx5_ib_counters = type { ptr, ptr, i32, i32, i32, i32, i16, [3 x %struct.mlx5_ib_op_fc] }
%struct.mlx5_ib_multiport = type { ptr, %struct.spinlock }
%struct.mlx5_roce = type { %struct.rwlock_t, ptr, %struct.notifier_block, %struct.atomic_t, i32, ptr, i32 }
%struct.mlx5_ib_mcounters = type { %struct.ib_counters, i32, i32, ptr, ptr, i32, i32, ptr, %struct.mutex }
%struct.ib_counters = type { ptr, ptr, %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.109, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.109 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.197, i32, %union.anon.199, %union.anon.200, %union.anon.201, i8 }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { i32 }
%union.anon.199 = type { %struct.aes_gcm_keymat }
%struct.aes_gcm_keymat = type { i64, i32, i32, i32, i32, [8 x i32] }
%union.anon.200 = type { [4 x i32] }
%union.anon.201 = type { [4 x i32] }
%struct.ib_flow_action_attrs_esp = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i64 }
%struct.ib_flow_action_attrs_esp_keymats = type { i32, %union.anon.174 }
%union.anon.174 = type { %struct.ib_uverbs_flow_action_esp_keymat_aes_gcm }
%struct.ib_uverbs_flow_action_esp_keymat_aes_gcm = type { i64, i32, i32, i32, i32, [8 x i32] }
%struct.mlx5_accel_esp_xfrm = type { ptr, %struct.mlx5_accel_esp_xfrm_attrs }

@mlx5_ib_object_MLX5_IB_OBJECT_FLOW_MATCHER = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 4099, ptr @.compoundliteral, i32 2, ptr @_object_methods_MLX5_IB_OBJECT_FLOW_MATCHER2693 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_fs = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 9, ptr null, i32 2, ptr @_object_methods_UVERBS_OBJECT_FLOW2620 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_flow_actions = internal constant { %struct.uverbs_object_def, [16 x i8] } { %struct.uverbs_object_def { i16 13, ptr null, i32 2, ptr @_object_methods_UVERBS_OBJECT_FLOW_ACTION2658 }, [16 x i8] zeroinitializer }, align 32
@mlx5_ib_flow_defs = dso_local constant { <{ { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition }>, [48 x i8] } { <{ { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 }, %struct.uapi_definition }> <{ { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon.178, [4 x i8] } { %struct.anon.178 { i16 4099 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_object_MLX5_IB_OBJECT_FLOW_MATCHER } }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon.178, [4 x i8] } { %struct.anon.178 { i16 9 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_fs } }, { i8, i8, { %struct.anon.178, [4 x i8] }, %union.anon.180 } { i8 3, i8 0, { %struct.anon.178, [4 x i8] } { %struct.anon.178 { i16 13 }, [4 x i8] undef }, %union.anon.180 { ptr @mlx5_ib_flow_actions } }, %struct.uapi_definition zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@mlx5_ib_fs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->flow_db->lock\00", [44 x i8] zeroinitializer }, align 32
@flow_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_ib_create_flow, ptr @mlx5_ib_destroy_flow, ptr null, ptr @mlx5_ib_destroy_flow_action, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@flow_ipsec_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5_ib_create_flow_action_esp, ptr null, ptr @mlx5_ib_modify_flow_action_esp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@uverbs_idr_class = external dso_local constant %struct.uverbs_obj_type_class, align 4
@.compoundliteral = internal constant { %struct.uverbs_obj_idr_type, [20 x i8] } { %struct.uverbs_obj_idr_type { %struct.uverbs_obj_type { ptr @uverbs_idr_class, i32 56 }, ptr @flow_matcher_cleanup }, [20 x i8] zeroinitializer }, align 32
@_object_methods_MLX5_IB_OBJECT_FLOW_MATCHER2693 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_CREATE, ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY], [24 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_CREATE = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 6, ptr @_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_CREATE, ptr @mlx5_ib_handler_MLX5_IB_METHOD_FLOW_MATCHER_CREATE }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4097, i32 0, i32 1, ptr @_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_CREATE = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4099, i8 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 640, i16 1 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_flow_type = internal constant { [4 x %struct.uverbs_attr_spec], [32 x i8] } { [4 x %struct.uverbs_attr_spec] [%struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 { %struct.anon.182 { i16 2, i16 2 } }, %union.anon.185 zeroinitializer }, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 zeroinitializer, %union.anon.185 zeroinitializer }, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 zeroinitializer, %union.anon.185 zeroinitializer }, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 zeroinitializer, %union.anon.185 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal constant { { i16, { i8, i8, { %struct.anon.184, [3 x i8] }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.184, [3 x i8] }, %union.anon.185 } } { i16 4098, { i8, i8, { %struct.anon.184, [3 x i8] }, %union.anon.185 } { i8 5, i8 32, { %struct.anon.184, [3 x i8] } { %struct.anon.184 { i8 4 }, [3 x i8] undef }, %union.anon.185 { %struct.anon.186 { ptr @mlx5_ib_flow_type }, [4 x i8] undef } } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4099, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 1, i16 1 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4100, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 { %struct.anon.182 { i16 8, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4101, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.10], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4099, i8 3 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_FLOW2620 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_CREATE_FLOW, ptr @mlx5_ib_method_MLX5_IB_METHOD_DESTROY_FLOW], [24 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_CREATE_FLOW = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 10, ptr @_method_attrs_MLX5_IB_METHOD_CREATE_FLOW, ptr @mlx5_ib_handler_MLX5_IB_METHOD_CREATE_FLOW }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_DESTROY_FLOW = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4097, i32 0, i32 1, ptr @_method_attrs_MLX5_IB_METHOD_DESTROY_FLOW, ptr @uverbs_destroy_def_handler }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_CREATE_FLOW = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 9, i8 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.181 { %struct.anon.182 { i16 640, i16 1 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4100, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 4099, i8 0 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4098, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 0, { %struct.anon.183 } { %struct.anon.183 { i16 4, i8 0 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4099, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 0, { %struct.anon.183 } { %struct.anon.183 { i16 4097, i8 0 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal constant { { i16, [2 x i8], { i8, i8, %union.anon.181, [2 x i8], { %struct.anon.187 } } }, [44 x i8] } { { i16, [2 x i8], { i8, i8, %union.anon.181, [2 x i8], { %struct.anon.187 } } } { i16 4101, [2 x i8] undef, { i8, i8, %union.anon.181, [2 x i8], { %struct.anon.187 } } { i8 6, i8 0, %union.anon.181 zeroinitializer, [2 x i8] undef, { %struct.anon.187 } { %struct.anon.187 { i16 13, i16 1, i16 2, i8 0 } } } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4102, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 { %struct.anon.182 { i16 4, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal constant { { i16, [2 x i8], { i8, i8, %union.anon.181, [2 x i8], { %struct.anon.187 } } }, [44 x i8] } { { i16, [2 x i8], { i8, i8, %union.anon.181, [2 x i8], { %struct.anon.187 } } } { i16 4103, [2 x i8] undef, { i8, i8, %union.anon.181, [2 x i8], { %struct.anon.187 } } { i8 6, i8 0, %union.anon.181 zeroinitializer, [2 x i8] undef, { %struct.anon.187 } { %struct.anon.187 { i16 4097, i16 1, i16 1, i8 0 } } } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4104, %struct.uverbs_attr_spec { i8 1, i8 64, %union.anon.181 { %struct.anon.182 { i16 -1, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4105, %struct.uverbs_attr_spec { i8 1, i8 0, %union.anon.181 { %struct.anon.182 { i16 8, i16 4 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_DESTROY_FLOW = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.compoundliteral.21], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 9, i8 3 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_object_methods_UVERBS_OBJECT_FLOW_ACTION2658 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER, ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT], [24 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4096, i32 0, i32 3, ptr @_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER, ptr @mlx5_ib_handler_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER }, [44 x i8] zeroinitializer }, align 32
@mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT = internal constant { %struct.uverbs_method_def, [44 x i8] } { %struct.uverbs_method_def { i16 4097, i32 0, i32 4, ptr @_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT, ptr @mlx5_ib_handler_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 13, i8 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 96, %union.anon.181 { %struct.anon.182 { i16 -1, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal constant { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } }, [44 x i8] } { { i16, { i8, i8, { %struct.anon.183 }, %union.anon.185 } } { i16 4096, { i8, i8, { %struct.anon.183 }, %union.anon.185 } { i8 3, i8 32, { %struct.anon.183 } { %struct.anon.183 { i16 13, i8 2 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4099, %struct.uverbs_attr_spec { i8 1, i8 64, %union.anon.181 { %struct.anon.182 { i16 -1, i16 1 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4097, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal constant { %struct.uverbs_attr_def, [44 x i8] } { %struct.uverbs_attr_def { i16 4098, %struct.uverbs_attr_spec { i8 1, i8 32, %union.anon.181 { %struct.anon.182 { i16 8, i16 8 } }, %union.anon.185 zeroinitializer } }, [44 x i8] zeroinitializer }, align 32
@_create_flow_rule._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.31, i32 1196, ptr @.str.32, ptr @.str.33 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s:%d:(pid %d): Flow tag %u and attribute type %x isn't allowed in leftovers\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_create_flow_rule\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/hw/mlx5/fs.c\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_create_flow_rule._entry_ptr = internal global ptr @_create_flow_rule._entry, section ".printk_index", align 4
@create_leftovers_rule.leftovers_specs = internal global { [2 x %struct.anon.218], [40 x i8] } { [2 x %struct.anon.218] [%struct.anon.218 { %struct.ib_flow_attr { i32 0, i16 60, i16 0, i32 0, i8 1, i32 0, [0 x %union.ib_flow_spec] zeroinitializer }, %struct.ib_flow_spec_eth { i32 32, i16 40, %struct.ib_flow_eth_filter { [6 x i8] c"\01\00\00\00\00\00", [6 x i8] zeroinitializer, i16 0, i16 0, [0 x i8] zeroinitializer }, %struct.ib_flow_eth_filter { [6 x i8] c"\01\00\00\00\00\00", [6 x i8] zeroinitializer, i16 0, i16 0, [0 x i8] zeroinitializer } } }, %struct.anon.218 { %struct.ib_flow_attr { i32 0, i16 60, i16 0, i32 0, i8 1, i32 0, [0 x %union.ib_flow_spec] zeroinitializer }, %struct.ib_flow_spec_eth { i32 32, i16 40, %struct.ib_flow_eth_filter zeroinitializer, %struct.ib_flow_eth_filter { [6 x i8] c"\01\00\00\00\00\00", [6 x i8] zeroinitializer, i16 0, i16 0, [0 x i8] zeroinitializer } } }], [40 x i8] zeroinitializer }, align 32
@create_sniffer_rule.flow_attr = internal constant { %struct.ib_flow_attr, [44 x i8] } { %struct.ib_flow_attr { i32 3, i16 20, i16 0, i32 0, i8 0, i32 0, [0 x %union.ib_flow_spec] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_MATCHER_CREATE = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 13, i32 7, i32 15, i32 17], [44 x i8] zeroinitializer }, align 32
@switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\0D\07\0F\11", [27 x i8] zeroinitializer }, align 32
@switch.table.mlx5_ib_flow_action_create_packet_reformat_ctx = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 13, i32 7, i32 15, i32 17], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 16, i64 2306, i64 2353]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 15]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 17]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 7, i64 13, i64 15, i64 17]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 7, i64 13, i64 15, i64 17]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 153]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 48]
@__sancov_gen_cov_switch_values.50 = internal global [15 x i64] [i64 13, i64 32, i64 32, i64 48, i64 49, i64 52, i64 64, i64 65, i64 80, i64 81, i64 96, i64 4096, i64 4097, i64 4098, i64 4099]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 65, i64 81]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 48]
@___asan_gen_.55 = private unnamed_addr constant [43 x i8] c"mlx5_ib_object_MLX5_IB_OBJECT_FLOW_MATCHER\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"mlx5_ib_fs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [21 x i8] c"mlx5_ib_flow_actions\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"mlx5_ib_flow_defs\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2695, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2724, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"flow_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2706, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"flow_ipsec_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2712, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [48 x i8] c"_object_methods_MLX5_IB_OBJECT_FLOW_MATCHER2693\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2690, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [50 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_CREATE\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [51 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [49 x i8] c"_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_CREATE\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2660, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"mlx5_ib_flow_type\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1955, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 230, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 214, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 156, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [50 x i8] c"_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2683, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [39 x i8] c"_object_methods_UVERBS_OBJECT_FLOW2620\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2617, i32 1 }
@___asan_gen_.117 = private unnamed_addr constant [42 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_CREATE_FLOW\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [43 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_DESTROY_FLOW\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [41 x i8] c"_method_attrs_MLX5_IB_METHOD_CREATE_FLOW\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2569, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [42 x i8] c"_method_attrs_MLX5_IB_METHOD_DESTROY_FLOW\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2610, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [46 x i8] c"_object_methods_UVERBS_OBJECT_FLOW_ACTION2658\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2654, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant [63 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [65 x i8] c"mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [62 x i8] c"_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2622, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [64 x i8] c"_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 2637, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1195, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [16 x i8] c"leftovers_specs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1247, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [10 x i8] c"flow_attr\00", align 1
@___asan_gen_.184 = private constant [35 x i8] c"../drivers/infiniband/hw/mlx5/fs.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 1303, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant [64 x i8] c"switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_MATCHER_CREATE\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [77 x i8] c"switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [60 x i8] c"switch.table.mlx5_ib_flow_action_create_packet_reformat_ctx\00", align 1
@llvm.compiler.used = appending global [65 x ptr] [ptr @_create_flow_rule._entry, ptr @_create_flow_rule._entry_ptr, ptr @mlx5_ib_object_MLX5_IB_OBJECT_FLOW_MATCHER, ptr @mlx5_ib_fs, ptr @mlx5_ib_flow_actions, ptr @mlx5_ib_flow_defs, ptr @mlx5_ib_fs_init.__key, ptr @.str, ptr @flow_ops, ptr @flow_ipsec_ops, ptr @.compoundliteral, ptr @_object_methods_MLX5_IB_OBJECT_FLOW_MATCHER2693, ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_CREATE, ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY, ptr @_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_CREATE, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @mlx5_ib_flow_type, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY, ptr @.compoundliteral.10, ptr @_object_methods_UVERBS_OBJECT_FLOW2620, ptr @mlx5_ib_method_MLX5_IB_METHOD_CREATE_FLOW, ptr @mlx5_ib_method_MLX5_IB_METHOD_DESTROY_FLOW, ptr @_method_attrs_MLX5_IB_METHOD_CREATE_FLOW, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @_method_attrs_MLX5_IB_METHOD_DESTROY_FLOW, ptr @.compoundliteral.21, ptr @_object_methods_UVERBS_OBJECT_FLOW_ACTION2658, ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER, ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT, ptr @_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @create_leftovers_rule.leftovers_specs, ptr @create_sniffer_rule.flow_attr, ptr @switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_MATCHER_CREATE, ptr @switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER, ptr @switch.table.mlx5_ib_flow_action_create_packet_reformat_ctx], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_object_MLX5_IB_OBJECT_FLOW_MATCHER to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_fs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_flow_actions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_flow_defs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_fs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_ipsec_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_MLX5_IB_OBJECT_FLOW_MATCHER2693 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_CREATE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_CREATE to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_flow_type to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_FLOW2620 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_CREATE_FLOW to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_DESTROY_FLOW to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_CREATE_FLOW to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_DESTROY_FLOW to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_object_methods_UVERBS_OBJECT_FLOW_ACTION2658 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_create_flow_rule._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_leftovers_rule.leftovers_specs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sniffer_rule.flow_attr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_MATCHER_CREATE to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5_ib_flow_action_create_packet_reformat_ctx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @parse_flow_flow_action(ptr nocapture noundef readonly %maction, i1 noundef zeroext %is_egress, ptr nocapture noundef %action) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ib_flow_action, ptr %maction, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb4
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %action, align 4
  %and = and i32 %4, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %ctx = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %maction, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 8
  %7 = ptrtoint ptr %6 to i32
  %8 = getelementptr inbounds %struct.mlx5_flow_act, ptr %action, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 4
  %cond = select i1 %is_egress, i32 131072, i32 262144
  %or = or i32 %4, %cond
  %10 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %action, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  %11 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %maction, i32 0, i32 1
  %sub_type = getelementptr inbounds %struct.anon.202, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sub_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sub_type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %13, label %sw.bb4.return_crit_edge [
    i32 0, label %if.then5
    i32 2, label %if.then16
    i32 1, label %if.then27
  ]

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then5:                                         ; preds = %sw.bb4
  %15 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %action, align 4
  %and7 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then5.return_crit_edge

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end10:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %or12 = or i32 %16, 64
  %17 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or12, ptr %action, align 4
  %18 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %maction, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %modify_hdr = getelementptr inbounds %struct.mlx5_flow_act, ptr %action, i32 0, i32 1
  %21 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %modify_hdr, align 4
  br label %return

if.then16:                                        ; preds = %sw.bb4
  %22 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %action, align 4
  %and18 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then16.return_crit_edge

if.then16.return_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end21:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %or23 = or i32 %23, 32
  %24 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or23, ptr %action, align 4
  br label %return

if.then27:                                        ; preds = %sw.bb4
  %25 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %action, align 4
  %and29 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %if.then27.return_crit_edge

if.then27.return_crit_edge:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end32:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %or34 = or i32 %26, 16
  %27 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or34, ptr %action, align 4
  %28 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %maction, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 8
  %pkt_reformat = getelementptr inbounds %struct.mlx5_flow_act, ptr %action, i32 0, i32 2
  %31 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %pkt_reformat, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then27.return_crit_edge, %if.end21, %if.then16.return_crit_edge, %if.end10, %if.then5.return_crit_edge, %sw.bb4.return_crit_edge, %if.end, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %if.end21 ], [ 0, %if.end32 ], [ 0, %if.end ], [ -22, %sw.bb.return_crit_edge ], [ -22, %if.then5.return_crit_edge ], [ -22, %if.then16.return_crit_edge ], [ -22, %if.then27.return_crit_edge ], [ -95, %sw.bb4.return_crit_edge ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_fs_add_op_fc(ptr nocapture noundef readonly %dev, i32 noundef %port_num, ptr nocapture noundef %opfc, i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  %dst = alloca %struct.mlx5_flow_destination, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #11
  %0 = call ptr @memset(ptr %flow_act, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dst) #11
  %1 = call ptr @memset(ptr %dst, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2080) #14
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %type, label %if.end.cleanup.sink.split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb17
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end
  %call1 = tail call fastcc i32 @set_ecn_ce_spec(ptr noundef %dev, i32 noundef %port_num, ptr noundef nonnull %call7.i.i.i, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %sw.bb
  %arrayidx3 = getelementptr %struct.mlx5_flow_spec, ptr %call7.i.i.i, i32 1
  %call4 = tail call fastcc i32 @set_ecn_ce_spec(ptr noundef %dev, i32 noundef %port_num, ptr noundef %arrayidx3, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %arrayidx9 = getelementptr %struct.mlx5_core_dev, ptr %5, i32 0, i32 8, i32 0, i32 7
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 168
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %10 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %sw.bb8.cleanup.sink.split_crit_edge, label %lor.lhs.false11

sw.bb8.cleanup.sink.split_crit_edge:              ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false11:                                  ; preds = %sw.bb8
  %call13 = tail call fastcc i32 @set_cnp_spec(ptr noundef %dev, i32 noundef %port_num, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false11.sw.epilog_crit_edge, label %lor.lhs.false11.cleanup.sink.split_crit_edge

lor.lhs.false11.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false11.sw.epilog_crit_edge:              ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %mdev18 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %mdev18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev18, align 8
  %arrayidx21 = getelementptr %struct.mlx5_core_dev, ptr %12, i32 0, i32 8, i32 0, i32 7
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx21, align 4
  %add.ptr24 = getelementptr i32, ptr %14, i32 192
  %15 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr24, align 4
  %17 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool27.not = icmp eq i32 %17, 0
  br i1 %tobool27.not, label %sw.bb17.cleanup.sink.split_crit_edge, label %lor.lhs.false28

sw.bb17.cleanup.sink.split_crit_edge:             ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false28:                                  ; preds = %sw.bb17
  %call30 = tail call fastcc i32 @set_cnp_spec(ptr noundef %dev, i32 noundef %port_num, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %lor.lhs.false28.sw.epilog_crit_edge, label %lor.lhs.false28.cleanup.sink.split_crit_edge

lor.lhs.false28.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false28.sw.epilog_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false28.sw.epilog_crit_edge, %lor.lhs.false11.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge
  %fn_type.0 = phi i32 [ 19, %lor.lhs.false.sw.epilog_crit_edge ], [ 19, %lor.lhs.false11.sw.epilog_crit_edge ], [ 20, %lor.lhs.false28.sw.epilog_crit_edge ]
  %priority.0 = phi i32 [ 0, %lor.lhs.false.sw.epilog_crit_edge ], [ 1, %lor.lhs.false11.sw.epilog_crit_edge ], [ 0, %lor.lhs.false28.sw.epilog_crit_edge ]
  %exitcond.not = phi i1 [ false, %lor.lhs.false.sw.epilog_crit_edge ], [ true, %lor.lhs.false11.sw.epilog_crit_edge ], [ true, %lor.lhs.false28.sw.epilog_crit_edge ]
  %spec_num.0 = phi i32 [ 2, %lor.lhs.false.sw.epilog_crit_edge ], [ 1, %lor.lhs.false11.sw.epilog_crit_edge ], [ 1, %lor.lhs.false28.sw.epilog_crit_edge ]
  %mdev34 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %mdev34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev34, align 8
  %call35 = tail call ptr @mlx5_get_flow_namespace(ptr noundef %19, i32 noundef %fn_type.0) #11
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %sw.epilog.cleanup.sink.split_crit_edge, label %if.end38

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end38:                                         ; preds = %sw.epilog
  %flow_db = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %flow_db to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flow_db, align 8
  %arrayidx39 = getelementptr %struct.mlx5_ib_flow_db, ptr %21, i32 0, i32 7, i32 %type
  %22 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %23, null
  br i1 %tobool40.not, label %if.then41, label %if.end38.if.end47_crit_edge

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then41:                                        ; preds = %if.end38
  %num_ports = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 3
  %24 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ports, align 8
  %mul = shl i32 %25, 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #11
  %26 = getelementptr inbounds i8, ptr %ft_attr.i, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 20)
  %28 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %priority.0, ptr %ft_attr.i, align 4
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %29 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul, ptr %max_fte.i, align 4
  %autogroup.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 5
  %30 = ptrtoint ptr %autogroup.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %autogroup.i, align 4
  %call.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %call35, ptr noundef nonnull %ft_attr.i) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then41._get_prio.exit_crit_edge, label %if.end.i

if.then41._get_prio.exit_crit_edge:               ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_prio.exit

if.end.i:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %arrayidx39, align 4
  %refcount.i = getelementptr %struct.mlx5_ib_flow_db, ptr %21, i32 0, i32 7, i32 %type, i32 1
  %32 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %refcount.i, align 4
  br label %_get_prio.exit

_get_prio.exit:                                   ; preds = %if.end.i, %if.then41._get_prio.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx39, %if.end.i ], [ %call.i, %if.then41._get_prio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #11
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then44, label %_get_prio.exit.if.end47_crit_edge

_get_prio.exit.if.end47_crit_edge:                ; preds = %_get_prio.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then44:                                        ; preds = %_get_prio.exit
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup.sink.split

if.end47:                                         ; preds = %_get_prio.exit.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %prio.0 = phi ptr [ %arrayidx39, %if.end38.if.end47_crit_edge ], [ %retval.0.i, %_get_prio.exit.if.end47_crit_edge ]
  %34 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %dst, align 4
  %35 = ptrtoint ptr %opfc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %opfc, align 4
  %call49 = call i32 @mlx5_fc_id(ptr noundef %36) #11
  %37 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dst, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call49, ptr %37, align 4
  %39 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 9, ptr %flow_act, align 4
  %40 = ptrtoint ptr %prio.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prio.0, align 4
  %call52 = call ptr @mlx5_add_flow_rules(ptr noundef %41, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %flow_act, ptr noundef nonnull %dst, i32 noundef 1) #11
  %arrayidx53 = getelementptr %struct.mlx5_ib_op_fc, ptr %opfc, i32 0, i32 1, i32 0
  %42 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call52, ptr %arrayidx53, align 4
  %cmp.i119 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.end47.if.then57_crit_edge, label %for.inc

if.end47.if.then57_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

if.then57:                                        ; preds = %for.body.1.if.then57_crit_edge, %if.end47.if.then57_crit_edge
  %call52.lcssa = phi ptr [ %call52, %if.end47.if.then57_crit_edge ], [ %call52.1, %for.body.1.if.then57_crit_edge ]
  %43 = ptrtoint ptr %call52.lcssa to i32
  br i1 %cmp.i119, label %if.then57.for.end68_crit_edge, label %for.body64

if.then57.for.end68_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end68

for.inc:                                          ; preds = %if.end47
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %44 = ptrtoint ptr %prio.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prio.0, align 4
  %arrayidx51.1 = getelementptr %struct.mlx5_flow_spec, ptr %call7.i.i.i, i32 1
  %call52.1 = call ptr @mlx5_add_flow_rules(ptr noundef %45, ptr noundef %arrayidx51.1, ptr noundef nonnull %flow_act, ptr noundef nonnull %dst, i32 noundef 1) #11
  %arrayidx53.1 = getelementptr %struct.mlx5_ib_op_fc, ptr %opfc, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call52.1, ptr %arrayidx53.1, align 4
  %cmp.i119.1 = icmp ugt ptr %call52.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119.1, label %for.body.1.if.then57_crit_edge, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.1.if.then57_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then57

for.end:                                          ; preds = %for.body.1.for.end_crit_edge, %for.inc.for.end_crit_edge
  %refcount = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %prio.0, i32 0, i32 1
  %47 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %refcount, align 4
  %add = add i32 %48, %spec_num.0
  store i32 %add, ptr %refcount, align 4
  br label %cleanup.sink.split

for.body64:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #13
  %rule.le = getelementptr inbounds %struct.mlx5_ib_op_fc, ptr %opfc, i32 0, i32 1
  %49 = ptrtoint ptr %rule.le to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rule.le, align 4
  call void @mlx5_del_flow_rules(ptr noundef %50) #11
  br label %for.end68

for.end68:                                        ; preds = %for.body64, %if.then57.for.end68_crit_edge
  %refcount.i120 = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %prio.0, i32 0, i32 1
  %51 = ptrtoint ptr %refcount.i120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %refcount.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool3.not.i = icmp eq i32 %52, 0
  br i1 %tobool3.not.i, label %if.then.i, label %for.end68.cleanup.sink.split_crit_edge

for.end68.cleanup.sink.split_crit_edge:           ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %prio.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prio.0, align 4
  %call.i121 = call i32 @mlx5_destroy_flow_table(ptr noundef %54) #11
  %55 = ptrtoint ptr %prio.0 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %prio.0, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %for.end68.cleanup.sink.split_crit_edge, %for.end, %if.then44, %sw.epilog.cleanup.sink.split_crit_edge, %lor.lhs.false28.cleanup.sink.split_crit_edge, %sw.bb17.cleanup.sink.split_crit_edge, %lor.lhs.false11.cleanup.sink.split_crit_edge, %sw.bb8.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %sw.bb.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %for.end ], [ %33, %if.then44 ], [ -95, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -95, %sw.bb.cleanup.sink.split_crit_edge ], [ -95, %lor.lhs.false11.cleanup.sink.split_crit_edge ], [ -95, %sw.bb8.cleanup.sink.split_crit_edge ], [ -95, %lor.lhs.false28.cleanup.sink.split_crit_edge ], [ -95, %sw.bb17.cleanup.sink.split_crit_edge ], [ -95, %if.end.cleanup.sink.split_crit_edge ], [ -95, %sw.epilog.cleanup.sink.split_crit_edge ], [ %43, %for.end68.cleanup.sink.split_crit_edge ], [ %43, %if.then.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dst) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_ecn_ce_spec(ptr nocapture noundef readonly %dev, i32 noundef %port_num, ptr noundef %spec, i32 noundef %ipv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 40
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %8, i32 48
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %11 = and i32 %10, -16712192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %12 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %land.lhs.true.return_crit_edge, label %lor.lhs.false.i

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %add.ptr7.i = getelementptr i32, ptr %3, i32 88
  %13 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr7.i, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not.i = icmp eq i32 %15, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i.return_crit_edge, label %set_vhca_port_spec.exit

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

set_vhca_port_spec.exit:                          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr12.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 16
  %16 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr12.i, align 4
  %or.i = or i32 %17, 251658240
  store i32 %or.i, ptr %add.ptr12.i, align 4
  %add.ptr20.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 16
  %18 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr20.i, align 4
  %and21.i = and i32 %19, -251658241
  %and22.i = shl i32 %port_num, 24
  %shl.i = and i32 %and22.i, 251658240
  %or23.i = or i32 %and21.i, %shl.i
  store i32 %or23.i, ptr %add.ptr20.i, align 4
  br label %do.end

do.end:                                           ; preds = %set_vhca_port_spec.exit, %if.end.do.end_crit_edge
  %match_criteria = getelementptr inbounds %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1
  %add.ptr9 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr9, align 4
  %add.ptr19 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr19, align 4
  %or36 = or i32 %21, 204288
  store i32 %or36, ptr %add.ptr9, align 4
  %or22 = and i32 %23, -204289
  %and51 = shl i32 %ipv, 9
  %shl52 = and i32 %and51, 7680
  %and50 = or i32 %or22, %shl52
  %or53 = or i32 %and50, 196608
  store i32 %or53, ptr %add.ptr19, align 4
  %call.i = tail call ptr @memchr_inv(ptr noundef %match_criteria, i32 noundef 0, i32 noundef 64) #11
  %tobool.i = icmp ne ptr %call.i, null
  %add.ptr2.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 16
  %call3.i = tail call ptr @memchr_inv(ptr noundef %add.ptr2.i, i32 noundef 0, i32 noundef 64) #11
  %tobool4.not.i = icmp eq ptr %call3.i, null
  %shl9.i = select i1 %tobool4.not.i, i8 0, i8 2
  %conv10.i = zext i1 %tobool.i to i8
  %or.i74 = or i8 %shl9.i, %conv10.i
  %add.ptr12.i75 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 32
  %call13.i = tail call ptr @memchr_inv(ptr noundef %add.ptr12.i75, i32 noundef 0, i32 noundef 64) #11
  %tobool14.not.i = icmp eq ptr %call13.i, null
  %shl19.i = select i1 %tobool14.not.i, i8 0, i8 4
  %or21.i = or i8 %or.i74, %shl19.i
  %add.ptr23.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 48
  %call24.i = tail call ptr @memchr_inv(ptr noundef %add.ptr23.i, i32 noundef 0, i32 noundef 64) #11
  %tobool25.not.i = icmp eq ptr %call24.i, null
  %shl30.i = select i1 %tobool25.not.i, i8 0, i8 8
  %or32.i = or i8 %or21.i, %shl30.i
  %24 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %or32.i, ptr %spec, align 4
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.i.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -95, %entry.return_crit_edge ], [ -95, %lor.lhs.false.i.return_crit_edge ], [ -95, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_cnp_spec(ptr nocapture noundef readonly %dev, i32 noundef %port_num, ptr noundef %spec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 48
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = and i32 %5, -16712192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 7
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i32, ptr %8, i32 40
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true.return_crit_edge, label %lor.lhs.false.i

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %add.ptr7.i = getelementptr i32, ptr %8, i32 88
  %12 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr7.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not.i = icmp eq i32 %14, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i.return_crit_edge, label %set_vhca_port_spec.exit

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

set_vhca_port_spec.exit:                          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr12.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 16
  %15 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr12.i, align 4
  %or.i = or i32 %16, 251658240
  store i32 %or.i, ptr %add.ptr12.i, align 4
  %add.ptr20.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 16
  %17 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr20.i, align 4
  %and21.i = and i32 %18, -251658241
  %and22.i = shl i32 %port_num, 24
  %shl.i = and i32 %and22.i, 251658240
  %or23.i = or i32 %and21.i, %shl.i
  store i32 %or23.i, ptr %add.ptr20.i, align 4
  br label %do.end

do.end:                                           ; preds = %set_vhca_port_spec.exit, %entry.do.end_crit_edge
  %match_criteria = getelementptr inbounds %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1
  %add.ptr = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 21
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  %or = or i32 %20, 255
  store i32 %or, ptr %add.ptr, align 4
  %add.ptr12 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 21
  %21 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr12, align 4
  %and13 = and i32 %22, -256
  %or15 = or i32 %and13, 129
  store i32 %or15, ptr %add.ptr12, align 4
  %call.i = tail call ptr @memchr_inv(ptr noundef %match_criteria, i32 noundef 0, i32 noundef 64) #11
  %tobool.i = icmp ne ptr %call.i, null
  %add.ptr2.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 16
  %call3.i = tail call ptr @memchr_inv(ptr noundef %add.ptr2.i, i32 noundef 0, i32 noundef 64) #11
  %tobool4.not.i = icmp eq ptr %call3.i, null
  %shl9.i = select i1 %tobool4.not.i, i8 0, i8 2
  %conv10.i = zext i1 %tobool.i to i8
  %or.i31 = or i8 %shl9.i, %conv10.i
  %add.ptr12.i32 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 32
  %call13.i = tail call ptr @memchr_inv(ptr noundef %add.ptr12.i32, i32 noundef 0, i32 noundef 64) #11
  %tobool14.not.i = icmp eq ptr %call13.i, null
  %shl19.i = select i1 %tobool14.not.i, i8 0, i8 4
  %or21.i = or i8 %or.i31, %shl19.i
  %add.ptr23.i = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 48
  %call24.i = tail call ptr @memchr_inv(ptr noundef %add.ptr23.i, i32 noundef 0, i32 noundef 64) #11
  %tobool25.not.i = icmp eq ptr %call24.i, null
  %shl30.i = select i1 %tobool25.not.i, i8 0, i8 8
  %or32.i = or i8 %or21.i, %shl30.i
  %23 = ptrtoint ptr %spec to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or32.i, ptr %spec, align 4
  br label %return

return:                                           ; preds = %do.end, %lor.lhs.false.i.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -95, %lor.lhs.false.i.return_crit_edge ], [ -95, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_fc_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_ib_fs_remove_op_fc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %opfc, i32 noundef %type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_db = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 19
  %arrayidx = getelementptr %struct.mlx5_ib_op_fc, ptr %opfc, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %entry
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %flow_db to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flow_db, align 8
  %refcount.i = getelementptr %struct.mlx5_ib_flow_db, ptr %3, i32 0, i32 7, i32 %type, i32 1
  %4 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcount.i, align 4
  %sub.i = add i32 %5, -1
  store i32 %sub.i, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool3.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool3.not.i, label %if.then.i, label %for.body.put_flow_table.exit_crit_edge

for.body.put_flow_table.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_flow_table.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3 = getelementptr %struct.mlx5_ib_flow_db, ptr %3, i32 0, i32 7, i32 %type
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %7) #11
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx3, align 4
  br label %put_flow_table.exit

put_flow_table.exit:                              ; preds = %if.then.i, %for.body.put_flow_table.exit_crit_edge
  %arrayidx.1 = getelementptr %struct.mlx5_ib_op_fc, ptr %opfc, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %put_flow_table.exit.for.end_crit_edge, label %for.body.1

put_flow_table.exit.for.end_crit_edge:            ; preds = %put_flow_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.1:                                       ; preds = %put_flow_table.exit
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %10) #11
  %11 = ptrtoint ptr %flow_db to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %flow_db, align 8
  %refcount.i.1 = getelementptr %struct.mlx5_ib_flow_db, ptr %12, i32 0, i32 7, i32 %type, i32 1
  %13 = ptrtoint ptr %refcount.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %refcount.i.1, align 4
  %sub.i.1 = add i32 %14, -1
  store i32 %sub.i.1, ptr %refcount.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.1)
  %tobool3.not.i.1 = icmp eq i32 %sub.i.1, 0
  br i1 %tobool3.not.i.1, label %if.then.i.1, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then.i.1:                                      ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx3.1 = getelementptr %struct.mlx5_ib_flow_db, ptr %12, i32 0, i32 7, i32 %type
  %15 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3.1, align 4
  %call.i.1 = tail call i32 @mlx5_destroy_flow_table(ptr noundef %16) #11
  %17 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx3.1, align 4
  br label %for.end

for.end:                                          ; preds = %if.then.i.1, %for.body.1.for.end_crit_edge, %put_flow_table.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_ib_fs_init(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1360) #14
  %flow_db = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %flow_db to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %flow_db, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.mlx5_ib_flow_db, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_ib_fs_init.__key) #11
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull @flow_ops) #11
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %call3 = tail call i32 @mlx5_accel_ipsec_device_caps(ptr noundef %3) #11
  %and = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body.return_crit_edge, label %if.then5

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ib_set_device_ops(ptr noundef %dev, ptr noundef nonnull @flow_ipsec_ops) #11
  br label %return

return:                                           ; preds = %if.then5, %do.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %entry.return_crit_edge ], [ 0, %if.then5 ], [ 0, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_device_ops(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_accel_ipsec_device_caps(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flow_matcher_cleanup(ptr nocapture noundef readonly %uobject, i32 noundef %why, ptr nocapture noundef readnone %attrs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobject, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  %usecnt = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usecnt, i32 noundef 4) #11
  %2 = ptrtoint ptr %usecnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usecnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_FLOW_MATCHER_CREATE(ptr noundef %attrs) #1 align 64 {
entry:
  %flags.i = alloca i32, align 4
  %_val.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %uverbs_attr_get.exit.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get.exit.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %arrayidx.i.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not.i = icmp eq ptr %attrs, null
  br i1 %tobool.not.i, label %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge, label %cond.true.i

uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge: ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_udata_to_mdev.exit

cond.true.i:                                      ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %5 = ptrtoint ptr %context1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context1.i, align 4
  br label %mlx5_udata_to_mdev.exit

mlx5_udata_to_mdev.exit:                          ; preds = %cond.true.i, %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge
  %cond.i = phi ptr [ %6, %cond.true.i ], [ null, %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge ]
  %7 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cond.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 668) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %mlx5_udata_to_mdev.exit.cleanup_crit_edge, label %if.end

mlx5_udata_to_mdev.exit.cleanup_crit_edge:        ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mlx5_udata_to_mdev.exit
  %10 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %12 = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i60 = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i60, label %if.end.if.then.i_crit_edge, label %if.end.i.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.end
  %arrayidx.i.i61 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i62 = icmp ugt ptr %arrayidx.i.i61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i62, label %if.end.i.i.if.then.i_crit_edge, label %if.end.i64

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %retval.0.i7.i = phi ptr [ %arrayidx.i.i61, %if.end.i.i.if.then.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.if.then.i_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i7.i to i32
  br label %uverbs_attr_get_len.exit

if.end.i64:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len.i, align 8
  %conv.i = zext i16 %15 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i64, %if.then.i
  %retval.0.i65 = phi i32 [ %13, %if.then.i ], [ %conv.i, %if.end.i64 ]
  %mask_len = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %mask_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i65, ptr %mask_len, align 8
  %call4 = tail call fastcc i32 @_uverbs_copy_from(ptr noundef nonnull %call7.i.i, ptr noundef %attrs, i32 noundef 4097, i32 noundef 640)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %uverbs_attr_get_len.exit.end_crit_edge

uverbs_attr_get_len.exit.end_crit_edge:           ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end7:                                          ; preds = %uverbs_attr_get_len.exit
  %17 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %19 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i67 = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i67, label %if.end7.if.then.i71_crit_edge, label %uverbs_attr_get.exit.i70

if.end7.if.then.i71_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i71

uverbs_attr_get.exit.i70:                         ; preds = %if.end7
  %arrayidx.i.i68 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 5
  %cmp.i.i69 = icmp ugt ptr %arrayidx.i.i68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i69, label %uverbs_attr_get.exit.i70.if.then.i71_crit_edge, label %if.end.i73

uverbs_attr_get.exit.i70.if.then.i71_crit_edge:   ; preds = %uverbs_attr_get.exit.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i71

if.then.i71:                                      ; preds = %uverbs_attr_get.exit.i70.if.then.i71_crit_edge, %if.end7.if.then.i71_crit_edge
  %retval.0.i3.i = phi ptr [ %arrayidx.i.i68, %uverbs_attr_get.exit.i70.if.then.i71_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end7.if.then.i71_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i3.i to i32
  br label %uverbs_attr_get_enum_id.exit

if.end.i73:                                       ; preds = %uverbs_attr_get.exit.i70
  call void @__sanitizer_cov_trace_pc() #13
  %enum_id.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2, i32 3
  %21 = ptrtoint ptr %enum_id.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enum_id.i, align 4
  %conv.i72 = zext i8 %22 to i32
  br label %uverbs_attr_get_enum_id.exit

uverbs_attr_get_enum_id.exit:                     ; preds = %if.end.i73, %if.then.i71
  %retval.0.i74 = phi i32 [ %20, %if.then.i71 ], [ %conv.i72, %if.end.i73 ]
  %flow_type = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %flow_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i74, ptr %flow_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i74)
  %cmp = icmp eq i32 %retval.0.i74, 0
  br i1 %cmp, label %if.then10, label %uverbs_attr_get_enum_id.exit.if.end15_crit_edge

uverbs_attr_get_enum_id.exit.if.end15_crit_edge:  ; preds = %uverbs_attr_get_enum_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then10:                                        ; preds = %uverbs_attr_get_enum_id.exit
  %priority = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 4
  %call11 = tail call fastcc i32 @_uverbs_copy_from(ptr noundef %priority, ptr noundef %attrs, i32 noundef 4098, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.end_crit_edge

if.then10.end_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %uverbs_attr_get_enum_id.exit.if.end15_crit_edge
  %match_criteria_enable = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 7
  %call16 = tail call fastcc i32 @_uverbs_copy_from(ptr noundef %match_criteria_enable, ptr noundef %attrs, i32 noundef 4099, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.end_crit_edge

if.end15.end_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

if.end19:                                         ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i) #11
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %flags.i, align 4, !annotation !67
  %25 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %27 = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i, label %if.end19.if.end.i75_crit_edge, label %land.lhs.true.i

if.end19.if.end.i75_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i75

land.lhs.true.i:                                  ; preds = %if.end19
  %28 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %30 = and i32 %29, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i40.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i40.not.i, label %land.lhs.true.i.if.end.i75_crit_edge, label %land.lhs.true.i.mlx5_ib_matcher_ns.exit.thread_crit_edge

land.lhs.true.i.mlx5_ib_matcher_ns.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_ib_matcher_ns.exit.thread

land.lhs.true.i.if.end.i75_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i75

if.end.i75:                                       ; preds = %land.lhs.true.i.if.end.i75_crit_edge, %if.end19.if.end.i75_crit_edge
  %31 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %33 = and i32 %32, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i42.not.i = icmp eq i32 %33, 0
  br i1 %tobool.i42.not.i, label %if.end11.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val.i) #11
  %34 = ptrtoint ptr %_val.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %_val.i, align 8, !annotation !67
  %call4.i = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val.i, ptr noundef %attrs, i32 noundef 4101, i64 noundef 4294967295, ptr noundef null) #11
  %35 = ptrtoint ptr %_val.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %_val.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i76 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i76, label %if.end6.i, label %if.then3.i.mlx5_ib_matcher_ns.exit.thread_crit_edge

if.then3.i.mlx5_ib_matcher_ns.exit.thread_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_ib_matcher_ns.exit.thread

if.end6.i:                                        ; preds = %if.then3.i
  %conv.i77 = trunc i64 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv.i77)
  %37 = icmp ult i32 %conv.i77, 5
  br i1 %37, label %switch.lookup, label %if.end6.i.mlx5_ib_matcher_ns.exit.thread_crit_edge

if.end6.i.mlx5_ib_matcher_ns.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_ib_matcher_ns.exit.thread

switch.lookup:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %ns_type.i = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 3
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_MATCHER_CREATE, i32 0, i32 %conv.i77
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %39 = ptrtoint ptr %ns_type.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %switch.load, ptr %ns_type.i, align 8
  br label %if.end23

if.end11.i:                                       ; preds = %if.end.i75
  %40 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %42 = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i44.not.i = icmp eq i32 %42, 0
  br i1 %tobool.i44.not.i, label %if.end11.i.if.end23.i_crit_edge, label %if.then13.i

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then13.i:                                      ; preds = %if.end11.i
  %call14.i = call i32 @uverbs_get_flags32(ptr noundef nonnull %flags.i, ptr noundef %attrs, i32 noundef 4100, i64 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then13.i.mlx5_ib_matcher_ns.exit.thread_crit_edge

if.then13.i.mlx5_ib_matcher_ns.exit.thread_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_ib_matcher_ns.exit.thread

if.end17.i:                                       ; preds = %if.then13.i
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool18.not.i = icmp eq i32 %44, 0
  br i1 %tobool18.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then19.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23.i

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %ns_type20.i = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %ns_type20.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 13, ptr %ns_type20.i, align 8
  br label %if.end23

if.end23.i:                                       ; preds = %if.end17.i.if.end23.i_crit_edge, %if.end11.i.if.end23.i_crit_edge
  %ns_type24.i = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %ns_type24.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %ns_type24.i, align 8
  br label %if.end23

mlx5_ib_matcher_ns.exit.thread:                   ; preds = %if.then13.i.mlx5_ib_matcher_ns.exit.thread_crit_edge, %if.end6.i.mlx5_ib_matcher_ns.exit.thread_crit_edge, %if.then3.i.mlx5_ib_matcher_ns.exit.thread_crit_edge, %land.lhs.true.i.mlx5_ib_matcher_ns.exit.thread_crit_edge
  %retval.0.i78.ph = phi i32 [ -22, %if.end6.i.mlx5_ib_matcher_ns.exit.thread_crit_edge ], [ %call14.i, %if.then13.i.mlx5_ib_matcher_ns.exit.thread_crit_edge ], [ %call4.i, %if.then3.i.mlx5_ib_matcher_ns.exit.thread_crit_edge ], [ -22, %land.lhs.true.i.mlx5_ib_matcher_ns.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  br label %end

if.end23:                                         ; preds = %if.end23.i, %if.then19.i, %switch.lookup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i) #11
  %ns_type = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ns_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %48)
  %cmp24 = icmp eq i32 %48, 7
  br i1 %cmp24, label %land.lhs.true, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end23
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %49 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mdev, align 8
  %call25 = call zeroext i8 @mlx5_eswitch_mode(ptr noundef %50) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call25)
  %cmp26.not = icmp eq i8 %call25, 2
  br i1 %cmp26.not, label %land.lhs.true.if.end29_crit_edge, label %land.lhs.true.end_crit_edge

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %end

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %object = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %51 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %object, align 8
  %mdev30 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %52 = ptrtoint ptr %mdev30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdev30, align 8
  %mdev31 = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %mdev31 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %mdev31, align 8
  %usecnt = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %call7.i.i, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #11
  %55 = ptrtoint ptr %usecnt to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 0, ptr %usecnt, align 4
  br label %cleanup

end:                                              ; preds = %land.lhs.true.end_crit_edge, %mlx5_ib_matcher_ns.exit.thread, %if.end15.end_crit_edge, %if.then10.end_crit_edge, %uverbs_attr_get_len.exit.end_crit_edge
  %err.0 = phi i32 [ %call4, %uverbs_attr_get_len.exit.end_crit_edge ], [ %call11, %if.then10.end_crit_edge ], [ %call16, %if.end15.end_crit_edge ], [ -22, %land.lhs.true.end_crit_edge ], [ %retval.0.i78.ph, %mlx5_ib_matcher_ns.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %end, %if.end29, %mlx5_udata_to_mdev.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ 0, %if.end29 ], [ -12, %mlx5_udata_to_mdev.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_uverbs_copy_from(ptr noundef %to, ptr noundef %attrs_bundle, i32 noundef %idx, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %and.i3.i.i = and i32 %idx, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i3.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.uverbs_attr_is_valid.exit.i_crit_edge, label %if.then.i.i.i31

entry.uverbs_attr_is_valid.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_is_valid.exit.i

if.then.i.i.i31:                                  ; preds = %entry
  %and1.i4.i.i = and i32 %idx, 61439
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and1.i4.i.i)
  %cmp.i.i.i = icmp ugt i32 %and1.i4.i.i, 30
  br i1 %cmp.i.i.i, label %if.then.i.i.i31.uverbs_attr_is_valid.exit.i_crit_edge, label %if.end8.i.i.i

if.then.i.i.i31.uverbs_attr_is_valid.exit.i_crit_edge: ; preds = %if.then.i.i.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_is_valid.exit.i

if.end8.i.i.i:                                    ; preds = %if.then.i.i.i31
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i.i = shl nuw nsw i32 %and1.i4.i.i, 1
  %phi.bo.i.i = or i32 %inc.i.i.i, 1
  br label %uverbs_attr_is_valid.exit.i

uverbs_attr_is_valid.exit.i:                      ; preds = %if.end8.i.i.i, %if.then.i.i.i31.uverbs_attr_is_valid.exit.i_crit_edge, %entry.uverbs_attr_is_valid.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %phi.bo.i.i, %if.end8.i.i.i ], [ -2, %if.then.i.i.i31.uverbs_attr_is_valid.exit.i_crit_edge ], [ -2, %entry.uverbs_attr_is_valid.exit.i_crit_edge ]
  %attr_present.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs_bundle, i32 0, i32 5
  %div3.i.i.i = lshr i32 %retval.0.i.i.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr %attr_present.i.i, i32 %div3.i.i.i
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %retval.0.i.i.i, 31
  %2 = shl nuw i32 1, %and.i.i.i
  %3 = and i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %uverbs_attr_is_valid.exit.i.if.then_crit_edge, label %if.end.i

uverbs_attr_is_valid.exit.i.if.then_crit_edge:    ; preds = %uverbs_attr_is_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %uverbs_attr_is_valid.exit.i
  br i1 %tobool.not.i.i.i, label %if.end.i.uverbs_attr_get.exit_crit_edge, label %if.then.i.i33

if.end.i.uverbs_attr_get.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get.exit

if.then.i.i33:                                    ; preds = %if.end.i
  %and1.i.i = and i32 %idx, 61439
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and1.i.i)
  %cmp.i.i32 = icmp ugt i32 %and1.i.i, 30
  br i1 %cmp.i.i32, label %if.then.i.i33.uverbs_attr_get.exit_crit_edge, label %if.end8.i.i

if.then.i.i33.uverbs_attr_get.exit_crit_edge:     ; preds = %if.then.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get.exit

if.end8.i.i:                                      ; preds = %if.then.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i.i = shl nuw nsw i32 %and1.i.i, 1
  %phi.bo.i = or i32 %inc.i.i, 1
  br label %uverbs_attr_get.exit

uverbs_attr_get.exit:                             ; preds = %if.end8.i.i, %if.then.i.i33.uverbs_attr_get.exit_crit_edge, %if.end.i.uverbs_attr_get.exit_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo.i, %if.end8.i.i ], [ -2, %if.then.i.i33.uverbs_attr_get.exit_crit_edge ], [ -2, %if.end.i.uverbs_attr_get.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs_bundle, i32 0, i32 6, i32 %retval.0.i.i
  %cmp.i = icmp ugt ptr %arrayidx.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %uverbs_attr_get.exit.if.then_crit_edge, label %if.end

uverbs_attr_get.exit.if.then_crit_edge:           ; preds = %uverbs_attr_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %uverbs_attr_get.exit.if.then_crit_edge, %uverbs_attr_is_valid.exit.i.if.then_crit_edge
  %retval.0.i37 = phi ptr [ %arrayidx.i, %uverbs_attr_get.exit.if.then_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_is_valid.exit.i.if.then_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i37 to i32
  br label %cleanup

if.end:                                           ; preds = %uverbs_attr_get.exit
  %len = getelementptr inbounds %struct.uverbs_ptr_attr, ptr %arrayidx.i, i32 0, i32 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 8
  %conv3 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %size)
  %cmp = icmp ugt i32 %conv3, %size
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7, !prof !68

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %6)
  %cmp.i34 = icmp ult i16 %6, 9
  br i1 %cmp.i34, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %7 = call ptr @memcpy(ptr %to, ptr %arrayidx.i, i32 %conv3)
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %conv15 = trunc i64 %9 to i32
  %10 = inttoptr i32 %conv15 to ptr
  tail call void @__check_object_size(ptr noundef %to, i32 noundef %conv3, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.else.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.else
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 %conv3, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !70

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %to, i32 noundef %conv3) #11
  %12 = tail call i32 @llvm.read_register.i32(metadata !57) #11
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !71
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !73
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %to, ptr noundef %10, i32 noundef %conv3) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !73
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.else.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv3, %if.else.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv3, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !70

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %conv3, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %to, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i.i, %if.end.i.i.cleanup_crit_edge, %if.then9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.then9 ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5_eswitch_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_uverbs_get_const_unsigned(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_get_flags32(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_destroy_def_handler(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_CREATE_FLOW(ptr noundef %attrs) #1 align 64 {
entry:
  %ft_attr.i.i.i = alloca %struct.mlx5_flow_table_attr, align 4
  %flow_context = alloca %struct.mlx5_flow_context, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %flow_context) #11
  %0 = call ptr @memset(ptr %flow_context, i32 0, i32 12)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #11
  %1 = call ptr @memset(ptr %flow_act, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %flags, align 4, !annotation !67
  %call = tail call zeroext i1 @capable(i32 noundef 13) #11
  br i1 %call, label %if.end, label %entry.cleanup67_crit_edge

entry.cleanup67_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end:                                           ; preds = %entry
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %3 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %5 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i, label %if.end.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i.i

if.end.uverbs_attr_get_obj.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_obj.exit

if.end.i.i:                                       ; preds = %if.end
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 9
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.i.uverbs_attr_get_obj.exit_crit_edge, label %if.end.i

if.end.i.i.uverbs_attr_get_obj.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_obj.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 8
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %object.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %object.i, align 8
  br label %uverbs_attr_get_obj.exit

uverbs_attr_get_obj.exit:                         ; preds = %if.end.i, %if.end.i.i.uverbs_attr_get_obj.exit_crit_edge, %if.end.uverbs_attr_get_obj.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %arrayidx.i.i, %if.end.i.i.uverbs_attr_get_obj.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.uverbs_attr_get_obj.exit_crit_edge ]
  %10 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i114 = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i114, label %uverbs_attr_get_obj.exit.uverbs_attr_get_uobject.exit_crit_edge, label %uverbs_attr_get.exit.i

uverbs_attr_get_obj.exit.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get_obj.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get.exit.i:                           ; preds = %uverbs_attr_get_obj.exit
  %arrayidx.i.i115 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i116 = icmp ugt ptr %arrayidx.i.i115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i116, label %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i117

uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i117:                                      ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i115, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i117, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, %uverbs_attr_get_obj.exit.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i118 = phi ptr [ %14, %if.end.i117 ], [ %arrayidx.i.i115, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_obj.exit.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not.i = icmp eq ptr %attrs, null
  br i1 %tobool.not.i, label %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge, label %cond.true.i

uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge: ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_udata_to_mdev.exit

cond.true.i:                                      ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %15 = ptrtoint ptr %context1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context1.i, align 4
  br label %mlx5_udata_to_mdev.exit

mlx5_udata_to_mdev.exit:                          ; preds = %cond.true.i, %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge
  %cond.i = phi ptr [ %16, %cond.true.i ], [ null, %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge ]
  %17 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cond.i, align 8
  %19 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.i = icmp ne i32 %21, 0
  %22 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %24 = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i147.i = icmp ne i32 %24, 0
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags, align 4
  %call3.i = call i32 @uverbs_get_flags32(ptr noundef nonnull %flags, ptr noundef %attrs, i32 noundef 4105, i64 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i119 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i119, label %if.end.i120, label %mlx5_udata_to_mdev.exit.cleanup67_crit_edge

mlx5_udata_to_mdev.exit.cleanup67_crit_edge:      ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end.i120:                                      ; preds = %mlx5_udata_to_mdev.exit
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %and5.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp ne i32 %and5.i, 0
  %28 = and i32 %27, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %.not.i = icmp eq i32 %28, 3
  br i1 %.not.i, label %if.end.i120.cleanup67_crit_edge, label %if.end8.i

if.end.i120.cleanup67_crit_edge:                  ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end8.i:                                        ; preds = %if.end.i120
  %ns_type.i = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %retval.0.i, i32 0, i32 3
  %29 = ptrtoint ptr %ns_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ns_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %if.then9.i, label %if.end21.i

if.then9.i:                                       ; preds = %if.end8.i
  %tobool.i147.not.i = xor i1 %tobool.i147.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.i, label %land.lhs.true11.i, label %if.else.i

land.lhs.true11.i:                                ; preds = %if.then9.i
  %or.cond172.i = select i1 %tobool.i147.not.i, i1 %tobool13.not.i, i1 false
  br i1 %or.cond172.i, label %land.lhs.true11.i.if.then44.i_crit_edge, label %land.lhs.true11.i.cleanup67_crit_edge

land.lhs.true11.i.cleanup67_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

land.lhs.true11.i.if.then44.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44.i

if.else.i:                                        ; preds = %if.then9.i
  %or.cond174.i = select i1 %tobool.i147.not.i, i1 true, i1 %tobool13.not.i
  br i1 %or.cond174.i, label %if.else.i.if.else58.i_crit_edge, label %if.else.i.cleanup67_crit_edge

if.else.i.cleanup67_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.else.i.if.else58.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else58.i

if.end21.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cmp23.i = icmp ne i32 %30, 7
  %brmerge.i = select i1 %cmp23.i, i1 true, i1 %tobool.i.i
  %brmerge175.i = select i1 %brmerge.i, i1 true, i1 %tobool6.not.i
  br i1 %brmerge175.i, label %if.end30.i, label %if.end21.i.cleanup67_crit_edge

if.end21.i.cleanup67_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end30.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %30)
  %cmp32.i = icmp eq i32 %30, 15
  br i1 %cmp32.i, label %land.lhs.true33.i, label %if.end30.i.if.end42.i_crit_edge

if.end30.i.if.end42.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.lhs.true33.i:                                ; preds = %if.end30.i
  %brmerge144.i = select i1 %tobool.i.i, i1 true, i1 %tobool.i147.i
  %brmerge144.not.i = xor i1 %brmerge144.i, true
  %31 = select i1 %tobool.i.i, i1 %tobool.i147.i, i1 false
  %or.cond.i = select i1 %brmerge144.not.i, i1 true, i1 %31
  br i1 %or.cond.i, label %land.lhs.true33.i.cleanup67_crit_edge, label %land.lhs.true33.i.if.end42.i_crit_edge

land.lhs.true33.i.if.end42.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

land.lhs.true33.i.cleanup67_crit_edge:            ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end42.i:                                       ; preds = %land.lhs.true33.i.if.end42.i_crit_edge, %if.end30.i.if.end42.i_crit_edge
  br i1 %tobool.i.i, label %if.end42.i.if.then44.i_crit_edge, label %if.end42.i.if.else58.i_crit_edge

if.end42.i.if.else58.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else58.i

if.end42.i.if.then44.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44.i

if.then44.i:                                      ; preds = %if.end42.i.if.then44.i_crit_edge, %land.lhs.true11.i.if.then44.i_crit_edge
  %32 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %34 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i.i.i, label %if.then44.i.uverbs_attr_get_obj.exit.i_crit_edge, label %if.end.i.i.i

if.then44.i.uverbs_attr_get_obj.exit.i_crit_edge: ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_obj.exit.i

if.end.i.i.i:                                     ; preds = %if.then44.i
  %arrayidx.i.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 7
  %cmp.i.i.i = icmp ugt ptr %arrayidx.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.i.i.uverbs_attr_get_obj.exit.i_crit_edge, label %if.end.i.i121

if.end.i.i.i.uverbs_attr_get_obj.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_obj.exit.i

if.end.i.i121:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i.i, align 8
  %object.i.i = getelementptr inbounds %struct.ib_uobject, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %object.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %object.i.i, align 8
  br label %uverbs_attr_get_obj.exit.i

uverbs_attr_get_obj.exit.i:                       ; preds = %if.end.i.i121, %if.end.i.i.i.uverbs_attr_get_obj.exit.i_crit_edge, %if.then44.i.uverbs_attr_get_obj.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i121 ], [ %arrayidx.i.i.i, %if.end.i.i.i.uverbs_attr_get_obj.exit.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then44.i.uverbs_attr_get_obj.exit.i_crit_edge ]
  %dinbox.i.i = getelementptr inbounds %struct.devx_obj, ptr %retval.0.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %dinbox.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dinbox.i.i, align 4
  %shr.i.i = lshr i32 %40, 16
  %trunc.i.i = trunc i32 %shr.i.i to i16
  %41 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.36)
  switch i16 %trunc.i.i, label %uverbs_attr_get_obj.exit.i.cleanup67_crit_edge [
    i16 2306, label %sw.bb.i.i
    i16 2353, label %sw.bb7.i.i
  ]

uverbs_attr_get_obj.exit.i.cleanup67_crit_edge:   ; preds = %uverbs_attr_get_obj.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

sw.bb.i.i:                                        ; preds = %uverbs_attr_get_obj.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr4.i.i = getelementptr %struct.devx_obj, ptr %retval.0.i.i, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr4.i.i, align 4
  br label %if.end48.i

sw.bb7.i.i:                                       ; preds = %uverbs_attr_get_obj.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr10.i.i = getelementptr %struct.devx_obj, ptr %retval.0.i.i, i32 0, i32 3, i32 5
  %44 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr10.i.i, align 4
  %and12.i.i = and i32 %45, 16777215
  br label %if.end48.i

if.end48.i:                                       ; preds = %sw.bb7.i.i, %sw.bb.i.i
  %cmp55.not.i = phi i1 [ true, %sw.bb7.i.i ], [ false, %sw.bb.i.i ]
  %cmp88.i = phi i1 [ false, %sw.bb7.i.i ], [ true, %sw.bb.i.i ]
  %and12.sink.i.i = phi i32 [ %and12.i.i, %sw.bb7.i.i ], [ %43, %sw.bb.i.i ]
  %46 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %30, label %if.end87.i [
    i32 7, label %if.end48.i.land.lhs.true54.i_crit_edge
    i32 15, label %if.end48.i.land.lhs.true54.i_crit_edge266
  ]

if.end48.i.land.lhs.true54.i_crit_edge266:        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true54.i

if.end48.i.land.lhs.true54.i_crit_edge:           ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true54.i

land.lhs.true54.i:                                ; preds = %if.end48.i.land.lhs.true54.i_crit_edge, %if.end48.i.land.lhs.true54.i_crit_edge266
  br i1 %cmp55.not.i, label %land.lhs.true54.i.if.end6_crit_edge, label %land.lhs.true54.i.cleanup67_crit_edge

land.lhs.true54.i.cleanup67_crit_edge:            ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

land.lhs.true54.i.if.end6_crit_edge:              ; preds = %land.lhs.true54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.else58.i:                                      ; preds = %if.end42.i.if.else58.i_crit_edge, %if.else.i.if.else58.i_crit_edge
  br i1 %tobool.i147.i, label %if.then60.i, label %if.else75.i

if.then60.i:                                      ; preds = %if.else58.i
  %47 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %49 = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i.i150.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i.i150.i, label %if.then60.i.cleanup67_crit_edge, label %if.end.i.i151.i

if.then60.i.cleanup67_crit_edge:                  ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end.i.i151.i:                                  ; preds = %if.then60.i
  %arrayidx.i.i152.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 5
  %cmp.i.i153.i = icmp ugt ptr %arrayidx.i.i152.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i153.i, label %if.end.i.i151.i.uverbs_attr_get_obj.exit157.i_crit_edge, label %if.end.i155.i

if.end.i.i151.i.uverbs_attr_get_obj.exit157.i_crit_edge: ; preds = %if.end.i.i151.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_obj.exit157.i

if.end.i155.i:                                    ; preds = %if.end.i.i151.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %arrayidx.i.i152.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i152.i, align 8
  %object.i154.i = getelementptr inbounds %struct.ib_uobject, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %object.i154.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %object.i154.i, align 8
  br label %uverbs_attr_get_obj.exit157.i

uverbs_attr_get_obj.exit157.i:                    ; preds = %if.end.i155.i, %if.end.i.i151.i.uverbs_attr_get_obj.exit157.i_crit_edge
  %retval.0.i156.i = phi ptr [ %53, %if.end.i155.i ], [ %arrayidx.i.i152.i, %if.end.i.i151.i.uverbs_attr_get_obj.exit157.i_crit_edge ]
  %cmp.i.i122 = icmp ugt ptr %retval.0.i156.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i122, label %uverbs_attr_get_obj.exit157.i.cleanup67_crit_edge, label %if.end65.i

uverbs_attr_get_obj.exit157.i.cleanup67_crit_edge: ; preds = %uverbs_attr_get_obj.exit157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end65.i:                                       ; preds = %uverbs_attr_get_obj.exit157.i
  %qp_type.i = getelementptr inbounds %struct.ib_qp, ptr %retval.0.i156.i, i32 0, i32 22
  %54 = ptrtoint ptr %qp_type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp66.not.i = icmp eq i32 %55, 8
  br i1 %cmp66.not.i, label %if.end87.thread169.i, label %if.end65.i.cleanup67_crit_edge

if.end65.i.cleanup67_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end87.thread169.i:                             ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  %is_rss.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %retval.0.i156.i, i32 0, i32 14
  %56 = ptrtoint ptr %is_rss.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i = load i8, ptr %is_rss.i, align 4
  %57 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool70.not.i = icmp eq i8 %57, 0
  %tirn73.i = getelementptr inbounds %struct.mlx5_ib_qp, ptr %retval.0.i156.i, i32 0, i32 1, i32 0, i32 1, i32 4
  %58 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %retval.0.i156.i, i32 0, i32 1
  %storemerge.in.i = select i1 %tobool70.not.i, ptr %tirn73.i, ptr %58
  %59 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  br label %land.lhs.true89.i

if.else75.i:                                      ; preds = %if.else58.i
  %60 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %30, label %if.else75.i.if.end87.i.thread_crit_edge [
    i32 13, label %if.else75.i.land.lhs.true81.i_crit_edge
    i32 17, label %if.else75.i.land.lhs.true81.i_crit_edge267
  ]

if.else75.i.land.lhs.true81.i_crit_edge267:       ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true81.i

if.else75.i.land.lhs.true81.i_crit_edge:          ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true81.i

if.else75.i.if.end87.i.thread_crit_edge:          ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87.i.thread

land.lhs.true81.i:                                ; preds = %if.else75.i.land.lhs.true81.i_crit_edge, %if.else75.i.land.lhs.true81.i_crit_edge267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool83.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool83.not.i, label %land.lhs.true81.i.if.end6_crit_edge, label %land.lhs.true81.i.if.end87.i.thread_crit_edge

land.lhs.true81.i.if.end87.i.thread_crit_edge:    ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87.i.thread

land.lhs.true81.i.if.end6_crit_edge:              ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end87.i.thread:                                ; preds = %land.lhs.true81.i.if.end87.i.thread_crit_edge, %if.else75.i.if.end87.i.thread_crit_edge
  br label %if.end6

if.end87.i:                                       ; preds = %if.end48.i
  br i1 %cmp88.i, label %if.end87.i.land.lhs.true89.i_crit_edge, label %if.end87.i.if.end6_crit_edge

if.end87.i.if.end6_crit_edge:                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end87.i.land.lhs.true89.i_crit_edge:           ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true89.i

land.lhs.true89.i:                                ; preds = %if.end87.i.land.lhs.true89.i_crit_edge, %if.end87.thread169.i
  %dest_id.2 = phi i32 [ %and12.sink.i.i, %if.end87.i.land.lhs.true89.i_crit_edge ], [ %storemerge.i, %if.end87.thread169.i ]
  %qp.5 = phi ptr [ null, %if.end87.i.land.lhs.true89.i_crit_edge ], [ %retval.0.i156.i, %if.end87.thread169.i ]
  %61 = add i32 %30, -13
  %switch.and.i = and i32 %61, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %land.lhs.true89.i.cleanup67_crit_edge, label %land.lhs.true89.i.if.end6_crit_edge

land.lhs.true89.i.if.end6_crit_edge:              ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true89.i.cleanup67_crit_edge:            ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end6:                                          ; preds = %land.lhs.true89.i.if.end6_crit_edge, %if.end87.i.if.end6_crit_edge, %if.end87.i.thread, %land.lhs.true81.i.if.end6_crit_edge, %land.lhs.true54.i.if.end6_crit_edge
  %qp.6231 = phi ptr [ null, %if.end87.i.thread ], [ null, %if.end87.i.if.end6_crit_edge ], [ %qp.5, %land.lhs.true89.i.if.end6_crit_edge ], [ null, %land.lhs.true81.i.if.end6_crit_edge ], [ null, %land.lhs.true54.i.if.end6_crit_edge ]
  %dest_type.4230 = phi i32 [ -1, %if.end87.i.thread ], [ 1, %if.end87.i.if.end6_crit_edge ], [ 2, %land.lhs.true89.i.if.end6_crit_edge ], [ 153, %land.lhs.true81.i.if.end6_crit_edge ], [ 1, %land.lhs.true54.i.if.end6_crit_edge ]
  %dest_id.3229 = phi i32 [ -1, %if.end87.i.thread ], [ %and12.sink.i.i, %if.end87.i.if.end6_crit_edge ], [ %dest_id.2, %land.lhs.true89.i.if.end6_crit_edge ], [ -1, %land.lhs.true81.i.if.end6_crit_edge ], [ %and12.sink.i.i, %land.lhs.true54.i.if.end6_crit_edge ]
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %and = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flow_act, align 4
  %or = or i32 %65, 524288
  store i32 %or, ptr %flow_act, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %and10 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flow_act, align 4
  %or14 = or i32 %67, 2
  store i32 %or14, ptr %flow_act, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %68 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %70 = and i32 %69, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.not.i.i124 = icmp eq i32 %70, 0
  br i1 %tobool.i.not.i.i124, label %if.end15.if.end31_crit_edge, label %if.end.i.i125

if.end15.if.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.end.i.i125:                                    ; preds = %if.end15
  %arrayidx.i.i126 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 15
  %cmp.i.i127 = icmp ugt ptr %arrayidx.i.i126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i127, label %if.end.i.i125.if.end31_crit_edge, label %uverbs_attr_get_uobjs_arr.exit

if.end.i.i125.if.end31_crit_edge:                 ; preds = %if.end.i.i125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

uverbs_attr_get_uobjs_arr.exit:                   ; preds = %if.end.i.i125
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 5, i32 1, i32 1
  %71 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool17.not = icmp eq i16 %72, 0
  br i1 %tobool17.not, label %uverbs_attr_get_uobjs_arr.exit.if.end31_crit_edge, label %if.then18

uverbs_attr_get_uobjs_arr.exit.if.end31_crit_edge: ; preds = %uverbs_attr_get_uobjs_arr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then18:                                        ; preds = %uverbs_attr_get_uobjs_arr.exit
  %73 = ptrtoint ptr %arrayidx.i.i126 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i126, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %object = getelementptr inbounds %struct.ib_uobject, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %object, align 8
  %79 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %81 = and i32 %80, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i.not = icmp eq i32 %81, 0
  br i1 %tobool.i.not, label %if.end25.thread, label %if.then20

if.then20:                                        ; preds = %if.then18
  %82 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %84 = and i32 %83, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i.not.i.i.i133 = icmp eq i32 %84, 0
  br i1 %tobool.i.not.i.i.i133, label %if.then20.cleanup67_crit_edge, label %if.end.i.i.i134

if.then20.cleanup67_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end.i.i.i134:                                  ; preds = %if.then20
  %arrayidx.i.i.i135 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 17
  %cmp.i.i.i136 = icmp ugt ptr %arrayidx.i.i.i135, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i136, label %uverbs_attr_get_len.exit.i, label %uverbs_attr_get_len.exit.thread.i

uverbs_attr_get_len.exit.thread.i:                ; preds = %if.end.i.i.i134
  call void @__sanitizer_cov_trace_pc() #13
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 6
  %85 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %len.i.i, align 8
  %conv.i.i = zext i16 %86 to i32
  br label %if.end.i139

uverbs_attr_get_len.exit.i:                       ; preds = %if.end.i.i.i134
  %87 = ptrtoint ptr %arrayidx.i.i.i135 to i32
  %cmp.i137 = icmp slt ptr %arrayidx.i.i.i135, null
  br i1 %cmp.i137, label %uverbs_attr_get_len.exit.i.uverbs_attr_ptr_get_array_size.exit_crit_edge, label %uverbs_attr_get_len.exit.i.if.end.i139_crit_edge

uverbs_attr_get_len.exit.i.if.end.i139_crit_edge: ; preds = %uverbs_attr_get_len.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i139

uverbs_attr_get_len.exit.i.uverbs_attr_ptr_get_array_size.exit_crit_edge: ; preds = %uverbs_attr_get_len.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_ptr_get_array_size.exit

if.end.i139:                                      ; preds = %uverbs_attr_get_len.exit.i.if.end.i139_crit_edge, %uverbs_attr_get_len.exit.thread.i
  %retval.0.i9.i = phi i32 [ %conv.i.i, %uverbs_attr_get_len.exit.thread.i ], [ %87, %uverbs_attr_get_len.exit.i.if.end.i139_crit_edge ]
  %rem.i = and i32 %retval.0.i9.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i138 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i138, label %if.end2.i, label %if.end.i139.cleanup67_crit_edge

if.end.i139.cleanup67_crit_edge:                  ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end2.i:                                        ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #13
  %div.i258 = lshr i32 %retval.0.i9.i, 2
  br label %uverbs_attr_ptr_get_array_size.exit

uverbs_attr_ptr_get_array_size.exit:              ; preds = %if.end2.i, %uverbs_attr_get_len.exit.i.uverbs_attr_ptr_get_array_size.exit_crit_edge
  %retval.0.i140 = phi i32 [ %div.i258, %if.end2.i ], [ %87, %uverbs_attr_get_len.exit.i.uverbs_attr_ptr_get_array_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i140)
  %cmp.not = icmp eq i32 %retval.0.i140, 1
  br i1 %cmp.not, label %if.end23, label %uverbs_attr_ptr_get_array_size.exit.cleanup67_crit_edge

uverbs_attr_ptr_get_array_size.exit.cleanup67_crit_edge: ; preds = %uverbs_attr_ptr_get_array_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end23:                                         ; preds = %uverbs_attr_ptr_get_array_size.exit
  %88 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %90 = and i32 %89, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.i.not.i.i142 = icmp eq i32 %90, 0
  %brmerge = or i1 %tobool.i.not.i.i142, %cmp.i.i.i136
  %.mux = select i1 %tobool.i.not.i.i142, ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i.i135
  br i1 %brmerge, label %if.end23.if.end25_crit_edge, label %if.end.i148

if.end23.if.end25_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.i148:                                      ; preds = %if.end23
  %len.i.i147 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 6
  %91 = ptrtoint ptr %len.i.i147 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %len.i.i147, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %92)
  %cmp.i7.i = icmp ult i16 %92, 9
  br i1 %cmp.i7.i, label %if.end.i148.if.end25_crit_edge, label %cond.false.i

if.end.i148.if.end25_crit_edge:                   ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

cond.false.i:                                     ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %arrayidx.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i.i135, align 8
  br label %if.end25

if.end25:                                         ; preds = %cond.false.i, %if.end.i148.if.end25_crit_edge, %if.end23.if.end25_crit_edge
  %retval.0.i149 = phi ptr [ %94, %cond.false.i ], [ %arrayidx.i.i.i135, %if.end.i148.if.end25_crit_edge ], [ %.mux, %if.end23.if.end25_crit_edge ]
  %95 = ptrtoint ptr %retval.0.i149 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %retval.0.i149, align 4
  %dinbox.i = getelementptr inbounds %struct.devx_obj, ptr %78, i32 0, i32 3
  %97 = ptrtoint ptr %dinbox.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dinbox.i, align 4
  %shr.mask.i = and i32 %98, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 154796032, i32 %shr.mask.i)
  %cmp.i150 = icmp eq i32 %shr.mask.i, 154796032
  br i1 %cmp.i150, label %if.then.i152, label %if.end25.cleanup67_crit_edge

if.end25.cleanup67_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end25.thread:                                  ; preds = %if.then18
  %dinbox.i241 = getelementptr inbounds %struct.devx_obj, ptr %78, i32 0, i32 3
  %99 = ptrtoint ptr %dinbox.i241 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dinbox.i241, align 4
  %shr.mask.i242 = and i32 %100, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 154796032, i32 %shr.mask.i242)
  %cmp.i150243 = icmp eq i32 %shr.mask.i242, 154796032
  br i1 %cmp.i150243, label %if.end25.thread.if.end28_crit_edge, label %if.end25.thread.cleanup67_crit_edge

if.end25.thread.cleanup67_crit_edge:              ; preds = %if.end25.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end25.thread.if.end28_crit_edge:               ; preds = %if.end25.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then.i152:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i151 = icmp eq i32 %96, 0
  br i1 %tobool.not.i151, label %if.then.i152.if.end28_crit_edge, label %land.lhs.true.i

if.then.i152.if.end28_crit_edge:                  ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true.i:                                  ; preds = %if.then.i152
  %101 = getelementptr inbounds %struct.devx_obj, ptr %78, i32 0, i32 5
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %96)
  %cmp3.not.i = icmp ugt i32 %103, %96
  br i1 %cmp3.not.i, label %land.lhs.true.i.if.end28_crit_edge, label %land.lhs.true.i.cleanup67_crit_edge

land.lhs.true.i.cleanup67_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

land.lhs.true.i.if.end28_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true.i.if.end28_crit_edge, %if.then.i152.if.end28_crit_edge, %if.end25.thread.if.end28_crit_edge
  %offset.1245 = phi i32 [ %96, %land.lhs.true.i.if.end28_crit_edge ], [ 0, %if.then.i152.if.end28_crit_edge ], [ 0, %if.end25.thread.if.end28_crit_edge ]
  %add.ptr8.i = getelementptr %struct.devx_obj, ptr %78, i32 0, i32 3, i32 2
  %104 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr8.i, align 4
  %add.i = add i32 %105, %offset.1245
  %106 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flow_act, align 4
  %or30 = or i32 %107, 8
  store i32 %or30, ptr %flow_act, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end28, %uverbs_attr_get_uobjs_arr.exit.if.end31_crit_edge, %if.end.i.i125.if.end31_crit_edge, %if.end15.if.end31_crit_edge
  %counter_id.1 = phi i32 [ 0, %uverbs_attr_get_uobjs_arr.exit.if.end31_crit_edge ], [ %add.i, %if.end28 ], [ 0, %if.end.i.i125.if.end31_crit_edge ], [ 0, %if.end15.if.end31_crit_edge ]
  %108 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %110 = and i32 %109, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.i.not.i.i156 = icmp eq i32 %110, 0
  br i1 %tobool.i.not.i.i156, label %if.end31.uverbs_attr_get_alloced_ptr.exit166_crit_edge, label %if.end.i.i157

if.end31.uverbs_attr_get_alloced_ptr.exit166_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit166

if.end.i.i157:                                    ; preds = %if.end31
  %arrayidx.i.i158 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i159 = icmp ugt ptr %arrayidx.i.i158, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i159, label %if.end.i.i157.uverbs_attr_get_alloced_ptr.exit166_crit_edge, label %if.end.i163

if.end.i.i157.uverbs_attr_get_alloced_ptr.exit166_crit_edge: ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit166

if.end.i163:                                      ; preds = %if.end.i.i157
  %len.i.i161 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %111 = ptrtoint ptr %len.i.i161 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %len.i.i161, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %112)
  %cmp.i7.i162 = icmp ult i16 %112, 9
  br i1 %cmp.i7.i162, label %if.end.i163.uverbs_attr_get_alloced_ptr.exit166_crit_edge, label %cond.false.i164

if.end.i163.uverbs_attr_get_alloced_ptr.exit166_crit_edge: ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit166

cond.false.i164:                                  ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %arrayidx.i.i158 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i158, align 8
  br label %uverbs_attr_get_alloced_ptr.exit166

uverbs_attr_get_alloced_ptr.exit166:              ; preds = %cond.false.i164, %if.end.i163.uverbs_attr_get_alloced_ptr.exit166_crit_edge, %if.end.i.i157.uverbs_attr_get_alloced_ptr.exit166_crit_edge, %if.end31.uverbs_attr_get_alloced_ptr.exit166_crit_edge
  %retval.0.i165 = phi ptr [ %arrayidx.i.i158, %if.end.i.i157.uverbs_attr_get_alloced_ptr.exit166_crit_edge ], [ %114, %cond.false.i164 ], [ %arrayidx.i.i158, %if.end.i163.uverbs_attr_get_alloced_ptr.exit166_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end31.uverbs_attr_get_alloced_ptr.exit166_crit_edge ]
  %115 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %117 = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.i.not.i.i168 = icmp eq i32 %117, 0
  br i1 %tobool.i.not.i.i168, label %uverbs_attr_get_alloced_ptr.exit166.if.then.i173_crit_edge, label %if.end.i.i169

uverbs_attr_get_alloced_ptr.exit166.if.then.i173_crit_edge: ; preds = %uverbs_attr_get_alloced_ptr.exit166
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i173

if.end.i.i169:                                    ; preds = %uverbs_attr_get_alloced_ptr.exit166
  %arrayidx.i.i170 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i171 = icmp ugt ptr %arrayidx.i.i170, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i171, label %if.end.i.i169.if.then.i173_crit_edge, label %if.end.i176

if.end.i.i169.if.then.i173_crit_edge:             ; preds = %if.end.i.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i173

if.then.i173:                                     ; preds = %if.end.i.i169.if.then.i173_crit_edge, %uverbs_attr_get_alloced_ptr.exit166.if.then.i173_crit_edge
  %retval.0.i7.i = phi ptr [ %arrayidx.i.i170, %if.end.i.i169.if.then.i173_crit_edge ], [ inttoptr (i32 -2 to ptr), %uverbs_attr_get_alloced_ptr.exit166.if.then.i173_crit_edge ]
  %118 = ptrtoint ptr %retval.0.i7.i to i32
  br label %uverbs_attr_get_len.exit

if.end.i176:                                      ; preds = %if.end.i.i169
  call void @__sanitizer_cov_trace_pc() #13
  %len.i174 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %119 = ptrtoint ptr %len.i174 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %len.i174, align 8
  %conv.i175 = zext i16 %120 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i176, %if.then.i173
  %retval.0.i177 = phi i32 [ %118, %if.then.i173 ], [ %conv.i175, %if.end.i176 ]
  %call34 = call ptr @flow_resources_alloc(i32 noundef 2) #11
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %uverbs_attr_get_len.exit.cleanup67_crit_edge, label %if.end37

uverbs_attr_get_len.exit.cleanup67_crit_edge:     ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup67

if.end37:                                         ; preds = %uverbs_attr_get_len.exit
  %121 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %123 = and i32 %122, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.i.not.i.i179 = icmp eq i32 %123, 0
  br i1 %tobool.i.not.i.i179, label %if.end37.for.end_crit_edge, label %if.end.i.i180

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.i.i180:                                    ; preds = %if.end37
  %arrayidx.i.i181 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 11
  %cmp.i.i182 = icmp ugt ptr %arrayidx.i.i181, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i182, label %if.end.i.i180.for.end_crit_edge, label %uverbs_attr_get_uobjs_arr.exit189

if.end.i.i180.for.end_crit_edge:                  ; preds = %if.end.i.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

uverbs_attr_get_uobjs_arr.exit189:                ; preds = %if.end.i.i180
  %124 = ptrtoint ptr %arrayidx.i.i181 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i181, align 8
  %len.i185 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 4, i32 0, i32 3
  %126 = ptrtoint ptr %len.i185 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %len.i185, align 4
  %conv.i186 = zext i16 %127 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %127)
  %cmp39259.not = icmp eq i16 %127, 0
  br i1 %cmp39259.not, label %uverbs_attr_get_uobjs_arr.exit189.for.end_crit_edge, label %for.body.lr.ph

uverbs_attr_get_uobjs_arr.exit189.for.end_crit_edge: ; preds = %uverbs_attr_get_uobjs_arr.exit189
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %uverbs_attr_get_uobjs_arr.exit189
  %pkt_reformat.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 2
  %modify_hdr.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 1
  %128 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0260 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx40 = getelementptr ptr, ptr %125, i32 %i.0260
  %129 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx40, align 4
  %object41 = getelementptr inbounds %struct.ib_uobject, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %object41 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %object41, align 8
  %type.i = getelementptr inbounds %struct.ib_flow_action, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %type.i, align 8
  %135 = zext i32 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %134, label %for.body.err_out_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb4.i
  ]

for.body.err_out_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

sw.bb.i:                                          ; preds = %for.body
  %136 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %flow_act, align 4
  %and.i = and i32 %137, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i190 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i190, label %if.end.i191, label %sw.bb.i.err_out_crit_edge

sw.bb.i.err_out_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end.i191:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %ctx.i = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %132, i32 0, i32 1, i32 0, i32 1
  %138 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ctx.i, align 8
  %140 = ptrtoint ptr %139 to i32
  %141 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %128, align 4
  %or.i = or i32 %137, 262144
  %142 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or.i, ptr %flow_act, align 4
  br label %for.inc

sw.bb4.i:                                         ; preds = %for.body
  %143 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %132, i32 0, i32 1
  %sub_type.i = getelementptr inbounds %struct.anon.202, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %sub_type.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %sub_type.i, align 4
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %145, label %sw.bb4.i.err_out_crit_edge [
    i32 0, label %if.then5.i
    i32 2, label %if.then16.i
    i32 1, label %if.then27.i
  ]

sw.bb4.i.err_out_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.then5.i:                                       ; preds = %sw.bb4.i
  %147 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flow_act, align 4
  %and7.i = and i32 %148, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then5.i.err_out_crit_edge

if.then5.i.err_out_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end10.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  %or12.i = or i32 %148, 64
  %149 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or12.i, ptr %flow_act, align 4
  %150 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %132, i32 0, i32 1, i32 0, i32 1
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %150, align 8
  %153 = ptrtoint ptr %modify_hdr.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %modify_hdr.i, align 4
  br label %for.inc

if.then16.i:                                      ; preds = %sw.bb4.i
  %154 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flow_act, align 4
  %and18.i = and i32 %155, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i192, label %if.then16.i.err_out_crit_edge

if.then16.i.err_out_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end21.i192:                                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #13
  %or23.i = or i32 %155, 32
  %156 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or23.i, ptr %flow_act, align 4
  br label %for.inc

if.then27.i:                                      ; preds = %sw.bb4.i
  %157 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flow_act, align 4
  %and29.i = and i32 %158, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.then27.i.err_out_crit_edge

if.then27.i.err_out_crit_edge:                    ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end32.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  %or34.i = or i32 %158, 16
  %159 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %or34.i, ptr %flow_act, align 4
  %160 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %132, i32 0, i32 1, i32 0, i32 1
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 8
  %163 = ptrtoint ptr %pkt_reformat.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %pkt_reformat.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end32.i, %if.end21.i192, %if.end10.i, %if.end.i191
  %164 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx40, align 4
  %object48 = getelementptr inbounds %struct.ib_uobject, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %object48 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %object48, align 8
  call void @flow_resources_add(ptr noundef nonnull %call34, i32 noundef 4098, ptr noundef %167) #11
  %inc = add nuw nsw i32 %i.0260, 1
  %exitcond.not = icmp eq i32 %inc, %conv.i186
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %uverbs_attr_get_uobjs_arr.exit189.for.end_crit_edge, %if.end.i.i180.for.end_crit_edge, %if.end37.for.end_crit_edge
  %flow_tag = getelementptr inbounds %struct.mlx5_flow_context, ptr %flow_context, i32 0, i32 1
  %call52 = call fastcc i32 @_uverbs_copy_from(ptr noundef %flow_tag, ptr noundef %attrs, i32 noundef 4102, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %for.end.if.end61_crit_edge

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.then54:                                        ; preds = %for.end
  %168 = ptrtoint ptr %flow_tag to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flow_tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %169)
  %cmp56 = icmp ugt i32 %169, 16777215
  br i1 %cmp56, label %if.then54.err_out_crit_edge, label %if.end58

if.then54.err_out_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out

if.end58:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %170 = ptrtoint ptr %flow_context to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flow_context, align 4
  %or60 = or i32 %171, 1
  store i32 %or60, ptr %flow_context, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end58, %for.end.if.end61_crit_edge
  %flow_type.i = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %retval.0.i, i32 0, i32 2
  %172 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %flow_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp.not.i = icmp eq i32 %173, 0
  br i1 %cmp.not.i, label %if.end.i194, label %if.end61.if.then64_crit_edge

if.end61.if.then64_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then64

if.end.i194:                                      ; preds = %if.end61
  %priority.i = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %retval.0.i, i32 0, i32 4
  %174 = ptrtoint ptr %priority.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %175)
  %cmp1.i = icmp ugt i16 %175, 15
  br i1 %cmp1.i, label %if.end.i194.if.then64_crit_edge, label %if.end5.i

if.end.i194.if.then64_crit_edge:                  ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then64

if.end5.i:                                        ; preds = %if.end.i194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %176 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %176, i32 noundef 3520, i32 noundef 32) #14
  %tobool.not.i195 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i195, label %if.end5.i.if.then64_crit_edge, label %if.end9.i

if.end5.i.if.then64_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then64

if.end9.i:                                        ; preds = %if.end5.i
  %match_criteria_enable.i.i = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %retval.0.i, i32 0, i32 7
  %177 = ptrtoint ptr %match_criteria_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %match_criteria_enable.i.i, align 4
  %179 = and i8 %178, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool.not.i.i = icmp eq i8 %179, 0
  br i1 %tobool.not.i.i, label %if.end9.i.raw_fs_is_multicast.exit.i_crit_edge, label %if.end.i.i197

if.end9.i.raw_fs_is_multicast.exit.i_crit_edge:   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raw_fs_is_multicast.exit.i

if.end.i.i197:                                    ; preds = %if.end9.i
  %add.ptr2.i.i = getelementptr i8, ptr %retval.0.i165, i32 8
  %180 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %add.ptr2.i.i, align 4
  %182 = and i32 %181, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.i.not.i.i196 = icmp eq i32 %182, 0
  br i1 %tobool.i.not.i.i196, label %if.end.i.i197.if.end8.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.i197.if.end8.i.i_crit_edge:              ; preds = %if.end.i.i197
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i197
  %add.ptr3.i.i = getelementptr i8, ptr %retval.0.i, i32 8
  %183 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %add.ptr3.i.i, align 4
  %185 = and i32 %184, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.i27.not.i.i = icmp eq i32 %185, 0
  br i1 %tobool.i27.not.i.i, label %land.lhs.true.i.i.if.end8.i.i_crit_edge, label %land.lhs.true.i.i.raw_fs_is_multicast.exit.i_crit_edge

land.lhs.true.i.i.raw_fs_is_multicast.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raw_fs_is_multicast.exit.i

land.lhs.true.i.i.if.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %land.lhs.true.i.i.if.end8.i.i_crit_edge, %if.end.i.i197.if.end8.i.i_crit_edge
  %add.ptr9.i.i = getelementptr i8, ptr %retval.0.i165, i32 60
  %186 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr9.i.i, align 4
  %and.i.i.i = and i32 %187, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i.i)
  %cmp.i.i.i198 = icmp eq i32 %and.i.i.i, -536870912
  br i1 %cmp.i.i.i198, label %land.lhs.true13.i.i, label %if.end8.i.i.if.end17.i.i_crit_edge

if.end8.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

land.lhs.true13.i.i:                              ; preds = %if.end8.i.i
  %add.ptr10.i.i199 = getelementptr i8, ptr %retval.0.i, i32 60
  %188 = ptrtoint ptr %add.ptr10.i.i199 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %add.ptr10.i.i199, align 4
  %and.i28.i.i = and i32 %189, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i28.i.i)
  %cmp.i29.i.i = icmp eq i32 %and.i28.i.i, -536870912
  br i1 %cmp.i29.i.i, label %land.lhs.true13.i.i.raw_fs_is_multicast.exit.i_crit_edge, label %land.lhs.true13.i.i.if.end17.i.i_crit_edge

land.lhs.true13.i.i.if.end17.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

land.lhs.true13.i.i.raw_fs_is_multicast.exit.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %raw_fs_is_multicast.exit.i

if.end17.i.i:                                     ; preds = %land.lhs.true13.i.i.if.end17.i.i_crit_edge, %if.end8.i.i.if.end17.i.i_crit_edge
  br label %raw_fs_is_multicast.exit.i

raw_fs_is_multicast.exit.i:                       ; preds = %if.end17.i.i, %land.lhs.true13.i.i.raw_fs_is_multicast.exit.i_crit_edge, %land.lhs.true.i.i.raw_fs_is_multicast.exit.i_crit_edge, %if.end9.i.raw_fs_is_multicast.exit.i_crit_edge
  %retval.0.i.i200 = phi i1 [ false, %if.end17.i.i ], [ false, %if.end9.i.raw_fs_is_multicast.exit.i_crit_edge ], [ true, %land.lhs.true.i.i.raw_fs_is_multicast.exit.i_crit_edge ], [ true, %land.lhs.true13.i.i.raw_fs_is_multicast.exit.i_crit_edge ]
  %flow_db.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %18, i32 0, i32 19
  %190 = ptrtoint ptr %flow_db.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %flow_db.i, align 8
  %lock.i = getelementptr inbounds %struct.mlx5_ib_flow_db, ptr %191, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  br i1 %retval.0.i.i200, label %raw_fs_is_multicast.exit.i.if.end.i98.i_crit_edge, label %if.else.i.i

raw_fs_is_multicast.exit.i.if.end.i98.i_crit_edge: ; preds = %raw_fs_is_multicast.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i98.i

if.else.i.i:                                      ; preds = %raw_fs_is_multicast.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %192 = ptrtoint ptr %priority.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %priority.i, align 4
  %conv.i.i201 = zext i16 %193 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i201, 1
  %spec.select.i.i.i = or i32 %mul.i.i.i, 1
  br label %if.end.i98.i

if.end.i98.i:                                     ; preds = %if.else.i.i, %raw_fs_is_multicast.exit.i.if.end.i98.i_crit_edge
  %priority.0.i.i = phi i32 [ %spec.select.i.i.i, %if.else.i.i ], [ 32, %raw_fs_is_multicast.exit.i.if.end.i98.i_crit_edge ]
  %mdev.i.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %18, i32 0, i32 1
  %194 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mdev.i.i, align 8
  %call2.i.i = call i32 @mlx5_eswitch_get_encap_mode(ptr noundef %195) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.not.i.i = icmp eq i32 %call2.i.i, 0
  %196 = ptrtoint ptr %ns_type.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ns_type.i, align 4
  %198 = zext i32 %197 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %197, label %if.end.i98.i.sw.epilog.thread.i.i_crit_edge [
    i32 0, label %sw.bb.i.i203
    i32 13, label %sw.bb34.i.i
    i32 7, label %sw.bb60.i.i
    i32 15, label %sw.bb105.i.i
    i32 17, label %sw.bb118.i.i
  ]

if.end.i98.i.sw.epilog.thread.i.i_crit_edge:      ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.thread.i.i

sw.bb.i.i203:                                     ; preds = %if.end.i98.i
  %199 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mdev.i.i, align 8
  %arrayidx.i.i202 = getelementptr %struct.mlx5_core_dev, ptr %200, i32 0, i32 8, i32 0, i32 7
  %201 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i.i202, align 4
  %add.ptr.i.i = getelementptr i32, ptr %202, i32 17
  %203 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr12.i.i = getelementptr i32, ptr %202, i32 16
  %205 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %add.ptr12.i.i, align 4
  %207 = and i32 %206, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool15.not.i.i = icmp eq i32 %207, 0
  %spec.select.i.i = select i1 %cmp.not.i.i, i32 2, i32 0
  %flags.0.i.i = select i1 %tobool15.not.i.i, i32 0, i32 %spec.select.i.i
  %208 = and i32 %206, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool28.not.i.i = icmp eq i32 %208, 0
  br i1 %tobool28.not.i.i, label %sw.bb.i.i203.sw.epilog.i.i_crit_edge, label %land.lhs.true29.i.i

sw.bb.i.i203.sw.epilog.i.i_crit_edge:             ; preds = %sw.bb.i.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

land.lhs.true29.i.i:                              ; preds = %sw.bb.i.i203
  call void @__sanitizer_cov_trace_pc() #13
  %or32.i.i = zext i1 %cmp.not.i.i to i32
  %spec.select214.i.i = or i32 %flags.0.i.i, %or32.i.i
  br label %sw.epilog.i.i

sw.bb34.i.i:                                      ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  %209 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mdev.i.i, align 8
  %arrayidx38.i.i = getelementptr %struct.mlx5_core_dev, ptr %210, i32 0, i32 8, i32 0, i32 7
  %211 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx38.i.i, align 4
  %add.ptr41.i.i = getelementptr i32, ptr %212, i32 65
  %213 = ptrtoint ptr %add.ptr41.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %add.ptr41.i.i, align 4
  %add.ptr51.i.i = getelementptr i32, ptr %212, i32 64
  %215 = ptrtoint ptr %add.ptr51.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr51.i.i, align 4
  %217 = and i32 %216, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool54.not.i.i = icmp ne i32 %217, 0
  %narrow229.i.i = select i1 %tobool54.not.i.i, i1 %cmp.not.i.i, i1 false
  %spec.select218.i.i = zext i1 %narrow229.i.i to i32
  br label %sw.epilog.i.i

sw.bb60.i.i:                                      ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  %218 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mdev.i.i, align 8
  %arrayidx64.i.i = getelementptr %struct.mlx5_core_dev, ptr %219, i32 0, i32 8, i32 0, i32 8
  %220 = ptrtoint ptr %arrayidx64.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %arrayidx64.i.i, align 8
  %add.ptr67.i.i = getelementptr i32, ptr %221, i32 17
  %222 = ptrtoint ptr %add.ptr67.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %add.ptr67.i.i, align 4
  %add.ptr77.i.i = getelementptr i32, ptr %221, i32 16
  %224 = ptrtoint ptr %add.ptr77.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %add.ptr77.i.i, align 4
  %226 = and i32 %225, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool80.not.i.i = icmp eq i32 %226, 0
  %227 = select i1 %tobool80.not.i.i, i1 true, i1 %cmp.not.i.i
  %flags.1.i.i = select i1 %227, i32 0, i32 2
  %228 = and i32 %225, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool96.not.i.i = icmp ne i32 %228, 0
  %not.cmp.not.i.i = xor i1 %cmp.not.i.i, true
  %narrow.i.i = select i1 %tobool96.not.i.i, i1 %not.cmp.not.i.i, i1 false
  %spec.select217.i.i = zext i1 %narrow.i.i to i32
  %flags.2.i.i = or i32 %flags.1.i.i, %spec.select217.i.i
  %229 = ptrtoint ptr %priority.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %priority.i, align 4
  %conv104.i.i = zext i16 %230 to i32
  br label %sw.epilog.i.i

sw.bb105.i.i:                                     ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  %231 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mdev.i.i, align 8
  %arrayidx109.i.i = getelementptr %struct.mlx5_core_dev, ptr %232, i32 0, i32 8, i32 0, i32 7
  %233 = ptrtoint ptr %arrayidx109.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx109.i.i, align 4
  %add.ptr112.i.i = getelementptr i32, ptr %234, i32 33
  %235 = ptrtoint ptr %add.ptr112.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %add.ptr112.i.i, align 4
  %237 = ptrtoint ptr %priority.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %priority.i, align 4
  %conv117.i.i = zext i16 %238 to i32
  br label %sw.epilog.i.i

sw.bb118.i.i:                                     ; preds = %if.end.i98.i
  call void @__sanitizer_cov_trace_pc() #13
  %239 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mdev.i.i, align 8
  %arrayidx122.i.i = getelementptr %struct.mlx5_core_dev, ptr %240, i32 0, i32 8, i32 0, i32 7
  %241 = ptrtoint ptr %arrayidx122.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx122.i.i, align 4
  %add.ptr125.i.i = getelementptr i32, ptr %242, i32 81
  %243 = ptrtoint ptr %add.ptr125.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %add.ptr125.i.i, align 4
  %245 = ptrtoint ptr %priority.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %priority.i, align 4
  %conv130.i.i = zext i16 %246 to i32
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb118.i.i, %sw.bb105.i.i, %sw.bb60.i.i, %sw.bb34.i.i, %land.lhs.true29.i.i, %sw.bb.i.i203.sw.epilog.i.i_crit_edge
  %and127.pn.in.in.i.i = phi i32 [ %244, %sw.bb118.i.i ], [ %236, %sw.bb105.i.i ], [ %223, %sw.bb60.i.i ], [ %204, %sw.bb.i.i203.sw.epilog.i.i_crit_edge ], [ %204, %land.lhs.true29.i.i ], [ %214, %sw.bb34.i.i ]
  %flags.3.i.i = phi i32 [ 0, %sw.bb118.i.i ], [ 0, %sw.bb105.i.i ], [ %flags.2.i.i, %sw.bb60.i.i ], [ %flags.0.i.i, %sw.bb.i.i203.sw.epilog.i.i_crit_edge ], [ %spec.select214.i.i, %land.lhs.true29.i.i ], [ %spec.select218.i.i, %sw.bb34.i.i ]
  %priority.1.i.i = phi i32 [ %conv130.i.i, %sw.bb118.i.i ], [ %conv117.i.i, %sw.bb105.i.i ], [ %conv104.i.i, %sw.bb60.i.i ], [ %priority.0.i.i, %sw.bb.i.i203.sw.epilog.i.i_crit_edge ], [ %priority.0.i.i, %land.lhs.true29.i.i ], [ %priority.0.i.i, %sw.bb34.i.i ]
  %and127.pn.in.i.i = lshr i32 %and127.pn.in.in.i.i, 24
  %and127.pn.i.i = and i32 %and127.pn.in.i.i, 63
  %max_table_size.0.i.i = shl nuw i32 1, %and127.pn.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %max_table_size.0.i.i)
  %cmp131.i.i = icmp slt i32 %max_table_size.0.i.i, 65536
  br i1 %cmp131.i.i, label %sw.epilog.i.i.sw.epilog.thread.i.i_crit_edge, label %sw.epilog.i.i._crit_edge

sw.epilog.i.i._crit_edge:                         ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %247

sw.epilog.i.i.sw.epilog.thread.i.i_crit_edge:     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.thread.i.i

sw.epilog.thread.i.i:                             ; preds = %sw.epilog.i.i.sw.epilog.thread.i.i_crit_edge, %if.end.i98.i.sw.epilog.thread.i.i_crit_edge
  %priority.1227.i.i = phi i32 [ %priority.1.i.i, %sw.epilog.i.i.sw.epilog.thread.i.i_crit_edge ], [ %priority.0.i.i, %if.end.i98.i.sw.epilog.thread.i.i_crit_edge ]
  %flags.3225.i.i = phi i32 [ %flags.3.i.i, %sw.epilog.i.i.sw.epilog.thread.i.i_crit_edge ], [ 0, %if.end.i98.i.sw.epilog.thread.i.i_crit_edge ]
  %max_table_size.0223.i.i = phi i32 [ %max_table_size.0.i.i, %sw.epilog.i.i.sw.epilog.thread.i.i_crit_edge ], [ 0, %if.end.i98.i.sw.epilog.thread.i.i_crit_edge ]
  br label %247

247:                                              ; preds = %sw.epilog.thread.i.i, %sw.epilog.i.i._crit_edge
  %priority.1226.i.i = phi i32 [ %priority.1227.i.i, %sw.epilog.thread.i.i ], [ %priority.1.i.i, %sw.epilog.i.i._crit_edge ]
  %flags.3224.i.i = phi i32 [ %flags.3225.i.i, %sw.epilog.thread.i.i ], [ %flags.3.i.i, %sw.epilog.i.i._crit_edge ]
  %248 = phi i32 [ %max_table_size.0223.i.i, %sw.epilog.thread.i.i ], [ 65536, %sw.epilog.i.i._crit_edge ]
  %249 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mdev.i.i, align 8
  %call135.i.i = call ptr @mlx5_get_flow_namespace(ptr noundef %250, i32 noundef %197) #11
  %tobool136.not.i.i = icmp eq ptr %call135.i.i, null
  br i1 %tobool136.not.i.i, label %.unlock.i_crit_edge, label %if.end139.i.i

.unlock.i_crit_edge:                              ; preds = %247
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end139.i.i:                                    ; preds = %247
  %251 = ptrtoint ptr %ns_type.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %ns_type.i, align 4
  %253 = zext i32 %252 to i64
  call void @__sanitizer_cov_trace_switch(i64 %253, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %252, label %if.end139.i.i.unlock.i_crit_edge [
    i32 0, label %sw.bb141.i.i
    i32 13, label %sw.bb143.i.i
    i32 7, label %sw.bb146.i.i
    i32 15, label %sw.bb149.i.i
    i32 17, label %sw.bb152.i.i
  ]

if.end139.i.i.unlock.i_crit_edge:                 ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

sw.bb141.i.i:                                     ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %254 = ptrtoint ptr %flow_db.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %flow_db.i, align 8
  %arrayidx142.i.i = getelementptr [34 x %struct.mlx5_ib_flow_prio], ptr %255, i32 0, i32 %priority.1226.i.i
  br label %sw.epilog157.i.i

sw.bb143.i.i:                                     ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %256 = ptrtoint ptr %flow_db.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %flow_db.i, align 8
  %arrayidx145.i.i = getelementptr %struct.mlx5_ib_flow_db, ptr %257, i32 0, i32 1, i32 %priority.1226.i.i
  br label %sw.epilog157.i.i

sw.bb146.i.i:                                     ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %258 = ptrtoint ptr %flow_db.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %flow_db.i, align 8
  %arrayidx148.i.i = getelementptr %struct.mlx5_ib_flow_db, ptr %259, i32 0, i32 4, i32 %priority.1226.i.i
  br label %sw.epilog157.i.i

sw.bb149.i.i:                                     ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %260 = ptrtoint ptr %flow_db.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %flow_db.i, align 8
  %arrayidx151.i.i = getelementptr %struct.mlx5_ib_flow_db, ptr %261, i32 0, i32 5, i32 %priority.1226.i.i
  br label %sw.epilog157.i.i

sw.bb152.i.i:                                     ; preds = %if.end139.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %262 = ptrtoint ptr %flow_db.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %flow_db.i, align 8
  %arrayidx154.i.i = getelementptr %struct.mlx5_ib_flow_db, ptr %263, i32 0, i32 6, i32 %priority.1226.i.i
  br label %sw.epilog157.i.i

sw.epilog157.i.i:                                 ; preds = %sw.bb152.i.i, %sw.bb149.i.i, %sw.bb146.i.i, %sw.bb143.i.i, %sw.bb141.i.i
  %prio.0.i.i = phi ptr [ %arrayidx154.i.i, %sw.bb152.i.i ], [ %arrayidx151.i.i, %sw.bb149.i.i ], [ %arrayidx148.i.i, %sw.bb146.i.i ], [ %arrayidx145.i.i, %sw.bb143.i.i ], [ %arrayidx142.i.i, %sw.bb141.i.i ]
  %tobool158.not.i.i = icmp eq ptr %prio.0.i.i, null
  br i1 %tobool158.not.i.i, label %sw.epilog157.i.i.unlock.i_crit_edge, label %if.end161.i.i

sw.epilog157.i.i.unlock.i_crit_edge:              ; preds = %sw.epilog157.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end161.i.i:                                    ; preds = %sw.epilog157.i.i
  %264 = ptrtoint ptr %prio.0.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %prio.0.i.i, align 4
  %tobool162.not.i.i = icmp eq ptr %265, null
  br i1 %tobool162.not.i.i, label %if.end164.i.i, label %if.end161.i.i._get_flow_table.exit.i_crit_edge

if.end161.i.i._get_flow_table.exit.i_crit_edge:   ; preds = %if.end161.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_flow_table.exit.i

if.end164.i.i:                                    ; preds = %if.end161.i.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #11
  %266 = getelementptr inbounds i8, ptr %ft_attr.i.i.i, i32 8
  %267 = call ptr @memset(ptr %266, i32 0, i32 20)
  %268 = ptrtoint ptr %ft_attr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %priority.1226.i.i, ptr %ft_attr.i.i.i, align 4
  %max_fte.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i, i32 0, i32 1
  %269 = ptrtoint ptr %max_fte.i.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %248, ptr %max_fte.i.i.i, align 4
  %flags2.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i, i32 0, i32 3
  %270 = ptrtoint ptr %flags2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %flags.3224.i.i, ptr %flags2.i.i.i, align 4
  %autogroup.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i, i32 0, i32 5
  %271 = ptrtoint ptr %autogroup.i.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 6, ptr %autogroup.i.i.i, align 4
  %call.i.i99.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %call135.i.i, ptr noundef nonnull %ft_attr.i.i.i) #11
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i99.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end164.i.i._get_prio.exit.i.i_crit_edge, label %if.end.i.i.i204

if.end164.i.i._get_prio.exit.i.i_crit_edge:       ; preds = %if.end164.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_prio.exit.i.i

if.end.i.i.i204:                                  ; preds = %if.end164.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %272 = ptrtoint ptr %prio.0.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %call.i.i99.i, ptr %prio.0.i.i, align 4
  %refcount.i.i.i = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %prio.0.i.i, i32 0, i32 1
  %273 = ptrtoint ptr %refcount.i.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 0, ptr %refcount.i.i.i, align 4
  br label %_get_prio.exit.i.i

_get_prio.exit.i.i:                               ; preds = %if.end.i.i.i204, %if.end164.i.i._get_prio.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %prio.0.i.i, %if.end.i.i.i204 ], [ %call.i.i99.i, %if.end164.i.i._get_prio.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #11
  br label %_get_flow_table.exit.i

_get_flow_table.exit.i:                           ; preds = %_get_prio.exit.i.i, %if.end161.i.i._get_flow_table.exit.i_crit_edge
  %retval.0.i100.i = phi ptr [ %retval.0.i.i.i, %_get_prio.exit.i.i ], [ %prio.0.i.i, %if.end161.i.i._get_flow_table.exit.i_crit_edge ]
  %cmp.i.i205 = icmp ugt ptr %retval.0.i100.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i205, label %_get_flow_table.exit.i.unlock.i_crit_edge, label %if.end16.i

_get_flow_table.exit.i.unlock.i_crit_edge:        ; preds = %_get_flow_table.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end16.i:                                       ; preds = %_get_flow_table.exit.i
  %274 = zext i32 %dest_type.4230 to i64
  call void @__sanitizer_cov_trace_switch(i64 %274, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %dest_type.4230, label %if.end16.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i206
    i32 1, label %sw.bb18.i
    i32 153, label %sw.bb25.i
  ]

if.end16.i.sw.epilog.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i206:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %275 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 2, ptr %call7.i.i.i.i, align 8
  %276 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %call7.i.i.i.i, i32 0, i32 1
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %dest_id.3229, ptr %276, align 4
  br label %sw.epilog.sink.split.i

sw.bb18.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %278 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 257, ptr %call7.i.i.i.i, align 8
  %279 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %call7.i.i.i.i, i32 0, i32 1
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %dest_id.3229, ptr %279, align 4
  br label %sw.epilog.sink.split.i

sw.bb25.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %281 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 153, ptr %call7.i.i.i.i, align 8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb25.i, %sw.bb18.i, %sw.bb.i206
  %.sink114.i = phi i32 [ 1, %sw.bb25.i ], [ 4, %sw.bb18.i ], [ 4, %sw.bb.i206 ]
  %282 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %flow_act, align 4
  %or30.i = or i32 %283, %.sink114.i
  store i32 %or30.i, ptr %flow_act, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end16.i.sw.epilog.i_crit_edge
  %dst_num.0.i = phi i32 [ 0, %if.end16.i.sw.epilog.i_crit_edge ], [ 1, %sw.epilog.sink.split.i ]
  %284 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %flow_act, align 4
  %and.i207 = and i32 %285, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i207)
  %tobool32.not.i = icmp eq i32 %and.i207, 0
  br i1 %tobool32.not.i, label %sw.epilog.i.if.end38.i_crit_edge, label %if.then33.i

sw.epilog.i.if.end38.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then33.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx34.i = getelementptr %struct.mlx5_flow_destination, ptr %call7.i.i.i.i, i32 %dst_num.0.i
  %286 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 256, ptr %arrayidx34.i, align 8
  %287 = getelementptr %struct.mlx5_flow_destination, ptr %call7.i.i.i.i, i32 %dst_num.0.i, i32 1
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %counter_id.1, ptr %287, align 4
  %inc37.i = add nuw nsw i32 %dst_num.0.i, 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then33.i, %sw.epilog.i.if.end38.i_crit_edge
  %dst_num.1.i = phi i32 [ %inc37.i, %if.then33.i ], [ %dst_num.0.i, %sw.epilog.i.if.end38.i_crit_edge ]
  %289 = ptrtoint ptr %retval.0.i100.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %retval.0.i100.i, align 4
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %291 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i101.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %291, i32 noundef 3520, i32 noundef 40) #14
  %tobool.not.i102.i = icmp eq ptr %call7.i.i.i101.i, null
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i102.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond.i.i, label %if.end38.i.if.then17.i.i_crit_edge, label %if.end.i105.i

if.end38.i.if.then17.i.i_crit_edge:               ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i.i

if.end.i105.i:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_num.1.i)
  %tobool39.not.i = icmp eq i32 %dst_num.1.i, 0
  %spec.select.i = select i1 %tobool39.not.i, ptr null, ptr %call7.i.i.i.i
  %292 = ptrtoint ptr %call7.i.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store volatile ptr %call7.i.i.i101.i, ptr %call7.i.i.i101.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i101.i, i32 0, i32 1
  %293 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call7.i.i.i101.i, ptr %prev.i.i.i, align 4
  %match_value.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2
  %294 = call ptr @memcpy(ptr %match_value.i.i, ptr %retval.0.i165, i32 %retval.0.i177)
  %match_criteria.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1
  %mask_len.i.i = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %retval.0.i, i32 0, i32 1
  %295 = ptrtoint ptr %mask_len.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %mask_len.i.i, align 4
  %297 = call ptr @memcpy(ptr %match_criteria.i.i, ptr %retval.0.i, i32 %296)
  %298 = ptrtoint ptr %match_criteria_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %match_criteria_enable.i.i, align 4
  %300 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %299, ptr %call.i.i.i.i, align 4
  %flow_context6.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 3
  %301 = call ptr @memcpy(ptr %flow_context6.i.i, ptr %flow_context, i32 12)
  %call7.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %290, ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %flow_act, ptr noundef %spec.select.i, i32 noundef %dst_num.1.i) #11
  %rule.i.i = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call7.i.i.i101.i, i32 0, i32 3
  %302 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %call7.i.i, ptr %rule.i.i, align 8
  %cmp.i.i104.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i104.i, label %if.end.i105.i.if.then17.i.i_crit_edge, label %free.thread.i.i

if.end.i105.i.if.then17.i.i_crit_edge:            ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then17.i.i

free.thread.i.i:                                  ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #13
  %refcount.i.i = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %retval.0.i100.i, i32 0, i32 1
  %303 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %refcount.i.i, align 4
  %inc.i.i = add i32 %304, 1
  store i32 %inc.i.i, ptr %refcount.i.i, align 4
  %prio.i.i = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call7.i.i.i101.i, i32 0, i32 2
  %305 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %retval.0.i100.i, ptr %prio.i.i, align 4
  %dev14.i.i = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call7.i.i.i101.i, i32 0, i32 5
  %306 = ptrtoint ptr %dev14.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %18, ptr %dev14.i.i, align 8
  %307 = ptrtoint ptr %retval.0.i100.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %290, ptr %retval.0.i100.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #11
  br label %_create_raw_flow_rule.exit.i

if.then17.i.i:                                    ; preds = %if.end.i105.i.if.then17.i.i_crit_edge, %if.end38.i.if.then17.i.i_crit_edge
  %err.048.i.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.end38.i.if.then17.i.i_crit_edge ], [ %call7.i.i, %if.end.i105.i.if.then17.i.i_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i.i101.i) #11
  call void @kvfree(ptr noundef %call.i.i.i.i) #11
  br label %_create_raw_flow_rule.exit.i

_create_raw_flow_rule.exit.i:                     ; preds = %if.then17.i.i, %free.thread.i.i
  %cond.i.i = phi ptr [ %err.048.i.i, %if.then17.i.i ], [ %call7.i.i.i101.i, %free.thread.i.i ]
  %cmp.i106.i = icmp ugt ptr %cond.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106.i, label %if.then42.i, label %if.end44.i

if.then42.i:                                      ; preds = %_create_raw_flow_rule.exit.i
  %refcount.i107.i = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %retval.0.i100.i, i32 0, i32 1
  %308 = ptrtoint ptr %refcount.i107.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %refcount.i107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %tobool3.not.i.i = icmp eq i32 %309, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i, label %if.then42.i.unlock.i_crit_edge

if.then42.i.unlock.i_crit_edge:                   ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.then.i.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #13
  %310 = ptrtoint ptr %retval.0.i100.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %retval.0.i100.i, align 4
  %call.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef %311) #11
  %312 = ptrtoint ptr %retval.0.i100.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr null, ptr %retval.0.i100.i, align 4
  br label %unlock.i

if.end44.i:                                       ; preds = %_create_raw_flow_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %313 = ptrtoint ptr %flow_db.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %flow_db.i, align 8
  %lock46.i = getelementptr inbounds %struct.mlx5_ib_flow_db, ptr %314, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %lock46.i) #11
  %usecnt.i = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %retval.0.i, i32 0, i32 6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %usecnt.i, i32 1, i32 3, i32 1) #11
  %315 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt.i, ptr %usecnt.i, i32 1, ptr elementtype(i32) %usecnt.i) #11, !srcloc !74
  %flow_matcher.i = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %cond.i.i, i32 0, i32 6
  %316 = ptrtoint ptr %flow_matcher.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %retval.0.i, ptr %flow_matcher.i, align 4
  br label %raw_fs_rule_add.exit

unlock.i:                                         ; preds = %if.then.i.i, %if.then42.i.unlock.i_crit_edge, %_get_flow_table.exit.i.unlock.i_crit_edge, %sw.epilog157.i.i.unlock.i_crit_edge, %if.end139.i.i.unlock.i_crit_edge, %.unlock.i_crit_edge
  %err.0.in.i = phi ptr [ %cond.i.i, %if.then42.i.unlock.i_crit_edge ], [ %cond.i.i, %if.then.i.i ], [ %retval.0.i100.i, %_get_flow_table.exit.i.unlock.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.epilog157.i.i.unlock.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end139.i.i.unlock.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %.unlock.i_crit_edge ]
  %317 = ptrtoint ptr %flow_db.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %flow_db.i, align 8
  %lock48.i = getelementptr inbounds %struct.mlx5_ib_flow_db, ptr %318, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %lock48.i) #11
  br label %raw_fs_rule_add.exit

raw_fs_rule_add.exit:                             ; preds = %unlock.i, %if.end44.i
  %retval.0.ph.i = phi ptr [ %cond.i.i, %if.end44.i ], [ %err.0.in.i, %unlock.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #11
  %cmp.i209 = icmp ugt ptr %retval.0.ph.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %raw_fs_rule_add.exit.if.then64_crit_edge, label %if.end66

raw_fs_rule_add.exit.if.then64_crit_edge:         ; preds = %raw_fs_rule_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then64

if.then64:                                        ; preds = %raw_fs_rule_add.exit.if.then64_crit_edge, %if.end5.i.if.then64_crit_edge, %if.end.i194.if.then64_crit_edge, %if.end61.if.then64_crit_edge
  %retval.0.i208257 = phi ptr [ %retval.0.ph.i, %raw_fs_rule_add.exit.if.then64_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.i.if.then64_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i194.if.then64_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end61.if.then64_crit_edge ]
  %319 = ptrtoint ptr %retval.0.i208257 to i32
  br label %err_out

if.end66:                                         ; preds = %raw_fs_rule_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %ibflow = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %retval.0.ph.i, i32 0, i32 1
  call fastcc void @ib_set_flow(ptr noundef %retval.0.i118, ptr noundef %ibflow, ptr noundef %qp.6231, ptr noundef %18, ptr noundef nonnull %call34)
  br label %cleanup67

err_out:                                          ; preds = %if.then64, %if.then54.err_out_crit_edge, %if.then27.i.err_out_crit_edge, %if.then16.i.err_out_crit_edge, %if.then5.i.err_out_crit_edge, %sw.bb4.i.err_out_crit_edge, %sw.bb.i.err_out_crit_edge, %for.body.err_out_crit_edge
  %ret.0 = phi i32 [ %319, %if.then64 ], [ -22, %if.then54.err_out_crit_edge ], [ -22, %sw.bb.i.err_out_crit_edge ], [ -22, %if.then5.i.err_out_crit_edge ], [ -22, %if.then16.i.err_out_crit_edge ], [ -22, %if.then27.i.err_out_crit_edge ], [ -95, %sw.bb4.i.err_out_crit_edge ], [ -95, %for.body.err_out_crit_edge ]
  call void @ib_uverbs_flow_resources_free(ptr noundef nonnull %call34) #11
  br label %cleanup67

cleanup67:                                        ; preds = %err_out, %if.end66, %uverbs_attr_get_len.exit.cleanup67_crit_edge, %land.lhs.true.i.cleanup67_crit_edge, %if.end25.thread.cleanup67_crit_edge, %if.end25.cleanup67_crit_edge, %uverbs_attr_ptr_get_array_size.exit.cleanup67_crit_edge, %if.end.i139.cleanup67_crit_edge, %if.then20.cleanup67_crit_edge, %land.lhs.true89.i.cleanup67_crit_edge, %if.end65.i.cleanup67_crit_edge, %uverbs_attr_get_obj.exit157.i.cleanup67_crit_edge, %if.then60.i.cleanup67_crit_edge, %land.lhs.true54.i.cleanup67_crit_edge, %uverbs_attr_get_obj.exit.i.cleanup67_crit_edge, %land.lhs.true33.i.cleanup67_crit_edge, %if.end21.i.cleanup67_crit_edge, %if.else.i.cleanup67_crit_edge, %land.lhs.true11.i.cleanup67_crit_edge, %if.end.i120.cleanup67_crit_edge, %mlx5_udata_to_mdev.exit.cleanup67_crit_edge, %entry.cleanup67_crit_edge
  %retval.3 = phi i32 [ %ret.0, %err_out ], [ 0, %if.end66 ], [ -1, %entry.cleanup67_crit_edge ], [ -12, %uverbs_attr_get_len.exit.cleanup67_crit_edge ], [ -22, %mlx5_udata_to_mdev.exit.cleanup67_crit_edge ], [ -22, %if.end.i120.cleanup67_crit_edge ], [ -22, %land.lhs.true11.i.cleanup67_crit_edge ], [ -22, %land.lhs.true33.i.cleanup67_crit_edge ], [ -22, %land.lhs.true54.i.cleanup67_crit_edge ], [ -22, %uverbs_attr_get_obj.exit.i.cleanup67_crit_edge ], [ -22, %if.end65.i.cleanup67_crit_edge ], [ -22, %if.else.i.cleanup67_crit_edge ], [ -22, %if.end21.i.cleanup67_crit_edge ], [ -22, %land.lhs.true89.i.cleanup67_crit_edge ], [ -22, %uverbs_attr_ptr_get_array_size.exit.cleanup67_crit_edge ], [ -22, %if.end.i139.cleanup67_crit_edge ], [ -22, %if.then20.cleanup67_crit_edge ], [ -22, %land.lhs.true.i.cleanup67_crit_edge ], [ -22, %if.end25.cleanup67_crit_edge ], [ -22, %if.end25.thread.cleanup67_crit_edge ], [ -22, %if.then60.i.cleanup67_crit_edge ], [ -22, %uverbs_attr_get_obj.exit157.i.cleanup67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %flow_context) #11
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_resources_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_resources_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ib_set_flow(ptr noundef %uobj, ptr noundef %ibflow, ptr noundef %qp, ptr noundef %device, ptr noundef %uflow_res) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %object = getelementptr inbounds %struct.ib_uobject, ptr %uobj, i32 0, i32 3
  %0 = ptrtoint ptr %object to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ibflow, ptr %object, align 8
  %uobject = getelementptr inbounds %struct.ib_flow, ptr %ibflow, i32 0, i32 2
  %1 = ptrtoint ptr %uobject to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %uobj, ptr %uobject, align 4
  %tobool.not = icmp eq ptr %qp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %usecnt = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #11, !srcloc !74
  %3 = ptrtoint ptr %ibflow to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %qp, ptr %ibflow, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %device2 = getelementptr inbounds %struct.ib_flow, ptr %ibflow, i32 0, i32 1
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %device, ptr %device2, align 4
  %resources = getelementptr inbounds %struct.ib_uflow_object, ptr %uobj, i32 0, i32 1
  %5 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %uflow_res, ptr %resources, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_uverbs_flow_resources_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_get_encap_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER(ptr noundef %attrs) #1 align 64 {
entry:
  %_val = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %uverbs_attr_get.exit.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get.exit.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %arrayidx.i.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not.i = icmp eq ptr %attrs, null
  br i1 %tobool.not.i, label %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge, label %cond.true.i

uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge: ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_udata_to_mdev.exit

cond.true.i:                                      ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %5 = ptrtoint ptr %context1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context1.i, align 4
  br label %mlx5_udata_to_mdev.exit

mlx5_udata_to_mdev.exit:                          ; preds = %cond.true.i, %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge
  %cond.i = phi ptr [ %6, %cond.true.i ], [ null, %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge ]
  %7 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cond.i, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev.i, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %10, i32 0, i32 8, i32 0, i32 7
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i32, ptr %12, i32 17
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %15 = and i32 %14, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i33 = icmp eq i32 %15, 0
  br i1 %tobool.not.i33, label %lor.lhs.false.i, label %mlx5_udata_to_mdev.exit.if.end_crit_edge

mlx5_udata_to_mdev.exit.if.end_crit_edge:         ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false.i:                                  ; preds = %mlx5_udata_to_mdev.exit
  %add.ptr7.i = getelementptr i32, ptr %12, i32 65
  %16 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr7.i, align 4
  %18 = and i32 %17, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not.i = icmp eq i32 %18, 0
  br i1 %tobool10.not.i, label %mlx5_ib_modify_header_supported.exit, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mlx5_ib_modify_header_supported.exit:             ; preds = %lor.lhs.false.i
  %add.ptr17.i = getelementptr i32, ptr %12, i32 81
  %19 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr17.i, align 4
  %21 = and i32 %20, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.i.not = icmp eq i32 %21, 0
  br i1 %tobool20.i.not, label %mlx5_ib_modify_header_supported.exit.cleanup_crit_edge, label %mlx5_ib_modify_header_supported.exit.if.end_crit_edge

mlx5_ib_modify_header_supported.exit.if.end_crit_edge: ; preds = %mlx5_ib_modify_header_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

mlx5_ib_modify_header_supported.exit.cleanup_crit_edge: ; preds = %mlx5_ib_modify_header_supported.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %mlx5_ib_modify_header_supported.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %mlx5_udata_to_mdev.exit.if.end_crit_edge
  %22 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %24 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i35 = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i35, label %if.end.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i.i

if.end.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i.i:                                       ; preds = %if.end
  %arrayidx.i.i36 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i37 = icmp ugt ptr %arrayidx.i.i36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i37, label %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i39

if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i39:                                       ; preds = %if.end.i.i
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %25 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %26)
  %cmp.i7.i = icmp ult i16 %26, 9
  br i1 %cmp.i7.i, label %if.end.i39.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i39.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i36, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i39.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i40 = phi ptr [ %arrayidx.i.i36, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %28, %cond.false.i ], [ %arrayidx.i.i36, %if.end.i39.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %29 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %31 = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i.i.i, label %uverbs_attr_get_alloced_ptr.exit.cleanup_crit_edge, label %if.end.i.i.i

uverbs_attr_get_alloced_ptr.exit.cleanup_crit_edge: ; preds = %uverbs_attr_get_alloced_ptr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i.i:                                     ; preds = %uverbs_attr_get_alloced_ptr.exit
  %arrayidx.i.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 3
  %cmp.i.i.i = icmp ugt ptr %arrayidx.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %uverbs_attr_get_len.exit.i, label %uverbs_attr_get_len.exit.thread.i

uverbs_attr_get_len.exit.thread.i:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %len.i.i41 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 2
  %32 = ptrtoint ptr %len.i.i41 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len.i.i41, align 8
  %conv.i.i = zext i16 %33 to i32
  br label %if.end.i43

uverbs_attr_get_len.exit.i:                       ; preds = %if.end.i.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  %cmp.i = icmp slt ptr %arrayidx.i.i.i, null
  br i1 %cmp.i, label %uverbs_attr_get_len.exit.i.cleanup_crit_edge, label %uverbs_attr_get_len.exit.i.if.end.i43_crit_edge

uverbs_attr_get_len.exit.i.if.end.i43_crit_edge:  ; preds = %uverbs_attr_get_len.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i43

uverbs_attr_get_len.exit.i.cleanup_crit_edge:     ; preds = %uverbs_attr_get_len.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i43:                                       ; preds = %uverbs_attr_get_len.exit.i.if.end.i43_crit_edge, %uverbs_attr_get_len.exit.thread.i
  %retval.0.i9.i = phi i32 [ %conv.i.i, %uverbs_attr_get_len.exit.thread.i ], [ %34, %uverbs_attr_get_len.exit.i.if.end.i43_crit_edge ]
  %rem.i = and i32 %retval.0.i9.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i42 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i42, label %uverbs_attr_ptr_get_array_size.exit.thread52, label %if.end.i43.cleanup_crit_edge

if.end.i43.cleanup_crit_edge:                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

uverbs_attr_ptr_get_array_size.exit.thread52:     ; preds = %if.end.i43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #11
  %35 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %_val, align 8, !annotation !67
  %call7 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 4098, i64 noundef 4294967295, ptr noundef null) #11
  %36 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %_val, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %uverbs_attr_ptr_get_array_size.exit.thread52.cleanup_crit_edge

uverbs_attr_ptr_get_array_size.exit.thread52.cleanup_crit_edge: ; preds = %uverbs_attr_ptr_get_array_size.exit.thread52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %uverbs_attr_ptr_get_array_size.exit.thread52
  %div.i59 = lshr i32 %retval.0.i9.i, 3
  %conv = trunc i64 %37 to i32
  %conv10 = trunc i32 %div.i59 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv)
  %38 = icmp ult i32 %conv, 5
  br i1 %38, label %switch.lookup, label %if.end9.if.then13_crit_edge

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

switch.lookup:                                    ; preds = %if.end9
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.mlx5_ib_handler_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER, i32 0, i32 %conv
  %39 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %39)
  %switch.load = load i8, ptr %switch.gep, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 32) #14
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %switch.lookup.if.then13_crit_edge, label %if.end6.i

switch.lookup.if.then13_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.end6.i:                                        ; preds = %switch.lookup
  %41 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdev.i, align 8
  %call7.i = call ptr @mlx5_modify_header_alloc(ptr noundef %42, i8 noundef zeroext %switch.load, i8 noundef zeroext %conv10, ptr noundef %retval.0.i40) #11
  %43 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i, ptr %43, align 8
  %cmp.i.i47 = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i47, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %mlx5_ib_create_modify_header.exit

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %call7.i.i.i, i32 0, i32 1
  %sub_type.i = getelementptr inbounds %struct.anon.202, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %sub_type.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %sub_type.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %8, ptr %45, align 8
  br label %mlx5_ib_create_modify_header.exit

mlx5_ib_create_modify_header.exit:                ; preds = %if.end12.i, %if.then9.i
  %retval.0.i48 = phi ptr [ %call7.i, %if.then9.i ], [ %call7.i.i.i, %if.end12.i ]
  %cmp.i49 = icmp ugt ptr %retval.0.i48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %mlx5_ib_create_modify_header.exit.if.then13_crit_edge, label %if.end15

mlx5_ib_create_modify_header.exit.if.then13_crit_edge: ; preds = %mlx5_ib_create_modify_header.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13:                                        ; preds = %mlx5_ib_create_modify_header.exit.if.then13_crit_edge, %switch.lookup.if.then13_crit_edge, %if.end9.if.then13_crit_edge
  %retval.0.i4858 = phi ptr [ %retval.0.i48, %mlx5_ib_create_modify_header.exit.if.then13_crit_edge ], [ inttoptr (i32 -12 to ptr), %switch.lookup.if.then13_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end9.if.then13_crit_edge ]
  %48 = ptrtoint ptr %retval.0.i4858 to i32
  br label %cleanup

if.end15:                                         ; preds = %mlx5_ib_create_modify_header.exit
  call void @__sanitizer_cov_trace_pc() #13
  %usecnt.i = getelementptr inbounds %struct.ib_flow_action, ptr %retval.0.i48, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #11
  %49 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %usecnt.i, align 4
  %50 = ptrtoint ptr %retval.0.i48 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %8, ptr %retval.0.i48, align 4
  %type1.i = getelementptr inbounds %struct.ib_flow_action, ptr %retval.0.i48, i32 0, i32 2
  %51 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %type1.i, align 4
  %uobject.i = getelementptr inbounds %struct.ib_flow_action, ptr %retval.0.i48, i32 0, i32 1
  %52 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %retval.0.i, ptr %uobject.i, align 4
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %53 = ptrtoint ptr %object.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %retval.0.i48, ptr %object.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %uverbs_attr_ptr_get_array_size.exit.thread52.cleanup_crit_edge, %if.end.i43.cleanup_crit_edge, %uverbs_attr_get_len.exit.i.cleanup_crit_edge, %uverbs_attr_get_alloced_ptr.exit.cleanup_crit_edge, %mlx5_ib_modify_header_supported.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %if.then13 ], [ 0, %if.end15 ], [ -95, %mlx5_ib_modify_header_supported.exit.cleanup_crit_edge ], [ %call7, %uverbs_attr_ptr_get_array_size.exit.thread52.cleanup_crit_edge ], [ -2, %uverbs_attr_get_alloced_ptr.exit.cleanup_crit_edge ], [ -22, %if.end.i43.cleanup_crit_edge ], [ %34, %uverbs_attr_get_len.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_modify_header_alloc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_handler_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT(ptr noundef %attrs) #1 align 64 {
entry:
  %_val = alloca i64, align 8
  %_val3 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_present.i.i.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 5
  %0 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.uverbs_attr_get_uobject.exit_crit_edge, label %uverbs_attr_get.exit.i

entry.uverbs_attr_get_uobject.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get.exit.i:                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 1
  %cmp.i.i = icmp ugt ptr %arrayidx.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, label %if.end.i

uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge: ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_uobject.exit

if.end.i:                                         ; preds = %uverbs_attr_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 8
  br label %uverbs_attr_get_uobject.exit

uverbs_attr_get_uobject.exit:                     ; preds = %if.end.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge, %entry.uverbs_attr_get_uobject.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %arrayidx.i.i, %uverbs_attr_get.exit.i.uverbs_attr_get_uobject.exit_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.uverbs_attr_get_uobject.exit_crit_edge ]
  %tobool.not.i = icmp eq ptr %attrs, null
  br i1 %tobool.not.i, label %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge, label %cond.true.i

uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge: ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_udata_to_mdev.exit

cond.true.i:                                      ; preds = %uverbs_attr_get_uobject.exit
  call void @__sanitizer_cov_trace_pc() #13
  %context1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 3
  %5 = ptrtoint ptr %context1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context1.i, align 4
  br label %mlx5_udata_to_mdev.exit

mlx5_udata_to_mdev.exit:                          ; preds = %cond.true.i, %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge
  %cond.i = phi ptr [ %6, %cond.true.i ], [ null, %uverbs_attr_get_uobject.exit.mlx5_udata_to_mdev.exit_crit_edge ]
  %7 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cond.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val) #11
  %9 = ptrtoint ptr %_val to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %_val, align 8, !annotation !67
  %call2 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val, ptr noundef %attrs, i32 noundef 4098, i64 noundef 4294967295, ptr noundef null) #11
  %10 = ptrtoint ptr %_val to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %_val, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %mlx5_udata_to_mdev.exit.cleanup36_crit_edge

mlx5_udata_to_mdev.exit.cleanup36_crit_edge:      ; preds = %mlx5_udata_to_mdev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.end:                                           ; preds = %mlx5_udata_to_mdev.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_val3) #11
  %12 = ptrtoint ptr %_val3 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %_val3, align 8, !annotation !67
  %call5 = call i32 @_uverbs_get_const_unsigned(ptr noundef nonnull %_val3, ptr noundef %attrs, i32 noundef 4097, i64 noundef 4294967295, ptr noundef null) #11
  %13 = ptrtoint ptr %_val3 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %_val3, align 8
  %conv6 = trunc i64 %14 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_val3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool8.not = icmp eq i32 %call5, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup36_crit_edge

if.end.cleanup36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.end10:                                         ; preds = %if.end
  %conv11 = trunc i64 %14 to i8
  %conv12 = trunc i64 %11 to i8
  %15 = zext i8 %conv11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %conv11, label %if.end10.cleanup36_crit_edge [
    i8 1, label %sw.bb.i
    i8 3, label %sw.bb3.i
    i8 2, label %sw.bb19.i
    i8 0, label %sw.bb35.i
  ]

if.end10.cleanup36_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv12)
  %cmp.i = icmp eq i8 %conv12, 1
  br i1 %cmp.i, label %mlx5_ib_flow_action_packet_reformat_valid.exit, label %sw.bb.i.cleanup36_crit_edge

sw.bb.i.cleanup36_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

sw.bb3.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv12)
  %cmp5.i = icmp eq i8 %conv12, 1
  br i1 %cmp5.i, label %if.then7.i, label %sw.bb3.i.cleanup36_crit_edge

sw.bb3.i.cleanup36_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.then7.i:                                       ; preds = %sw.bb3.i
  %mdev8.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %mdev8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev8.i, align 8
  %arrayidx11.i = getelementptr %struct.mlx5_core_dev, ptr %17, i32 0, i32 8, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx11.i, align 4
  %add.ptr14.i = getelementptr i32, ptr %19, i32 64
  %20 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr14.i, align 4
  %22 = and i32 %21, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool17.i.not = icmp eq i32 %22, 0
  br i1 %tobool17.i.not, label %if.then7.i.cleanup36_crit_edge, label %if.then7.i.if.end15_crit_edge

if.then7.i.if.end15_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then7.i.cleanup36_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

sw.bb19.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12)
  %cmp21.i = icmp eq i8 %conv12, 0
  br i1 %cmp21.i, label %if.then23.i, label %sw.bb19.i.cleanup36_crit_edge

sw.bb19.i.cleanup36_crit_edge:                    ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.then23.i:                                      ; preds = %sw.bb19.i
  %mdev24.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %23 = ptrtoint ptr %mdev24.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdev24.i, align 8
  %arrayidx27.i = getelementptr %struct.mlx5_core_dev, ptr %24, i32 0, i32 8, i32 0, i32 7
  %25 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx27.i, align 4
  %add.ptr30.i = getelementptr i32, ptr %26, i32 16
  %27 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr30.i, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool33.i.not = icmp eq i32 %29, 0
  br i1 %tobool33.i.not, label %if.then23.i.cleanup36_crit_edge, label %if.then23.i.if.end15_crit_edge

if.then23.i.if.end15_crit_edge:                   ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then23.i.cleanup36_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

sw.bb35.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv12)
  %cmp37.i = icmp eq i8 %conv12, 0
  br i1 %cmp37.i, label %if.then39.i, label %sw.bb35.i.cleanup36_crit_edge

sw.bb35.i.cleanup36_crit_edge:                    ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.then39.i:                                      ; preds = %sw.bb35.i
  %mdev40.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %30 = ptrtoint ptr %mdev40.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev40.i, align 8
  %arrayidx43.i = getelementptr %struct.mlx5_core_dev, ptr %31, i32 0, i32 8, i32 0, i32 7
  %32 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx43.i, align 4
  %add.ptr46.i = getelementptr i32, ptr %33, i32 16
  %34 = ptrtoint ptr %add.ptr46.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr46.i, align 4
  %36 = and i32 %35, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool49.i.not = icmp eq i32 %36, 0
  br i1 %tobool49.i.not, label %if.then39.i.cleanup36_crit_edge, label %if.then39.i.if.end15_crit_edge

if.then39.i.if.end15_crit_edge:                   ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then39.i.cleanup36_crit_edge:                  ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

mlx5_ib_flow_action_packet_reformat_valid.exit:   ; preds = %sw.bb.i
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %8, i32 0, i32 1
  %37 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdev.i, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %38, i32 0, i32 8, i32 0, i32 7
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i32, ptr %40, i32 1
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i = icmp slt i32 %42, 0
  br i1 %tobool.i, label %mlx5_ib_flow_action_packet_reformat_valid.exit.if.end15_crit_edge, label %mlx5_ib_flow_action_packet_reformat_valid.exit.cleanup36_crit_edge

mlx5_ib_flow_action_packet_reformat_valid.exit.cleanup36_crit_edge: ; preds = %mlx5_ib_flow_action_packet_reformat_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

mlx5_ib_flow_action_packet_reformat_valid.exit.if.end15_crit_edge: ; preds = %mlx5_ib_flow_action_packet_reformat_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.end15:                                         ; preds = %mlx5_ib_flow_action_packet_reformat_valid.exit.if.end15_crit_edge, %if.then39.i.if.end15_crit_edge, %if.then23.i.if.end15_crit_edge, %if.then7.i.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 32) #14
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %if.end15.cleanup36_crit_edge, label %if.end19

if.end15.cleanup36_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup36

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6)
  %cmp = icmp eq i32 %conv6, 0
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %44 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %call7.i.i, i32 0, i32 1
  %sub_type = getelementptr inbounds %struct.anon.202, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %sub_type to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %sub_type, align 4
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %8, ptr %44, align 8
  br label %if.end35

if.else:                                          ; preds = %if.end19
  %47 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %49 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i.i68 = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i.i68, label %if.else.if.then24_crit_edge, label %if.end.i.i

if.else.if.then24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.end.i.i:                                       ; preds = %if.else
  %arrayidx.i.i69 = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 0, i32 6, i32 7
  %cmp.i.i70 = icmp ugt ptr %arrayidx.i.i69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i70, label %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %if.end.i72

if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

if.end.i72:                                       ; preds = %if.end.i.i
  %len.i.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 3, i32 0, i32 2
  %50 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %51)
  %cmp.i7.i = icmp ult i16 %51, 9
  br i1 %cmp.i7.i, label %if.end.i72.uverbs_attr_get_alloced_ptr.exit_crit_edge, label %cond.false.i

if.end.i72.uverbs_attr_get_alloced_ptr.exit_crit_edge: ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %uverbs_attr_get_alloced_ptr.exit

cond.false.i:                                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %arrayidx.i.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i69, align 8
  br label %uverbs_attr_get_alloced_ptr.exit

uverbs_attr_get_alloced_ptr.exit:                 ; preds = %cond.false.i, %if.end.i72.uverbs_attr_get_alloced_ptr.exit_crit_edge, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge
  %retval.0.i73 = phi ptr [ %arrayidx.i.i69, %if.end.i.i.uverbs_attr_get_alloced_ptr.exit_crit_edge ], [ %53, %cond.false.i ], [ %arrayidx.i.i69, %if.end.i72.uverbs_attr_get_alloced_ptr.exit_crit_edge ]
  %cmp.i74 = icmp ugt ptr %retval.0.i73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %uverbs_attr_get_alloced_ptr.exit.if.then24_crit_edge, label %if.end26

uverbs_attr_get_alloced_ptr.exit.if.then24_crit_edge: ; preds = %uverbs_attr_get_alloced_ptr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %uverbs_attr_get_alloced_ptr.exit.if.then24_crit_edge, %if.else.if.then24_crit_edge
  %retval.0.i7387 = phi ptr [ %retval.0.i73, %uverbs_attr_get_alloced_ptr.exit.if.then24_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.else.if.then24_crit_edge ]
  %54 = ptrtoint ptr %retval.0.i7387 to i32
  br label %free_maction

if.end26:                                         ; preds = %uverbs_attr_get_alloced_ptr.exit
  %55 = ptrtoint ptr %attr_present.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %attr_present.i.i.i, align 4
  %57 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i.not.i.i76 = icmp eq i32 %57, 0
  %brmerge = or i1 %tobool.i.not.i.i76, %cmp.i.i70
  br i1 %brmerge, label %if.then.i81, label %if.end.i82

if.then.i81:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %arrayidx.i.i69 to i32
  %59 = select i1 %tobool.i.not.i.i76, i32 -2, i32 %58
  br label %uverbs_attr_get_len.exit

if.end.i82:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr %struct.uverbs_attr_bundle, ptr %attrs, i32 3, i32 0, i32 2
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %len.i, align 8
  %conv.i = zext i16 %61 to i32
  br label %uverbs_attr_get_len.exit

uverbs_attr_get_len.exit:                         ; preds = %if.end.i82, %if.then.i81
  %retval.0.i83 = phi i32 [ %59, %if.then.i81 ], [ %conv.i, %if.end.i82 ]
  %call30 = call fastcc i32 @mlx5_ib_flow_action_create_packet_reformat_ctx(ptr noundef %8, ptr noundef nonnull %call7.i.i, i8 noundef zeroext %conv12, i8 noundef zeroext %conv11, ptr noundef %retval.0.i73, i32 noundef %retval.0.i83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %uverbs_attr_get_len.exit.if.end35_crit_edge, label %uverbs_attr_get_len.exit.free_maction_crit_edge

uverbs_attr_get_len.exit.free_maction_crit_edge:  ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_maction

uverbs_attr_get_len.exit.if.end35_crit_edge:      ; preds = %uverbs_attr_get_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.end35:                                         ; preds = %uverbs_attr_get_len.exit.if.end35_crit_edge, %if.then21
  %usecnt.i = getelementptr inbounds %struct.ib_flow_action, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usecnt.i, i32 noundef 4) #11
  %62 = ptrtoint ptr %usecnt.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 0, ptr %usecnt.i, align 4
  %63 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %8, ptr %call7.i.i, align 8
  %type1.i = getelementptr inbounds %struct.ib_flow_action, ptr %call7.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %type1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %type1.i, align 8
  %uobject.i = getelementptr inbounds %struct.ib_flow_action, ptr %call7.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %uobject.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %retval.0.i, ptr %uobject.i, align 4
  %object.i = getelementptr inbounds %struct.ib_uobject, ptr %retval.0.i, i32 0, i32 3
  %66 = ptrtoint ptr %object.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i, ptr %object.i, align 8
  br label %cleanup36

free_maction:                                     ; preds = %uverbs_attr_get_len.exit.free_maction_crit_edge, %if.then24
  %ret.0.ph = phi i32 [ %call30, %uverbs_attr_get_len.exit.free_maction_crit_edge ], [ %54, %if.then24 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup36

cleanup36:                                        ; preds = %free_maction, %if.end35, %if.end15.cleanup36_crit_edge, %mlx5_ib_flow_action_packet_reformat_valid.exit.cleanup36_crit_edge, %if.then39.i.cleanup36_crit_edge, %sw.bb35.i.cleanup36_crit_edge, %if.then23.i.cleanup36_crit_edge, %sw.bb19.i.cleanup36_crit_edge, %if.then7.i.cleanup36_crit_edge, %sw.bb3.i.cleanup36_crit_edge, %sw.bb.i.cleanup36_crit_edge, %if.end10.cleanup36_crit_edge, %if.end.cleanup36_crit_edge, %mlx5_udata_to_mdev.exit.cleanup36_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %ret.0.ph, %free_maction ], [ %call2, %mlx5_udata_to_mdev.exit.cleanup36_crit_edge ], [ %call5, %if.end.cleanup36_crit_edge ], [ -95, %mlx5_ib_flow_action_packet_reformat_valid.exit.cleanup36_crit_edge ], [ -12, %if.end15.cleanup36_crit_edge ], [ -95, %if.then39.i.cleanup36_crit_edge ], [ -95, %if.then23.i.cleanup36_crit_edge ], [ -95, %if.then7.i.cleanup36_crit_edge ], [ -95, %if.end10.cleanup36_crit_edge ], [ -95, %sw.bb35.i.cleanup36_crit_edge ], [ -95, %sw.bb19.i.cleanup36_crit_edge ], [ -95, %sw.bb3.i.cleanup36_crit_edge ], [ -95, %sw.bb.i.cleanup36_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_ib_flow_action_create_packet_reformat_ctx(ptr noundef %dev, ptr nocapture noundef %maction, i8 noundef zeroext %ft_type, i8 noundef zeroext %dv_prt, ptr noundef %in, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  %reformat_params = alloca %struct.mlx5_pkt_reformat_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %ft_type)
  %0 = icmp ult i8 %ft_type, 5
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.tableidx = add i8 %dv_prt, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %1 = icmp ult i8 %switch.tableidx, 3
  br i1 %1, label %switch.lookup37, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

switch.lookup37:                                  ; preds = %switch.lookup
  %2 = sext i8 %ft_type to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.mlx5_ib_flow_action_create_packet_reformat_ctx, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.idx.cast = zext i8 %switch.tableidx to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 2
  %4 = getelementptr inbounds i8, ptr %reformat_params, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %4, align 4
  %6 = ptrtoint ptr %reformat_params to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.offset, ptr %reformat_params, align 4
  %size = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 3
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %size, align 4
  %data = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %in, ptr %data, align 4
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 8
  %call6 = call ptr @mlx5_packet_reformat_alloc(ptr noundef %10, ptr noundef nonnull %reformat_params, i32 noundef %switch.load) #11
  %11 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %maction, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call6, ptr %11, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %switch.lookup37
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %switch.lookup37
  call void @__sanitizer_cov_trace_pc() #13
  %14 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %maction, i32 0, i32 1
  %sub_type = getelementptr inbounds %struct.anon.202, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sub_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %sub_type, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %14, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %switch.lookup.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then8 ], [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_packet_reformat_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5_ib_create_flow(ptr nocapture noundef readonly %qp, ptr noundef %flow_attr, ptr noundef readonly %udata) #1 align 64 {
entry:
  %ucmd_hdr = alloca %struct.mlx5_ib_create_flow, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %flags = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ucmd_hdr) #11
  %4 = ptrtoint ptr %ucmd_hdr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ucmd_hdr, align 8, !annotation !67
  %5 = getelementptr inbounds %struct.mlx5_ib_create_flow, ptr %ucmd_hdr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !67
  %tobool2.not = icmp eq ptr %udata, null
  br i1 %tobool2.not, label %entry.if.end34_crit_edge, label %land.lhs.true

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %entry
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %7 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end34_crit_edge, label %if.then

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp = icmp ult i32 %8, 8
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udata, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.if.then11.i.i.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i32 8, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !70

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ucmd_hdr, i32 noundef 8) #11
  %12 = call i32 @llvm.read_register.i32(metadata !57) #11
  %and.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !71
  %and.i.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !72
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !73
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ucmd_hdr, ptr noundef %10, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !72
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end11, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !70

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.if.then11.i.i.i_crit_edge
  %res.0.i.i.i208 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.end.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i.i208
  %add.ptr.i.i.i = getelementptr i8, ptr %ucmd_hdr, i32 %sub.i.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i208)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i.i
  %16 = ptrtoint ptr %ucmd_hdr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ucmd_hdr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp12 = icmp ugt i32 %17, 1
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %mul = shl nuw nsw i32 %17, 4
  %add = or i32 %mul, 8
  %18 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add)
  %cmp18 = icmp ugt i32 %19, %add
  br i1 %cmp18, label %land.lhs.true19, label %if.end15.if.end8.i.i_crit_edge

if.end15.if.end8.i.i_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

land.lhs.true19:                                  ; preds = %if.end15
  %sub = sub i32 %19, %add
  %call21 = call fastcc zeroext i1 @ib_is_udata_cleared(ptr noundef nonnull %udata, i32 noundef %add, i32 noundef %sub)
  br i1 %call21, label %land.lhs.true19.if.end8.i.i_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true19.if.end8.i.i_crit_edge:            ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %land.lhs.true19.if.end8.i.i_crit_edge, %if.end15.if.end8.i.i_crit_edge
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool26.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool26.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end29

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end8.i.i
  %call30 = call fastcc i32 @ib_copy_from_udata(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %udata, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.end29.free_ucmd_crit_edge

if.end29.free_ucmd_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ucmd

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end34:                                         ; preds = %if.end29.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %entry.if.end34_crit_edge
  %ucmd.0 = phi ptr [ %call9.i.i, %if.end29.if.end34_crit_edge ], [ null, %land.lhs.true.if.end34_crit_edge ], [ null, %entry.if.end34_crit_edge ]
  %priority = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 2
  %20 = ptrtoint ptr %priority to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %priority, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %21)
  %cmp35 = icmp ugt i16 %21, 15
  br i1 %cmp35, label %if.end34.free_ucmd_crit_edge, label %if.end38

if.end34.free_ucmd_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ucmd

if.end38:                                         ; preds = %if.end34
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and40 = and i32 %23, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end38.free_ucmd_crit_edge

if.end38.free_ucmd_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ucmd

if.end43:                                         ; preds = %if.end38
  br i1 %tobool.not, label %if.end43.if.end53_crit_edge, label %land.lhs.true46

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true46:                                  ; preds = %if.end43
  %24 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flow_attr, align 4
  %.off = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true46.free_ucmd_crit_edge, label %land.lhs.true46.if.end53_crit_edge

land.lhs.true46.if.end53_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

land.lhs.true46.free_ucmd_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ucmd

if.end53:                                         ; preds = %land.lhs.true46.if.end53_crit_edge, %if.end43.if.end53_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i196 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 16) #14
  %tobool55.not = icmp eq ptr %call7.i.i196, null
  br i1 %tobool55.not, label %if.end53.free_ucmd_crit_edge, label %if.end57

if.end53.free_ucmd_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_ucmd

if.end57:                                         ; preds = %if.end53
  %flow_db = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 19
  %27 = ptrtoint ptr %flow_db to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %flow_db, align 8
  %lock = getelementptr inbounds %struct.mlx5_ib_flow_db, ptr %28, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %call60 = call fastcc ptr @get_flow_table(ptr noundef %1, ptr noundef %flow_attr, i32 noundef %cond)
  %cmp.i = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call60 to i32
  br label %unlock

if.end64:                                         ; preds = %if.end57
  %30 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flow_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp66 = icmp eq i32 %31, 3
  br i1 %cmp66, label %if.then68, label %if.end64.if.end74_crit_edge

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then68:                                        ; preds = %if.end64
  %call69 = call fastcc ptr @get_flow_table(ptr noundef %1, ptr noundef %flow_attr, i32 noundef 1)
  %cmp.i199 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.then71, label %if.then68.if.end74_crit_edge

if.then68.if.end74_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %call69 to i32
  br label %destroy_ft

if.end74:                                         ; preds = %if.then68.if.end74_crit_edge, %if.end64.if.end74_crit_edge
  %ft_prio_tx.0 = phi ptr [ %call69, %if.then68.if.end74_crit_edge ], [ null, %if.end64.if.end74_crit_edge ]
  br i1 %tobool.not, label %if.else, label %if.then76

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call7.i.i196 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 153, ptr %call7.i.i196, align 8
  br label %if.end84

if.else:                                          ; preds = %if.end74
  %34 = ptrtoint ptr %call7.i.i196 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %call7.i.i196, align 8
  %is_rss = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 14
  %35 = ptrtoint ptr %is_rss to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %is_rss, align 4
  %36 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool79.not = icmp eq i8 %36, 0
  br i1 %tobool79.not, label %if.else81, label %if.then80

if.then80:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %37 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %call7.i.i196, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %40, align 4
  br label %if.end84

if.else81:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %tirn82 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 1, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %tirn82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tirn82, align 4
  %44 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %call7.i.i196, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %44, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.then80, %if.then76
  %46 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flow_attr, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %47, label %if.end84.destroy_ft_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end84.sw.bb92_crit_edge
    i32 2, label %if.end84.sw.bb92_crit_edge210
    i32 3, label %sw.bb94
  ]

if.end84.sw.bb92_crit_edge210:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb92

if.end84.sw.bb92_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb92

if.end84.destroy_ft_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_ft

sw.bb:                                            ; preds = %if.end84
  %flags86 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 9
  %49 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags86, align 8
  %and87 = and i32 %50, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %sw.bb.cond.end_crit_edge, label %cond.true

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %underlay_qpn89 = getelementptr inbounds %struct.mlx5_ib_qp, ptr %qp, i32 0, i32 20
  %51 = ptrtoint ptr %underlay_qpn89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %underlay_qpn89, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb.cond.end_crit_edge
  %cond90 = phi i32 [ %52, %cond.true ], [ 0, %sw.bb.cond.end_crit_edge ]
  %call91 = call fastcc ptr @_create_flow_rule(ptr noundef %1, ptr noundef %call60, ptr noundef %flow_attr, ptr noundef nonnull %call7.i.i196, i32 noundef %cond90, ptr noundef %ucmd.0)
  br label %sw.epilog

sw.bb92:                                          ; preds = %if.end84.sw.bb92_crit_edge, %if.end84.sw.bb92_crit_edge210
  %call93 = call fastcc ptr @create_leftovers_rule(ptr noundef %1, ptr noundef %call60, ptr noundef %flow_attr, ptr noundef nonnull %call7.i.i196)
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %call95 = call fastcc ptr @create_sniffer_rule(ptr noundef %1, ptr noundef %call60, ptr noundef %ft_prio_tx.0, ptr noundef nonnull %call7.i.i196)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb94, %sw.bb92, %cond.end
  %handler.0 = phi ptr [ %call95, %sw.bb94 ], [ %call93, %sw.bb92 ], [ %call91, %cond.end ]
  %cmp.i200 = icmp ugt ptr %handler.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then97, label %if.end99

if.then97:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %handler.0 to i32
  br label %destroy_ft

if.end99:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %flow_db to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %flow_db, align 8
  %lock101 = getelementptr inbounds %struct.mlx5_ib_flow_db, ptr %55, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %lock101) #11
  call void @kfree(ptr noundef nonnull %call7.i.i196) #11
  call void @kfree(ptr noundef %ucmd.0) #11
  %ibflow = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %handler.0, i32 0, i32 1
  br label %cleanup

destroy_ft:                                       ; preds = %if.then97, %if.end84.destroy_ft_crit_edge, %if.then71
  %ft_prio_tx.1 = phi ptr [ null, %if.then71 ], [ %ft_prio_tx.0, %if.then97 ], [ %ft_prio_tx.0, %if.end84.destroy_ft_crit_edge ]
  %err.0 = phi i32 [ %32, %if.then71 ], [ %53, %if.then97 ], [ -22, %if.end84.destroy_ft_crit_edge ]
  %refcount.i = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %call60, i32 0, i32 1
  %56 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool3.not.i = icmp eq i32 %57, 0
  br i1 %tobool3.not.i, label %if.then.i, label %destroy_ft.put_flow_table.exit_crit_edge

destroy_ft.put_flow_table.exit_crit_edge:         ; preds = %destroy_ft
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_flow_table.exit

if.then.i:                                        ; preds = %destroy_ft
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %call60 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call60, align 4
  %call.i = call i32 @mlx5_destroy_flow_table(ptr noundef %59) #11
  %60 = ptrtoint ptr %call60 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %call60, align 4
  br label %put_flow_table.exit

put_flow_table.exit:                              ; preds = %if.then.i, %destroy_ft.put_flow_table.exit_crit_edge
  %tobool102.not = icmp eq ptr %ft_prio_tx.1, null
  br i1 %tobool102.not, label %put_flow_table.exit.unlock_crit_edge, label %if.then103

put_flow_table.exit.unlock_crit_edge:             ; preds = %put_flow_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then103:                                       ; preds = %put_flow_table.exit
  %refcount.i201 = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %ft_prio_tx.1, i32 0, i32 1
  %61 = ptrtoint ptr %refcount.i201 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %refcount.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool3.not.i202 = icmp eq i32 %62, 0
  br i1 %tobool3.not.i202, label %if.then.i204, label %if.then103.unlock_crit_edge

if.then103.unlock_crit_edge:                      ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then.i204:                                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %ft_prio_tx.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ft_prio_tx.1, align 4
  %call.i203 = call i32 @mlx5_destroy_flow_table(ptr noundef %64) #11
  %65 = ptrtoint ptr %ft_prio_tx.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %ft_prio_tx.1, align 4
  br label %unlock

unlock:                                           ; preds = %if.then.i204, %if.then103.unlock_crit_edge, %put_flow_table.exit.unlock_crit_edge, %if.then62
  %err.1 = phi i32 [ %29, %if.then62 ], [ %err.0, %put_flow_table.exit.unlock_crit_edge ], [ %err.0, %if.then103.unlock_crit_edge ], [ %err.0, %if.then.i204 ]
  %66 = ptrtoint ptr %flow_db to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %flow_db, align 8
  %lock106 = getelementptr inbounds %struct.mlx5_ib_flow_db, ptr %67, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %lock106) #11
  call void @kfree(ptr noundef nonnull %call7.i.i196) #11
  br label %free_ucmd

free_ucmd:                                        ; preds = %unlock, %if.end53.free_ucmd_crit_edge, %land.lhs.true46.free_ucmd_crit_edge, %if.end38.free_ucmd_crit_edge, %if.end34.free_ucmd_crit_edge, %if.end29.free_ucmd_crit_edge
  %ucmd.1 = phi ptr [ %call9.i.i, %if.end29.free_ucmd_crit_edge ], [ %ucmd.0, %unlock ], [ %ucmd.0, %if.end34.free_ucmd_crit_edge ], [ %ucmd.0, %if.end38.free_ucmd_crit_edge ], [ %ucmd.0, %land.lhs.true46.free_ucmd_crit_edge ], [ %ucmd.0, %if.end53.free_ucmd_crit_edge ]
  %err.2 = phi i32 [ %call30, %if.end29.free_ucmd_crit_edge ], [ %err.1, %unlock ], [ -12, %if.end34.free_ucmd_crit_edge ], [ -22, %if.end38.free_ucmd_crit_edge ], [ -22, %land.lhs.true46.free_ucmd_crit_edge ], [ -12, %if.end53.free_ucmd_crit_edge ]
  call void @kfree(ptr noundef %ucmd.1) #11
  %68 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_ucmd, %if.end99, %if.end8.i.i.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then11.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then11.i.i.i ], [ %68, %free_ucmd ], [ %ibflow, %if.end99 ], [ inttoptr (i32 -95 to ptr), %if.then.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %land.lhs.true19.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ucmd_hdr) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_destroy_flow(ptr noundef %flow_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %flow_id, i32 -8
  %dev2 = getelementptr i8, ptr %flow_id, i32 24
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  %flow_db = getelementptr inbounds %struct.mlx5_ib_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %flow_db to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flow_db, align 8
  %lock = getelementptr inbounds %struct.mlx5_ib_flow_db, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %cmp.not48 = icmp eq ptr %5, %add.ptr
  br i1 %cmp.not48, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.049 = phi ptr [ %tmp1.0, %list_del.exit.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %iter.049 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp1.0 = load ptr, ptr %iter.049, align 4
  %rule = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %iter.049, i32 0, i32 3
  %7 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rule, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %8) #11
  %prio = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %iter.049, i32 0, i32 2
  %9 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prio, align 4
  %refcount.i = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refcount.i, align 4
  %sub.i = add i32 %12, -1
  store i32 %sub.i, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool3.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool3.not.i, label %if.then.i, label %for.body.put_flow_table.exit_crit_edge

for.body.put_flow_table.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_flow_table.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %14) #11
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %10, align 4
  br label %put_flow_table.exit

put_flow_table.exit:                              ; preds = %if.then.i, %for.body.put_flow_table.exit_crit_edge
  %call.i.i41 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %iter.049) #11
  br i1 %call.i.i41, label %if.end.i.i, label %put_flow_table.exit.list_del.exit_crit_edge

put_flow_table.exit.list_del.exit_crit_edge:      ; preds = %put_flow_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %put_flow_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %iter.049, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %iter.049 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iter.049, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %put_flow_table.exit.list_del.exit_crit_edge
  %22 = ptrtoint ptr %iter.049 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %iter.049, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %iter.049, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %iter.049) #11
  %cmp.not = icmp eq ptr %tmp1.0, %add.ptr
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %rule19 = getelementptr i8, ptr %flow_id, i32 16
  %24 = ptrtoint ptr %rule19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rule19, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %25) #11
  %prio20 = getelementptr i8, ptr %flow_id, i32 12
  %26 = ptrtoint ptr %prio20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prio20, align 4
  %refcount.i42 = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %refcount.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %refcount.i42, align 4
  %sub.i43 = add i32 %29, -1
  store i32 %sub.i43, ptr %refcount.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i43)
  %tobool3.not.i44 = icmp eq i32 %sub.i43, 0
  br i1 %tobool3.not.i44, label %if.then.i46, label %for.end.put_flow_table.exit47_crit_edge

for.end.put_flow_table.exit47_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_flow_table.exit47

if.then.i46:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %call.i45 = tail call i32 @mlx5_destroy_flow_table(ptr noundef %31) #11
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %27, align 4
  br label %put_flow_table.exit47

put_flow_table.exit47:                            ; preds = %if.then.i46, %for.end.put_flow_table.exit47_crit_edge
  %ibcounters = getelementptr i8, ptr %flow_id, i32 20
  %33 = ptrtoint ptr %ibcounters to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ibcounters, align 4
  tail call void @mlx5_ib_counters_clear_description(ptr noundef %34) #11
  %35 = ptrtoint ptr %flow_db to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %flow_db, align 8
  %lock22 = getelementptr inbounds %struct.mlx5_ib_flow_db, ptr %36, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %lock22) #11
  %flow_matcher = getelementptr i8, ptr %flow_id, i32 28
  %37 = ptrtoint ptr %flow_matcher to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %flow_matcher, align 4
  %tobool.not = icmp eq ptr %38, null
  br i1 %tobool.not, label %put_flow_table.exit47.if.end_crit_edge, label %if.then

put_flow_table.exit47.if.end_crit_edge:           ; preds = %put_flow_table.exit47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %put_flow_table.exit47
  call void @__sanitizer_cov_trace_pc() #13
  %usecnt = getelementptr inbounds %struct.mlx5_ib_flow_matcher, ptr %38, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usecnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %usecnt, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usecnt, ptr %usecnt, i32 1, ptr elementtype(i32) %usecnt) #11, !srcloc !75
  br label %if.end

if.end:                                           ; preds = %if.then, %put_flow_table.exit47.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_destroy_flow_action(ptr noundef %action) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ib_flow_action, ptr %action, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %1, label %do.end [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ctx = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %action, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctx, align 8
  tail call void @mlx5_accel_esp_destroy_xfrm(ptr noundef %4) #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %action, i32 0, i32 1
  %sub_type.i = getelementptr inbounds %struct.anon.202, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sub_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sub_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %7, label %sw.bb1.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev.i, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %action, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void @mlx5_modify_header_dealloc(ptr noundef %12, ptr noundef %15) #11
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 8
  %mdev3.i = getelementptr inbounds %struct.mlx5_ib_dev, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %mdev3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev3.i, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %action, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  tail call void @mlx5_packet_reformat_dealloc(ptr noundef %19, ptr noundef %22) #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1920, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1.i, %sw.bb.i, %sw.bb1.sw.epilog_crit_edge, %sw.bb
  tail call void @kfree(ptr noundef %action) #11
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_from_udata(ptr noundef %dest, ptr nocapture noundef readonly %udata, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udata, align 4
  tail call void @__check_object_size(ptr noundef %dest, i32 noundef %len, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #15, !srcloc !69
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !70

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dest, i32 noundef %len) #11
  %3 = tail call i32 @llvm.read_register.i32(metadata !57) #11
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !71
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !73
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %dest, ptr noundef %1, i32 noundef %len) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #11, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !73
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %len, %entry.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.then11.i.i, !prof !70

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %dest, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %7 = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ib_is_udata_cleared(ptr nocapture noundef readonly %udata, i32 noundef %offset, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %len)
  %cmp.i = icmp ugt i32 %len, 65535
  br i1 %cmp.i, label %entry.ib_is_buffer_cleared.exit_crit_edge, label %if.end.i

entry.ib_is_buffer_cleared.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_is_buffer_cleared.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udata, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %call.i = tail call ptr @memdup_user(ptr noundef %add.ptr, i32 noundef %len) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.ib_is_buffer_cleared.exit_crit_edge, label %if.end3.i

if.end.i.ib_is_buffer_cleared.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_is_buffer_cleared.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call ptr @memchr_inv(ptr noundef %call.i, i32 noundef 0, i32 noundef %len) #11
  %tobool.not.i = icmp eq ptr %call4.i, null
  tail call void @kfree(ptr noundef %call.i) #11
  br label %ib_is_buffer_cleared.exit

ib_is_buffer_cleared.exit:                        ; preds = %if.end3.i, %if.end.i.ib_is_buffer_cleared.exit_crit_edge, %entry.ib_is_buffer_cleared.exit_crit_edge
  %retval.0.i = phi i1 [ %tobool.not.i, %if.end3.i ], [ false, %entry.ib_is_buffer_cleared.exit_crit_edge ], [ false, %if.end.i.ib_is_buffer_cleared.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_flow_table(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %flow_attr, i32 noundef %ft_type) unnamed_addr #1 align 64 {
entry:
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 8
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 17
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %7, 24
  %and2 = and i32 %shr, 63
  %shl = shl nuw i32 1, %and2
  %call = tail call i32 @mlx5_eswitch_get_encap_mode(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %8 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flow_attr, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %9, label %entry.cleanup_crit_edge [
    i32 0, label %lor.lhs.false.i
    i32 1, label %entry.sw.bb88_crit_edge
    i32 2, label %entry.sw.bb88_crit_edge186
    i32 3, label %sw.bb94
  ]

entry.sw.bb88_crit_edge186:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb88

entry.sw.bb88_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb88

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %num_of_specs.i = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 4
  %11 = ptrtoint ptr %num_of_specs.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_of_specs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp1.i = icmp eq i8 %12, 0
  br i1 %cmp1.i, label %lor.lhs.false.i.if.else_crit_edge, label %if.end.i

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %14, label %if.end.i.if.else_crit_edge [
    i32 48, label %if.then6.i
    i32 32, label %if.then13.i
  ]

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dst_ip.i = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1, i32 4
  %16 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst_ip.i, align 4
  %and.i.i = and i32 %17, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  br label %flow_is_multicast_only.exit

if.then13.i:                                      ; preds = %if.end.i
  %mask.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %add.ptr.i, i32 0, i32 3
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask.i, align 4
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i, label %if.then13.i.if.else_crit_edge, label %land.rhs.i

if.then13.i.if.else_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.rhs.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  %val16.i = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1, i32 2
  %21 = ptrtoint ptr %val16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val16.i, align 4
  %23 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i30.i = icmp ne i32 %23, 0
  br label %flow_is_multicast_only.exit

flow_is_multicast_only.exit:                      ; preds = %land.rhs.i, %if.then6.i
  %retval.1.i = phi i1 [ %cmp.i.i, %if.then6.i ], [ %tobool.i30.i, %land.rhs.i ]
  %call5.not = xor i1 %retval.1.i, true
  %brmerge = select i1 %call5.not, i1 true, i1 %tobool
  br i1 %brmerge, label %flow_is_multicast_only.exit.if.else_crit_edge, label %flow_is_multicast_only.exit.if.end_crit_edge

flow_is_multicast_only.exit.if.end_crit_edge:     ; preds = %flow_is_multicast_only.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

flow_is_multicast_only.exit.if.else_crit_edge:    ; preds = %flow_is_multicast_only.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %flow_is_multicast_only.exit.if.else_crit_edge, %if.then13.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge
  %priority7 = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 2
  %24 = ptrtoint ptr %priority7 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %priority7, align 2
  %conv = zext i16 %25 to i32
  %mul.i = shl nuw nsw i32 %conv, 1
  %not.dont_trap.i = xor i1 %tobool, true
  %inc.i = zext i1 %not.dont_trap.i to i32
  %spec.select.i = or i32 %mul.i, %inc.i
  br label %if.end

if.end:                                           ; preds = %if.else, %flow_is_multicast_only.exit.if.end_crit_edge
  %storemerge = phi i32 [ %spec.select.i, %if.else ], [ 32, %flow_is_multicast_only.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ft_type)
  %cmp10 = icmp eq i32 %ft_type, 0
  br i1 %cmp10, label %if.then12, label %if.else51

if.then12:                                        ; preds = %if.end
  %flow_db = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 19
  %26 = ptrtoint ptr %flow_db to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flow_db, align 8
  %arrayidx13 = getelementptr [34 x %struct.mlx5_ib_flow_prio], ptr %27, i32 0, i32 %storemerge
  %is_rep = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 5
  %28 = ptrtoint ptr %is_rep to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %is_rep, align 8
  %29 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool14.not = icmp eq i8 %29, 0
  %30 = select i1 %tobool14.not, i1 %cmp.not, i1 false
  br i1 %30, label %land.lhs.true17, label %if.then12.if.end29_crit_edge

if.then12.if.end29_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.lhs.true17:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev, align 8
  %arrayidx21 = getelementptr %struct.mlx5_core_dev, ptr %32, i32 0, i32 8, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx21, align 4
  %add.ptr24 = getelementptr i32, ptr %34, i32 16
  %35 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr24, align 4
  %37 = lshr i32 %36, 22
  %38 = and i32 %37, 2
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true17, %if.then12.if.end29_crit_edge
  %flags1.0 = phi i32 [ 0, %if.then12.if.end29_crit_edge ], [ %38, %land.lhs.true17 ]
  br i1 %tobool14.not, label %land.lhs.true35, label %if.end29.if.end85_crit_edge

if.end29.if.end85_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

land.lhs.true35:                                  ; preds = %if.end29
  br i1 %cmp.not, label %land.lhs.true37, label %land.lhs.true35.if.end85_crit_edge

land.lhs.true35.if.end85_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

land.lhs.true37:                                  ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdev, align 8
  %arrayidx41 = getelementptr %struct.mlx5_core_dev, ptr %40, i32 0, i32 8, i32 0, i32 7
  %41 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx41, align 4
  %add.ptr44 = getelementptr i32, ptr %42, i32 16
  %43 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr44, align 4
  %45 = lshr i32 %44, 13
  %46 = and i32 %45, 1
  %47 = or i32 %46, %flags1.0
  br label %if.end85

if.else51:                                        ; preds = %if.end
  %48 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdev, align 8
  %arrayidx55 = getelementptr %struct.mlx5_core_dev, ptr %49, i32 0, i32 8, i32 0, i32 7
  %50 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx55, align 4
  %add.ptr58 = getelementptr i32, ptr %51, i32 65
  %52 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr58, align 4
  %shr59 = lshr i32 %53, 24
  %and60 = and i32 %shr59, 63
  %shl61 = shl nuw i32 1, %and60
  %flow_db62 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 19
  %54 = ptrtoint ptr %flow_db62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %flow_db62, align 8
  %arrayidx63 = getelementptr %struct.mlx5_ib_flow_db, ptr %55, i32 0, i32 1, i32 %storemerge
  %is_rep64 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 5
  %56 = ptrtoint ptr %is_rep64 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load65 = load i8, ptr %is_rep64, align 8
  %57 = and i8 %bf.load65, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool68.not = icmp eq i8 %57, 0
  br i1 %tobool68.not, label %land.lhs.true69, label %if.else51.if.end85_crit_edge

if.else51.if.end85_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

land.lhs.true69:                                  ; preds = %if.else51
  br i1 %cmp.not, label %land.lhs.true71, label %land.lhs.true69.if.end85_crit_edge

land.lhs.true69.if.end85_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

land.lhs.true71:                                  ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr78 = getelementptr i32, ptr %51, i32 64
  %58 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr78, align 4
  %60 = lshr i32 %59, 24
  %.lobit = and i32 %60, 1
  br label %if.end85

if.end85:                                         ; preds = %land.lhs.true71, %land.lhs.true69.if.end85_crit_edge, %if.else51.if.end85_crit_edge, %land.lhs.true37, %land.lhs.true35.if.end85_crit_edge, %if.end29.if.end85_crit_edge
  %fn_type.0 = phi i32 [ 0, %if.end29.if.end85_crit_edge ], [ 0, %land.lhs.true35.if.end85_crit_edge ], [ 13, %if.else51.if.end85_crit_edge ], [ 13, %land.lhs.true69.if.end85_crit_edge ], [ 0, %land.lhs.true37 ], [ 13, %land.lhs.true71 ]
  %prio.0 = phi ptr [ %arrayidx13, %if.end29.if.end85_crit_edge ], [ %arrayidx13, %land.lhs.true35.if.end85_crit_edge ], [ %arrayidx63, %if.else51.if.end85_crit_edge ], [ %arrayidx63, %land.lhs.true69.if.end85_crit_edge ], [ %arrayidx13, %land.lhs.true37 ], [ %arrayidx63, %land.lhs.true71 ]
  %max_table_size.0 = phi i32 [ %shl, %if.end29.if.end85_crit_edge ], [ %shl, %land.lhs.true35.if.end85_crit_edge ], [ %shl61, %if.else51.if.end85_crit_edge ], [ %shl61, %land.lhs.true69.if.end85_crit_edge ], [ %shl, %land.lhs.true37 ], [ %shl61, %land.lhs.true71 ]
  %flags1.1 = phi i32 [ %flags1.0, %if.end29.if.end85_crit_edge ], [ %flags1.0, %land.lhs.true35.if.end85_crit_edge ], [ 0, %if.else51.if.end85_crit_edge ], [ 0, %land.lhs.true69.if.end85_crit_edge ], [ %47, %land.lhs.true37 ], [ %.lobit, %land.lhs.true71 ]
  %61 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdev, align 8
  %call87 = tail call ptr @mlx5_get_flow_namespace(ptr noundef %62, i32 noundef %fn_type.0) #11
  br label %sw.epilog

sw.bb88:                                          ; preds = %entry.sw.bb88_crit_edge, %entry.sw.bb88_crit_edge186
  %63 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev, align 8
  %call90 = tail call ptr @mlx5_get_flow_namespace(ptr noundef %64, i32 noundef 5) #11
  %flow_db91 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 19
  %65 = ptrtoint ptr %flow_db91 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %flow_db91, align 8
  %arrayidx93 = getelementptr [34 x %struct.mlx5_ib_flow_prio], ptr %66, i32 0, i32 33
  br label %sw.epilog

sw.bb94:                                          ; preds = %entry
  %67 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mdev, align 8
  %arrayidx98 = getelementptr %struct.mlx5_core_dev, ptr %68, i32 0, i32 8, i32 0, i32 7
  %69 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx98, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %73 = and i32 %72, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool104.not = icmp eq i32 %73, 0
  br i1 %tobool104.not, label %sw.bb94.cleanup_crit_edge, label %if.end107

sw.bb94.cleanup_crit_edge:                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end107:                                        ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ft_type)
  %cmp109 = icmp eq i32 %ft_type, 0
  %cond = select i1 %cmp109, i32 11, i32 12
  %call111 = tail call ptr @mlx5_get_flow_namespace(ptr noundef %68, i32 noundef %cond) #11
  %flow_db112 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 19
  %74 = ptrtoint ptr %flow_db112 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %flow_db112, align 8
  %arrayidx113 = getelementptr %struct.mlx5_ib_flow_db, ptr %75, i32 0, i32 2, i32 %ft_type
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end107, %sw.bb88, %if.end85
  %num_entries.0 = phi i32 [ 1, %if.end107 ], [ 2, %sw.bb88 ], [ 65536, %if.end85 ]
  %num_groups.0 = phi i32 [ 1, %if.end107 ], [ 2, %sw.bb88 ], [ 6, %if.end85 ]
  %priority.0 = phi i32 [ 0, %if.end107 ], [ 0, %sw.bb88 ], [ %storemerge, %if.end85 ]
  %ns.0 = phi ptr [ %call111, %if.end107 ], [ %call90, %sw.bb88 ], [ %call87, %if.end85 ]
  %prio.1 = phi ptr [ %arrayidx113, %if.end107 ], [ %arrayidx93, %sw.bb88 ], [ %prio.0, %if.end85 ]
  %max_table_size.1 = phi i32 [ %shl, %if.end107 ], [ %shl, %sw.bb88 ], [ %max_table_size.0, %if.end85 ]
  %flags1.2 = phi i32 [ 0, %if.end107 ], [ 0, %sw.bb88 ], [ %flags1.1, %if.end85 ]
  %tobool114.not = icmp eq ptr %ns.0, null
  br i1 %tobool114.not, label %sw.epilog.cleanup_crit_edge, label %if.end117

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end117:                                        ; preds = %sw.epilog
  %76 = ptrtoint ptr %prio.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prio.1, align 4
  %tobool121.not = icmp eq ptr %77, null
  br i1 %tobool121.not, label %if.then122, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then122:                                       ; preds = %if.end117
  %78 = tail call i32 @llvm.smin.i32(i32 %num_entries.0, i32 %max_table_size.1)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #11
  %79 = getelementptr inbounds i8, ptr %ft_attr.i, i32 8
  %80 = call ptr @memset(ptr %79, i32 0, i32 20)
  %81 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %priority.0, ptr %ft_attr.i, align 4
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %82 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %78, ptr %max_fte.i, align 4
  %flags2.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 3
  %83 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %flags1.2, ptr %flags2.i, align 4
  %autogroup.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 5
  %84 = ptrtoint ptr %autogroup.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %num_groups.0, ptr %autogroup.i, align 4
  %call.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %ns.0, ptr noundef nonnull %ft_attr.i) #11
  %cmp.i.i171 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i171, label %if.then122._get_prio.exit_crit_edge, label %if.end.i172

if.then122._get_prio.exit_crit_edge:              ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  br label %_get_prio.exit

if.end.i172:                                      ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %prio.1 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call.i, ptr %prio.1, align 4
  %refcount.i = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %prio.1, i32 0, i32 1
  %86 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %refcount.i, align 4
  br label %_get_prio.exit

_get_prio.exit:                                   ; preds = %if.end.i172, %if.then122._get_prio.exit_crit_edge
  %retval.0.i = phi ptr [ %prio.1, %if.end.i172 ], [ %call.i, %if.then122._get_prio.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %_get_prio.exit, %if.end117.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb94.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %_get_prio.exit ], [ %prio.1, %if.end117.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %sw.bb94.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %sw.epilog.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_create_flow_rule(ptr noundef %dev, ptr noundef %ft_prio, ptr noundef %flow_attr, ptr noundef readonly %dst, i32 noundef %underlay_qpn, ptr noundef %ucmd) unnamed_addr #1 align 64 {
entry:
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  %dest_arr = alloca [2 x %struct.mlx5_flow_destination], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ft_prio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ft_prio, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #11
  %2 = call ptr @memset(ptr %flow_act, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dest_arr) #11
  %3 = call ptr @memset(ptr %dest_arr, i32 0, i32 32)
  %add.ptr = getelementptr i8, ptr %flow_attr, i32 20
  %flags = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %7, i32 0, i32 8, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr7.i.i = getelementptr i32, ptr %9, i32 24
  %10 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.in.in.i.i = load i32, ptr %add.ptr7.i.i, align 4
  %num_of_specs.i.i = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 4
  %11 = ptrtoint ptr %num_of_specs.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_of_specs.i.i, align 4
  %conv.i.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp110.not.i.i = icmp eq i8 %12, 0
  br i1 %cmp110.not.i.i, label %entry.if.end_crit_edge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i.i:                                     ; preds = %if.end34.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %eth_type.0118.i.i = phi i16 [ %eth_type.1.i.i, %if.end34.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %mask_valid.0.off0117.i.i = phi i1 [ %mask_valid.1.off0.i.i, %if.end34.i.i.for.body.i.i_crit_edge ], [ true, %entry.for.body.i.i_crit_edge ]
  %spec_index.0116.i.i = phi i32 [ %inc.i.i, %if.end34.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %has_ethertype.0.off0115.i.i = phi i1 [ %has_ethertype.1.off0.i.i, %if.end34.i.i.for.body.i.i_crit_edge ], [ false, %entry.for.body.i.i_crit_edge ]
  %ip_spec_type.0114.i.i = phi i32 [ %ip_spec_type.1.i.i, %if.end34.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %ib_spec.0111.i.i = phi ptr [ %add.ptr36.i.i, %if.end34.i.i.for.body.i.i_crit_edge ], [ %add.ptr, %entry.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %ib_spec.0111.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ib_spec.0111.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp13.i.i = icmp eq i32 %14, 32
  br i1 %cmp13.i.i, label %land.lhs.true.i.i, label %for.body.i.i.if.else.i.i_crit_edge

for.body.i.i.if.else.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %ether_type.i.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec.0111.i.i, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %ether_type.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ether_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool16.not.i.i = icmp eq i16 %16, 0
  br i1 %tobool16.not.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %16)
  %cmp20.i.i = icmp eq i16 %16, -1
  %ether_type23.i.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec.0111.i.i, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %ether_type23.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ether_type23.i.i, align 2
  br label %if.end34.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %for.body.i.i.if.else.i.i_crit_edge
  %19 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %19)
  %20 = icmp eq i32 %19, 48
  %spec.select109.i.i = select i1 %20, i32 %14, i32 %ip_spec_type.0114.i.i
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %ip_spec_type.1.i.i = phi i32 [ %ip_spec_type.0114.i.i, %if.then.i.i ], [ %spec.select109.i.i, %if.else.i.i ]
  %has_ethertype.1.off0.i.i = phi i1 [ true, %if.then.i.i ], [ %has_ethertype.0.off0115.i.i, %if.else.i.i ]
  %mask_valid.1.off0.i.i = phi i1 [ %cmp20.i.i, %if.then.i.i ], [ %mask_valid.0.off0117.i.i, %if.else.i.i ]
  %eth_type.1.i.i = phi i16 [ %18, %if.then.i.i ], [ %eth_type.0118.i.i, %if.else.i.i ]
  %size.i.i = getelementptr inbounds %struct.anon.173, ptr %ib_spec.0111.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %size.i.i, align 4
  %conv35.i.i = zext i16 %22 to i32
  %add.ptr36.i.i = getelementptr i8, ptr %ib_spec.0111.i.i, i32 %conv35.i.i
  %inc.i.i = add nuw nsw i32 %spec_index.0116.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end34.i.i.for.body.i.i_crit_edge

if.end34.i.i.for.body.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ip_spec_type.1.i.i)
  %tobool38.not.i.i = icmp eq i32 %ip_spec_type.1.i.i, 0
  %not.has_ethertype.0.off0.i.i = xor i1 %has_ethertype.1.off0.i.i, true
  %spec.select.i.i = select i1 %not.has_ethertype.0.off0.i.i, i1 true, i1 %tobool38.not.i.i
  %mask_valid.0.off0.not.i.i = xor i1 %mask_valid.1.off0.i.i, true
  %brmerge.i.i = select i1 %spec.select.i.i, i1 true, i1 %mask_valid.0.off0.not.i.i
  br i1 %brmerge.i.i, label %is_valid_ethertype.exit.i, label %if.then44.i.i

if.then44.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %eth_type.1.i.i)
  %cmp46.i.i = icmp eq i16 %eth_type.1.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %ip_spec_type.1.i.i)
  %cmp49.i.i = icmp eq i32 %ip_spec_type.1.i.i, 48
  %23 = select i1 %cmp46.i.i, i1 %cmp49.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %eth_type.1.i.i)
  %cmp53.i.i = icmp eq i16 %eth_type.1.i.i, -31011
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %ip_spec_type.1.i.i)
  %cmp57.i.i = icmp eq i32 %ip_spec_type.1.i.i, 49
  %24 = select i1 %cmp53.i.i, i1 %cmp57.i.i, i1 false
  %brmerge108.i.i = select i1 %23, i1 true, i1 %24
  br i1 %brmerge108.i.i, label %if.then44.i.i.for.body.lr.ph.i11.i_crit_edge, label %lor.rhs66.i.i

if.then44.i.i.for.body.lr.ph.i11.i_crit_edge:     ; preds = %if.then44.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i11.i

lor.rhs66.i.i:                                    ; preds = %if.then44.i.i
  %eth_type.0.off.i.i = add i16 %eth_type.1.i.i, 30649
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %eth_type.0.off.i.i)
  %switch.i.i = icmp ult i16 %eth_type.0.off.i.i, 2
  %25 = and i32 %cond.in.in.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool75.i.i = icmp ne i32 %25, 0
  %or.cond.i = select i1 %switch.i.i, i1 %tobool75.i.i, i1 false
  br i1 %or.cond.i, label %lor.rhs66.i.i.for.body.lr.ph.i11.i_crit_edge, label %lor.rhs66.i.i.cleanup141_crit_edge

lor.rhs66.i.i.cleanup141_crit_edge:               ; preds = %lor.rhs66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup141

lor.rhs66.i.i.for.body.lr.ph.i11.i_crit_edge:     ; preds = %lor.rhs66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i11.i

is_valid_ethertype.exit.i:                        ; preds = %for.end.i.i
  br i1 %spec.select.i.i, label %is_valid_ethertype.exit.i.for.body.lr.ph.i11.i_crit_edge, label %is_valid_ethertype.exit.i.cleanup141_crit_edge

is_valid_ethertype.exit.i.cleanup141_crit_edge:   ; preds = %is_valid_ethertype.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup141

is_valid_ethertype.exit.i.for.body.lr.ph.i11.i_crit_edge: ; preds = %is_valid_ethertype.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph.i11.i

for.body.lr.ph.i11.i:                             ; preds = %is_valid_ethertype.exit.i.for.body.lr.ph.i11.i_crit_edge, %lor.rhs66.i.i.for.body.lr.ph.i11.i_crit_edge, %if.then44.i.i.for.body.lr.ph.i11.i_crit_edge
  %add.ptr7.i5.i = getelementptr i32, ptr %9, i32 25
  %26 = ptrtoint ptr %add.ptr7.i5.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %cond.in.in.i6.i = load i32, ptr %add.ptr7.i5.i, align 4
  br label %for.body.i19.i

for.body.i19.i:                                   ; preds = %if.end34.i40.i.for.body.i19.i_crit_edge, %for.body.lr.ph.i11.i
  %eth_type.0118.i12.i = phi i16 [ 0, %for.body.lr.ph.i11.i ], [ %eth_type.1.i34.i, %if.end34.i40.i.for.body.i19.i_crit_edge ]
  %mask_valid.0.off0117.i13.i = phi i1 [ true, %for.body.lr.ph.i11.i ], [ %mask_valid.1.off0.i33.i, %if.end34.i40.i.for.body.i19.i_crit_edge ]
  %spec_index.0116.i14.i = phi i32 [ 0, %for.body.lr.ph.i11.i ], [ %inc.i38.i, %if.end34.i40.i.for.body.i19.i_crit_edge ]
  %has_ethertype.0.off0115.i15.i = phi i1 [ false, %for.body.lr.ph.i11.i ], [ %has_ethertype.1.off0.i32.i, %if.end34.i40.i.for.body.i19.i_crit_edge ]
  %ip_spec_type.0114.i16.i = phi i32 [ 0, %for.body.lr.ph.i11.i ], [ %ip_spec_type.1.i31.i, %if.end34.i40.i.for.body.i19.i_crit_edge ]
  %ib_spec.0111.i17.i = phi ptr [ %add.ptr, %for.body.lr.ph.i11.i ], [ %add.ptr36.i37.i, %if.end34.i40.i.for.body.i19.i_crit_edge ]
  %27 = ptrtoint ptr %ib_spec.0111.i17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ib_spec.0111.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %28)
  %cmp13.i18.i = icmp eq i32 %28, 288
  br i1 %cmp13.i18.i, label %land.lhs.true.i22.i, label %for.body.i19.i.if.else.i30.i_crit_edge

for.body.i19.i.if.else.i30.i_crit_edge:           ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i30.i

land.lhs.true.i22.i:                              ; preds = %for.body.i19.i
  %ether_type.i20.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec.0111.i17.i, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %ether_type.i20.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ether_type.i20.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool16.not.i21.i = icmp eq i16 %30, 0
  br i1 %tobool16.not.i21.i, label %land.lhs.true.i22.i.if.else.i30.i_crit_edge, label %if.then.i25.i

land.lhs.true.i22.i.if.else.i30.i_crit_edge:      ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i30.i

if.then.i25.i:                                    ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %30)
  %cmp20.i23.i = icmp eq i16 %30, -1
  %ether_type23.i24.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec.0111.i17.i, i32 0, i32 2, i32 2
  %31 = ptrtoint ptr %ether_type23.i24.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ether_type23.i24.i, align 2
  br label %if.end34.i40.i

if.else.i30.i:                                    ; preds = %land.lhs.true.i22.i.if.else.i30.i_crit_edge, %for.body.i19.i.if.else.i30.i_crit_edge
  %33 = and i32 %28, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 304, i32 %33)
  %34 = icmp eq i32 %33, 304
  %spec.select109.i29.i = select i1 %34, i32 %28, i32 %ip_spec_type.0114.i16.i
  br label %if.end34.i40.i

if.end34.i40.i:                                   ; preds = %if.else.i30.i, %if.then.i25.i
  %ip_spec_type.1.i31.i = phi i32 [ %ip_spec_type.0114.i16.i, %if.then.i25.i ], [ %spec.select109.i29.i, %if.else.i30.i ]
  %has_ethertype.1.off0.i32.i = phi i1 [ true, %if.then.i25.i ], [ %has_ethertype.0.off0115.i15.i, %if.else.i30.i ]
  %mask_valid.1.off0.i33.i = phi i1 [ %cmp20.i23.i, %if.then.i25.i ], [ %mask_valid.0.off0117.i13.i, %if.else.i30.i ]
  %eth_type.1.i34.i = phi i16 [ %32, %if.then.i25.i ], [ %eth_type.0118.i12.i, %if.else.i30.i ]
  %size.i35.i = getelementptr inbounds %struct.anon.173, ptr %ib_spec.0111.i17.i, i32 0, i32 1
  %35 = ptrtoint ptr %size.i35.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %size.i35.i, align 4
  %conv35.i36.i = zext i16 %36 to i32
  %add.ptr36.i37.i = getelementptr i8, ptr %ib_spec.0111.i17.i, i32 %conv35.i36.i
  %inc.i38.i = add nuw nsw i32 %spec_index.0116.i14.i, 1
  %exitcond.not.i39.i = icmp eq i32 %inc.i38.i, %conv.i.i
  br i1 %exitcond.not.i39.i, label %for.end.i46.i, label %if.end34.i40.i.for.body.i19.i_crit_edge

if.end34.i40.i.for.body.i19.i_crit_edge:          ; preds = %if.end34.i40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i19.i

for.end.i46.i:                                    ; preds = %if.end34.i40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ip_spec_type.1.i31.i)
  %tobool38.not.i41.i = icmp eq i32 %ip_spec_type.1.i31.i, 0
  %not.has_ethertype.0.off0.i42.i = xor i1 %has_ethertype.1.off0.i32.i, true
  %spec.select.i43.i = select i1 %not.has_ethertype.0.off0.i42.i, i1 true, i1 %tobool38.not.i41.i
  %mask_valid.0.off0.not.i44.i = xor i1 %mask_valid.1.off0.i33.i, true
  %brmerge.i45.i = select i1 %spec.select.i43.i, i1 true, i1 %mask_valid.0.off0.not.i44.i
  br i1 %brmerge.i45.i, label %is_valid_attr.exit, label %if.then44.i52.i

if.then44.i52.i:                                  ; preds = %for.end.i46.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %eth_type.1.i34.i)
  %cmp46.i47.i = icmp eq i16 %eth_type.1.i34.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 304, i32 %ip_spec_type.1.i31.i)
  %cmp49.i48.i = icmp eq i32 %ip_spec_type.1.i31.i, 304
  %37 = select i1 %cmp46.i47.i, i1 %cmp49.i48.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %eth_type.1.i34.i)
  %cmp53.i49.i = icmp eq i16 %eth_type.1.i34.i, -31011
  call void @__sanitizer_cov_trace_const_cmp4(i32 305, i32 %ip_spec_type.1.i31.i)
  %cmp57.i50.i = icmp eq i32 %ip_spec_type.1.i31.i, 305
  %38 = select i1 %cmp53.i49.i, i1 %cmp57.i50.i, i1 false
  %brmerge108.i51.i = select i1 %37, i1 true, i1 %38
  br i1 %brmerge108.i51.i, label %if.then44.i52.i.if.end_crit_edge, label %lor.rhs66.i55.i

if.then44.i52.i.if.end_crit_edge:                 ; preds = %if.then44.i52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.rhs66.i55.i:                                  ; preds = %if.then44.i52.i
  %eth_type.0.off.i53.i = add i16 %eth_type.1.i34.i, 30649
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %eth_type.0.off.i53.i)
  %switch.i54.i = icmp ult i16 %eth_type.0.off.i53.i, 2
  %39 = and i32 %cond.in.in.i6.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool75.i56.i = icmp ne i32 %39, 0
  %or.cond303 = select i1 %switch.i54.i, i1 %tobool75.i56.i, i1 false
  br i1 %or.cond303, label %lor.rhs66.i55.i.if.end_crit_edge, label %lor.rhs66.i55.i.cleanup141_crit_edge

lor.rhs66.i55.i.cleanup141_crit_edge:             ; preds = %lor.rhs66.i55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup141

lor.rhs66.i55.i.if.end_crit_edge:                 ; preds = %lor.rhs66.i55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

is_valid_attr.exit:                               ; preds = %for.end.i46.i
  br i1 %spec.select.i43.i, label %is_valid_attr.exit.if.end_crit_edge, label %is_valid_attr.exit.cleanup141_crit_edge

is_valid_attr.exit.cleanup141_crit_edge:          ; preds = %is_valid_attr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup141

is_valid_attr.exit.if.end_crit_edge:              ; preds = %is_valid_attr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %is_valid_attr.exit.if.end_crit_edge, %lor.rhs66.i55.i.if.end_crit_edge, %if.then44.i52.i.if.end_crit_edge, %entry.if.end_crit_edge
  %is_rep = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 5
  %40 = ptrtoint ptr %is_rep to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load = load i8, ptr %is_rep, align 8
  %41 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool2.not = icmp eq i8 %41, 0
  %brmerge = select i1 %tobool2.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end7, label %if.end.cleanup141_crit_edge

if.end.cleanup141_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup141

if.end7:                                          ; preds = %if.end
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 40) #14
  %tobool10.not = icmp eq ptr %call7.i.i, null
  %tobool11.not = icmp eq ptr %call.i.i, null
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end7.free_crit_edge, label %if.end13

if.end7.free_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end13:                                         ; preds = %if.end7
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %45 = ptrtoint ptr %num_of_specs.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_of_specs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp310.not = icmp eq i8 %46, 0
  br i1 %cmp310.not, label %if.end13.for.end_crit_edge, label %for.body.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end13
  %flow_context1.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 3
  %add.ptr.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 16
  %add.ptr3.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 16
  %add.ptr4.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 48
  %add.ptr5.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 48
  %match_value.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2
  %match_criteria.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1
  %add.ptr6.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 32
  %add.ptr7.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 32
  %counters792.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 6
  %pkt_reformat.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 2
  %modify_hdr.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 1
  %47 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 3
  %flow_tag.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 3, i32 1
  %add.ptr728.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 21
  %add.ptr743.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 21
  %add.ptr662.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 50
  %add.ptr665.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 50
  %add.ptr641.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 51
  %add.ptr644.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 51
  %add.ptr686.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 49
  %add.ptr689.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 49
  %add.ptr597.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 19
  %add.ptr613.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 19
  %add.ptr621.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 20
  %add.ptr623.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 20
  %add.ptr382.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 28
  %add.ptr397.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 28
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %for.body.lr.ph
  %prev_type.0314 = phi i32 [ 0, %for.body.lr.ph ], [ %347, %if.end21.for.body_crit_edge ]
  %spec_index.0313 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end21.for.body_crit_edge ]
  %ib_flow.0311 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr23, %if.end21.for.body_crit_edge ]
  %48 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mdev, align 8
  %50 = ptrtoint ptr %ib_flow.0311 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ib_flow.0311, align 4
  %and.i = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %.sink1163.i = select i1 %tobool.not.i, i32 24, i32 25
  %headers_v.0.i = select i1 %tobool.not.i, ptr %match_value.i, ptr %add.ptr7.i
  %headers_c.0.i = select i1 %tobool.not.i, ptr %match_criteria.i, ptr %add.ptr6.i
  %arrayidx15.i = getelementptr %struct.mlx5_core_dev, ptr %49, i32 0, i32 8, i32 0, i32 7
  %52 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx15.i, align 4
  %add.ptr18.i = getelementptr i32, ptr %53, i32 %.sink1163.i
  %54 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %match_ipv.0.in.in.i = load i32, ptr %add.ptr18.i, align 4
  %match_ipv.0.in.i = lshr i32 %match_ipv.0.in.in.i, 28
  %match_ipv.0.i = and i32 %match_ipv.0.in.i, 1
  %and22.i = and i32 %51, -257
  %55 = zext i32 %and22.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and22.i, label %for.body.free_crit_edge [
    i32 32, label %sw.bb.i
    i32 48, label %sw.bb195.i
    i32 49, label %sw.bb279.i
    i32 52, label %sw.bb371.i
    i32 64, label %sw.bb405.i
    i32 65, label %sw.bb479.i
    i32 81, label %sw.bb555.i
    i32 96, label %sw.bb626.i
    i32 80, label %sw.bb714.i
    i32 4096, label %sw.bb751.i
    i32 4097, label %sw.bb763.i
    i32 4098, label %sw.bb771.i
    i32 4099, label %sw.bb780.i
  ]

for.body.free_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

sw.bb.i:                                          ; preds = %for.body
  %vlan_tag.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 3, i32 3
  %add.ptr23.i = getelementptr i8, ptr %vlan_tag.i, i32 2
  %call.i = tail call ptr @memchr_inv(ptr noundef %add.ptr23.i, i32 noundef 0, i32 noundef 0) #11
  %tobool24.not.i = icmp eq ptr %call.i, null
  br i1 %tobool24.not.i, label %if.end26.i, label %sw.bb.i.free_crit_edge

sw.bb.i.free_crit_edge:                           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end26.i:                                       ; preds = %sw.bb.i
  %mask.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 3
  %add.ptr27.i = getelementptr i8, ptr %headers_c.0.i, i32 8
  %56 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mask.i, align 4
  %58 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %add.ptr27.i, align 4
  %add.ptr.i.i225 = getelementptr %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 3, i32 0, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i225 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i.i225, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %headers_c.0.i, i32 12
  %61 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %add.ptr1.i.i, align 2
  %add.ptr30.i = getelementptr i8, ptr %headers_v.0.i, i32 8
  %val.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 2
  %62 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i, align 4
  %64 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %add.ptr30.i, align 4
  %add.ptr.i1004.i = getelementptr %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 2, i32 0, i32 4
  %65 = ptrtoint ptr %add.ptr.i1004.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i1004.i, align 2
  %add.ptr1.i1005.i = getelementptr i8, ptr %headers_v.0.i, i32 12
  %67 = ptrtoint ptr %add.ptr1.i1005.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %add.ptr1.i1005.i, align 2
  %src_mac.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %src_mac.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %src_mac.i, align 4
  %70 = ptrtoint ptr %headers_c.0.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %headers_c.0.i, align 4
  %add.ptr.i1006.i = getelementptr %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 3, i32 1, i32 4
  %71 = ptrtoint ptr %add.ptr.i1006.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr.i1006.i, align 2
  %add.ptr1.i1007.i = getelementptr i8, ptr %headers_c.0.i, i32 4
  %73 = ptrtoint ptr %add.ptr1.i1007.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %add.ptr1.i1007.i, align 2
  %src_mac38.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %src_mac38.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %src_mac38.i, align 4
  %76 = ptrtoint ptr %headers_v.0.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %headers_v.0.i, align 4
  %add.ptr.i1008.i = getelementptr %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 2, i32 1, i32 4
  %77 = ptrtoint ptr %add.ptr.i1008.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i1008.i, align 2
  %add.ptr1.i1009.i = getelementptr i8, ptr %headers_v.0.i, i32 4
  %79 = ptrtoint ptr %add.ptr1.i1009.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %add.ptr1.i1009.i, align 2
  %80 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %vlan_tag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool42.not.i = icmp eq i16 %81, 0
  br i1 %tobool42.not.i, label %if.end26.i.do.body164.i_crit_edge, label %do.body.i

if.end26.i.do.body164.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body164.i

do.body.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr45.i = getelementptr i32, ptr %headers_c.0.i, i32 4
  %82 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr45.i, align 4
  %or.i = or i32 %83, 32768
  store i32 %or.i, ptr %add.ptr45.i, align 4
  %add.ptr56.i = getelementptr i32, ptr %headers_v.0.i, i32 4
  %84 = ptrtoint ptr %add.ptr56.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr56.i, align 4
  %or60.i = or i32 %85, 32768
  store i32 %or60.i, ptr %add.ptr56.i, align 4
  %86 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr1.i.i, align 4
  %and72.i = and i32 %87, -65536
  %88 = and i16 %81, 4095
  %and73.i = zext i16 %88 to i32
  %or75.i = or i32 %and72.i, %and73.i
  %vlan_tag82.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 2, i32 3
  %89 = ptrtoint ptr %vlan_tag82.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %vlan_tag82.i, align 2
  %91 = ptrtoint ptr %add.ptr1.i1005.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr1.i1005.i, align 4
  %and88.i = and i32 %92, -65536
  %93 = and i16 %90, 4095
  %and89.i = zext i16 %93 to i32
  %or91.i = or i32 %and88.i, %and89.i
  %94 = and i16 %81, 4096
  %shl107.i = zext i16 %94 to i32
  %or108.i = or i32 %or75.i, %shl107.i
  %95 = and i16 %90, 4096
  %shl124.i = zext i16 %95 to i32
  %or125.i = or i32 %or91.i, %shl124.i
  %96 = and i16 %81, -8192
  %shl141.i = zext i16 %96 to i32
  %or142.i = or i32 %or108.i, %shl141.i
  store i32 %or142.i, ptr %add.ptr1.i.i, align 4
  %97 = and i16 %90, -8192
  %shl158.i = zext i16 %97 to i32
  %or159.i = or i32 %or125.i, %shl158.i
  store i32 %or159.i, ptr %add.ptr1.i1005.i, align 4
  br label %do.body164.i

do.body164.i:                                     ; preds = %do.body.i, %if.end26.i.do.body164.i_crit_edge
  %ether_type.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 3, i32 2
  %98 = ptrtoint ptr %ether_type.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %ether_type.i, align 2
  %conv167.i = zext i16 %99 to i32
  %100 = ptrtoint ptr %add.ptr1.i1007.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %add.ptr1.i1007.i, align 4
  %and172.i = and i32 %101, -65536
  %or175.i = or i32 %and172.i, %conv167.i
  store i32 %or175.i, ptr %add.ptr1.i1007.i, align 4
  %ether_type182.i = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_flow.0311, i32 0, i32 2, i32 2
  %102 = ptrtoint ptr %ether_type182.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %ether_type182.i, align 2
  %conv183.i = zext i16 %103 to i32
  %104 = ptrtoint ptr %add.ptr1.i1009.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr1.i1009.i, align 4
  %and188.i = and i32 %105, -65536
  %or191.i = or i32 %and188.i, %conv183.i
  store i32 %or191.i, ptr %add.ptr1.i1009.i, align 4
  br label %if.end21

sw.bb195.i:                                       ; preds = %for.body
  %add.ptr197.i = getelementptr %struct.ib_flow_spec_ipv4, ptr %ib_flow.0311, i32 0, i32 3, i32 4
  %call198.i = tail call ptr @memchr_inv(ptr noundef %add.ptr197.i, i32 noundef 0, i32 noundef 2) #11
  %tobool199.not.i = icmp eq ptr %call198.i, null
  br i1 %tobool199.not.i, label %if.end201.i, label %sw.bb195.i.free_crit_edge

sw.bb195.i.free_crit_edge:                        ; preds = %sw.bb195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end201.i:                                      ; preds = %sw.bb195.i
  %tos.i = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_flow.0311, i32 0, i32 3, i32 3
  %mask196.i = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_flow.0311, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match_ipv.0.i)
  %tobool202.not.i = icmp eq i32 %match_ipv.0.i, 0
  %..i = select i1 %tobool202.not.i, i32 1, i32 4
  %.1179.i = select i1 %tobool202.not.i, i32 65535, i32 7680
  %.1180.i = select i1 %tobool202.not.i, i32 -65536, i32 -7681
  %add.ptr236.i = getelementptr i32, ptr %headers_c.0.i, i32 %..i
  %106 = ptrtoint ptr %add.ptr236.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr236.i, align 4
  %or240.i = or i32 %107, %.1179.i
  store i32 %or240.i, ptr %add.ptr236.i, align 4
  %add.ptr249.i = getelementptr i32, ptr %headers_v.0.i, i32 %..i
  %108 = ptrtoint ptr %add.ptr249.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %add.ptr249.i, align 4
  %and250.i = and i32 %109, %.1180.i
  %or253.i = or i32 %and250.i, 2048
  store i32 %or253.i, ptr %add.ptr249.i, align 4
  %add.ptr258.i = getelementptr i8, ptr %headers_c.0.i, i32 44
  %110 = ptrtoint ptr %mask196.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mask196.i, align 4
  %112 = ptrtoint ptr %add.ptr258.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 %111, ptr %add.ptr258.i, align 1
  %add.ptr260.i = getelementptr i8, ptr %headers_v.0.i, i32 44
  %val261.i = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_flow.0311, i32 0, i32 2
  %113 = ptrtoint ptr %val261.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val261.i, align 4
  %115 = ptrtoint ptr %add.ptr260.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %114, ptr %add.ptr260.i, align 1
  %add.ptr263.i = getelementptr i8, ptr %headers_c.0.i, i32 60
  %dst_ip.i = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_flow.0311, i32 0, i32 3, i32 1
  %116 = ptrtoint ptr %dst_ip.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dst_ip.i, align 4
  %118 = ptrtoint ptr %add.ptr263.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %117, ptr %add.ptr263.i, align 1
  %add.ptr265.i = getelementptr i8, ptr %headers_v.0.i, i32 60
  %dst_ip267.i = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_flow.0311, i32 0, i32 2, i32 1
  %119 = ptrtoint ptr %dst_ip267.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dst_ip267.i, align 4
  %121 = ptrtoint ptr %add.ptr265.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %120, ptr %add.ptr265.i, align 1
  %122 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %tos.i, align 1
  %tos271.i = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_flow.0311, i32 0, i32 2, i32 3
  %124 = ptrtoint ptr %tos271.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %tos271.i, align 1
  %conv.i.i226 = zext i8 %123 to i32
  %add.ptr.i1010.i = getelementptr i32, ptr %headers_c.0.i, i32 4
  %126 = ptrtoint ptr %add.ptr.i1010.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr.i1010.i, align 4
  %and.i.i = and i32 %127, -16711681
  %and2.i.i = shl nuw nsw i32 %conv.i.i226, 16
  %conv8.i.i = zext i8 %125 to i32
  %add.ptr12.i.i = getelementptr i32, ptr %headers_v.0.i, i32 4
  %128 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr12.i.i, align 4
  %and13.i.i = and i32 %129, -16711681
  %and14.i.i = shl nuw nsw i32 %conv8.i.i, 16
  %and2.i.masked.i = and i32 %and2.i.i, 196608
  %and27.i.i = or i32 %and.i.i, %and2.i.masked.i
  %shl29.i.i = and i32 %and2.i.i, 16515072
  %or30.i.i = or i32 %and27.i.i, %shl29.i.i
  store i32 %or30.i.i, ptr %add.ptr.i1010.i, align 4
  %and14.i.masked.i = and i32 %and14.i.i, 196608
  %and42.i.i = or i32 %and13.i.i, %and14.i.masked.i
  %shl44.i.i = and i32 %and14.i.i, 16515072
  %or45.i.i = or i32 %and42.i.i, %shl44.i.i
  store i32 %or45.i.i, ptr %add.ptr12.i.i, align 4
  %proto.i = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_flow.0311, i32 0, i32 3, i32 2
  %130 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %proto.i, align 4
  %proto274.i = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_flow.0311, i32 0, i32 2, i32 2
  %132 = ptrtoint ptr %proto274.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %proto274.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i.i = icmp eq i8 %131, 0
  br i1 %tobool.not.i.i, label %if.end201.i.if.end21_crit_edge, label %if.end.i.i

if.end201.i.if.end21_crit_edge:                   ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end.i.i:                                       ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %or30.i.i)
  %tobool5.not.i.i = icmp ult i32 %or30.i.i, 16777216
  br i1 %tobool5.not.i.i, label %do.body.i.i, label %if.end29.i.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv7.i.i = zext i8 %131 to i32
  %shl.i1013.i = shl nuw i32 %conv7.i.i, 24
  %or.i1014.i = or i32 %shl.i1013.i, %or30.i.i
  %134 = ptrtoint ptr %add.ptr.i1010.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or.i1014.i, ptr %add.ptr.i1010.i, align 4
  %conv17.i.i = zext i8 %133 to i32
  %and22.i.i = and i32 %or45.i.i, 16777215
  %shl24.i.i = shl nuw i32 %conv17.i.i, 24
  %or25.i.i = or i32 %shl24.i.i, %and22.i.i
  %135 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or25.i.i, ptr %add.ptr12.i.i, align 4
  br label %if.end21

if.end29.i.i:                                     ; preds = %if.end.i.i
  %shr2.i.i = lshr i32 %129, 24
  %shr.i.i = lshr i32 %127, 24
  %conv30.i.i = zext i8 %131 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %conv30.i.i)
  %cmp.not.i.i = icmp eq i32 %shr.i.i, %conv30.i.i
  %conv33.i.i = zext i8 %133 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr2.i.i, i32 %conv33.i.i)
  %cmp35.not.i.i = icmp eq i32 %shr2.i.i, %conv33.i.i
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp35.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end29.i.i.if.end21_crit_edge, label %if.end29.i.i.free_crit_edge

if.end29.i.i.free_crit_edge:                      ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end29.i.i.if.end21_crit_edge:                  ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

sw.bb279.i:                                       ; preds = %for.body
  %add.ptr281.i = getelementptr %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 3, i32 5
  %call282.i = tail call ptr @memchr_inv(ptr noundef %add.ptr281.i, i32 noundef 0, i32 noundef 2) #11
  %tobool283.not.i = icmp eq ptr %call282.i, null
  br i1 %tobool283.not.i, label %if.end285.i, label %sw.bb279.i.free_crit_edge

sw.bb279.i.free_crit_edge:                        ; preds = %sw.bb279.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end285.i:                                      ; preds = %sw.bb279.i
  %traffic_class.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 3, i32 4
  %mask280.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match_ipv.0.i)
  %tobool286.not.i = icmp eq i32 %match_ipv.0.i, 0
  %.1181.i = select i1 %tobool286.not.i, i32 1, i32 4
  %.1182.i = select i1 %tobool286.not.i, i32 65535, i32 7680
  %.1183.i = select i1 %tobool286.not.i, i32 -65536, i32 -7681
  %.1184.i = select i1 %tobool286.not.i, i32 34525, i32 3072
  %add.ptr320.i = getelementptr i32, ptr %headers_c.0.i, i32 %.1181.i
  %136 = ptrtoint ptr %add.ptr320.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %add.ptr320.i, align 4
  %or324.i = or i32 %137, %.1182.i
  store i32 %or324.i, ptr %add.ptr320.i, align 4
  %add.ptr333.i = getelementptr i32, ptr %headers_v.0.i, i32 %.1181.i
  %138 = ptrtoint ptr %add.ptr333.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %add.ptr333.i, align 4
  %and334.i = and i32 %139, %.1183.i
  %or337.i = or i32 %and334.i, %.1184.i
  store i32 %or337.i, ptr %add.ptr333.i, align 4
  %add.ptr342.i = getelementptr i8, ptr %headers_c.0.i, i32 32
  %140 = call ptr @memcpy(ptr %add.ptr342.i, ptr %mask280.i, i32 16)
  %add.ptr345.i = getelementptr i8, ptr %headers_v.0.i, i32 32
  %val346.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 2
  %141 = call ptr @memcpy(ptr %add.ptr345.i, ptr %val346.i, i32 16)
  %add.ptr348.i = getelementptr i8, ptr %headers_c.0.i, i32 48
  %dst_ip350.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 3, i32 1
  %142 = call ptr @memcpy(ptr %add.ptr348.i, ptr %dst_ip350.i, i32 16)
  %add.ptr351.i = getelementptr i8, ptr %headers_v.0.i, i32 48
  %dst_ip353.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 2, i32 1
  %143 = call ptr @memcpy(ptr %add.ptr351.i, ptr %dst_ip353.i, i32 16)
  %144 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %traffic_class.i, align 1
  %traffic_class357.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 2, i32 4
  %146 = ptrtoint ptr %traffic_class357.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %traffic_class357.i, align 1
  %conv.i1015.i = zext i8 %145 to i32
  %add.ptr.i1016.i = getelementptr i32, ptr %headers_c.0.i, i32 4
  %148 = ptrtoint ptr %add.ptr.i1016.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr.i1016.i, align 4
  %and.i1017.i = and i32 %149, -16711681
  %and2.i1018.i = shl nuw nsw i32 %conv.i1015.i, 16
  %conv8.i1021.i = zext i8 %147 to i32
  %add.ptr12.i1022.i = getelementptr i32, ptr %headers_v.0.i, i32 4
  %150 = ptrtoint ptr %add.ptr12.i1022.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr12.i1022.i, align 4
  %and13.i1023.i = and i32 %151, -16711681
  %and14.i1024.i = shl nuw nsw i32 %conv8.i1021.i, 16
  %and2.i1018.masked.i = and i32 %and2.i1018.i, 196608
  %and27.i1027.i = or i32 %and.i1017.i, %and2.i1018.masked.i
  %shl29.i1028.i = and i32 %and2.i1018.i, 16515072
  %or30.i1029.i = or i32 %and27.i1027.i, %shl29.i1028.i
  store i32 %or30.i1029.i, ptr %add.ptr.i1016.i, align 4
  %and14.i1024.masked.i = and i32 %and14.i1024.i, 196608
  %and42.i1030.i = or i32 %and13.i1023.i, %and14.i1024.masked.i
  %shl44.i1031.i = and i32 %and14.i1024.i, 16515072
  %or45.i1032.i = or i32 %and42.i1030.i, %shl44.i1031.i
  store i32 %or45.i1032.i, ptr %add.ptr12.i1022.i, align 4
  %next_hdr.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 3, i32 3
  %152 = ptrtoint ptr %next_hdr.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %next_hdr.i, align 4
  %next_hdr360.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 2, i32 3
  %154 = ptrtoint ptr %next_hdr360.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %next_hdr360.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not.i1033.i = icmp eq i8 %153, 0
  br i1 %tobool.not.i1033.i, label %if.end285.i.if.end364.i_crit_edge, label %if.end.i1037.i

if.end285.i.if.end364.i_crit_edge:                ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end364.i

if.end.i1037.i:                                   ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %or30.i1029.i)
  %tobool5.not.i1036.i = icmp ult i32 %or30.i1029.i, 16777216
  br i1 %tobool5.not.i1036.i, label %do.body.i1045.i, label %if.end29.i1054.i

do.body.i1045.i:                                  ; preds = %if.end.i1037.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv7.i1038.i = zext i8 %153 to i32
  %shl.i1039.i = shl nuw i32 %conv7.i1038.i, 24
  %or.i1040.i = or i32 %shl.i1039.i, %or30.i1029.i
  %156 = ptrtoint ptr %add.ptr.i1016.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or.i1040.i, ptr %add.ptr.i1016.i, align 4
  %conv17.i1041.i = zext i8 %155 to i32
  %and22.i1042.i = and i32 %or45.i1032.i, 16777215
  %shl24.i1043.i = shl nuw i32 %conv17.i1041.i, 24
  %or25.i1044.i = or i32 %shl24.i1043.i, %and22.i1042.i
  %157 = ptrtoint ptr %add.ptr12.i1022.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %or25.i1044.i, ptr %add.ptr12.i1022.i, align 4
  br label %if.end364.i

if.end29.i1054.i:                                 ; preds = %if.end.i1037.i
  %shr2.i1046.i = lshr i32 %151, 24
  %shr.i1047.i = lshr i32 %149, 24
  %conv30.i1048.i = zext i8 %153 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i1047.i, i32 %conv30.i1048.i)
  %cmp.not.i1049.i = icmp eq i32 %shr.i1047.i, %conv30.i1048.i
  %conv33.i1050.i = zext i8 %155 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr2.i1046.i, i32 %conv33.i1050.i)
  %cmp35.not.i1051.i = icmp eq i32 %shr2.i1046.i, %conv33.i1050.i
  %or.cond.i1052.i = select i1 %cmp.not.i1049.i, i1 %cmp35.not.i1051.i, i1 false
  br i1 %or.cond.i1052.i, label %if.end29.i1054.i.if.end364.i_crit_edge, label %if.end29.i1054.i.free_crit_edge

if.end29.i1054.i.free_crit_edge:                  ; preds = %if.end29.i1054.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end29.i1054.i.if.end364.i_crit_edge:           ; preds = %if.end29.i1054.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end364.i

if.end364.i:                                      ; preds = %if.end29.i1054.i.if.end364.i_crit_edge, %do.body.i1045.i, %if.end285.i.if.end364.i_crit_edge
  %flow_label.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 3, i32 2
  %158 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flow_label.i, align 4
  %flow_label367.i = getelementptr inbounds %struct.ib_flow_spec_ipv6, ptr %ib_flow.0311, i32 0, i32 2, i32 2
  %160 = ptrtoint ptr %flow_label367.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flow_label367.i, align 4
  %162 = ptrtoint ptr %ib_flow.0311 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ib_flow.0311, align 4
  %and369.i = and i32 %163, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and369.i)
  %tobool370.not.i = icmp eq i32 %and369.i, 0
  %..i.i = select i1 %tobool370.not.i, i32 7, i32 8
  %add.ptr24.i.i = getelementptr i32, ptr %add.ptr.i, i32 %..i.i
  %164 = ptrtoint ptr %add.ptr24.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %add.ptr24.i.i, align 4
  %and25.i.i = and i32 %165, -1048576
  %and26.i.i = and i32 %159, 1048575
  %or28.i.i = or i32 %and25.i.i, %and26.i.i
  store i32 %or28.i.i, ptr %add.ptr24.i.i, align 4
  %add.ptr37.i.i = getelementptr i32, ptr %add.ptr3.i, i32 %..i.i
  %166 = ptrtoint ptr %add.ptr37.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %add.ptr37.i.i, align 4
  %and38.i.i = and i32 %167, -1048576
  %and39.i.i = and i32 %161, 1048575
  %or41.i.i = or i32 %and38.i.i, %and39.i.i
  store i32 %or41.i.i, ptr %add.ptr37.i.i, align 4
  br label %if.end21

sw.bb371.i:                                       ; preds = %for.body
  %seq.i = getelementptr inbounds %struct.ib_flow_spec_esp, ptr %ib_flow.0311, i32 0, i32 3, i32 1
  %168 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool373.not.i = icmp eq i32 %169, 0
  br i1 %tobool373.not.i, label %do.body376.i, label %sw.bb371.i.free_crit_edge

sw.bb371.i.free_crit_edge:                        ; preds = %sw.bb371.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

do.body376.i:                                     ; preds = %sw.bb371.i
  call void @__sanitizer_cov_trace_pc() #13
  %mask372.i = getelementptr inbounds %struct.ib_flow_spec_esp, ptr %ib_flow.0311, i32 0, i32 3
  %170 = ptrtoint ptr %mask372.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mask372.i, align 4
  %172 = ptrtoint ptr %add.ptr382.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %add.ptr382.i, align 4
  %val392.i = getelementptr inbounds %struct.ib_flow_spec_esp, ptr %ib_flow.0311, i32 0, i32 2
  %173 = ptrtoint ptr %val392.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %val392.i, align 4
  %175 = ptrtoint ptr %add.ptr397.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %add.ptr397.i, align 4
  br label %if.end21

sw.bb405.i:                                       ; preds = %for.body
  %mask406.i = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_flow.0311, i32 0, i32 3
  %src_port.i = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_flow.0311, i32 0, i32 3, i32 1
  %add.ptr407.i = getelementptr i8, ptr %src_port.i, i32 2
  %call408.i = tail call ptr @memchr_inv(ptr noundef %add.ptr407.i, i32 noundef 0, i32 noundef 0) #11
  %tobool409.not.i = icmp eq ptr %call408.i, null
  br i1 %tobool409.not.i, label %if.end411.i, label %sw.bb405.i.free_crit_edge

sw.bb405.i.free_crit_edge:                        ; preds = %sw.bb405.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end411.i:                                      ; preds = %sw.bb405.i
  %add.ptr.i1057.i = getelementptr i32, ptr %headers_c.0.i, i32 4
  %176 = ptrtoint ptr %add.ptr.i1057.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %add.ptr.i1057.i, align 4
  %add.ptr1.i1058.i = getelementptr i32, ptr %headers_v.0.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %177)
  %tobool5.not.i1059.i = icmp ult i32 %177, 16777216
  br i1 %tobool5.not.i1059.i, label %do.body.i1064.i, label %if.end29.i1071.i

do.body.i1064.i:                                  ; preds = %if.end411.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i1061.i = or i32 %177, -16777216
  %178 = ptrtoint ptr %add.ptr.i1057.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or.i1061.i, ptr %add.ptr.i1057.i, align 4
  %179 = ptrtoint ptr %add.ptr1.i1058.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr1.i1058.i, align 4
  %and22.i1062.i = and i32 %180, 16777215
  %or25.i1063.i = or i32 %and22.i1062.i, 100663296
  store i32 %or25.i1063.i, ptr %add.ptr1.i1058.i, align 4
  br label %do.body416.i

if.end29.i1071.i:                                 ; preds = %if.end411.i
  %181 = ptrtoint ptr %add.ptr1.i1058.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %add.ptr1.i1058.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %177)
  %cmp.not.i1067.i = icmp ugt i32 %177, -16777217
  %shr2.i1065.mask.i = and i32 %182, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %shr2.i1065.mask.i)
  %cmp35.not.i1068.i = icmp eq i32 %shr2.i1065.mask.i, 100663296
  %or.cond.i1069.i = select i1 %cmp.not.i1067.i, i1 %cmp35.not.i1068.i, i1 false
  br i1 %or.cond.i1069.i, label %if.end29.i1071.i.do.body416.i_crit_edge, label %if.end29.i1071.i.free_crit_edge

if.end29.i1071.i.free_crit_edge:                  ; preds = %if.end29.i1071.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end29.i1071.i.do.body416.i_crit_edge:          ; preds = %if.end29.i1071.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body416.i

do.body416.i:                                     ; preds = %if.end29.i1071.i.do.body416.i_crit_edge, %do.body.i1064.i
  %183 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %src_port.i, align 2
  %conv420.i = zext i16 %184 to i32
  %add.ptr424.i = getelementptr i32, ptr %headers_c.0.i, i32 5
  %shl427.i = shl nuw i32 %conv420.i, 16
  %val434.i = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_flow.0311, i32 0, i32 2
  %src_port435.i = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_flow.0311, i32 0, i32 2, i32 1
  %185 = ptrtoint ptr %src_port435.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %src_port435.i, align 2
  %conv436.i = zext i16 %186 to i32
  %add.ptr440.i = getelementptr i32, ptr %headers_v.0.i, i32 5
  %shl443.i = shl nuw i32 %conv436.i, 16
  %187 = ptrtoint ptr %mask406.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %mask406.i, align 2
  %conv451.i = zext i16 %188 to i32
  %or459.i = or i32 %shl427.i, %conv451.i
  %189 = ptrtoint ptr %add.ptr424.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %or459.i, ptr %add.ptr424.i, align 4
  %190 = ptrtoint ptr %val434.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %val434.i, align 2
  %conv467.i = zext i16 %191 to i32
  %or475.i = or i32 %shl443.i, %conv467.i
  %192 = ptrtoint ptr %add.ptr440.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %or475.i, ptr %add.ptr440.i, align 4
  br label %if.end21

sw.bb479.i:                                       ; preds = %for.body
  %mask480.i = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_flow.0311, i32 0, i32 3
  %src_port481.i = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_flow.0311, i32 0, i32 3, i32 1
  %add.ptr482.i = getelementptr i8, ptr %src_port481.i, i32 2
  %call483.i = tail call ptr @memchr_inv(ptr noundef %add.ptr482.i, i32 noundef 0, i32 noundef 0) #11
  %tobool484.not.i = icmp eq ptr %call483.i, null
  br i1 %tobool484.not.i, label %if.end486.i, label %sw.bb479.i.free_crit_edge

sw.bb479.i.free_crit_edge:                        ; preds = %sw.bb479.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end486.i:                                      ; preds = %sw.bb479.i
  %add.ptr.i1074.i = getelementptr i32, ptr %headers_c.0.i, i32 4
  %193 = ptrtoint ptr %add.ptr.i1074.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %add.ptr.i1074.i, align 4
  %add.ptr1.i1075.i = getelementptr i32, ptr %headers_v.0.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %194)
  %tobool5.not.i1076.i = icmp ult i32 %194, 16777216
  br i1 %tobool5.not.i1076.i, label %do.body.i1081.i, label %if.end29.i1088.i

do.body.i1081.i:                                  ; preds = %if.end486.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i1078.i = or i32 %194, -16777216
  %195 = ptrtoint ptr %add.ptr.i1074.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or.i1078.i, ptr %add.ptr.i1074.i, align 4
  %196 = ptrtoint ptr %add.ptr1.i1075.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %add.ptr1.i1075.i, align 4
  %and22.i1079.i = and i32 %197, 16777215
  %or25.i1080.i = or i32 %and22.i1079.i, 285212672
  store i32 %or25.i1080.i, ptr %add.ptr1.i1075.i, align 4
  br label %do.body491.i

if.end29.i1088.i:                                 ; preds = %if.end486.i
  %198 = ptrtoint ptr %add.ptr1.i1075.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %add.ptr1.i1075.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %194)
  %cmp.not.i1084.i = icmp ugt i32 %194, -16777217
  %shr2.i1082.mask.i = and i32 %199, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 285212672, i32 %shr2.i1082.mask.i)
  %cmp35.not.i1085.i = icmp eq i32 %shr2.i1082.mask.i, 285212672
  %or.cond.i1086.i = select i1 %cmp.not.i1084.i, i1 %cmp35.not.i1085.i, i1 false
  br i1 %or.cond.i1086.i, label %if.end29.i1088.i.do.body491.i_crit_edge, label %if.end29.i1088.i.free_crit_edge

if.end29.i1088.i.free_crit_edge:                  ; preds = %if.end29.i1088.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end29.i1088.i.do.body491.i_crit_edge:          ; preds = %if.end29.i1088.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body491.i

do.body491.i:                                     ; preds = %if.end29.i1088.i.do.body491.i_crit_edge, %do.body.i1081.i
  %200 = ptrtoint ptr %src_port481.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %src_port481.i, align 2
  %conv495.i = zext i16 %201 to i32
  %add.ptr499.i = getelementptr i32, ptr %headers_c.0.i, i32 7
  %shl502.i = shl nuw i32 %conv495.i, 16
  %val509.i = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_flow.0311, i32 0, i32 2
  %src_port510.i = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_flow.0311, i32 0, i32 2, i32 1
  %202 = ptrtoint ptr %src_port510.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %src_port510.i, align 2
  %conv511.i = zext i16 %203 to i32
  %add.ptr515.i = getelementptr i32, ptr %headers_v.0.i, i32 7
  %shl518.i = shl nuw i32 %conv511.i, 16
  %204 = ptrtoint ptr %mask480.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %mask480.i, align 2
  %conv527.i = zext i16 %205 to i32
  %or535.i = or i32 %shl502.i, %conv527.i
  %206 = ptrtoint ptr %add.ptr499.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or535.i, ptr %add.ptr499.i, align 4
  %207 = ptrtoint ptr %val509.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %val509.i, align 2
  %conv543.i = zext i16 %208 to i32
  %or551.i = or i32 %shl518.i, %conv543.i
  %209 = ptrtoint ptr %add.ptr515.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %or551.i, ptr %add.ptr515.i, align 4
  br label %if.end21

sw.bb555.i:                                       ; preds = %for.body
  %mask556.i = getelementptr inbounds %struct.ib_flow_spec_gre, ptr %ib_flow.0311, i32 0, i32 3
  %210 = ptrtoint ptr %mask556.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %mask556.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %211)
  %tobool557.not.i = icmp eq i16 %211, 0
  br i1 %tobool557.not.i, label %if.end559.i, label %sw.bb555.i.free_crit_edge

sw.bb555.i.free_crit_edge:                        ; preds = %sw.bb555.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end559.i:                                      ; preds = %sw.bb555.i
  %add.ptr.i1091.i = getelementptr i32, ptr %headers_c.0.i, i32 4
  %212 = ptrtoint ptr %add.ptr.i1091.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %add.ptr.i1091.i, align 4
  %add.ptr1.i1092.i = getelementptr i32, ptr %headers_v.0.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %213)
  %tobool5.not.i1093.i = icmp ult i32 %213, 16777216
  br i1 %tobool5.not.i1093.i, label %do.body.i1098.i, label %if.end29.i1105.i

do.body.i1098.i:                                  ; preds = %if.end559.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i1095.i = or i32 %213, -16777216
  %214 = ptrtoint ptr %add.ptr.i1091.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %or.i1095.i, ptr %add.ptr.i1091.i, align 4
  %215 = ptrtoint ptr %add.ptr1.i1092.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %add.ptr1.i1092.i, align 4
  %and22.i1096.i = and i32 %216, 16777215
  %or25.i1097.i = or i32 %and22.i1096.i, 788529152
  store i32 %or25.i1097.i, ptr %add.ptr1.i1092.i, align 4
  br label %do.body564.i

if.end29.i1105.i:                                 ; preds = %if.end559.i
  %217 = ptrtoint ptr %add.ptr1.i1092.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %add.ptr1.i1092.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %213)
  %cmp.not.i1101.i = icmp ugt i32 %213, -16777217
  %shr2.i1099.mask.i = and i32 %218, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 788529152, i32 %shr2.i1099.mask.i)
  %cmp35.not.i1102.i = icmp eq i32 %shr2.i1099.mask.i, 788529152
  %or.cond.i1103.i = select i1 %cmp.not.i1101.i, i1 %cmp35.not.i1102.i, i1 false
  br i1 %or.cond.i1103.i, label %if.end29.i1105.i.do.body564.i_crit_edge, label %if.end29.i1105.i.free_crit_edge

if.end29.i1105.i.free_crit_edge:                  ; preds = %if.end29.i1105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end29.i1105.i.do.body564.i_crit_edge:          ; preds = %if.end29.i1105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body564.i

do.body564.i:                                     ; preds = %if.end29.i1105.i.do.body564.i_crit_edge, %do.body.i1098.i
  %219 = ptrtoint ptr %add.ptr.i1091.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %add.ptr.i1091.i, align 4
  %or573.i = or i32 %220, -16777216
  store i32 %or573.i, ptr %add.ptr.i1091.i, align 4
  %221 = ptrtoint ptr %add.ptr1.i1092.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %add.ptr1.i1092.i, align 4
  %and583.i = and i32 %222, 16777215
  %or586.i = or i32 %and583.i, 788529152
  store i32 %or586.i, ptr %add.ptr1.i1092.i, align 4
  %protocol.i = getelementptr inbounds %struct.ib_flow_spec_gre, ptr %ib_flow.0311, i32 0, i32 3, i32 1
  %223 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %protocol.i, align 2
  %conv593.i = zext i16 %224 to i32
  %225 = ptrtoint ptr %add.ptr597.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %add.ptr597.i, align 4
  %and598.i = and i32 %226, -65536
  %or601.i = or i32 %and598.i, %conv593.i
  store i32 %or601.i, ptr %add.ptr597.i, align 4
  %protocol608.i = getelementptr inbounds %struct.ib_flow_spec_gre, ptr %ib_flow.0311, i32 0, i32 2, i32 1
  %227 = ptrtoint ptr %protocol608.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %protocol608.i, align 2
  %conv609.i = zext i16 %228 to i32
  %229 = ptrtoint ptr %add.ptr613.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %add.ptr613.i, align 4
  %and614.i = and i32 %230, -65536
  %or617.i = or i32 %and614.i, %conv609.i
  store i32 %or617.i, ptr %add.ptr613.i, align 4
  %key.i = getelementptr inbounds %struct.ib_flow_spec_gre, ptr %ib_flow.0311, i32 0, i32 3, i32 2
  %231 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %key.i, align 4
  %233 = ptrtoint ptr %add.ptr621.i to i32
  call void @__asan_storeN_noabort(i32 %233, i32 4)
  store i32 %232, ptr %add.ptr621.i, align 1
  %key625.i = getelementptr inbounds %struct.ib_flow_spec_gre, ptr %ib_flow.0311, i32 0, i32 2, i32 2
  %234 = ptrtoint ptr %key625.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %key625.i, align 4
  %236 = ptrtoint ptr %add.ptr623.i to i32
  call void @__asan_storeN_noabort(i32 %236, i32 4)
  store i32 %235, ptr %add.ptr623.i, align 1
  br label %if.end21

sw.bb626.i:                                       ; preds = %for.body
  %237 = zext i32 %prev_type.0314 to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %prev_type.0314, label %sw.default.i [
    i32 65, label %sw.bb627.i
    i32 81, label %sw.bb647.i
  ]

sw.bb627.i:                                       ; preds = %sw.bb626.i
  %add.ptr633.i = getelementptr i32, ptr %53, i32 26
  %238 = ptrtoint ptr %add.ptr633.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %add.ptr633.i, align 4
  %mask636.i = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_flow.0311, i32 0, i32 3
  %240 = ptrtoint ptr %mask636.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %mask636.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %241)
  %tobool.not.i1108.i = icmp ugt i32 %241, 4095
  %242 = and i32 %239, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool2.not.i.i = icmp eq i32 %242, 0
  %or.cond.i1109.i = and i1 %tobool2.not.i.i, %tobool.not.i1108.i
  br i1 %or.cond.i1109.i, label %sw.bb627.i.free_crit_edge, label %if.end.i1110.i

sw.bb627.i.free_crit_edge:                        ; preds = %sw.bb627.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end.i1110.i:                                   ; preds = %sw.bb627.i
  %243 = and i32 %241, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool6.not.i.i = icmp ne i32 %243, 0
  %244 = and i32 %239, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool9.not.i.i = icmp eq i32 %244, 0
  %or.cond36.i.i = and i1 %tobool9.not.i.i, %tobool6.not.i.i
  br i1 %or.cond36.i.i, label %if.end.i1110.i.free_crit_edge, label %if.end11.i.i

if.end.i1110.i.free_crit_edge:                    ; preds = %if.end.i1110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end11.i.i:                                     ; preds = %if.end.i1110.i
  %245 = and i32 %241, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool15.not.i.i = icmp ne i32 %245, 0
  %246 = and i32 %239, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %tobool18.not.i.i = icmp eq i32 %246, 0
  %or.cond37.i.i = and i1 %tobool18.not.i.i, %tobool15.not.i.i
  br i1 %or.cond37.i.i, label %if.end11.i.i.free_crit_edge, label %if.end20.i.i

if.end11.i.i.free_crit_edge:                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end20.i.i:                                     ; preds = %if.end11.i.i
  %and23.i.i = and i32 %241, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp ne i32 %and23.i.i, 0
  %247 = and i32 %239, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool27.not.i.i = icmp eq i32 %247, 0
  %or.cond38.i.i = and i1 %tobool27.not.i.i, %tobool24.not.i.i
  br i1 %or.cond38.i.i, label %if.end20.i.i.free_crit_edge, label %if.end640.i

if.end20.i.i.free_crit_edge:                      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end640.i:                                      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %val642.i = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_flow.0311, i32 0, i32 2
  %248 = ptrtoint ptr %val642.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %val642.i, align 4
  %250 = ptrtoint ptr %add.ptr641.i to i32
  call void @__asan_storeN_noabort(i32 %250, i32 4)
  store i32 %249, ptr %add.ptr641.i, align 1
  %251 = ptrtoint ptr %add.ptr644.i to i32
  call void @__asan_storeN_noabort(i32 %251, i32 4)
  store i32 %241, ptr %add.ptr644.i, align 1
  br label %if.end21

sw.bb647.i:                                       ; preds = %sw.bb626.i
  %add.ptr653.i = getelementptr i32, ptr %53, i32 26
  %252 = ptrtoint ptr %add.ptr653.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %add.ptr653.i, align 4
  %mask656.i = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_flow.0311, i32 0, i32 3
  %254 = ptrtoint ptr %mask656.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %mask656.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %255)
  %tobool.not.i1113.i = icmp ugt i32 %255, 4095
  %256 = and i32 %253, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool2.not.i1115.i = icmp eq i32 %256, 0
  %or.cond.i1116.i = and i1 %tobool2.not.i1115.i, %tobool.not.i1113.i
  br i1 %or.cond.i1116.i, label %sw.bb647.i.free_crit_edge, label %if.end.i1121.i

sw.bb647.i.free_crit_edge:                        ; preds = %sw.bb647.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end.i1121.i:                                   ; preds = %sw.bb647.i
  %257 = and i32 %255, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool6.not.i1117.i = icmp ne i32 %257, 0
  %258 = and i32 %253, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool9.not.i1119.i = icmp eq i32 %258, 0
  %or.cond36.i1120.i = and i1 %tobool9.not.i1119.i, %tobool6.not.i1117.i
  br i1 %or.cond36.i1120.i, label %if.end.i1121.i.free_crit_edge, label %if.end11.i1126.i

if.end.i1121.i.free_crit_edge:                    ; preds = %if.end.i1121.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end11.i1126.i:                                 ; preds = %if.end.i1121.i
  %259 = and i32 %255, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool15.not.i1122.i = icmp ne i32 %259, 0
  %260 = and i32 %253, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool18.not.i1124.i = icmp eq i32 %260, 0
  %or.cond37.i1125.i = and i1 %tobool18.not.i1124.i, %tobool15.not.i1122.i
  br i1 %or.cond37.i1125.i, label %if.end11.i1126.i.free_crit_edge, label %if.end20.i1133.i

if.end11.i1126.i.free_crit_edge:                  ; preds = %if.end11.i1126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end20.i1133.i:                                 ; preds = %if.end11.i1126.i
  %and23.i1127.i = and i32 %255, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i1127.i)
  %tobool24.not.i1128.i = icmp ne i32 %and23.i1127.i, 0
  %261 = and i32 %253, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %tobool27.not.i1130.i = icmp eq i32 %261, 0
  %or.cond38.i1131.i = and i1 %tobool27.not.i1130.i, %tobool24.not.i1128.i
  br i1 %or.cond38.i1131.i, label %if.end20.i1133.i.free_crit_edge, label %if.end661.i

if.end20.i1133.i.free_crit_edge:                  ; preds = %if.end20.i1133.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end661.i:                                      ; preds = %if.end20.i1133.i
  call void @__sanitizer_cov_trace_pc() #13
  %val663.i = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_flow.0311, i32 0, i32 2
  %262 = ptrtoint ptr %val663.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %val663.i, align 4
  %264 = ptrtoint ptr %add.ptr662.i to i32
  call void @__asan_storeN_noabort(i32 %264, i32 4)
  store i32 %263, ptr %add.ptr662.i, align 1
  %265 = ptrtoint ptr %add.ptr665.i to i32
  call void @__asan_storeN_noabort(i32 %265, i32 4)
  store i32 %255, ptr %add.ptr665.i, align 1
  br label %if.end21

sw.default.i:                                     ; preds = %sw.bb626.i
  %add.ptr698.i = getelementptr i32, ptr %53, i32 26
  %266 = ptrtoint ptr %add.ptr698.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %add.ptr698.i, align 4
  %mask701.i = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_flow.0311, i32 0, i32 3
  %268 = ptrtoint ptr %mask701.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %mask701.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %269)
  %tobool.not.i249 = icmp ugt i32 %269, 4095
  br i1 %tobool.not.i, label %if.else692.i, label %if.then671.i

if.then671.i:                                     ; preds = %sw.default.i
  %270 = and i32 %267, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool2.not.i257 = icmp eq i32 %270, 0
  %or.cond.i258 = and i1 %tobool2.not.i257, %tobool.not.i249
  br i1 %or.cond.i258, label %if.then671.i.free_crit_edge, label %if.end.i263

if.then671.i.free_crit_edge:                      ; preds = %if.then671.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end.i263:                                      ; preds = %if.then671.i
  %271 = and i32 %269, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool6.not.i259 = icmp ne i32 %271, 0
  %272 = and i32 %267, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %tobool9.not.i261 = icmp eq i32 %272, 0
  %or.cond36.i262 = and i1 %tobool9.not.i261, %tobool6.not.i259
  br i1 %or.cond36.i262, label %if.end.i263.free_crit_edge, label %if.end11.i268

if.end.i263.free_crit_edge:                       ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end11.i268:                                    ; preds = %if.end.i263
  %273 = and i32 %269, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool15.not.i264 = icmp ne i32 %273, 0
  %274 = and i32 %267, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool18.not.i266 = icmp eq i32 %274, 0
  %or.cond37.i267 = and i1 %tobool18.not.i266, %tobool15.not.i264
  br i1 %or.cond37.i267, label %if.end11.i268.free_crit_edge, label %if.end20.i275

if.end11.i268.free_crit_edge:                     ; preds = %if.end11.i268
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end20.i275:                                    ; preds = %if.end11.i268
  %and23.i269 = and i32 %269, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i269)
  %tobool24.not.i270 = icmp ne i32 %and23.i269, 0
  %275 = and i32 %267, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool27.not.i272 = icmp eq i32 %275, 0
  %or.cond38.i273 = and i1 %tobool27.not.i272, %tobool24.not.i270
  br i1 %or.cond38.i273, label %if.end20.i275.free_crit_edge, label %if.end685.i

if.end20.i275.free_crit_edge:                     ; preds = %if.end20.i275
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end685.i:                                      ; preds = %if.end20.i275
  call void @__sanitizer_cov_trace_pc() #13
  %val687.i = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_flow.0311, i32 0, i32 2
  %276 = ptrtoint ptr %val687.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %val687.i, align 4
  %278 = ptrtoint ptr %add.ptr686.i to i32
  call void @__asan_storeN_noabort(i32 %278, i32 4)
  store i32 %277, ptr %add.ptr686.i, align 1
  %279 = ptrtoint ptr %add.ptr689.i to i32
  call void @__asan_storeN_noabort(i32 %279, i32 4)
  store i32 %269, ptr %add.ptr689.i, align 1
  br label %if.end21

if.else692.i:                                     ; preds = %sw.default.i
  %280 = and i32 %267, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool2.not.i = icmp eq i32 %280, 0
  %or.cond.i250 = and i1 %tobool2.not.i, %tobool.not.i249
  br i1 %or.cond.i250, label %if.else692.i.free_crit_edge, label %if.end.i252

if.else692.i.free_crit_edge:                      ; preds = %if.else692.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end.i252:                                      ; preds = %if.else692.i
  %281 = and i32 %269, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool6.not.i = icmp ne i32 %281, 0
  %282 = and i32 %267, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %tobool9.not.i = icmp eq i32 %282, 0
  %or.cond36.i = and i1 %tobool9.not.i, %tobool6.not.i
  br i1 %or.cond36.i, label %if.end.i252.free_crit_edge, label %if.end11.i

if.end.i252.free_crit_edge:                       ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end11.i:                                       ; preds = %if.end.i252
  %283 = and i32 %269, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool15.not.i = icmp ne i32 %283, 0
  %284 = and i32 %267, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool18.not.i = icmp eq i32 %284, 0
  %or.cond37.i = and i1 %tobool18.not.i, %tobool15.not.i
  br i1 %or.cond37.i, label %if.end11.i.free_crit_edge, label %if.end20.i

if.end11.i.free_crit_edge:                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end20.i:                                       ; preds = %if.end11.i
  %and23.i = and i32 %269, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i253 = icmp ne i32 %and23.i, 0
  %285 = and i32 %267, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool27.not.i = icmp eq i32 %285, 0
  %or.cond38.i = and i1 %tobool27.not.i, %tobool24.not.i253
  br i1 %or.cond38.i, label %if.end20.i.free_crit_edge, label %if.end706.i

if.end20.i.free_crit_edge:                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end706.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  %val708.i = getelementptr inbounds %struct.ib_flow_spec_mpls, ptr %ib_flow.0311, i32 0, i32 2
  %286 = ptrtoint ptr %val708.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %val708.i, align 4
  %288 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_storeN_noabort(i32 %288, i32 4)
  store i32 %287, ptr %add.ptr5.i, align 1
  %289 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_storeN_noabort(i32 %289, i32 4)
  store i32 %269, ptr %add.ptr4.i, align 1
  br label %if.end21

sw.bb714.i:                                       ; preds = %for.body
  %add.ptr716.i = getelementptr %struct.ib_flow_spec_tunnel, ptr %ib_flow.0311, i32 1
  %call717.i = tail call ptr @memchr_inv(ptr noundef %add.ptr716.i, i32 noundef 0, i32 noundef 0) #11
  %tobool718.not.i = icmp eq ptr %call717.i, null
  br i1 %tobool718.not.i, label %do.body721.i, label %sw.bb714.i.free_crit_edge

sw.bb714.i.free_crit_edge:                        ; preds = %sw.bb714.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

do.body721.i:                                     ; preds = %sw.bb714.i
  call void @__sanitizer_cov_trace_pc() #13
  %mask715.i = getelementptr inbounds %struct.ib_flow_spec_tunnel, ptr %ib_flow.0311, i32 0, i32 3
  %290 = ptrtoint ptr %mask715.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %mask715.i, align 4
  %292 = ptrtoint ptr %add.ptr728.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %add.ptr728.i, align 4
  %and729.i = and i32 %293, 255
  %shl731.i = shl i32 %291, 8
  %or732.i = or i32 %and729.i, %shl731.i
  store i32 %or732.i, ptr %add.ptr728.i, align 4
  %val738.i = getelementptr inbounds %struct.ib_flow_spec_tunnel, ptr %ib_flow.0311, i32 0, i32 2
  %294 = ptrtoint ptr %val738.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %val738.i, align 4
  %296 = ptrtoint ptr %add.ptr743.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %add.ptr743.i, align 4
  %and744.i = and i32 %297, 255
  %shl746.i = shl i32 %295, 8
  %or747.i = or i32 %and744.i, %shl746.i
  store i32 %or747.i, ptr %add.ptr743.i, align 4
  br label %if.end21

sw.bb751.i:                                       ; preds = %for.body
  %add.ptr752.i = getelementptr %struct.ib_flow_spec_action_tag, ptr %ib_flow.0311, i32 1
  %call753.i = tail call ptr @memchr_inv(ptr noundef %add.ptr752.i, i32 noundef 0, i32 noundef 0) #11
  %tobool754.not.i = icmp eq ptr %call753.i, null
  br i1 %tobool754.not.i, label %if.end756.i, label %sw.bb751.i.free_crit_edge

sw.bb751.i.free_crit_edge:                        ; preds = %sw.bb751.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end756.i:                                      ; preds = %sw.bb751.i
  %tag_id.i = getelementptr inbounds %struct.ib_flow_spec_action_tag, ptr %ib_flow.0311, i32 0, i32 2
  %298 = ptrtoint ptr %tag_id.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %tag_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %299)
  %cmp.i = icmp ugt i32 %299, 16777215
  br i1 %cmp.i, label %if.end756.i.free_crit_edge, label %if.end760.i

if.end756.i.free_crit_edge:                       ; preds = %if.end756.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end760.i:                                      ; preds = %if.end756.i
  call void @__sanitizer_cov_trace_pc() #13
  %300 = ptrtoint ptr %flow_tag.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %flow_tag.i, align 4
  %301 = ptrtoint ptr %flow_context1.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %flow_context1.i, align 4
  %or762.i = or i32 %302, 1
  store i32 %or762.i, ptr %flow_context1.i, align 4
  br label %if.end21

sw.bb763.i:                                       ; preds = %for.body
  %size.i = getelementptr inbounds %struct.ib_flow_spec_action_drop, ptr %ib_flow.0311, i32 0, i32 1
  %add.ptr764.i = getelementptr i8, ptr %size.i, i32 2
  %call765.i = tail call ptr @memchr_inv(ptr noundef %add.ptr764.i, i32 noundef 0, i32 noundef 2) #11
  %tobool766.not.i = icmp eq ptr %call765.i, null
  br i1 %tobool766.not.i, label %if.end768.i, label %sw.bb763.i.free_crit_edge

sw.bb763.i.free_crit_edge:                        ; preds = %sw.bb763.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end768.i:                                      ; preds = %sw.bb763.i
  call void @__sanitizer_cov_trace_pc() #13
  %303 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %flow_act, align 4
  %or770.i = or i32 %304, 2
  store i32 %or770.i, ptr %flow_act, align 4
  br label %if.end21

sw.bb771.i:                                       ; preds = %for.body
  %act.i = getelementptr inbounds %struct.ib_flow_spec_action_handle, ptr %ib_flow.0311, i32 0, i32 2
  %305 = ptrtoint ptr %act.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %act.i, align 4
  %307 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %flags, align 4
  %and774.i = and i32 %308, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and774.i)
  %tobool775.not.i = icmp eq i32 %and774.i, 0
  %type.i.i = getelementptr inbounds %struct.ib_flow_action, ptr %306, i32 0, i32 2
  %309 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %type.i.i, align 8
  %311 = zext i32 %310 to i64
  call void @__sanitizer_cov_trace_switch(i64 %311, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %310, label %sw.bb771.i.free_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 0, label %sw.bb4.i.i
  ]

sw.bb771.i.free_crit_edge:                        ; preds = %sw.bb771.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

sw.bb.i.i:                                        ; preds = %sw.bb771.i
  %312 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %flow_act, align 4
  %and.i1136.i = and i32 %313, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1136.i)
  %tobool.not.i1137.i = icmp eq i32 %and.i1136.i, 0
  br i1 %tobool.not.i1137.i, label %if.end.i1139.i, label %sw.bb.i.i.free_crit_edge

sw.bb.i.i.free_crit_edge:                         ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end.i1139.i:                                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ctx.i.i = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %306, i32 0, i32 1, i32 0, i32 1
  %314 = ptrtoint ptr %ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ctx.i.i, align 8
  %316 = ptrtoint ptr %315 to i32
  %317 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 %316, ptr %47, align 4
  %cond.i.i = select i1 %tobool775.not.i, i32 262144, i32 131072
  %or.i1138.i = or i32 %313, %cond.i.i
  %318 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %or.i1138.i, ptr %flow_act, align 4
  br label %if.end21

sw.bb4.i.i:                                       ; preds = %sw.bb771.i
  %319 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %306, i32 0, i32 1
  %sub_type.i.i = getelementptr inbounds %struct.anon.202, ptr %319, i32 0, i32 1
  %320 = ptrtoint ptr %sub_type.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %sub_type.i.i, align 4
  %322 = zext i32 %321 to i64
  call void @__sanitizer_cov_trace_switch(i64 %322, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %321, label %sw.bb4.i.i.free_crit_edge [
    i32 0, label %if.then5.i.i
    i32 2, label %if.then16.i.i
    i32 1, label %if.then27.i.i
  ]

sw.bb4.i.i.free_crit_edge:                        ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.then5.i.i:                                     ; preds = %sw.bb4.i.i
  %323 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %flow_act, align 4
  %and7.i.i = and i32 %324, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.then5.i.i.free_crit_edge

if.then5.i.i.free_crit_edge:                      ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end10.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or12.i.i = or i32 %324, 64
  %325 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %or12.i.i, ptr %flow_act, align 4
  %326 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %306, i32 0, i32 1, i32 0, i32 1
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %326, align 8
  %329 = ptrtoint ptr %modify_hdr.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %328, ptr %modify_hdr.i.i, align 4
  br label %if.end21

if.then16.i.i:                                    ; preds = %sw.bb4.i.i
  %330 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %flow_act, align 4
  %and18.i.i = and i32 %331, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end21.i.i, label %if.then16.i.i.free_crit_edge

if.then16.i.i.free_crit_edge:                     ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end21.i.i:                                     ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or23.i.i = or i32 %331, 32
  %332 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %or23.i.i, ptr %flow_act, align 4
  br label %if.end21

if.then27.i.i:                                    ; preds = %sw.bb4.i.i
  %333 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %flow_act, align 4
  %and29.i.i = and i32 %334, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end32.i.i, label %if.then27.i.i.free_crit_edge

if.then27.i.i.free_crit_edge:                     ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end32.i.i:                                     ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %or34.i.i = or i32 %334, 16
  %335 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %or34.i.i, ptr %flow_act, align 4
  %336 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %306, i32 0, i32 1, i32 0, i32 1
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %336, align 8
  %339 = ptrtoint ptr %pkt_reformat.i.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %338, ptr %pkt_reformat.i.i, align 4
  br label %if.end21

sw.bb780.i:                                       ; preds = %for.body
  %counters.i = getelementptr inbounds %struct.ib_flow_spec_action_count, ptr %ib_flow.0311, i32 0, i32 2
  %add.ptr781.i = getelementptr %struct.ib_flow_spec_action_count, ptr %ib_flow.0311, i32 1
  %call782.i = tail call ptr @memchr_inv(ptr noundef %add.ptr781.i, i32 noundef 0, i32 noundef 0) #11
  %tobool783.not.i = icmp eq ptr %call782.i, null
  br i1 %tobool783.not.i, label %if.end785.i, label %sw.bb780.i.free_crit_edge

sw.bb780.i.free_crit_edge:                        ; preds = %sw.bb780.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end785.i:                                      ; preds = %sw.bb780.i
  %340 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %flow_act, align 4
  %and787.i = and i32 %341, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and787.i)
  %tobool788.not.i = icmp eq i32 %and787.i, 0
  br i1 %tobool788.not.i, label %if.end790.i, label %if.end785.i.free_crit_edge

if.end785.i.free_crit_edge:                       ; preds = %if.end785.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

if.end790.i:                                      ; preds = %if.end785.i
  call void @__sanitizer_cov_trace_pc() #13
  %342 = ptrtoint ptr %counters.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %counters.i, align 4
  %344 = ptrtoint ptr %counters792.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %343, ptr %counters792.i, align 4
  %or794.i = or i32 %341, 8
  %345 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %or794.i, ptr %flow_act, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end790.i, %if.end32.i.i, %if.end21.i.i, %if.end10.i.i, %if.end.i1139.i, %if.end768.i, %if.end760.i, %do.body721.i, %if.end706.i, %if.end685.i, %if.end661.i, %if.end640.i, %do.body564.i, %do.body491.i, %do.body416.i, %do.body376.i, %if.end364.i, %if.end29.i.i.if.end21_crit_edge, %do.body.i.i, %if.end201.i.if.end21_crit_edge, %do.body164.i
  %346 = ptrtoint ptr %ib_flow.0311 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %ib_flow.0311, align 4
  %size = getelementptr inbounds %struct.anon.173, ptr %ib_flow.0311, i32 0, i32 1
  %348 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %348)
  %349 = load i16, ptr %size, align 4
  %conv22 = zext i16 %349 to i32
  %add.ptr23 = getelementptr i8, ptr %ib_flow.0311, i32 %conv22
  %inc = add nuw nsw i32 %spec_index.0313, 1
  %350 = ptrtoint ptr %num_of_specs.i.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %num_of_specs.i.i, align 4
  %conv14 = zext i8 %351 to i32
  %cmp = icmp ult i32 %inc, %conv14
  br i1 %cmp, label %if.end21.for.body_crit_edge, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %if.end13.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %if.end13.for.end_crit_edge ], [ %351, %if.end21.for.end_crit_edge ]
  %tobool24.not = icmp eq ptr %dst, null
  br i1 %tobool24.not, label %for.end.if.end30_crit_edge, label %land.lhs.true25

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true25:                                  ; preds = %for.end
  %352 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %flow_act, align 4
  %and26 = and i32 %353, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %land.lhs.true25.if.end30_crit_edge

land.lhs.true25.if.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then28:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  %354 = call ptr @memcpy(ptr %dest_arr, ptr %dst, i32 16)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true25.if.end30_crit_edge, %for.end.if.end30_crit_edge
  %dest_num.0 = phi i32 [ 0, %land.lhs.true25.if.end30_crit_edge ], [ 1, %if.then28 ], [ 0, %for.end.if.end30_crit_edge ]
  %355 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %flow_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %356)
  %cmp.not.i = icmp ne i32 %356, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.lcssa)
  %cmp1.i = icmp eq i8 %.lcssa, 0
  %or.cond304 = select i1 %cmp.not.i, i1 true, i1 %cmp1.i
  br i1 %or.cond304, label %if.end30.if.then32_crit_edge, label %if.end.i

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.end.i:                                         ; preds = %if.end30
  %357 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %add.ptr, align 4
  %359 = zext i32 %358 to i64
  call void @__sanitizer_cov_trace_switch(i64 %359, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %358, label %if.end.i.if.then32_crit_edge [
    i32 48, label %if.then6.i
    i32 32, label %if.then13.i
  ]

if.end.i.if.then32_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then6.i:                                       ; preds = %if.end.i
  %dst_ip.i228 = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1, i32 4
  %360 = ptrtoint ptr %dst_ip.i228 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %dst_ip.i228, align 4
  %and.i.i229 = and i32 %361, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i229)
  %cmp.i.i = icmp eq i32 %and.i.i229, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %underlay_qpn)
  %tobool.not.i231 = icmp eq i32 %underlay_qpn, 0
  %or.cond305 = or i1 %tobool.not.i231, %cmp.i.i
  br i1 %or.cond305, label %if.then6.i.if.end33_crit_edge, label %if.then6.i.land.lhs.true.i_crit_edge

if.then6.i.land.lhs.true.i_crit_edge:             ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then6.i.if.end33_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then13.i:                                      ; preds = %if.end.i
  %mask.i230 = getelementptr i8, ptr %flow_attr, i32 42
  %362 = ptrtoint ptr %mask.i230 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %mask.i230, align 4
  %364 = and i32 %363, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool.i.not.i = icmp eq i32 %364, 0
  br i1 %tobool.i.not.i, label %if.then13.i.if.then32_crit_edge, label %flow_is_multicast_only.exit

if.then13.i.if.then32_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

flow_is_multicast_only.exit:                      ; preds = %if.then13.i
  %val16.i = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1, i32 2
  %365 = ptrtoint ptr %val16.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %val16.i, align 4
  %367 = and i32 %366, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %tobool.i30.i = icmp ne i32 %367, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %underlay_qpn)
  %tobool.not.i231.old = icmp eq i32 %underlay_qpn, 0
  %or.cond306 = or i1 %tobool.not.i231.old, %tobool.i30.i
  br i1 %or.cond306, label %flow_is_multicast_only.exit.if.end33_crit_edge, label %flow_is_multicast_only.exit.land.lhs.true.i_crit_edge

flow_is_multicast_only.exit.land.lhs.true.i_crit_edge: ; preds = %flow_is_multicast_only.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

flow_is_multicast_only.exit.if.end33_crit_edge:   ; preds = %flow_is_multicast_only.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then32:                                        ; preds = %if.then13.i.if.then32_crit_edge, %if.end.i.if.then32_crit_edge, %if.end30.if.then32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %underlay_qpn)
  %tobool.not.i231.old.old = icmp eq i32 %underlay_qpn, 0
  br i1 %tobool.not.i231.old.old, label %if.then32.if.end33_crit_edge, label %if.then32.land.lhs.true.i_crit_edge

if.then32.land.lhs.true.i_crit_edge:              ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then32.if.end33_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true.i:                                  ; preds = %if.then32.land.lhs.true.i_crit_edge, %flow_is_multicast_only.exit.land.lhs.true.i_crit_edge, %if.then6.i.land.lhs.true.i_crit_edge
  %368 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %mdev, align 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %369, i32 0, i32 8, i32 0, i32 7
  %370 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr4.i232 = getelementptr i32, ptr %371, i32 26
  %372 = ptrtoint ptr %add.ptr4.i232 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %add.ptr4.i232, align 4
  %374 = and i32 %373, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %374)
  %tobool5.not.i = icmp eq i32 %374, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end33_crit_edge, label %do.body.i236

land.lhs.true.i.if.end33_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.body.i236:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr7.i233 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 26
  %375 = ptrtoint ptr %add.ptr7.i233 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %add.ptr7.i233, align 4
  %and8.i = and i32 %376, -16777216
  %and9.i = and i32 %underlay_qpn, 16777215
  %or.i234 = or i32 %and8.i, %and9.i
  store i32 %or.i234, ptr %add.ptr7.i233, align 4
  %add.ptr18.i235 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 26
  %377 = ptrtoint ptr %add.ptr18.i235 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %add.ptr18.i235, align 4
  %or22.i = or i32 %378, 16777215
  store i32 %or22.i, ptr %add.ptr18.i235, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.body.i236, %land.lhs.true.i.if.end33_crit_edge, %if.then32.if.end33_crit_edge, %flow_is_multicast_only.exit.if.end33_crit_edge, %if.then6.i.if.end33_crit_edge
  %379 = ptrtoint ptr %is_rep to i32
  call void @__asan_load1_noabort(i32 %379)
  %bf.load35 = load i8, ptr %is_rep, align 8
  %380 = and i8 %bf.load35, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %380)
  %tobool39.not = icmp eq i8 %380, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %356)
  %cmp42.not = icmp eq i32 %356, 3
  %or.cond307 = select i1 %tobool39.not, i1 true, i1 %cmp42.not
  br i1 %or.cond307, label %if.end33.if.end51_crit_edge, label %if.then44

if.end33.if.end51_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then44:                                        ; preds = %if.end33
  %port = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 22
  %381 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %port, align 8
  %port45 = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 5
  %383 = ptrtoint ptr %port45 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %port45, align 4
  %sub = add i32 %384, -1
  %rep47 = getelementptr %struct.mlx5_ib_port, ptr %382, i32 %sub, i32 4
  %385 = ptrtoint ptr %rep47 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %rep47, align 4
  %tobool48.not = icmp eq ptr %386, null
  br i1 %tobool48.not, label %if.then44.free_crit_edge, label %cleanup.thread

if.then44.free_crit_edge:                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

cleanup.thread:                                   ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlx5_ib_set_rule_source_port(ptr noundef %dev, ptr noundef nonnull %call.i.i, ptr noundef nonnull %386)
  br label %if.end51

if.end51:                                         ; preds = %cleanup.thread, %if.end33.if.end51_crit_edge
  %match_criteria = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1
  %call.i238 = tail call ptr @memchr_inv(ptr noundef %match_criteria, i32 noundef 0, i32 noundef 64) #11
  %tobool.i = icmp ne ptr %call.i238, null
  %add.ptr2.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 16
  %call3.i = tail call ptr @memchr_inv(ptr noundef %add.ptr2.i, i32 noundef 0, i32 noundef 64) #11
  %tobool4.not.i = icmp eq ptr %call3.i, null
  %shl9.i = select i1 %tobool4.not.i, i8 0, i8 2
  %conv10.i = zext i1 %tobool.i to i8
  %or.i239 = or i8 %shl9.i, %conv10.i
  %add.ptr12.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 32
  %call13.i = tail call ptr @memchr_inv(ptr noundef %add.ptr12.i, i32 noundef 0, i32 noundef 64) #11
  %tobool14.not.i = icmp eq ptr %call13.i, null
  %shl19.i = select i1 %tobool14.not.i, i8 0, i8 4
  %or21.i = or i8 %or.i239, %shl19.i
  %add.ptr23.i240 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 48
  %call24.i = tail call ptr @memchr_inv(ptr noundef %add.ptr23.i240, i32 noundef 0, i32 noundef 64) #11
  %tobool25.not.i = icmp eq ptr %call24.i, null
  %shl30.i = select i1 %tobool25.not.i, i8 0, i8 8
  %or32.i = or i8 %or21.i, %shl30.i
  %387 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %or32.i, ptr %call.i.i, align 4
  br i1 %tobool.not, label %if.end51.if.end61_crit_edge, label %land.lhs.true56

if.end51.if.end61_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true56:                                  ; preds = %if.end51
  %388 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %flow_act, align 4
  %and.i.i241 = and i32 %389, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i241)
  %tobool.not.i.i242 = icmp eq i32 %and.i.i241, 0
  br i1 %tobool.not.i.i242, label %land.lhs.true56.if.end61_crit_edge, label %land.lhs.true.i.i245

land.lhs.true56.if.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true.i.i245:                             ; preds = %land.lhs.true56
  %and4.i.i = and i32 %389, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i243 = icmp ne i32 %and4.i.i, 0
  %add.ptr1.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 28
  %390 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %add.ptr1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool.i.not.i.i = icmp eq i32 %391, 0
  %brmerge.i.i244 = select i1 %tobool.i.not.i.i, i1 true, i1 %tobool5.not.i.i243
  br i1 %brmerge.i.i244, label %land.lhs.true.i.i245.free_crit_edge, label %is_valid_spec.exit

land.lhs.true.i.i245.free_crit_edge:              ; preds = %land.lhs.true.i.i245
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

is_valid_spec.exit:                               ; preds = %land.lhs.true.i.i245
  %flow_context.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 3
  %392 = ptrtoint ptr %flow_context.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %flow_context.i.i, align 4
  %and13.i.i246 = and i32 %393, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i246)
  %phi.cmp.i = icmp eq i32 %and13.i.i246, 0
  br i1 %phi.cmp.i, label %is_valid_spec.exit.if.end61_crit_edge, label %is_valid_spec.exit.free_crit_edge

is_valid_spec.exit.free_crit_edge:                ; preds = %is_valid_spec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

is_valid_spec.exit.if.end61_crit_edge:            ; preds = %is_valid_spec.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end61:                                         ; preds = %is_valid_spec.exit.if.end61_crit_edge, %land.lhs.true56.if.end61_crit_edge, %if.end51.if.end61_crit_edge
  %394 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %flow_act, align 4
  %and63 = and i32 %395, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end81_crit_edge, label %if.then65

if.end61.if.end81_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then65:                                        ; preds = %if.end61
  %counters = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 6
  %396 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %counters, align 4
  %call66 = tail call i32 @mlx5_ib_flow_counters_set_data(ptr noundef %397, ptr noundef %ucmd) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %cleanup78.thread, label %if.then65.free_crit_edge

if.then65.free_crit_edge:                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %free

cleanup78.thread:                                 ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %398 = ptrtoint ptr %counters to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %counters, align 4
  %ibcounters = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call7.i.i, i32 0, i32 4
  %400 = ptrtoint ptr %ibcounters to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %399, ptr %ibcounters, align 4
  %arrayidx73 = getelementptr [2 x %struct.mlx5_flow_destination], ptr %dest_arr, i32 0, i32 %dest_num.0
  %401 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %401)
  store i32 256, ptr %arrayidx73, align 4
  %hw_cntrs_hndl = getelementptr inbounds %struct.mlx5_ib_mcounters, ptr %399, i32 0, i32 3
  %402 = ptrtoint ptr %hw_cntrs_hndl to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %hw_cntrs_hndl, align 4
  %call75 = tail call i32 @mlx5_fc_id(ptr noundef %403) #11
  %404 = getelementptr [2 x %struct.mlx5_flow_destination], ptr %dest_arr, i32 0, i32 %dest_num.0, i32 1
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %call75, ptr %404, align 4
  %inc77 = add nuw nsw i32 %dest_num.0, 1
  br label %if.end81

if.end81:                                         ; preds = %cleanup78.thread, %if.end61.if.end81_crit_edge
  %dest_num.2 = phi i32 [ %dest_num.0, %if.end61.if.end81_crit_edge ], [ %inc77, %cleanup78.thread ]
  %406 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %flow_act, align 4
  %and83 = and i32 %407, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dest_num.2)
  %tobool86.not = icmp eq i32 %dest_num.2, 0
  %spec.select = select i1 %tobool86.not, ptr null, ptr %dest_arr
  br label %if.end106

if.else:                                          ; preds = %if.end81
  %408 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %flags, align 4
  %and90 = and i32 %409, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.else.if.end94_crit_edge, label %if.then92

if.else.if.end94_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then92:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %407, 65536
  %410 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %or, ptr %flow_act, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.else.if.end94_crit_edge
  br i1 %tobool.not, label %if.else99, label %if.then96

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  %411 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %flow_act, align 4
  %or98 = or i32 %412, 1
  store i32 %or98, ptr %flow_act, align 4
  br label %if.end106

if.else99:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dest_num.2)
  %tobool100.not = icmp eq i32 %dest_num.2, 0
  br i1 %tobool100.not, label %if.else99.if.end106_crit_edge, label %if.then101

if.else99.if.end106_crit_edge:                    ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then101:                                       ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #13
  %413 = ptrtoint ptr %flow_act to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %flow_act, align 4
  %or103 = or i32 %414, 4
  store i32 %or103, ptr %flow_act, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then101, %if.else99.if.end106_crit_edge, %if.then96, %if.then85
  %rule_dst.0 = phi ptr [ %dest_arr, %if.then96 ], [ %dest_arr, %if.then101 ], [ %dest_arr, %if.else99.if.end106_crit_edge ], [ %spec.select, %if.then85 ]
  %flow_context = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 3
  %415 = ptrtoint ptr %flow_context to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %flow_context, align 4
  %and108 = and i32 %416, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end106.if.end122_crit_edge, label %land.lhs.true110

if.end106.if.end122_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

land.lhs.true110:                                 ; preds = %if.end106
  %417 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %flow_attr, align 4
  %.off = add i32 %418, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch223 = icmp ult i32 %.off, 2
  br i1 %switch223, label %do.end, label %land.lhs.true110.if.end122_crit_edge

land.lhs.true110.if.end122_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

do.end:                                           ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #13
  %419 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  %420 = tail call i32 @llvm.read_register.i32(metadata !57) #11
  %and.i247 = and i32 %420, -16384
  %421 = inttoptr i32 %and.i247 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %421, i32 0, i32 2
  %422 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %423, i32 0, i32 68
  %424 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %pid, align 8
  %flow_tag = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 3, i32 1
  %426 = ptrtoint ptr %flow_tag to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %flow_tag, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %419, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1196, i32 noundef %425, i32 noundef %427, i32 noundef %418) #17
  br label %free

if.end122:                                        ; preds = %land.lhs.true110.if.end122_crit_edge, %if.end106.if.end122_crit_edge
  %call123 = call ptr @mlx5_add_flow_rules(ptr noundef %1, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef %rule_dst.0, i32 noundef %dest_num.2) #11
  %rule = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call7.i.i, i32 0, i32 3
  %428 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr %call123, ptr %rule, align 8
  %cmp.i248 = icmp ugt ptr %call123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then126, label %free.thread

if.then126:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  %429 = ptrtoint ptr %call123 to i32
  br label %free

free.thread:                                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  %refcount = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %ft_prio, i32 0, i32 1
  %430 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %refcount, align 4
  %inc130 = add i32 %431, 1
  store i32 %inc130, ptr %refcount, align 4
  %prio = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call7.i.i, i32 0, i32 2
  %432 = ptrtoint ptr %prio to i32
  call void @__asan_store4_noabort(i32 %432)
  store ptr %ft_prio, ptr %prio, align 4
  %dev131 = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call7.i.i, i32 0, i32 5
  %433 = ptrtoint ptr %dev131 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %dev, ptr %dev131, align 8
  %434 = ptrtoint ptr %ft_prio to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr %1, ptr %ft_prio, align 4
  call void @kvfree(ptr noundef %call.i.i) #11
  br label %cleanup141

free:                                             ; preds = %if.then126, %do.end, %if.then65.free_crit_edge, %is_valid_spec.exit.free_crit_edge, %land.lhs.true.i.i245.free_crit_edge, %if.then44.free_crit_edge, %if.end785.i.free_crit_edge, %sw.bb780.i.free_crit_edge, %if.then27.i.i.free_crit_edge, %if.then16.i.i.free_crit_edge, %if.then5.i.i.free_crit_edge, %sw.bb4.i.i.free_crit_edge, %sw.bb.i.i.free_crit_edge, %sw.bb771.i.free_crit_edge, %sw.bb763.i.free_crit_edge, %if.end756.i.free_crit_edge, %sw.bb751.i.free_crit_edge, %sw.bb714.i.free_crit_edge, %if.end20.i.free_crit_edge, %if.end11.i.free_crit_edge, %if.end.i252.free_crit_edge, %if.else692.i.free_crit_edge, %if.end20.i275.free_crit_edge, %if.end11.i268.free_crit_edge, %if.end.i263.free_crit_edge, %if.then671.i.free_crit_edge, %if.end20.i1133.i.free_crit_edge, %if.end11.i1126.i.free_crit_edge, %if.end.i1121.i.free_crit_edge, %sw.bb647.i.free_crit_edge, %if.end20.i.i.free_crit_edge, %if.end11.i.i.free_crit_edge, %if.end.i1110.i.free_crit_edge, %sw.bb627.i.free_crit_edge, %if.end29.i1105.i.free_crit_edge, %sw.bb555.i.free_crit_edge, %if.end29.i1088.i.free_crit_edge, %sw.bb479.i.free_crit_edge, %if.end29.i1071.i.free_crit_edge, %sw.bb405.i.free_crit_edge, %sw.bb371.i.free_crit_edge, %if.end29.i1054.i.free_crit_edge, %sw.bb279.i.free_crit_edge, %if.end29.i.i.free_crit_edge, %sw.bb195.i.free_crit_edge, %sw.bb.i.free_crit_edge, %for.body.free_crit_edge, %if.end7.free_crit_edge
  %err.4 = phi i32 [ -22, %do.end ], [ %429, %if.then126 ], [ -12, %if.end7.free_crit_edge ], [ -22, %is_valid_spec.exit.free_crit_edge ], [ -22, %if.then44.free_crit_edge ], [ %call66, %if.then65.free_crit_edge ], [ -22, %land.lhs.true.i.i245.free_crit_edge ], [ -95, %if.end20.i.free_crit_edge ], [ -95, %if.end11.i.free_crit_edge ], [ -95, %if.end.i252.free_crit_edge ], [ -95, %if.else692.i.free_crit_edge ], [ -95, %if.end20.i275.free_crit_edge ], [ -95, %if.end11.i268.free_crit_edge ], [ -95, %if.end.i263.free_crit_edge ], [ -95, %if.then671.i.free_crit_edge ], [ -95, %sw.bb.i.free_crit_edge ], [ -95, %sw.bb195.i.free_crit_edge ], [ -95, %sw.bb279.i.free_crit_edge ], [ -95, %sw.bb371.i.free_crit_edge ], [ -95, %sw.bb405.i.free_crit_edge ], [ -95, %sw.bb479.i.free_crit_edge ], [ -95, %sw.bb555.i.free_crit_edge ], [ -95, %sw.bb714.i.free_crit_edge ], [ -95, %sw.bb751.i.free_crit_edge ], [ -22, %if.end756.i.free_crit_edge ], [ -95, %sw.bb763.i.free_crit_edge ], [ -95, %sw.bb780.i.free_crit_edge ], [ -22, %if.end785.i.free_crit_edge ], [ -22, %for.body.free_crit_edge ], [ -22, %if.end29.i.i.free_crit_edge ], [ -22, %if.end29.i1054.i.free_crit_edge ], [ -22, %if.end29.i1071.i.free_crit_edge ], [ -22, %if.end29.i1088.i.free_crit_edge ], [ -22, %if.end29.i1105.i.free_crit_edge ], [ -95, %sw.bb627.i.free_crit_edge ], [ -95, %if.end.i1110.i.free_crit_edge ], [ -95, %if.end11.i.i.free_crit_edge ], [ -95, %if.end20.i.i.free_crit_edge ], [ -95, %sw.bb647.i.free_crit_edge ], [ -95, %if.end.i1121.i.free_crit_edge ], [ -95, %if.end11.i1126.i.free_crit_edge ], [ -95, %if.end20.i1133.i.free_crit_edge ], [ -95, %sw.bb771.i.free_crit_edge ], [ -95, %sw.bb4.i.i.free_crit_edge ], [ -22, %if.then27.i.i.free_crit_edge ], [ -22, %if.then16.i.i.free_crit_edge ], [ -22, %if.then5.i.i.free_crit_edge ], [ -22, %sw.bb.i.i.free_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool133.not = icmp eq i32 %err.4, 0
  %brmerge222 = select i1 %tobool133.not, i1 true, i1 %tobool10.not
  br i1 %brmerge222, label %if.end138, label %if.then136

if.then136:                                       ; preds = %free
  call void @__sanitizer_cov_trace_pc() #13
  %ibcounters137 = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call7.i.i, i32 0, i32 4
  %435 = ptrtoint ptr %ibcounters137 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %ibcounters137, align 4
  call void @mlx5_ib_counters_clear_description(ptr noundef %436) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @kvfree(ptr noundef %call.i.i) #11
  br label %cond.true

if.end138:                                        ; preds = %free
  call void @kvfree(ptr noundef %call.i.i) #11
  br i1 %tobool133.not, label %if.end138.cleanup141_crit_edge, label %if.end138.cond.true_crit_edge

if.end138.cond.true_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

if.end138.cleanup141_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup141

cond.true:                                        ; preds = %if.end138.cond.true_crit_edge, %if.then136
  %437 = inttoptr i32 %err.4 to ptr
  br label %cleanup141

cleanup141:                                       ; preds = %cond.true, %if.end138.cleanup141_crit_edge, %free.thread, %if.end.cleanup141_crit_edge, %is_valid_attr.exit.cleanup141_crit_edge, %lor.rhs66.i55.i.cleanup141_crit_edge, %is_valid_ethertype.exit.i.cleanup141_crit_edge, %lor.rhs66.i.i.cleanup141_crit_edge
  %retval.0 = phi ptr [ %437, %cond.true ], [ %call7.i.i, %if.end138.cleanup141_crit_edge ], [ inttoptr (i32 -22 to ptr), %is_valid_attr.exit.cleanup141_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup141_crit_edge ], [ %call7.i.i, %free.thread ], [ inttoptr (i32 -22 to ptr), %is_valid_ethertype.exit.i.cleanup141_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.rhs66.i55.i.cleanup141_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.rhs66.i.i.cleanup141_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dest_arr) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_leftovers_rule(ptr noundef %dev, ptr noundef %ft_prio, ptr nocapture noundef readonly %flow_attr, ptr noundef %dst) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_create_flow_rule(ptr noundef %dev, ptr noundef %ft_prio, ptr noundef nonnull @create_leftovers_rule.leftovers_specs, ptr noundef %dst, i32 noundef 0, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call.i17 = tail call fastcc ptr @_create_flow_rule(ptr noundef %dev, ptr noundef %ft_prio, ptr noundef getelementptr inbounds ([2 x %struct.anon.218], ptr @create_leftovers_rule.leftovers_specs, i32 0, i32 1), ptr noundef %dst, i32 noundef 0, ptr noundef null) #11
  %cmp.i18 = icmp ugt ptr %call.i17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %rule = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %3) #11
  %refcount = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %ft_prio, i32 0, i32 1
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcount, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %refcount, align 4
  tail call void @kfree(ptr noundef %call.i) #11
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call.i17, ptr noundef %call.i, ptr noundef %7) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i17, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %call.i17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %call.i17, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i17, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call.i17, ptr %call.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i, %if.else.if.end6_crit_edge, %if.then4, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %handler.0 = phi ptr [ %call.i, %entry.if.end6_crit_edge ], [ %call.i17, %if.then4 ], [ %call.i, %land.lhs.true.if.end6_crit_edge ], [ %call.i, %if.else.if.end6_crit_edge ], [ %call.i, %if.end.i.i ]
  ret ptr %handler.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @create_sniffer_rule(ptr noundef %dev, ptr noundef %ft_rx, ptr noundef %ft_tx, ptr noundef %dst) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @_create_flow_rule(ptr noundef %dev, ptr noundef %ft_rx, ptr noundef nonnull @create_sniffer_rule.flow_attr, ptr noundef %dst, i32 noundef 0, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i23 = tail call fastcc ptr @_create_flow_rule(ptr noundef %dev, ptr noundef %ft_tx, ptr noundef nonnull @create_sniffer_rule.flow_attr, ptr noundef %dst, i32 noundef 0, ptr noundef null) #11
  %cmp.i24 = icmp ugt ptr %call.i23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %rule = getelementptr inbounds %struct.mlx5_ib_flow_handler, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %1) #11
  %refcount = getelementptr inbounds %struct.mlx5_ib_flow_prio, ptr %ft_rx, i32 0, i32 1
  %2 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcount, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcount, align 4
  tail call void @kfree(ptr noundef %call.i) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call.i23, ptr noundef %call.i, ptr noundef %5) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i23, ptr %prev1.i.i, align 4
  %7 = ptrtoint ptr %call.i23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %call.i23, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i23, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call.i23, ptr %call.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end7.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end7.cleanup_crit_edge ], [ %call.i, %if.end.i.i ], [ %call.i23, %if.then5 ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_ib_set_rule_source_port(ptr nocapture noundef readonly %dev, ptr nocapture noundef %spec, ptr nocapture noundef readonly %rep) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %call = tail call zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef %3) #11
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %esw1 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 5
  %4 = ptrtoint ptr %esw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %esw1, align 4
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 1
  %6 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vport, align 4
  %call2 = tail call i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef %5, i16 noundef zeroext %7) #11
  %add.ptr4 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 59
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %add.ptr4, align 4
  %add.ptr17 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 59
  %9 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -65536, ptr %add.ptr17, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vport30 = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %rep, i32 0, i32 1
  %10 = ptrtoint ptr %vport30 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vport30, align 4
  %conv = zext i16 %11 to i32
  %add.ptr34 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 17
  %12 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr34, align 4
  %and35 = and i32 %13, -65536
  %or38 = or i32 %and35, %conv
  store i32 %or38, ptr %add.ptr34, align 4
  %add.ptr49 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 1, i32 17
  %14 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr49, align 4
  %or51 = or i32 %15, 65535
  store i32 %or51, ptr %add.ptr49, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ib_flow_counters_set_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ib_counters_clear_description(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_vport_match_metadata_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_match(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_accel_esp_destroy_xfrm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_packet_reformat_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx5_ib_create_flow_action_esp(ptr nocapture noundef readonly %device, ptr nocapture noundef readonly %attr, ptr noundef %attrs) #1 align 64 {
entry:
  %accel_attrs = alloca %struct.mlx5_accel_esp_xfrm_attrs, align 8
  %action_flags = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %accel_attrs) #11
  %0 = call ptr @memset(ptr %accel_attrs, i32 0, i32 136)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %action_flags) #11
  %1 = ptrtoint ptr %action_flags to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %action_flags, align 8, !annotation !67
  %call1 = call i32 @uverbs_get_flags64(ptr noundef nonnull %action_flags, ptr noundef %attrs, i32 noundef 4096, i64 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = inttoptr i32 %call1 to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %action_flags to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %action_flags, align 8
  %conv = trunc i64 %4 to i32
  %and.i = and i32 %conv, 1
  %5 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attr, align 8
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %replay = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %replay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %replay, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %encap = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encap, align 8
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %spi = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 4
  %11 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not = icmp eq i32 %12, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %seq = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 5
  %13 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %lor.lhs.false13, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %tfc_pad = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 6
  %15 = ptrtoint ptr %tfc_pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tfc_pad, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not = icmp eq i32 %16, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false13
  %hard_limit_pkts = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 8
  %17 = ptrtoint ptr %hard_limit_pkts to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %hard_limit_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool16.not = icmp eq i64 %18, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false15
  %flags18 = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 7
  %19 = ptrtoint ptr %flags18 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %flags18, align 8
  %and = and i64 %20, -4294967301
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool19.not = icmp eq i64 %and, 0
  br i1 %tobool19.not, label %if.end22, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false17
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not = icmp eq i32 %22, 0
  br i1 %cmp.not, label %if.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %keymat29 = getelementptr inbounds %struct.ib_flow_action_attrs_esp_keymats, ptr %6, i32 0, i32 1
  %icv_len = getelementptr inbounds %struct.ib_flow_action_attrs_esp_keymats, ptr %6, i32 0, i32 1, i32 0, i32 3
  %23 = ptrtoint ptr %icv_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %icv_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %cmp30.not = icmp eq i32 %24, 16
  br i1 %cmp30.not, label %lor.lhs.false32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false32:                                  ; preds = %if.end27
  %iv_algo = getelementptr inbounds %struct.ib_flow_action_attrs_esp_keymats, ptr %6, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %iv_algo to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iv_algo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp33.not = icmp eq i32 %26, 0
  br i1 %cmp33.not, label %if.end37, label %lor.lhs.false32.cleanup_crit_edge

lor.lhs.false32.cleanup_crit_edge:                ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 32) #14
  %tobool39.not = icmp eq ptr %call7.i, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %28 = ptrtoint ptr %flags18 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %flags18, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %call7.i, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %29, ptr %30, align 8
  %keymat44 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 10
  %aes_key = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 10, i32 0, i32 5
  %aes_key45 = getelementptr inbounds %struct.ib_flow_action_attrs_esp_keymats, ptr %6, i32 0, i32 1, i32 0, i32 5
  %32 = call ptr @memcpy(ptr %aes_key, ptr %aes_key45, i32 32)
  %key_len = getelementptr inbounds %struct.ib_flow_action_attrs_esp_keymats, ptr %6, i32 0, i32 1, i32 0, i32 4
  %33 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key_len, align 4
  %mul = shl i32 %34, 3
  %key_len47 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 10, i32 0, i32 4
  %35 = ptrtoint ptr %key_len47 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %key_len47, align 4
  %salt = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 10, i32 0, i32 2
  %salt49 = getelementptr inbounds %struct.ib_flow_action_attrs_esp_keymats, ptr %6, i32 0, i32 1, i32 0, i32 2
  %36 = ptrtoint ptr %salt49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %salt49, align 4
  %38 = ptrtoint ptr %salt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %salt, align 4
  %39 = ptrtoint ptr %keymat29 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %keymat29, align 8
  %41 = ptrtoint ptr %keymat44 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %keymat44, align 8
  %42 = ptrtoint ptr %icv_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %icv_len, align 8
  %mul52 = shl i32 %43, 3
  %icv_len54 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 10, i32 0, i32 3
  %44 = ptrtoint ptr %icv_len54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul52, ptr %icv_len54, align 8
  %iv_algo56 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 10, i32 0, i32 1
  %45 = ptrtoint ptr %iv_algo56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %iv_algo56, align 8
  %keymat_type = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 9
  %46 = ptrtoint ptr %keymat_type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %keymat_type, align 4
  %esn = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 3
  %47 = ptrtoint ptr %esn to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %esn, align 4
  %esn57 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 1
  %49 = ptrtoint ptr %esn57 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %esn57, align 4
  %and59 = and i64 %29, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and59)
  %tobool60.not = icmp eq i64 %and59, 0
  br i1 %tobool60.not, label %if.end42.if.end63_crit_edge, label %if.then61

if.end42.if.end63_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then61:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %flags62 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 5
  %50 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags62, align 4
  %or = or i32 %51, 2
  store i32 %or, ptr %flags62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end42.if.end63_crit_edge
  %and65 = and i64 %29, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and65)
  %tobool66.not = icmp eq i64 %and65, 0
  br i1 %tobool66.not, label %if.end63.if.end70_crit_edge, label %if.then67

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %flags68 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 5
  %52 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags68, align 4
  %or69 = or i32 %53, 4
  store i32 %or69, ptr %flags68, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end63.if.end70_crit_edge
  %and72 = and i64 %29, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and72)
  %tobool73.not = icmp eq i64 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end77_crit_edge, label %if.then74

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %accel_attrs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %accel_attrs, align 8
  %or76 = or i32 %55, 1
  store i32 %or76, ptr %accel_attrs, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end70.if.end77_crit_edge
  %mdev78 = getelementptr inbounds %struct.mlx5_ib_dev, ptr %device, i32 0, i32 1
  %56 = ptrtoint ptr %mdev78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mdev78, align 8
  %call80 = call ptr @mlx5_accel_esp_create_xfrm(ptr noundef %57, ptr noundef nonnull %accel_attrs, i32 noundef %and.i) #11
  %ctx = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %call7.i, i32 0, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call80, ptr %ctx, align 8
  %cmp.i = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then83, label %if.end86

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

if.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %flags18 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %flags18, align 8
  %61 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %30, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then83, %if.end37.cleanup_crit_edge, %lor.lhs.false32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %2, %if.then ], [ %call80, %if.then83 ], [ %call7.i, %if.end86 ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false17.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false15.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false13.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false11.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false9.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false7.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end22.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %lor.lhs.false32.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end27.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %action_flags) #11
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %accel_attrs) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_ib_modify_flow_action_esp(ptr nocapture noundef %action, ptr nocapture noundef readonly %attr, ptr nocapture noundef readnone %attrs) #1 align 64 {
entry:
  %accel_attrs = alloca %struct.mlx5_accel_esp_xfrm_attrs, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %accel_attrs) #11
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %replay = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %replay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %replay, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %encap = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encap, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %spi = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 4
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %seq = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 5
  %8 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %tfc_pad = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 6
  %10 = ptrtoint ptr %tfc_pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tfc_pad, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %hard_limit_pkts = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 8
  %12 = ptrtoint ptr %hard_limit_pkts to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %hard_limit_pkts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool11.not = icmp eq i64 %13, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %flags = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 7
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %flags, align 8
  %and = and i64 %15, -12884901897
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool13.not = icmp eq i64 %and, 0
  br i1 %tobool13.not, label %if.end, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  %16 = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %action, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  %and14 = and i64 %18, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool15.not = icmp ne i64 %and14, 0
  %and17 = and i64 %15, 4294967304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  %or.cond = select i1 %tobool15.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %ctx = getelementptr inbounds %struct.mlx5_ib_flow_action, ptr %action, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 8
  %attrs21 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm, ptr %20, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %accel_attrs, ptr %attrs21, i32 136)
  %esn = getelementptr inbounds %struct.ib_flow_action_attrs_esp, ptr %attr, i32 0, i32 3
  %22 = ptrtoint ptr %esn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %esn, align 4
  %esn22 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 1
  %24 = ptrtoint ptr %esn22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %esn22, align 4
  %flags28 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %accel_attrs, i32 0, i32 5
  %25 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags28, align 4
  %and29 = and i32 %26, -5
  %27 = trunc i64 %15 to i32
  %28 = lshr i32 %27, 1
  %29 = and i32 %28, 4
  %and29.sink = or i32 %and29, %29
  store i32 %and29.sink, ptr %flags28, align 4
  %call32 = call i32 @mlx5_accel_esp_modify_xfrm(ptr noundef %20, ptr noundef nonnull %accel_attrs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %16, align 8
  %and37 = and i64 %31, -9
  store i64 %and37, ptr %16, align 8
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %flags, align 8
  %and39 = and i64 %33, 8
  %or41 = or i64 %and39, %and37
  store i64 %or41, ptr %16, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -95, %lor.lhs.false12.cleanup_crit_edge ], [ -95, %lor.lhs.false10.cleanup_crit_edge ], [ -95, %lor.lhs.false8.cleanup_crit_edge ], [ -95, %lor.lhs.false6.cleanup_crit_edge ], [ -95, %lor.lhs.false4.cleanup_crit_edge ], [ -95, %lor.lhs.false2.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call32, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %accel_attrs) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uverbs_get_flags64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_accel_esp_create_xfrm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_accel_esp_modify_xfrm(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !46, !47, !48, !49, !50, !51, !53, !55}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @mlx5_ib_flow_defs, !1, !"mlx5_ib_flow_defs", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2695, i32 30}
!2 = !{ptr @mlx5_ib_fs_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2724, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx5_ib_object_MLX5_IB_OBJECT_FLOW_MATCHER, !6, !"mlx5_ib_object_MLX5_IB_OBJECT_FLOW_MATCHER", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2690, i32 1}
!7 = !{ptr @_object_methods_MLX5_IB_OBJECT_FLOW_MATCHER2693, !6, !"_object_methods_MLX5_IB_OBJECT_FLOW_MATCHER2693", i1 false, i1 false}
!8 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_CREATE, !9, !"mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_CREATE", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2660, i32 1}
!10 = !{ptr @_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_CREATE, !9, !"_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_CREATE", i1 false, i1 false}
!11 = !{ptr @mlx5_ib_flow_type, !12, !"mlx5_ib_flow_type", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 1955, i32 38}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!20 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY, !21, !"mlx5_ib_method_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2683, i32 1}
!22 = !{ptr @_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY, !21, !"_method_attrs_MLX5_IB_METHOD_FLOW_MATCHER_DESTROY", i1 false, i1 false}
!23 = !{ptr @mlx5_ib_fs, !24, !"mlx5_ib_fs", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2617, i32 1}
!25 = !{ptr @_object_methods_UVERBS_OBJECT_FLOW2620, !24, !"_object_methods_UVERBS_OBJECT_FLOW2620", i1 false, i1 false}
!26 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_CREATE_FLOW, !27, !"mlx5_ib_method_MLX5_IB_METHOD_CREATE_FLOW", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2569, i32 1}
!28 = !{ptr @_method_attrs_MLX5_IB_METHOD_CREATE_FLOW, !27, !"_method_attrs_MLX5_IB_METHOD_CREATE_FLOW", i1 false, i1 false}
!29 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_DESTROY_FLOW, !30, !"mlx5_ib_method_MLX5_IB_METHOD_DESTROY_FLOW", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2610, i32 1}
!31 = !{ptr @_method_attrs_MLX5_IB_METHOD_DESTROY_FLOW, !30, !"_method_attrs_MLX5_IB_METHOD_DESTROY_FLOW", i1 false, i1 false}
!32 = !{ptr @mlx5_ib_flow_actions, !33, !"mlx5_ib_flow_actions", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2654, i32 1}
!34 = !{ptr @_object_methods_UVERBS_OBJECT_FLOW_ACTION2658, !33, !"_object_methods_UVERBS_OBJECT_FLOW_ACTION2658", i1 false, i1 false}
!35 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER, !36, !"mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2622, i32 1}
!37 = !{ptr @_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER, !36, !"_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_MODIFY_HEADER", i1 false, i1 false}
!38 = !{ptr @mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT, !39, !"mlx5_ib_method_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2637, i32 1}
!40 = !{ptr @_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT, !39, !"_method_attrs_MLX5_IB_METHOD_FLOW_ACTION_CREATE_PACKET_REFORMAT", i1 false, i1 false}
!41 = !{ptr @flow_ops, !42, !"flow_ops", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2706, i32 35}
!43 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 1195, i32 3}
!45 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.31, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.32, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.33, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @_create_flow_rule._entry, !44, !"_entry", i1 false, i1 false}
!50 = !{ptr @_create_flow_rule._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @create_leftovers_rule.leftovers_specs, !52, !"leftovers_specs", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 1247, i32 4}
!53 = !{ptr @create_sniffer_rule.flow_attr, !54, !"flow_attr", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 1303, i32 35}
!55 = !{ptr @flow_ipsec_ops, !56, !"flow_ipsec_ops", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/mlx5/fs.c", i32 2712, i32 35}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2152546229, i64 2152546254}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 5041784}
!72 = !{i64 5041981}
!73 = !{i64 2152527214}
!74 = !{i64 2148466956, i64 2148466982, i64 2148467011, i64 2148467045, i64 2148467076, i64 2148467099}
!75 = !{i64 2148469421, i64 2148469447, i64 2148469476, i64 2148469510, i64 2148469541, i64 2148469564}
